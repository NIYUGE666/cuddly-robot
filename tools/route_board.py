#!/usr/bin/env python3
"""Run the local router. Rebuild first to replace an earlier routing result."""
import pathlib,subprocess,json
import pcbnew as p
ROOT=pathlib.Path(__file__).resolve().parents[1]
path=ROOT/'hardware/waveform.kicad_pcb'
b=p.LoadBoard(str(path)); grid=.5; W=468; H=472; N=W*H
def pt(x,y):return p.VECTOR2I(p.FromMM(x),p.FromMM(y))
padlist=[]; centers={}; netobjs={}
for fp in b.GetFootprints():
 for pad in fp.Pads():
  code=pad.GetNetCode(); xy=pad.GetPosition(); wh=pad.GetSize()
  if code==0:code=-len(padlist)-1
  x,y=p.ToMM(xy.x),p.ToMM(xy.y)
  padlist.append((code,x,y,p.ToMM(wh.x),p.ToMM(wh.y)))
  centers[round(y/grid)*W+round(x/grid)]=code
  if code>0:netobjs[code]=pad.GetNet()
tmp=pathlib.Path('/tmp/waveform-route');tmp.mkdir(exist_ok=True)
(tmp/'input.txt').write_text(f'{W} {H} {grid} {len(padlist)}\n'+'\n'.join(' '.join(map(str,a)) for a in padlist))
subprocess.run(['g++','-O3','-std=c++17',str(ROOT/'tools/grid_router.cpp'),'-o',str(tmp/'router')],check=True)
with (ROOT/'validation/router.log').open('w') as log:
 result=subprocess.run([str(tmp/'router'),str(tmp/'input.txt'),str(tmp/'paths.txt')],stderr=log)
def segment(x1,y1,x2,y2,layer,net):
 if abs(x1-x2)+abs(y1-y2)<1e-6:return
 t=p.PCB_TRACK(b);t.SetStart(pt(x1,y1));t.SetEnd(pt(x2,y2));t.SetWidth(p.FromMM(.25));t.SetLayer(p.F_Cu if layer==0 else p.B_Cu);t.SetNet(netobjs[net]);b.Add(t)
# Short pad-to-grid stubs are entirely within the corresponding through-hole pads.
for code,x,y,_,_ in padlist:
 if code<=0:continue
 for layer in [0,1]:segment(x,y,round(x/grid)*grid,round(y/grid)*grid,layer,code)
via_set=set()
for line in (tmp/'paths.txt').read_text().splitlines():
 a=list(map(int,line.split()));net,count=a[:2];ids=a[2:];assert len(ids)==count
 def decode(c):return ((c%N)%W)*grid,((c%N)//W)*grid,c//N
 if len(ids)<2:continue
 start=decode(ids[0]);last=start;direction=None
 for ii in range(1,len(ids)):
  now=decode(ids[ii]); d=(now[0]-last[0],now[1]-last[1],now[2]-last[2])
  if d[2]:
   segment(start[0],start[1],last[0],last[1],last[2],net)
   cell=ids[ii]%N
   inside_pad=any(code==net and (now[0]-x)**2+(now[1]-y)**2 < (min(w,h)/2-.13)**2 for code,x,y,w,h in padlist)
   if not inside_pad and (cell,net) not in via_set:
    v=p.PCB_VIA(b);v.SetPosition(pt(now[0],now[1]));v.SetWidth(p.F_Cu,p.FromMM(.6));v.SetDrill(p.FromMM(.3));v.SetViaType(p.VIATYPE_THROUGH);v.SetLayerPair(p.F_Cu,p.B_Cu);v.SetNet(netobjs[net]);b.Add(v);via_set.add((cell,net))
   start=now;direction=None
  elif direction is not None and d!=direction:
   segment(start[0],start[1],last[0],last[1],last[2],net);start=last
  if not d[2]:direction=d
  last=now
 segment(start[0],start[1],last[0],last[1],last[2],net)
p.SaveBoard(str(path),b)
print(json.dumps({'router_exit':result.returncode,'track_segments':sum(isinstance(t,p.PCB_TRACK) and not isinstance(t,p.PCB_VIA) for t in b.GetTracks()),'vias':len(via_set)}))
raise SystemExit(result.returncode)
