#!/usr/bin/env python3
"""Compare generated manifest against KiCad's independently parsed netlist and PCB."""
import collections,json,pathlib,xml.etree.ElementTree as E
import pcbnew as pcb
R=pathlib.Path(__file__).resolve().parents[1]
manifest=json.loads((R/'circuit.json').read_text())
physical=[p for p in manifest['parts'] if p['kind']!='FLAG']
xml=E.parse(R/'validation/netlist.xml').getroot()
pins={}
for net in xml.find('nets'):
 for node in net:
  key=(node.get('ref'),node.get('pin'))
  assert key not in pins,('duplicate schematic pin',key)
  pins[key]=net.get('name')
board=pcb.LoadBoard(str(R/'hardware/waveform.kicad_pcb'))
fps={f.GetReference():f for f in board.GetFootprints()}
assert set(fps)=={p['ref'] for p in physical}
assert len(xml.find('components'))==len(physical)
checked=0
for part in physical:
 f=fps[part['ref']]
 bpins={p.GetNumber():p.GetNetname() for p in f.Pads()}
 assert set(bpins)==set(part['nets']),('footprint pin set differs',part['ref'])
 for pin,net in part['nets'].items():
  actual=pins[(part['ref'],pin)]
  if net is None:
   assert actual.startswith('unconnected-'),(part['ref'],pin,actual)
  else:assert actual==net,(part['ref'],pin,net,actual)
  assert bpins[pin]==actual,('PCB/schematic mismatch',part['ref'],pin,bpins[pin],actual)
  checked+=1
parts={p['ref']:p for p in physical}
for i in range(3,17):
 assert parts[f'U{i}']['value']=='TL082CP'
 assert parts[f'U{i}']['nets']['8']=='VCC' and parts[f'U{i}']['nets']['4']=='VEE'
for net in ['VCC','VEE','GND']:
 assert any(p['kind']=='FLAG' and p['nets']['1']==net for p in manifest['parts'])
assert parts['U2']['nets']['5']==parts['U2']['nets']['2']=='D_FEEDBACK'
assert parts['U1']['nets']['2']==parts['U1']['nets']['6']=='TIMING'
assert parts['U1']['nets']['3']==parts['U2']['nets']['3']=='CLOCK_2K'
for ch in manifest['channels']:
 n=ch['n'];pre=f'H{n}_'
 fi=parts[ch['filter_ic']]['nets'];pi=parts[ch['phase_ic']]['nets'];bi=parts[ch['buffer_ic']]['nets']
 assert fi['1']==pre+'BPF1' and fi['7']==pre+'BPF2'
 assert pi['1']==pre+'AP1' and pi['7']==pre+'AP2'
 assert bi['7']==pre+'OUT' and bi['6']==pre+'OUT'
 assert any(p['kind']=='R' and p['nets']=={'1':pre+'OUT','2':'SUM_INV'} for p in physical)
report={'physical_footprints':len(physical),'pins_compared':checked,'schematic_nets':len(xml.find('nets')),
        'copper_layers':board.GetCopperLayerCount(),'tracks':sum(not isinstance(t,pcb.PCB_VIA) for t in board.GetTracks()),
        'vias':sum(isinstance(t,pcb.PCB_VIA) for t in board.GetTracks()),
        'TL082_packages':14,'manifest_schematic_PCB_pin_agreement':True,'topology_checks':True}
assert report['copper_layers']==2
(R/'validation/connections.json').write_text(json.dumps(report,indent=2))
print(json.dumps(report,indent=2))
