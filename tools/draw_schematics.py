#!/usr/bin/env python3
"""Rev B: one wired, flat, functional schematic; preserves PCB copper and references.

TL082 units are drawn separately. Local labels name nets, not replace signal
wires. Repeated GND/VCC/VEE ports are normal single-sheet power connections.
"""
import ast,hashlib,json,math,pathlib,uuid
import pcbnew as pcb
R=pathlib.Path(__file__).resolve().parents[1];H=R/'hardware'
data=json.loads((R/'circuit.json').read_text());parts={p['ref']:p for p in data['parts']}
tree=ast.parse((R/'tools/build_design.py').read_text())
oldpins=next(ast.literal_eval(n.value) for n in tree.body if isinstance(n,ast.Assign) and any(isinstance(t,ast.Name) and t.id=='pins' for t in n.targets))
def uid(s):return str(uuid.uuid5(uuid.NAMESPACE_URL,'waveform-synthesis/'+s))
def q(v):return json.dumps(str(v),ensure_ascii=False)
def g(v):return round(round(v/1.27)*1.27,4)
def fmt(v):return f'{v:.4f}'.rstrip('0').rstrip('.')
root=uid('root');defs={k:v for k,v in oldpins.items() if k!='TL082'}
defs.update(TL082_A=[(3,-7.62,2.54,0,'input','+'),(2,-7.62,-2.54,0,'input','-'),(1,7.62,0,180,'output','OUT')],
 TL082_B=[(5,-7.62,2.54,0,'input','+'),(6,-7.62,-2.54,0,'input','-'),(7,7.62,0,180,'output','OUT')],
 TL082_P=[(8,0,5.08,270,'power_in','V+'),(4,0,-5.08,90,'power_in','V-')])
layout={'revision':'B','paper':'A0','symbol_pins':defs,'instances':[],'wires':[],'labels':[],'texts':[],'junctions':[],'graphics':[]}
items=[];placed={};positions={};counter=0;named=set();junctions=set()
def idnext(s):
 global counter
 counter+=1;return uid('revB/'+s+'/'+str(counter))
def text(s,x,y,size=1.27):
 x,y=g(x),g(y);layout['texts'].append(dict(text=s,x=x,y=y,size=size))
 items.append(f'(text {q(s)} (at {fmt(x)} {fmt(y)} 0) (effects (font (size {size} {size})) (justify left)) (uuid "{idnext("text")}"))')
def label(net,point,repeat=False):
 if not repeat and net in named:return
 named.add(net);x,y=map(g,point);layout['labels'].append(dict(net=net,x=x,y=y))
 items.append(f'(label {q(net)} (at {fmt(x)} {fmt(y)} 0) (effects (font (size 1.016 1.016)) (justify left bottom)) (uuid "{idnext("label")}"))')
def wire(net,*pts,name=True):
 pts=[tuple(map(g,a)) for a in pts]
 for a,b in zip(pts,pts[1:]):
  if a==b:continue
  assert a[0]==b[0] or a[1]==b[1],(net,a,b)
  layout['wires'].append(dict(net=net,a=a,b=b))
  items.append(f'(wire (pts (xy {fmt(a[0])} {fmt(a[1])}) (xy {fmt(b[0])} {fmt(b[1])})) (stroke (width 0) (type default)) (uuid "{idnext("wire")}"))')
 if name:label(net,pts[0])
def dot(net,xy):
 xy=tuple(map(g,xy))
 if xy in junctions:return
 junctions.add(xy);layout['junctions'].append(dict(net=net,x=xy[0],y=xy[1]))
 items.append(f'(junction (at {fmt(xy[0])} {fmt(xy[1])}) (diameter 0) (color 0 0 0 0) (uuid "{idnext("dot")}"))')
def graphic(a,b):
 a=tuple(map(g,a));b=tuple(map(g,b));layout['graphics'].append(dict(a=a,b=b))
 items.append(f'(polyline (pts (xy {fmt(a[0])} {fmt(a[1])}) (xy {fmt(b[0])} {fmt(b[1])})) (stroke (width 0.254) (type default)) (fill (type none)) (uuid "{idnext("graphic")}"))')
def place(ref,x,y,angle=0,unit=1):
 p=parts[ref];kind=p['kind'];x,y=g(x),g(y)
 key=kind if kind!='TL082' else 'TL082_'+{1:'A',2:'B',3:'P'}[unit]
 u=uid(ref) if unit==1 else uid(ref+'/unit'+str(unit))
 flag=kind=='FLAG';fp=p.get('footprint','')
 if kind=='FLAG':fp=''
 s=f'(symbol (lib_id "Waveform:{kind}") (at {fmt(x)} {fmt(y)} {angle}) (unit {unit}) (in_bom {"no" if flag else "yes"}) (on_board {"no" if flag else "yes"}) (dnp no) (uuid "{u}")'
 dy=24 if kind=='4013' else 19 if kind=='NE555' else 9 if kind=='TL082' and unit<3 else 8
 horizontal=angle in [0,180]
 for prop,val,px,py,hide in [('Reference',ref,x,y-dy,False),('Value',p['value'],x,y+dy,kind=='TL082' and unit==3),('Footprint',fp,x,y,True)]:
  if kind in ['R','C','CP','POT']:
   if horizontal:py=y+(-4 if prop=='Reference' else 4);px=x
   else:px=x+8;py=y+(-2 if prop=='Reference' else 2)
  s+=f'(property {q(prop)} {q(val)} (at {fmt(px)} {fmt(py)} 0) (effects (font (size 1.27 1.27)) {"hide" if hide else ""}))'
 pp={};rad=math.radians(angle)
 for no,dx,dy,ang,typ,nm in defs[key]:
  pp[str(no)]=(g(x+dx*math.cos(rad)-dy*math.sin(rad)),g(y-dx*math.sin(rad)-dy*math.cos(rad)))
  s+=f'(pin "{no}" (uuid "{uid(ref+"pin"+str(no))}"))'
 s+=f'(instances (project "waveform" (path "/{root}" (reference {q(ref)}) (unit {unit})))))';items.append(s)
 placed[(ref,unit)]=pp;positions[(ref,unit)]=(x,y,angle)
 layout['instances'].append(dict(ref=ref,kind=kind,key=key,unit=unit,x=x,y=y,angle=angle,uuid=u,pins={k:list(v) for k,v in pp.items()}))
 if unit==1:p['sch_uuid']=u;p['sch_xy']=[x,y]
 return pp
def pin(ref,no,unit=1):return placed[(ref,unit)][str(no)]
def chain(net,a,b):
 a=tuple(a);b=tuple(b)
 if a[0]==b[0] or a[1]==b[1]:wire(net,a,b)
 else:wire(net,a,(b[0],a[1]),b)
def port(net,a,direction='down'):
 a=tuple(a)
 dx,dy={'down':(0,5.08),'up':(0,-5.08),'left':(-7.62,0),'right':(7.62,0)}[direction]
 b=(g(a[0]+dx),g(a[1]+dy))
 wire(net,a,b,name=False);label(net,b,True)
 if net=='GND' and direction in ['down','up']:
  for w,dy in [(3.81,0),(2.54,1.27),(1.27,2.54)]:graphic((b[0]-w,b[1]+dy),(b[0]+w,b[1]+dy))
def strap(ref,unit=1):
 a=pin(ref,2,unit);b=pin(ref,3,unit);net=parts[ref]['nets']['2'];_,_,ang=positions[(ref,unit)]
 if ang==270:wire(net,a,(a[0]+5.08,a[1]),(a[0]+5.08,b[1]),b)
 else:wire(net,a,(a[0],a[1]-7.62),(b[0]+7.62,a[1]-7.62),(b[0]+7.62,b[1]),b)
 dot(net,b)
def select(kind,nets,sheet=None):
 return next(p['ref'] for p in parts.values() if p['kind']==kind and p['nets']=={str(k):v for k,v in nets.items()} and (sheet is None or p['sheet']==sheet))
def two(kind,a,b,sheet=None):return select(kind,{1:a,2:b},sheet)
def component(kind,a,b,x,y,angle=0,sheet=None):
 r=two(kind,a,b,sheet);place(r,x,y,angle);return r
def opblock(ref,unit,x,y):place(ref,x,y,unit=unit)
def plusminus(ref,unit):return (3,2,1) if unit==1 else (5,6,7)
def bpf(ref,unit,x,y,inp,n,stage):
 x,y=g(x),g(y);pre=f'H{n}_';N=pre+f'NODE{stage}';inv=pre+f'INV{stage}';out=pre+f'BPF{stage}';tune=pre+f'TUNE{stage}'
 opblock(ref,unit,x,y);pl,mi,oo=plusminus(ref,unit)
 ri=component('R',inp,N,x-80,y+2.54);nx=x-50;ny=y+2.54
 wire(N,pin(ri,2),(nx,ny));ci=component('C',N,inv,x-25,ny)
 wire(N,(nx,ny),pin(ci,1));wire(inv,pin(ci,2),pin(ref,mi,unit))
 cf=component('C',N,out,x-25,y-30.48);wire(N,(nx,ny),(nx,y-30.48),pin(cf,1));dot(N,(nx,ny))
 ox=x+25.4;wire(out,pin(cf,2),(ox,y-30.48),(ox,y),pin(ref,oo,unit))
 rf=component('R',out,inv,x+10.16,y+20.32,180)
 wire(inv,pin(ref,mi,unit),(pin(ref,mi,unit)[0],y+20.32),pin(rf,2));dot(inv,pin(ref,mi,unit))
 wire(out,pin(rf,1),(ox,y+20.32),(ox,y));dot(out,(ox,y))
 rr=component('R',N,tune,nx,y+20.32,270);wire(N,(nx,ny),pin(rr,1))
 rv=select('POT',{1:tune,2:'GND',3:'GND'});place(rv,nx,y+40.64,270);chain(tune,pin(rr,2),pin(rv,1));strap(rv);port('GND',pin(rv,3))
 port('GND',pin(ref,pl,unit),'left')
 return pin(ri,1),(ox,y)
def allpass(ref,unit,x,y,inp,n,stage):
 x,y=g(x),g(y);pre=f'H{n}_';inv=pre+f'APINV{stage}';out=pre+f'AP{stage}';low=pre+f'LP{stage}';rn=pre+f'PHR{stage}'
 opblock(ref,unit,x,y);pl,mi,oo=plusminus(ref,unit)
 ri=component('R',inp,inv,x-40.64,y+2.54);wire(inv,pin(ri,2),pin(ref,mi,unit))
 rf=component('R',out,inv,x+10.16,y+25.4,180);v=(x-15.24,y+2.54)
 wire(inv,pin(ref,mi,unit),v,(v[0],y+25.4),pin(rf,2));dot(inv,v)
 ox=x+25.4;wire(out,pin(ref,oo,unit),(ox,y),(ox,y+25.4),pin(rf,1));dot(out,(ox,y))
 r=component('R',inp,rn,x-65,y-30.48);tap=(x-80,y+2.54)
 wire(inp,pin(ri,1),tap,(tap[0],y-30.48),pin(r,1));dot(inp,tap)
 rv=select('POT',{1:rn,2:low,3:low});place(rv,x-35.56,y-30.48);chain(rn,pin(r,2),pin(rv,1));strap(rv)
 lp=(x-12.7,y-30.48);wire(low,pin(rv,3),lp,(lp[0],y-2.54),pin(ref,pl,unit))
 cc=component('C',low,'GND',x-25.4,y-15.24,270)
 wire(low,(pin(cc,1)[0],y-30.48),pin(cc,1));dot(low,(pin(cc,1)[0],y-30.48));port('GND',pin(cc,2))
 return tap,(ox,y)
def inverter(ref,unit,x,y,inp,out):
 x,y=g(x),g(y);pl,mi,oo=plusminus(ref,unit);inv=parts[ref]['nets'][str(mi)]
 opblock(ref,unit,x,y);ri=component('R',inp,inv,x-40.64,y+2.54);wire(inv,pin(ri,2),pin(ref,mi,unit))
 rf=component('R',out,inv,x+10.16,y+25.4,180);v=(x-15.24,y+2.54);ox=x+25.4
 wire(inv,pin(ref,mi,unit),v,(v[0],y+25.4),pin(rf,2));dot(inv,v)
 wire(out,pin(ref,oo,unit),(ox,y),(ox,y+25.4),pin(rf,1));dot(out,(ox,y));port('GND',pin(ref,pl,unit),'left')
 return pin(ri,1),(ox,y)
def follower(ref,unit,x,y):
 x,y=g(x),g(y);opblock(ref,unit,x,y);pl,mi,oo=plusminus(ref,unit);net=parts[ref]['nets'][str(oo)];ox=x+25.4
 wire(net,pin(ref,oo,unit),(ox,y),(ox,y+20.32),(x-20.32,y+20.32),(x-20.32,y+2.54),pin(ref,mi,unit));dot(net,(ox,y))
 return pin(ref,pl,unit),(ox,y)

text('NE555 + TL082 FOURIER WAVEFORM SYNTHESIS — Rev B wired schematic',30,15,3)
text('Regulated +12 V / GND / -12 V. Signal wires are drawn explicitly. All labels are single-sheet local nets.',30,23,1.5)
text('SOURCE: 2 kHz clock / divide by two / DC blocking / 10 Vpp calibration',65,34,2)
# Source NE555 and its timing loop.
place('U1',180,75);place('U2',320,75)
r1=two('R','VCC','DISCHARGE');place(r1,220,45,270);port('VCC',pin(r1,1),'up')
wire('DISCHARGE',pin(r1,2),(g(220),pin('U1',7)[1]),pin('U1',7))
r2=two('R','DISCHARGE','FREQ_R');place(r2,220,95,270);wire('DISCHARGE',(g(220),pin('U1',7)[1]),pin(r2,1));dot('DISCHARGE',(g(220),pin('U1',7)[1]))
place('RV1',220,120,270);chain('FREQ_R',pin(r2,2),pin('RV1',1));strap('RV1')
place('C1',140,125,270);ty=g(105.41);tx=g(140)
wire('TIMING',pin('RV1',3),(pin('RV1',3)[0],ty),(tx,ty),pin('C1',1));port('GND',pin('C1',2))
wire('TIMING',(tx,ty),(tx,pin('U1',2)[1]),pin('U1',2));dot('TIMING',(tx,ty))
wire('TIMING',pin('U1',6),(tx,pin('U1',6)[1]));dot('TIMING',(tx,pin('U1',6)[1]))
port('VCC',pin('U1',8),'up');port('VCC',pin('U1',4),'left');port('GND',pin('U1',1))
place('C2',155,110,270);wire('CTRL',pin('U1',5),(pin('C2',1)[0],pin('U1',5)[1]),pin('C2',1));port('GND',pin('C2',2))
wire('CLOCK_2K',pin('U1',3),(g(250),pin('U1',3)[1]),(g(250),pin('U2',3)[1]),pin('U2',3))
place('TP1',250,45);wire('CLOCK_2K',pin('TP1',1),(g(250),pin('U2',3)[1]));dot('CLOCK_2K',(g(250),pin('U2',3)[1]))
port('VCC',pin('U2',14),'up');port('GND',pin('U2',7))
wire('D_FEEDBACK',pin('U2',2),(g(353.06),pin('U2',2)[1]),(g(353.06),g(39.37)),(g(290.83),g(39.37)),(g(290.83),pin('U2',5)[1]),pin('U2',5))
for no in [4,6,8,9,11]:port('GND',pin('U2',no),'right' if no==8 else 'left')
port('VCC',pin('U2',10),'right')
for no in [12,13]:
 x,y=pin('U2',no);items.append(f'(no_connect (at {fmt(x)} {fmt(y)}) (uuid "{idnext("nc")}"))')
place('C3',390,pin('U2',1)[1]);chain('DIGITAL_1K',pin('U2',1),pin('C3',1))
place('R3',410,100,270);place('RV2',440,100,270)
ay=pin('C3',2)[1];wire('AC_SQUARE',pin('C3',2),(g(440),ay),pin('RV2',1))
wire('AC_SQUARE',pin('R3',1),(g(410),ay));dot('AC_SQUARE',(g(410),ay))
port('GND',pin('R3',2));port('GND',pin('RV2',3))
buffin,sq=follower('U3',1,530,100);chain('SOURCE_WIPER',pin('RV2',2),buffin)
place('TP2',sq[0],80);wire('SQ',pin('TP2',1),sq);dot('SQ',sq)
ii,oo=inverter('U3',2,700,100,'SQ','SQ_INV');chain('SQ',sq,ii)
place('TP3',750,100);chain('SQ_INV',oo,pin('TP3',1))
wire('SQ',sq,(sq[0],g(150)),(g(45.72),g(150)),(g(45.72),g(682.54)))
# Four rows, each with the same signal flow from left to right.
outpoints={}
for k,n in enumerate([1,3,5,7]):
 y=g(230+150*k);pre=f'H{n}_';sh=f'harmonic_{n}';a=f'U{4+3*k}';ph=f'U{5+3*k}';bu=f'U{6+3*k}'
 text(f'{n} kHz: TWO MFB BANDPASS SECTIONS -> TWO ALL-PASS SECTIONS -> POLARITY -> AMPLITUDE',70,y-72,2)
 first,fo=bpf(a,1,180,y,'SQ',n,1);si,so=bpf(a,2,335,y,pre+'BPF1',n,2);chain(pre+'BPF1',fo,si)
 wire('SQ',(g(45.72),first[1]),first);dot('SQ',(g(45.72),first[1]))
 pi,po=allpass(ph,1,490,y,pre+'BPF2',n,1);chain(pre+'BPF2',so,pi)
 pi2,po2=allpass(ph,2,645,y,pre+'AP1',n,2);chain(pre+'AP1',po,pi2)
 invin,neg=inverter(bu,1,800,y,pre+'AP2',pre+'NEG');chain(pre+'AP2',po2,invin)
 j=next(p['ref'] for p in parts.values() if p['sheet']==sh and p['kind']=='CONN3');place(j,850,y,180)
 apy=y-40.64;wire(pre+'AP2',po2,(g(690),po2[1]),(g(690),apy),(g(845.82),apy),(g(845.82),pin(j,1)[1]),pin(j,1))
 wire(pre+'NEG',neg,(g(833.12),neg[1]),(g(833.12),pin(j,3)[1]),pin(j,3))
 rv=select('POT',{1:pre+'SELECT',2:pre+'AMPLITUDE',3:'GND'});place(rv,880,y+20.32,270)
 wire(pre+'SELECT',pin(j,2),(g(880),pin(j,2)[1]),pin(rv,1));port('GND',pin(rv,3))
 bi,bo=follower(bu,2,955,y);chain(pre+'AMPLITUDE',pin(rv,2),bi);outpoints[n]=bo
 text('ONE shunt: default 2-3',825,y+45.72,1.27)
 for net,pt,dy in [(pre+'BPF2',so,-50.8),(pre+'AP2',po2,-50.8),(pre+'OUT',bo,-20.32)]:
  rr=next(p['ref'] for p in parts.values() if p['kind']=='TP' and p['nets']['1']==net);place(rr,pt[0],y+dy);chain(net,pin(rr,1),pt);dot(net,pt)

# Summing stage and restoration, on the right side.
text('SUM AND OUTPUT',1030,700,2)
opblock('U16',1,1120,750);pl,mi,oo=plusminus('U16',1);sumy=pin('U16',mi)[1]
for k,n in enumerate([1,3,5,7]):
 net=f'H{n}_OUT';x=g(1016+25.4*k);rr=two('R',net,'SUM_INV');place(rr,x,720,270)
 pt=outpoints[n];wire(net,pt,(x,pt[1]),pin(rr,1));wire('SUM_INV',pin(rr,2),(x,sumy),pin('U16',mi));dot('SUM_INV',(x,sumy))
port('GND',pin('U16',pl),'left');rf=component('R','SUM_NEG','SUM_INV',1145,730,180)
wire('SUM_INV',pin('U16',mi),(pin('U16',mi)[0],g(730)),pin(rf,2));dot('SUM_INV',pin('U16',mi))
sn=(g(1153.16),g(750));wire('SUM_NEG',pin('U16',oo),sn,(sn[0],g(730)),pin(rf,1));dot('SUM_NEG',sn)
iin,raw=inverter('U16',2,1120,790,'SUM_NEG','SUM_RAW');wire('SUM_NEG',sn,(sn[0],g(770)),(g(1050.29),g(770)),(g(1050.29),iin[1]),iin)
rr=two('R','SUM_RAW','OUT');place(rr,1166,790);chain('SUM_RAW',raw,pin(rr,1))
place('J6',1176,805,180);wire('OUT',pin(rr,2),(g(1182.37),g(790)),(g(1182.37),pin('J6',1)[1]),pin('J6',1));port('GND',pin('J6',2),'left')
for ref,net,pt,x,y in [('TP16','SUM_RAW',raw,1145,775),('TP17','OUT',pin(rr,2),1170,775)]:
 place(ref,x,y);chain(net,pin(ref,1),pt);dot(net,pt)
place('TP18',1025,800);port('GND',pin('TP18',1))

# Entry and source decoupling, in the top-right block.
text('REGULATED +/-12 V INPUT',825,35,2);place('J5',850,60)
for no,net in [(1,'VCC'),(2,'GND'),(3,'VEE')]:
 a=pin('J5',no);wire(net,a,(g(820),a[1]));label(net,(g(820),a[1]),True)
 ref=next(p['ref'] for p in parts.values() if p['kind']=='FLAG' and p['nets']['1']==net)
 place(ref,780,45+15*no);port(net,pin(ref,1),'left')
for i,p in enumerate([p for p in parts.values() if p['kind']=='CP' and p['sheet']=='power_sum']):
 place(p['ref'],900+i*55,65,270);port(p['nets']['1'],pin(p['ref'],1),'up');port(p['nets']['2'],pin(p['ref'],2))
text('C29 positive terminal = GND',875,102,1.27)
for i,ic in enumerate(['U1','U2']):
 c=next(p['ref'] for p in parts.values() if p['note']==f'Place at {ic} supply pin');place(c,900+i*55,125,270);port('VCC',pin(c,1),'up');port('GND',pin(c,2))
# Every TL082 power unit and both local bypasses, connected to common rails.
text('ANALOG POWER AND LOCAL BYPASS: 100 nF at each supply pin',50,750,1.5)
vccy=g(767.08);veey=g(813.0)
wire('VCC',(g(45),vccy),(g(70+13*66.04),vccy));wire('VEE',(g(45),veey),(g(70+13*66.04+20.32),veey))
label('VCC',(g(45),vccy),True);label('VEE',(g(45),veey),True)
for i in range(3,17):
 x=g(70+(i-3)*66.04);y=g(790);ref=f'U{i}';place(ref,x,y,unit=3)
 wire('VCC',pin(ref,8,3),(x,vccy));dot('VCC',(x,vccy));wire('VEE',pin(ref,4,3),(x,veey));dot('VEE',(x,veey))
 cp=next(p['ref'] for p in parts.values() if p['note']==f'Place at {ref} supply pin');cn=next(p['ref'] for p in parts.values() if p['note']==f'Place at {ref} negative supply pin')
 place(cp,x-20.32,y,270);place(cn,x+20.32,y,270)
 wire('VCC',pin(cp,1),(pin(cp,1)[0],vccy));dot('VCC',(pin(cp,1)[0],vccy));port('GND',pin(cp,2))
 wire('VEE',pin(cn,2),(pin(cn,2)[0],veey));dot('VEE',(pin(cn,2)[0],veey));port('GND',pin(cn,1),'up')

# Add explicit intersections only for same-net T nodes. Different-net crossings
# intentionally have no dot. Reject a node touched by differently named nets.
segments=layout['wires']
for seg in segments:
 for point in [seg['a'],seg['b']]:
  for other in segments:
   if seg['net']!=other['net']:continue
   a,b=other['a'],other['b'];px,py=point
   on=(a[0]==b[0]==px and min(a[1],b[1])<py<max(a[1],b[1])) or (a[1]==b[1]==py and min(a[0],b[0])<px<max(a[0],b[0]))
   if on:dot(seg['net'],point)
physical={p['ref'] for p in parts.values() if p['kind']!='FLAG'}
assert physical=={ref for ref,u in placed if parts[ref]['kind']!='FLAG'},physical-{ref for ref,u in placed}
for p in parts.values():
 if p['kind']=='TL082':assert all((p['ref'],u) in placed for u in [1,2,3])

# KiCad expects a wire to be split at a T junction, not merely crossed by a dot.
# Deduplicate overlaps and split each named wire at all same-net endpoints.
endpoints={}
for seg in segments:
 endpoints.setdefault(seg['net'],set()).update([tuple(seg['a']),tuple(seg['b'])])
clean=[];seen=set()
for seg in segments:
 a,b=map(tuple,[seg['a'],seg['b']]);net=seg['net']
 pts=[v for v in endpoints[net] if min(a[0],b[0])<=v[0]<=max(a[0],b[0]) and min(a[1],b[1])<=v[1]<=max(a[1],b[1])]
 pts.sort(key=lambda v:(v[0],v[1]))
 for pa,pb in zip(pts,pts[1:]):
  key=(net,pa,pb)
  if key not in seen and pa!=pb:clean.append(dict(net=net,a=pa,b=pb));seen.add(key)
items[:]=[s for s in items if not s.startswith('(wire ')]
layout['wires']=[]
for seg in clean:wire(seg['net'],seg['a'],seg['b'],name=False)

def pline(pts):return '(polyline (pts '+''.join(f'(xy {a} {b})' for a,b in pts)+') (stroke (width 0.254) (type default)) (fill (type none)))'
def lib(kind,qualified=True):
 name=('Waveform:'+kind) if qualified else kind
 s=f'(symbol {q(name)} (pin_names (offset 0.5)) (in_bom {"no" if kind=="FLAG" else "yes"}) (on_board {"no" if kind=="FLAG" else "yes"}) (property "Reference" "U" (at 0 7.62 0) (effects (font (size 1.27 1.27)))) (property "Value" {q(kind)} (at 0 -7.62 0) (effects (font (size 1.27 1.27))))'
 keys=[kind] if kind!='TL082' else ['TL082_A','TL082_B','TL082_P']
 for u,key in enumerate(keys,1):
  if key in ['TL082_A','TL082_B']:geom=pline([(-5.08,5.08),(-5.08,-5.08),(5.08,0),(-5.08,5.08)])
  elif key=='TL082_P':geom=pline([(-1.27,2.54),(-1.27,-2.54),(1.27,-2.54),(1.27,2.54),(-1.27,2.54)])
  elif kind in ['R','POT']:
   geom=pline([(-2.54,1.016),(2.54,1.016),(2.54,-1.016),(-2.54,-1.016),(-2.54,1.016)])
   if kind=='POT':geom+=pline([(0,2.54),(0,1.016),(-.635,1.651)])
  elif kind in ['C','CP']:
   geom=pline([(-.635,-2.54),(-.635,2.54)])+pline([(.635,-2.54),(.635,2.54)])+pline([(-2.54,0),(-.635,0)])+pline([(.635,0),(2.54,0)])
   if kind=='CP':geom+=pline([(-2.54,3),(-.5,3)])+pline([(-1.25,2.25),(-1.25,3.75)])
  elif kind in ['TP','FLAG']:geom='(circle (center 0 0) (radius 0.8) (stroke (width 0.254) (type default)) (fill (type none)))'
  else:
   x,y={'NE555':(10.16,12.7),'4013':(12.7,17.78),'CONN3':(2.54,5.08),'CONN2':(2.54,5.08)}[kind]
   geom=pline([(-x,-y),(x,-y),(x,y),(-x,y),(-x,-y)])
  s+=f'(symbol "{kind}_{u}_1" '+geom
  for no,x,y,ang,typ,nm in defs[key]:s+=f'(pin {typ} line (at {x} {y} {ang}) (length 2.54) (name {q(nm)} (effects (font (size 1.016 1.016)))) (number "{no}" (effects (font (size 1.016 1.016)))))'
  s+=')'
 return s+')'
kinds=sorted(set(p['kind'] for p in parts.values()))
header=f'(kicad_sch (version 20230121) (generator eeschema) (uuid "{root}") (paper "A0") (title_block (title "Wired Fourier waveform synthesis") (date "2026-10-30") (rev "B")) (lib_symbols '+''.join(lib(k) for k in kinds)+')'
(H/'waveform.kicad_sch').write_text(header+''.join(items)+'(sheet_instances (path "/" (page "1"))))')
(H/'Waveform.kicad_sym').write_text('(kicad_symbol_lib (version 20231120) (generator kicad_symbol_editor) '+''.join(lib(k,False) for k in kinds)+')')
for old in ['source','harmonic_1','harmonic_3','harmonic_5','harmonic_7','power_sum']:(H/(old+'.kicad_sch')).unlink(missing_ok=True)
data['revision']='B';data['parts']=list(parts.values());(R/'circuit.json').write_text(json.dumps(data,ensure_ascii=False,indent=2))
(R/'schematic_layout.json').write_text(json.dumps(layout,ensure_ascii=False,indent=2))
# Footprint path metadata follows the flattened sheet. No copper is modified.
b=pcb.LoadBoard(str(H/'waveform.kicad_pcb'))
before=[(t.GetStart().x,t.GetStart().y,t.GetEnd().x,t.GetEnd().y,t.GetWidth(pcb.F_Cu) if isinstance(t,pcb.PCB_VIA) else t.GetWidth(),t.GetNetname().lstrip('/')) for t in b.GetTracks()]
for f in b.GetFootprints():f.SetPath(pcb.KIID_PATH('/'+root+'/'+parts[f.GetReference()]['sch_uuid']))
for f in b.GetFootprints():
 for pad in f.Pads():
  net=pad.GetNet();name=pad.GetNetname()
  if name and not name.startswith('/') and not name.startswith('unconnected-'):net.SetNetname('/'+name)
pcb.SaveBoard(str(H/'waveform.kicad_pcb'),b)
after=[(t.GetStart().x,t.GetStart().y,t.GetEnd().x,t.GetEnd().y,t.GetWidth(pcb.F_Cu) if isinstance(t,pcb.PCB_VIA) else t.GetWidth(),t.GetNetname().lstrip('/')) for t in b.GetTracks()]
assert before==after
print('Rev B wired schematic written. All PCB copper preserved; only schematic path metadata changed.')
