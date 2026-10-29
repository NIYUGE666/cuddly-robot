#!/usr/bin/env python3
"""Export self-contained EAGLE XML exchange files from the checked KiCad design.

These are an additional import route, not an EasyEDA-native .epro project.
XML and connectivity are checked here; vendor GUI import remains a manual check.
"""
import ast,collections,copy,json,pathlib,xml.etree.ElementTree as E
import pcbnew as p
R=pathlib.Path(__file__).resolve().parents[1]
data=json.loads((R/'circuit.json').read_text());parts=[a for a in data['parts'] if a['kind']!='FLAG']
layout=json.loads((R/'schematic_layout.json').read_text())
pins=layout['symbol_pins']
b=p.LoadBoard(str(R/'hardware/waveform.kicad_pcb'));fps={f.GetReference():f for f in b.GetFootprints()}
def elem(parent,tag,**attrs):return E.SubElement(parent,tag,{k.rstrip('_'):str(v) for k,v in attrs.items()})
def mm(i):return round(p.ToMM(i),6)
def wire(parent,x1,y1,x2,y2,layer,width=.1524):return elem(parent,'wire',x1=x1,y1=y1,x2=x2,y2=y2,layer=layer,width=width)
def base():
 e=E.Element('eagle',version='9.6.2');d=elem(e,'drawing');s=elem(d,'settings');elem(s,'setting',alwaysvectorfont='yes');elem(s,'setting',verticaltext='up')
 elem(d,'grid',distance='0.1',unitdist='mm',unit='mm',style='lines',multiple='1',display='no',altdistance='0.01',altunitdist='mm',altunit='mm')
 ls=elem(d,'layers')
 for n,name,col,fill in [(1,'Top',4,1),(16,'Bottom',1,1),(17,'Pads',2,1),(18,'Vias',2,1),(19,'Unrouted',6,1),(20,'Dimension',15,1),(21,'tPlace',7,1),(22,'bPlace',7,1),(25,'tNames',7,1),(26,'bNames',7,1),(27,'tValues',7,1),(28,'bValues',7,1),(29,'tStop',7,3),(30,'bStop',7,6),(31,'tCream',7,4),(32,'bCream',7,5),(39,'tKeepout',4,11),(40,'bKeepout',1,11),(41,'tRestrict',4,10),(42,'bRestrict',1,10),(44,'Drills',7,1),(45,'Holes',7,1),(46,'Milling',3,1),(47,'Measures',7,1),(48,'Document',7,1),(49,'Reference',7,1),(51,'tDocu',7,1),(52,'bDocu',7,1),(90,'Modules',5,1),(91,'Nets',2,1),(92,'Busses',1,1),(93,'Pins',2,1),(94,'Symbols',4,1),(95,'Names',7,1),(96,'Values',7,1),(97,'Info',7,1),(98,'Guide',6,1)]:
  elem(ls,'layer',number=n,name=name,color=col,fill=fill,visible='yes',active='yes')
 return e,d
def library(parent):
 lib=elem(parent,'library',name='Waveform');packages=elem(lib,'packages');symbols=elem(lib,'symbols');devices=elem(lib,'devicesets')
 seen=set()
 for f in fps.values():
  name=str(f.GetFPID().GetLibItemName())
  if name in seen:continue
  seen.add(name);pk=elem(packages,'package',name=name);pos=f.GetPosition()
  for pad in f.Pads():
   xy=pad.GetPosition()-pos
   shape='square' if pad.GetShape()==p.PAD_SHAPE_RECT else 'round'
   elem(pk,'pad',name=pad.GetNumber(),x=mm(xy.x),y=-mm(xy.y),drill=mm(pad.GetDrillSize().x),diameter=mm(max(pad.GetSize().x,pad.GetSize().y)),shape=shape)
  for g in f.GraphicalItems():
   if g.GetLayer()!=p.F_SilkS or not isinstance(g,p.PCB_SHAPE):continue
   a=g.GetStart()-pos;z=g.GetEnd()-pos;w=mm(g.GetWidth())
   if g.GetShape()==p.SHAPE_T_SEGMENT:wire(pk,mm(a.x),-mm(a.y),mm(z.x),-mm(z.y),21,w)
   elif g.GetShape()==p.SHAPE_T_RECT:
    pts=[(mm(a.x),-mm(a.y)),(mm(z.x),-mm(a.y)),(mm(z.x),-mm(z.y)),(mm(a.x),-mm(z.y))]
    for j in range(4):wire(pk,*pts[j],*pts[(j+1)%4],21,w)
   elif g.GetShape()==p.SHAPE_T_CIRCLE:
    elem(pk,'circle',x=mm(a.x),y=-mm(a.y),radius=mm(g.GetRadius()),width=w,layer=21)
  for field,layer,text in [(f.Reference(),25,'>NAME'),(f.Value(),27,'>VALUE')]:
   delta=field.GetPosition()-pos
   elem(pk,'text',x=mm(delta.x),y=-mm(delta.y),size=round(mm(field.GetTextHeight())/.86,6),layer=layer,align='center',ratio=14).text=text
 for kind in sorted(set(pins)-{'FLAG'}):
  sym=elem(symbols,'symbol',name=kind)
  for no,x,y,ang,typ,nm in pins[kind]:
   direction={'passive':'pas','input':'in','output':'out','power_in':'pwr','open_collector':'oc'}[typ]
   elem(sym,'pin',name=str(no),x=x,y=y,visible='both',length='short',direction=direction,rot='R'+str(ang))
  if kind in ['R','POT']:
   for a,z in [((-2.54,-1),(2.54,-1)),((2.54,-1),(2.54,1)),((2.54,1),(-2.54,1)),((-2.54,1),(-2.54,-1))]:wire(sym,*a,*z,94)
   if kind=='POT':wire(sym,0,2.54,0,1,94)
  elif kind in ['C','CP']:
   wire(sym,-.635,-2.54,-.635,2.54,94);wire(sym,.635,-2.54,.635,2.54,94)
   wire(sym,-2.54,0,-.635,0,94);wire(sym,.635,0,2.54,0,94)
   if kind=='CP':elem(sym,'text',x=-2,y=3,size=1,layer=94).text='+'
  elif kind in ['TL082_A','TL082_B']:
   for a,z in [((-5.08,5.08),(-5.08,-5.08)),((-5.08,5.08),(5.08,0)),((-5.08,-5.08),(5.08,0))]:wire(sym,*a,*z,94)
  elif kind=='TL082_P':
   for a,z in [((-1.27,2.54),(-1.27,-2.54)),((-1.27,-2.54),(1.27,-2.54)),((1.27,-2.54),(1.27,2.54)),((1.27,2.54),(-1.27,2.54))]:wire(sym,*a,*z,94)
  elif kind=='TP':elem(sym,'circle',x=0,y=0,radius=.8,width=.15,layer=94)
  else:
   x,y={'NE555':(10.16,12.7),'4013':(12.7,17.78),'CONN2':(2.54,5.08),'CONN3':(2.54,5.08)}[kind]
   for a,z in [((-x,-y),(x,-y)),((x,-y),(x,y)),((x,y),(-x,y)),((-x,y),(-x,-y))]:wire(sym,*a,*z,94)
  elem(sym,'text',x=0,y=23 if kind=='4013' else 18 if kind=='NE555' else 9,size=1.1,layer=95,align='bottom-center').text='>NAME'
  elem(sym,'text',x=0,y=-23 if kind=='4013' else -19 if kind=='NE555' else -9,size=1.1,layer=96,align='top-center').text='>VALUE'
 for kind in sorted({a['kind'] for a in parts}):
  prefix={'TL082':'U','NE555':'U','4013':'U','R':'R','C':'C','CP':'C','POT':'RV','CONN2':'J','CONN3':'J','TP':'TP'}[kind]
  ds=elem(devices,'deviceset',name=kind,prefix=prefix,uservalue='yes')
  keys=[kind] if kind!='TL082' else ['TL082_A','TL082_B','TL082_P']
  gates=['G$1'] if kind!='TL082' else ['A','B','P']
  gs=elem(ds,'gates')
  for key,gate in zip(keys,gates):elem(gs,'gate',name=gate,symbol=key,x=0,y=0)
  devs=elem(ds,'devices');ex=next(a for a in parts if a['kind']==kind);pkname=fps[ex['ref']].GetFPID().GetLibItemName()
  dev=elem(devs,'device',name='',package=pkname);cs=elem(dev,'connects')
  for key,gate in zip(keys,gates):
   for pin,*_ in pins[key]:elem(cs,'connect',gate=gate,pin=pin,pad=pin)
  ts=elem(dev,'technologies');elem(ts,'technology',name='')
 return lib
def classes(parent):
 c=elem(parent,'classes');cl=elem(c,'class',number=0,name='default',width=.25,drill=.3);elem(cl,'clearance',class_=0,value=.2)
def save(e,name):
 E.indent(e,space='  ')
 text='<?xml version="1.0" encoding="utf-8"?>\n<!DOCTYPE eagle SYSTEM "eagle.dtd">\n'+E.tostring(e,encoding='unicode')
 path=R/'hardware'/name;path.write_text(text);E.parse(path)
 return path
e,d=base();sch=elem(d,'schematic',xreflabel='%F%N/%S.%C%R',xrefpart='/ %S.%C%R')
libs=elem(sch,'libraries');library(libs);elem(sch,'attributes');elem(sch,'variantdefs');classes(sch)
ps=elem(sch,'parts')
for part in parts:elem(ps,'part',name=part['ref'],library='Waveform',deviceset=part['kind'],device='',value=part['value'])
sheets=elem(sch,'sheets');sheet=elem(sheets,'sheet');plain=elem(sheet,'plain')
for t in layout['texts']:elem(plain,'text',x=t['x'],y=841-t['y'],size=t['size'],layer=97).text=t['text']
for g in layout['graphics']:wire(plain,g['a'][0],841-g['a'][1],g['b'][0],841-g['b'][1],94,.254)
insts=elem(sheet,'instances');ns=elem(sheet,'nets');by_net=collections.defaultdict(list)
manifest={part['ref']:part for part in parts}
for inst in layout['instances']:
 if inst['kind']=='FLAG':continue
 gate={1:'A',2:'B',3:'P'}[inst['unit']] if inst['kind']=='TL082' else 'G$1'
 elem(insts,'instance',part=inst['ref'],gate=gate,x=inst['x'],y=841-inst['y'],smashed='no',rot='R'+str(inst['angle']))
 for pin in inst['pins']:
  net=manifest[inst['ref']]['nets'][pin]
  if net is not None:by_net[net].append((inst['ref'],gate,pin))
for net,items in sorted(by_net.items()):
 ne=elem(ns,'net',name=net,class_=0);seg=elem(ne,'segment')
 for ref,gate,pin in items:elem(seg,'pinref',part=ref,gate=gate,pin=pin)
 for w in layout['wires']:
  if w['net']==net:wire(seg,w['a'][0],841-w['a'][1],w['b'][0],841-w['b'][1],91,.1524)
 for label in layout['labels']:
  if label['net']==net:elem(seg,'label',x=label['x'],y=841-label['y'],size=1.016,layer=95,rot='R0',xref='no')
 for j in layout['junctions']:
  if j['net']==net:elem(seg,'junction',x=j['x'],y=841-j['y'])
elem(sch,'errors');schpath=save(e,'waveform.sch')
e,d=base();brd=elem(d,'board');plain=elem(brd,'plain')
def xy(v):return mm(v.x)-2,233-mm(v.y)
for g in b.GetDrawings():
 if isinstance(g,p.PCB_SHAPE) and g.GetLayer()==p.Edge_Cuts:wire(plain,*xy(g.GetStart()),*xy(g.GetEnd()),20,.05)
libs=elem(brd,'libraries');library(libs);elem(brd,'attributes');elem(brd,'variantdefs');classes(brd)
rules=elem(brd,'designrules',name='Waveform_2layer_0.20mm')
elem(rules,'description',language='en').text='2-layer, 1.6 mm FR4. Re-run the importer DRC before ordering.'
for name,value in {'layerSetup':'(1*16)','mtCopper':'0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm','mdWireWire':'0.2mm','mdWirePad':'0.2mm','mdWireVia':'0.2mm','mdPadPad':'0.2mm','mdPadVia':'0.2mm','mdViaVia':'0.2mm','msWidth':'0.25mm','msDrill':'0.3mm','mdCopperDimension':'0.5mm','mlMinStopFrame':'0.05mm','mlMaxStopFrame':'0.05mm'}.items():elem(rules,'param',name=name,value=value)
es=elem(brd,'elements')
for part in parts:
 f=fps[part['ref']];x,y=xy(f.GetPosition());elem(es,'element',name=part['ref'],library='Waveform',package=f.GetFPID().GetLibItemName(),value=part['value'],x=x,y=y,smashed='no',rot='R0')
signals=elem(brd,'signals');ss={}
for part in parts:
 for pin,net in part['nets'].items():
  if net is None:continue
  if net not in ss:ss[net]=elem(signals,'signal',name=net,class_=0)
  elem(ss[net],'contactref',element=part['ref'],pad=pin)
tracks=0;vias=0
for t in b.GetTracks():
 net=t.GetNetname().lstrip('/')
 if isinstance(t,p.PCB_VIA):
  x,y=xy(t.GetPosition());elem(ss[net],'via',x=x,y=y,extent='1-16',drill=mm(t.GetDrillValue()),diameter=mm(t.GetWidth(p.F_Cu)),shape='round');vias+=1
 else:wire(ss[net],*xy(t.GetStart()),*xy(t.GetEnd()),1 if t.GetLayer()==p.F_Cu else 16,mm(t.GetWidth()));tracks+=1
brdpath=save(e,'waveform.brd')
# Independent comparisons of contactrefs and pinrefs against the circuit manifest.
sx=E.parse(schpath);bx=E.parse(brdpath)
assert len(sx.findall('.//schematic/parts/part'))==len(parts)==len(bx.findall('.//board/elements/element'))
contacts={(a.get('element'),a.get('pad')):sig.get('name') for sig in bx.findall('.//board/signals/signal') for a in sig.findall('contactref')}
spins={}
for net in sx.findall('.//schematic/sheets/sheet/nets/net'):
 for pin in net.findall('./segment/pinref'):spins[(pin.get('part'),pin.get('pin'))]=net.get('name')
assert contacts==spins
assert len(bx.findall('.//board/signals/signal/wire'))==tracks
assert len(bx.findall('.//board/signals/signal/via'))==vias
(R/'validation/eagle_exchange.json').write_text(json.dumps({'XML_parse':True,'schematic_PCB_contactref_agreement':True,'connected_pins':len(contacts),'elements':len(parts),'track_segments':tracks,'vias':vias,'EAGLE_GUI_import':'NOT RUN','EasyEDA_Pro_GUI_import':'NOT RUN','KiCad_DRC_does_not_validate_exchange_import':True},indent=2))
print(f'EAGLE XML exchange: {len(parts)} elements, {len(contacts)} connected pins, {tracks} tracks, {vias} vias. GUI import not tested.')
# Exercise an actual EAGLE PCB importer in an isolated temporary project.
import tempfile,shutil
tmp=pathlib.Path(tempfile.mkdtemp(prefix='waveform-eagle-'))
shutil.copyfile(R/'hardware/waveform.kicad_pro',tmp/'exchange.kicad_pro')
shutil.copyfile(brdpath,tmp/'exchange.brd')
sm=p.GetSettingsManager();assert sm.LoadProject(str(tmp/'exchange.kicad_pro'))
rb=p.PCB_IO_MGR.Load(p.PCB_IO_MGR.EAGLE,str(tmp/'exchange.brd'),None,None,sm.Prj())
assert len(list(rb.GetFootprints()))==len(parts)
assert len(list(rb.GetTracks()))==tracks+vias
rpins={(f.GetReference(),a.GetNumber()):a.GetNetname() for f in rb.GetFootprints() for a in f.Pads() if a.GetNetCode()!=0}
assert rpins==contacts
p.SaveBoard(str(tmp/'roundtrip.kicad_pcb'),rb)
report=json.loads((R/'validation/eagle_exchange.json').read_text())
report.update(KiCad_EAGLE_PCB_import=True,roundtrip_pads_agree=True,roundtrip_board=str(tmp/'roundtrip.kicad_pcb'))
(R/'validation/eagle_exchange.json').write_text(json.dumps(report,indent=2))
print('KiCad EAGLE PCB importer: passed; all connected pads agree. This does not establish EasyEDA import readiness.')
