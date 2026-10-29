#!/usr/bin/env python3
"""Export review/fabrication artifacts and package the already checked design."""
import collections,csv,hashlib,json,os,pathlib,shutil,subprocess,sys,zipfile
R=pathlib.Path(__file__).resolve().parents[1]
os.environ.update(XDG_CONFIG_HOME='/tmp/waveform-xdg/config',XDG_CACHE_HOME='/tmp/waveform-xdg/cache',XDG_DATA_HOME='/tmp/waveform-xdg/data')
for x in ['XDG_CONFIG_HOME','XDG_CACHE_HOME','XDG_DATA_HOME']:pathlib.Path(os.environ[x]).mkdir(parents=True,exist_ok=True)
hw=R/'hardware';docs=R/'docs';fab=R/'fabrication';fab.mkdir(exist_ok=True)
if '--reuse-exports' not in sys.argv:
 subprocess.run(['kicad-cli','sch','export','pdf','-o',str(docs/'schematic.pdf'),str(hw/'waveform.kicad_sch')],check=True)
 subprocess.run(['kicad-cli','pcb','export','svg','--layers','F.Cu,B.Cu,F.SilkS,Edge.Cuts','--mode-single','--page-size-mode','2','--exclude-drawing-sheet','-o',str(docs/'pcb.svg'),str(hw/'waveform.kicad_pcb')],check=True)
 subprocess.run(['kicad-cli','pcb','export','gerbers','--layers','F.Cu,B.Cu,F.Mask,B.Mask,F.SilkS,B.SilkS,Edge.Cuts','--subtract-soldermask','-o',str(fab)+'/',str(hw/'waveform.kicad_pcb')],check=True)
 subprocess.run(['kicad-cli','pcb','export','drill','--format','excellon','--excellon-units','mm','--excellon-separate-th','--generate-map','--map-format','pdf','-o',str(fab)+'/',str(hw/'waveform.kicad_pcb')],check=True)
# Normalize only text export whitespace; the SVG geometry is unchanged.
svg=docs/'pcb.svg'
svg.write_text('\n'.join(line.rstrip() for line in svg.read_text().splitlines())+'\n')
parts=[p for p in json.loads((R/'circuit.json').read_text())['parts'] if p['kind']!='FLAG']
groups=collections.defaultdict(list)
for p in parts:groups[(p['kind'],p['value'],p['footprint'])].append(p)
codes={'200':'201','10k':'103','20k':'203','100k':'104','200k':'204'}
with (hw/'BOM_grouped.csv').open('w',newline='') as f:
 w=csv.writer(f,lineterminator="\n");w.writerow(['References','Quantity','Value','Type','Footprint','Purchasing_notes'])
 for (kind,value,fp),ps in sorted(groups.items()):
  note=''
  if kind=='R':note='DIN0207 7.62mm pitch; 0.1% recommended for matched gains, 1% otherwise'
  elif kind=='C':note='5mm pitch; BPF/all-pass: 1% C0G/film; bypass: X7R permitted'
  elif kind=='CP':note='25V minimum, D5mm P2mm; verify purchased body diameter and polarity'
  elif kind=='POT':note='Bourns 3296W vertical, value code '+codes[value]+'; verify pinout 1/2(wiper)/3'
  elif kind=='TP':note='Bare PCB test pad, no component purchase required'
  elif kind.startswith('CONN'):note='2.54mm through-hole header; phase headers additionally require ONE shunt each'
  elif kind in ['TL082','NE555','4013']:note='Through-hole DIP, 7.62mm row spacing; do not substitute a different pinout'
  w.writerow([' '.join(p['ref'] for p in ps),len(ps),value,kind,fp,note])
 w.writerow(['J1 J2 J3 J4',4,'2.54mm shunt','ACCESSORY','','One shunt per phase header, default pins 2-3'])
 w.writerow(['U1 U3-U16',15,'DIP-8 socket (optional)','ACCESSORY','','7.62mm width'])
 w.writerow(['U2',1,'DIP-14 socket (optional)','ACCESSORY','','7.62mm width'])
license_path=pathlib.Path('/usr/share/doc/kicad-footprints/copyright')
if license_path.exists():(hw/'LICENSE_KICAD_FOOTPRINTS.txt').write_text('\n'.join(line.rstrip() for line in license_path.read_text().splitlines()).rstrip()+'\n')
(fab/'README.txt').write_text('Rev A prototype manufacturing output. Source: hardware/waveform.kicad_pcb\n2 layers, FR4 1.6mm, suggested 1oz copper; outline 229 x 231 mm.\nThese are manufacturing graphics, NOT an editable schematic/PCB project.\nNo prototype has been manufactured. Verify dimensions, materials, assembly and import before ordering.\n')
release=R/'release';release.mkdir(exist_ok=True)
def pack(name,items):
 with zipfile.ZipFile(release/name,'w',zipfile.ZIP_DEFLATED,compresslevel=9) as z:
  for path,arc in sorted(items,key=lambda a:a[1]):z.write(path,arc)
 with zipfile.ZipFile(release/name) as z:
  assert z.testzip() is None
  assert len(z.namelist())==len(set(z.namelist()))
common=[(docs/n,'docs/'+n) for n in ['IMPORT_EASYEDA_PRO.md','DESIGN.md','VALIDATION.md']]
kfiles=[]
for f in hw.rglob('*'):
 if f.is_file() and (f.suffix in ['.kicad_pro','.kicad_pcb','.kicad_sch','.kicad_sym','.kicad_mod','.csv','.txt'] or f.name in ['sym-lib-table','fp-lib-table']):
  kfiles.append((f,'hardware/'+str(f.relative_to(hw))))
pack('waveform_KiCad9_import.zip',kfiles+common)
pack('waveform_EAGLE_XML_import.zip',[(hw/n,n) for n in ['waveform.sch','waveform.brd','BOM.csv','BOM_grouped.csv','LICENSE_KICAD_FOOTPRINTS.txt']]+common)
pack('waveform_Gerber_prototype.zip',[(f,f.name) for f in fab.iterdir() if f.is_file()])
files=sorted(f for f in release.iterdir() if f.suffix=='.zip')
(release/'SHA256SUMS.txt').write_text(''.join(hashlib.sha256(f.read_bytes()).hexdigest()+'  '+f.name+'\n' for f in files))
(R/'validation/packages.json').write_text(json.dumps({'ZIP_CRC_checks_passed':True,'files':[{'name':f.name,'bytes':f.stat().st_size,'sha256':hashlib.sha256(f.read_bytes()).hexdigest()} for f in files],'native_epro_created':False,'EasyEDA_Pro_GUI_import':'NOT RUN'},indent=2))
for f in files:print(f.name,f.stat().st_size,'bytes')
