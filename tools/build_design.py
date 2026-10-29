#!/usr/bin/env python3
"""Generate the editable reference design. Uses the system KiCad pcbnew module.

No downloads, secrets, or vendor library identifiers are needed. All pin numbers,
connections and component values are kept in circuit.json for independent review.
"""
import csv, json, math, pathlib, uuid, shutil
import pcbnew as pcb

ROOT = pathlib.Path(__file__).resolve().parents[1]
HW = ROOT / 'hardware'
HW.mkdir(exist_ok=True)
def uid(s): return str(uuid.uuid5(uuid.NAMESPACE_URL, 'waveform-synthesis/'+s))
def q(s): return json.dumps(str(s), ensure_ascii=False)
def num(x): return f'{x:.4f}'.rstrip('0').rstrip('.')
parts=[]
counts={}
sheet='source'
def add(kind, value, nets, ref=None, note=''):
    prefix={'R':'R','C':'C','CP':'C','POT':'RV','TL082':'U','NE555':'U','4013':'U','CONN3':'J','CONN2':'J','TP':'TP','FLAG':'#FLG'}[kind]
    if ref is None:
        counts[prefix]=counts.get(prefix,0)+1
        ref=prefix+str(counts[prefix])
    else:
        if ref.startswith(prefix) and ref[len(prefix):].isdigit(): counts[prefix]=max(counts.get(prefix,0),int(ref[len(prefix):]))
    p=dict(ref=ref,kind=kind,value=value,nets={str(k):v for k,v in nets.items()},sheet=sheet,note=note)
    parts.append(p)
    return ref
def R(value,a,b,**kw): return add('R',value,{1:a,2:b},**kw)
def C(value,a,b,polar=False,**kw): return add('CP' if polar else 'C',value,{1:a,2:b},**kw)
def pot(value,a,w,b,**kw): return add('POT',value,{1:a,2:w,3:b},**kw)
def tp(net): return add('TP',net,{1:net})
def op(ref,a_plus,a_minus,a_out,b_plus,b_minus,b_out):
    return add('TL082','TL082CP',{1:a_out,2:a_minus,3:a_plus,4:'VEE',5:b_plus,6:b_minus,7:b_out,8:'VCC'},ref=ref)

# Source: a conventional NE555 astable clocks a CMOS divide-by-two flip-flop.
add('NE555','NE555P',{1:'GND',2:'TIMING',3:'CLOCK_2K',4:'VCC',5:'CTRL',6:'TIMING',7:'DISCHARGE',8:'VCC'},ref='U1')
add('4013','CD4013BE',{1:'DIGITAL_1K',2:'D_FEEDBACK',3:'CLOCK_2K',4:'GND',5:'D_FEEDBACK',6:'GND',7:'GND',8:'GND',9:'GND',10:'VCC',11:'GND',12:None,13:None,14:'VCC'},ref='U2')
R('10k','VCC','DISCHARGE',note='1% RA')
R('27k','DISCHARGE','FREQ_R')
pot('20k','FREQ_R','TIMING','TIMING',note='Frequency: nominal 4.07k used; wiper strapped to pin 3')
C('10n','TIMING','GND',note='C0G or film, 1%')
C('10n','CTRL','GND')
C('10u/25V','DIGITAL_1K','AC_SQUARE',polar=True,note='Positive toward CD4013; DC removal')
R('1M','AC_SQUARE','GND')
pot('100k','AC_SQUARE','SOURCE_WIPER','GND',note='Set SQ to 10.00 Vpp')
op('U3','SOURCE_WIPER','SQ','SQ','GND','SQ_INV_IN','SQ_INV')
R('100k','SQ','SQ_INV_IN'); R('100k','SQ_INV','SQ_INV_IN')
tp('CLOCK_2K'); tp('SQ'); tp('SQ_INV')

channels=[]
for k,n in enumerate([1,3,5,7]):
    sheet=f'harmonic_{n}'
    prefix=f'H{n}_'
    N=lambda s: prefix+s
    cv={1:'10n',3:'3.3n',5:'2n',7:'1.5n'}[n]
    amps=[]
    for stage in [1,2]:
        inp='SQ' if stage==1 else N('BPF1')
        node=N(f'NODE{stage}'); inv=N(f'INV{stage}'); out=N(f'BPF{stage}')
        R('220k',inp,node,note='MFB R1, 0.1% preferred')
        R('430',node,N(f'TUNE{stage}'))
        pot('200',N(f'TUNE{stage}'),'GND','GND',note=f'Tune section {stage} to {n} kHz; wiper strapped to pin 3')
        R('470k',out,inv,note='MFB R3, 0.1% preferred')
        C(cv,node,out,note='MFB C1: C0G/film 1%, match C2')
        C(cv,node,inv,note='MFB C2: C0G/film 1%, match C1')
        amps += ['GND',inv,out]
    op(f'U{4+3*k}',*amps)
    amps=[]
    for stage in [1,2]:
        inp=N('BPF2') if stage==1 else N('AP1')
        low=N(f'LP{stage}'); inv=N(f'APINV{stage}'); out=N(f'AP{stage}')
        R('10k',inp,inv); R('10k',out,inv)
        R('100',inp,N(f'PHR{stage}'))
        pot('200k',N(f'PHR{stage}'),low,low,note='All-pass phase adjust; wiper strapped to pin 3')
        C(cv,low,'GND',note='All-pass capacitor, C0G/film 1%')
        amps += [low,inv,out]
    op(f'U{5+3*k}',*amps)
    R('10k',N('AP2'),N('POLINV')); R('10k',N('NEG'),N('POLINV'))
    add('CONN3','PHASE_POLARITY',{1:N('AP2'),2:N('SELECT'),3:N('NEG')},note='Fit ONE shunt: default 2-3 (inverted), optional 1-2')
    pot('10k',N('SELECT'),N('AMPLITUDE'),'GND',note='Amplitude trim, nominal fraction 0.8764')
    op(f'U{6+3*k}','GND',N('POLINV'),N('NEG'),N('AMPLITUDE'),N('OUT'),N('OUT'))
    tp(N('BPF2')); tp(N('AP2')); tp(N('OUT'))
    channels.append(dict(n=n,C=cv,filter_ic=f'U{4+3*k}',phase_ic=f'U{5+3*k}',buffer_ic=f'U{6+3*k}'))

sheet='power_sum'
for n in [1,3,5,7]: R('100k',f'H{n}_OUT','SUM_INV',note='Matched 0.1% summing resistors')
R('100k','SUM_NEG','SUM_INV'); R('100k','SUM_NEG','RESTORE_INV'); R('100k','SUM_RAW','RESTORE_INV')
op('U16','GND','SUM_INV','SUM_NEG','GND','RESTORE_INV','SUM_RAW')
R('100','SUM_RAW','OUT',note='Output isolation: external load >=100k for <0.1% amplitude error')
tp('SUM_RAW'); tp('OUT'); tp('GND')
add('CONN3','POWER_12V',{1:'VCC',2:'GND',3:'VEE'},note='Pin 1 +12 V; pin 2 ground; pin 3 -12 V')
add('CONN2','WAVE_OUT',{1:'OUT',2:'GND'})
C('47u/25V','VCC','GND',polar=True)
C('47u/25V','GND','VEE',polar=True,note='Positive to GND, negative to -12 V')
for ic in range(1,17):
    C('100n','VCC','GND',note=f'Place at U{ic} supply pin')
    if ic>=3: C('100n','GND','VEE',note=f'Place at U{ic} negative supply pin')
for net in ['VCC','GND','VEE']: add('FLAG','PWR_FLAG',{1:net})

# Small, embedded symbol library: physical IC pin numbers are explicit.
# Coordinates follow KiCad library coordinates (positive Y is up).
pins={
 'R':[(1,-5.08,0,0,'passive','1'),(2,5.08,0,180,'passive','2')],
 'C':[(1,-5.08,0,0,'passive','1'),(2,5.08,0,180,'passive','2')],
 'CP':[(1,-5.08,0,0,'passive','+'),(2,5.08,0,180,'passive','-')],
 'POT':[(1,-5.08,0,0,'passive','1'),(2,0,5.08,270,'passive','W'),(3,5.08,0,180,'passive','3')],
 'CONN3':[(1,-5.08,2.54,0,'passive','1'),(2,-5.08,0,0,'passive','2'),(3,-5.08,-2.54,0,'passive','3')],
 'CONN2':[(1,-5.08,1.27,0,'passive','1'),(2,-5.08,-1.27,0,'passive','2')],
 'TP':[(1,0,-2.54,90,'passive','TP')],
 'FLAG':[(1,0,-2.54,90,'power_out','POWER')],
 'TL082':[(3,-10.16,7.62,0,'input','+A'),(2,-10.16,2.54,0,'input','-A'),(1,10.16,5.08,180,'output','OUT_A'),(5,-10.16,-2.54,0,'input','+B'),(6,-10.16,-7.62,0,'input','-B'),(7,10.16,-5.08,180,'output','OUT_B'),(8,0,15.24,270,'power_in','V+'),(4,0,-15.24,90,'power_in','V-')],
 'NE555':[(8,0,15.24,270,'power_in','VCC'),(1,0,-15.24,90,'power_in','GND'),(2,-12.7,7.62,0,'input','TRIG'),(6,-12.7,2.54,0,'input','THRES'),(4,-12.7,-2.54,0,'input','RESET'),(5,-12.7,-7.62,0,'input','CTRL'),(3,12.7,5.08,180,'output','OUT'),(7,12.7,-5.08,180,'open_collector','DISCH')],
 '4013':[(14,0,20.32,270,'power_in','VDD'),(7,0,-20.32,90,'power_in','VSS'),(5,-15.24,12.7,0,'input','D1'),(3,-15.24,7.62,0,'input','CLK1'),(6,-15.24,2.54,0,'input','SET1'),(4,-15.24,-2.54,0,'input','RESET1'),(9,-15.24,-7.62,0,'input','D2'),(11,-15.24,-12.7,0,'input','CLK2'),(8,15.24,-7.62,180,'input','SET2'),(10,15.24,-12.7,180,'input','RESET2'),(1,15.24,12.7,180,'output','Q1'),(2,15.24,7.62,180,'output','~Q1'),(13,15.24,2.54,180,'output','Q2'),(12,15.24,-2.54,180,'output','~Q2')]
}
fps={
 'R':'Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal',
 'C':'Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm',
 'CP':'Capacitor_THT:CP_Radial_D5.0mm_P2.00mm',
 'POT':'Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical',
 'TL082':'Package_DIP:DIP-8_W7.62mm', 'NE555':'Package_DIP:DIP-8_W7.62mm',
 '4013':'Package_DIP:DIP-14_W7.62mm',
 'CONN3':'Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical',
 'CONN2':'Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical',
 'TP':'TestPoint:TestPoint_THTPad_D1.5mm_Drill0.7mm', 'FLAG':''
}
def line(a,b):
    return f'(polyline (pts (xy {a[0]} {a[1]}) (xy {b[0]} {b[1]})) (stroke (width 0.254) (type default)) (fill (type none)))'
def box(x,y): return f'(rectangle (start {-x} {-y}) (end {x} {y}) (stroke (width 0.254) (type default)) (fill (type background)))'
def symbol(kind,qualified=True):
    name=('Waveform:'+kind) if qualified else kind
    geom=box(2.54,1.016)
    if kind in ['C','CP']:
        geom=line((-0.635,-2.54),(-0.635,2.54))+line((0.635,-2.54),(0.635,2.54))+line((-2.54,0),(-0.635,0))+line((0.635,0),(2.54,0))
        if kind=='CP': geom+=line((-2.54,3),(-0.5,3))+line((-1.25,2.25),(-1.25,3.75))
    elif kind=='POT': geom+=line((0,2.54),(0,1.016))+line((0,1.016),(-.635,1.651))
    elif kind=='TL082':
        geom=''
        for y in [5.08,-5.08]:
            geom+=line((-7.62,y+3.81),(-7.62,y-3.81))+line((-7.62,y+3.81),(7.62,y))+line((-7.62,y-3.81),(7.62,y))
        geom+=line((0,12.7),(0,10.16))+line((0,-12.7),(0,-10.16))
    elif kind=='NE555': geom=box(10.16,12.7)
    elif kind=='4013': geom=box(12.7,17.78)
    elif kind in ['TP','FLAG']: geom='(circle (center 0 0) (radius 0.8) (stroke (width 0.254) (type default)) (fill (type none)))'
    elif kind.startswith('CONN'): geom=box(2.54,5.08)
    pp=''
    for no,x,y,ang,typ,nm in pins[kind]:
        length=2.54
        # Left/right resistor/cap leads terminate at the body.
        pp+=f'(pin {typ} line (at {x} {y} {ang}) (length {length}) (name {q(nm)} (effects (font (size 1 1)))) (number "{no}" (effects (font (size 1 1)))))'
    return f'(symbol {q(name)} (pin_names (offset 0.5)) (in_bom {"no" if kind=="FLAG" else "yes"}) (on_board {"no" if kind=="FLAG" else "yes"}) (property "Reference" "{ "U" if kind in ["TL082","NE555","4013"] else "X"}" (at 0 3.81 0) (effects (font (size 1.27 1.27)))) (property "Value" {q(kind)} (at 0 -3.81 0) (effects (font (size 1.27 1.27)))) (symbol "{kind}_0_1" {geom}) (symbol "{kind}_1_1" {pp}))'

sheet_names=['source','harmonic_1','harmonic_3','harmonic_5','harmonic_7','power_sum']
root_uuid=uid('root')
sheet_ids={s:uid('sheet/'+s) for s in sheet_names}
sheet_uuids={s:uid('sheetdoc/'+s) for s in sheet_names}
for sh in sheet_names:
    sub=[p for p in parts if p['sheet']==sh]
    kinds=sorted(set(p['kind'] for p in sub))
    content=f'(kicad_sch (version 20230121) (generator eeschema) (uuid "{sheet_uuids[sh]}") (paper "A2") (title_block (title {q("Waveform synthesis / "+sh)}) (date "2026-10-29") (rev "A") (company "NE555 + TL082 / +/-12 V")) (lib_symbols '+''.join(symbol(k) for k in kinds)+')'
    content+=f'(text {q("All connections use named global nets. VCC=+12V; VEE=-12V; GND=0V. See design notes for topology and calibration.")} (at 20 12 0) (effects (font (size 1.5 1.5)) (justify left)) (uuid "{uid(sh+"note")}"))'
    # 7 columns of 76.2 mm, 7 rows of 50.8 mm on A2.
    for i,p in enumerate(sub):
        x=38.1+(i%7)*76.2; y=50.8+(i//7)*50.8
        p['sch_uuid']=uid(p['ref']); p['sch_xy']=[x,y]
        kind=p['kind']; isflag=kind=='FLAG'
        fp=fps[kind]
        content+=f'(symbol (lib_id "Waveform:{kind}") (at {num(x)} {num(y)} 0) (unit 1) (in_bom {"no" if isflag else "yes"}) (on_board {"no" if isflag else "yes"}) (dnp no) (uuid "{p["sch_uuid"]}")'
        for prop,val,dy,hide in [('Reference',p['ref'],-22 if kind=='4013' else -18 if kind in ['TL082','NE555'] else -9,False),('Value',p['value'],23 if kind=='4013' else 19 if kind in ['TL082','NE555'] else 8,False),('Footprint',fp,0,True)]:
            content+=f'(property {q(prop)} {q(val)} (at {num(x)} {num(y+dy)} 0) (effects (font (size 1.1 1.1)) {"hide" if hide else ""}))'
        for no,*_ in pins[kind]: content+=f'(pin "{no}" (uuid "{uid(p["ref"]+"pin"+str(no))}"))'
        content+=f'(instances (project "waveform" (path "/{root_uuid}/{sheet_ids[sh]}" (reference {q(p["ref"])}) (unit 1)))))'
        for no,dx,dy,ang,*_ in pins[kind]:
            net=p['nets'][str(no)]; px=x+dx; py=y-dy
            if net is None:
                content+=f'(no_connect (at {num(px)} {num(py)}) (uuid "{uid(p["ref"]+"nc"+str(no))}"))'; continue
            # A short wire makes each electrical endpoint visually unambiguous.
            vx,vy={0:(-15.24,0),180:(15.24,0),90:(0,2.54),270:(0,-2.54)}[ang]
            ex,ey=px+vx,py+vy
            content+=f'(wire (pts (xy {num(px)} {num(py)}) (xy {num(ex)} {num(ey)})) (stroke (width 0) (type default)) (uuid "{uid(p["ref"]+"wire"+str(no))}"))'
            rot={0:0,180:180,90:90,270:270}[ang]
            content+=f'(global_label {q(net)} (shape bidirectional) (at {num(ex)} {num(ey)} {rot}) (effects (font (size 0.95 0.95)) (justify {"right" if rot in [180,270] else "left"})) (uuid "{uid(p["ref"]+"label"+str(no))}") (property "Intersheetrefs" "${{INTERSHEET_REFS}}" (at {num(ex)} {num(ey)} {rot}) (effects (font (size 1 1)) hide)))'
    content+=')'
    (HW/(sh+'.kicad_sch')).write_text(content)

root=f'(kicad_sch (version 20230121) (generator eeschema) (uuid "{root_uuid}") (paper "A3") (title_block (title "1 kHz Fourier waveform synthesis") (date "2026-10-29") (rev "A")) (lib_symbols)'
for i,sh in enumerate(sheet_names):
    x=30+(i%3)*125; y=40+(i//3)*95
    root+=f'(sheet (at {x} {y}) (size 105 65) (stroke (width 0.1524) (type default)) (fill (color 0 0 0 0)) (uuid "{sheet_ids[sh]}") (property "Sheetname" {q(sh)} (at {x} {y-1} 0) (effects (font (size 1.5 1.5)) (justify left bottom))) (property "Sheetfile" "{sh}.kicad_sch" (at {x} {y+66} 0) (effects (font (size 1.27 1.27)) (justify left top))) (instances (project "waveform" (path "/{root_uuid}" (page "{i+2}")))))'
root+='(text "NE555 2 kHz -> CD4013 /2 -> 10 Vpp SQ -> 1/3/5/7 kHz BPF -> phase / amplitude -> sum\\nExternal regulated +12 V / GND / -12 V. High impedance output measurement." (at 30 250 0) (effects (font (size 2 2)) (justify left)) (uuid "'+uid('rootnote')+'")) (sheet_instances (path "/" (page "1"))))'
(HW/'waveform.kicad_sch').write_text(root)
(HW/'Waveform.kicad_sym').write_text('(kicad_symbol_lib (version 20231120) (generator kicad_symbol_editor) '+''.join(symbol(k,False) for k in pins)+')')
(HW/'sym-lib-table').write_text('(sym_lib_table (lib (name "Waveform") (type "KiCad") (uri "${KIPRJMOD}/Waveform.kicad_sym") (options "") (descr "Self-contained design symbols")))')

# Keep every footprint in the project so imports do not depend on installed libs.
local=HW/'Waveform.pretty'; local.mkdir(exist_ok=True)
for fp in set(fps.values())-{''}:
    lib,name=fp.split(':'); shutil.copyfile('/usr/share/kicad/footprints/'+lib+'.pretty/'+name+'.kicad_mod',local/(name+'.kicad_mod'))
(HW/'fp-lib-table').write_text('(fp_lib_table (lib (name "Waveform") (type "KiCad") (uri "${KIPRJMOD}/Waveform.pretty") (options "") (descr "Bundled original KiCad footprints")))')
# Change schematic footprints to the bundled library IDs.
for f in HW.glob('*.kicad_sch'):
    text=f.read_text()
    for old in set(fps.values())-{''}: text=text.replace(q(old),q('Waveform:'+old.split(':')[1]))
    f.write_text(text)

# PCB placement. Wide channel columns allow hand assembly and probing.
board=pcb.BOARD(); board.SetCopperLayerCount(2)
board.GetDesignSettings().SetCopperLayerCount(2)
netnames=sorted({v for p in parts for v in p['nets'].values() if v is not None})
netnames += ['unconnected-(U2-~Q2-Pad12)', 'unconnected-(U2-Q2-Pad13)']
nets={}
for net in netnames:
    obj=pcb.NETINFO_ITEM(board,net); board.Add(obj); nets[net]=obj
def mm(x,y): return pcb.VECTOR2I(pcb.FromMM(x),pcb.FromMM(y))
def place(p,x,y,rotation=0):
    lib,name=fps[p['kind']].split(':')
    fp=pcb.FootprintLoad(str(local),name)
    fp.SetReference(p['ref']); fp.SetValue(p['value'])
    fp.SetAttributes(fp.GetAttributes() & ~pcb.FP_EXCLUDE_FROM_BOM)
    fp.SetFPID(pcb.LIB_ID('Waveform',name))
    fp.SetPath(pcb.KIID_PATH(f'/{root_uuid}/{sheet_ids[p["sheet"]]}/{p["sch_uuid"]}'))
    fp.SetOrientationDegrees(rotation)
    fp.SetPosition(mm(x,y))
    fp.Reference().SetTextSize(mm(.9,.9)); fp.Reference().SetTextThickness(pcb.FromMM(.15))
    fp.Value().SetVisible(False)
    for pad in fp.Pads():
        net=p['nets'].get(pad.GetNumber())
        if p['ref']=='U2' and pad.GetNumber() in ['12','13']:
            net='unconnected-(U2-'+('~Q2' if pad.GetNumber()=='12' else 'Q2')+'-Pad'+pad.GetNumber()+')'
        if net: pad.SetNet(nets[net])
    board.Add(fp); p['pcb_xy']=[x,y]; p['footprint']='Waveform:'+name
    return fp
byref={p['ref']:p for p in parts}
# Branches use ordered functional blocks; all coordinates are millimetres.
for k,n in enumerate([1,3,5,7]):
    xx=10+55*k
    sub=[p for p in parts if p['sheet']==f'harmonic_{n}']
    for i,p in enumerate(sub):
        if p['kind']=='TL082':
            stage=(int(p['ref'][1:])-(4+3*k))
            place(p,xx+stage*17.78,14)
        else:
            # Passive rows are below a dedicated IC and local bypass lane.
            ids=[a for a in sub if a['kind']!='TL082']; j=ids.index(p)
            col=j%3; row=j//3
            place(p,xx+col*17.78,49.56+row*10.16)
    t=pcb.PCB_TEXT(board); t.SetText(f'{n} kHz / filter - phase - gain'); t.SetPosition(mm(xx+23,5)); t.SetTextSize(mm(1,1)); t.SetTextThickness(pcb.FromMM(.15)); t.SetLayer(pcb.F_SilkS); board.Add(t)
# Source and summer are along the bottom. ICs get separate lanes.
for sh,ybase in [('source',163),('power_sum',200)]:
    sub=[p for p in parts if p['sheet']==sh and p['kind']!='FLAG']
    basic=[p for p in sub if p['kind'] not in ['TL082','NE555','4013'] and not p['note'].startswith('Place at U')]
    for p in sub:
        if p['kind'] in ['TL082','NE555','4013']:
            if sh=='source': x={ 'U1':12,'U2':40,'U3':68}[p['ref']]; y=ybase
            else: x=12; y=ybase
            place(p,x,y)
        elif p in basic:
            j=basic.index(p)
            x=97+(j%7)*17.78; y=ybase+(j//7)*10.16
            place(p,x,y)
for p in parts:
    if p['kind']=='C' and p['note'].startswith('Place at U'):
        place(p,250,250)
# Relocate decoupling capacitors beside their associated DIP, not in the power grid.
fpmap={f.GetReference():f for f in board.GetFootprints()}
for p in parts:
    if p['kind']=='C' and p['note'].startswith('Place at U'):
        import re
        ref=re.search(r'U\d+',p['note']).group()
        ic=fpmap[ref]; pos=ic.GetPosition(); x=pcb.ToMM(pos.x); y=pcb.ToMM(pos.y)
        # Place to the right, separate positive and negative bypass caps.
        dx,dy=(12.7,0) if ref=='U2' else (0,22.86 if 'negative' in p['note'] else 15.24)
        fpmap[p['ref']].SetPosition(mm(x+dx,y+dy))
        p['pcb_xy']=[x+dx,y+dy]
for a,b in [((2,2),(231,2)),((231,2),(231,233)),((231,233),(2,233)),((2,233),(2,2))]:
    e=pcb.PCB_SHAPE(); e.SetShape(pcb.SHAPE_T_SEGMENT); e.SetStart(mm(*a)); e.SetEnd(mm(*b)); e.SetLayer(pcb.Edge_Cuts); e.SetWidth(pcb.FromMM(.05)); board.Add(e)
pcb.SaveBoard(str(HW/'waveform.kicad_pcb'),board)
project={'meta':{'filename':'waveform.kicad_pro','version':1},'board':{'design_settings':{'rules':{'min_clearance':0.2,'min_track_width':0.25,'min_via_diameter':0.6,'min_through_hole_diameter':0.3,'min_hole_clearance':0.25,'min_copper_edge_clearance':0.5},'defaults':{'board_outline_line_width':0.05,'copper_line_width':0.25}}},'net_settings':{'classes':[{'name':'Default','clearance':0.2,'track_width':0.25,'via_diameter':0.6,'via_drill':0.3,'microvia_diameter':0.3,'microvia_drill':0.1,'diff_pair_width':0.25,'diff_pair_gap':0.25,'diff_pair_via_gap':0.25}],'meta':{'version':3}},'schematic':{'erc':{'erc_exclusions':[]}}}
(HW/'waveform.kicad_pro').write_text(json.dumps(project,indent=2))
(ROOT/'circuit.json').write_text(json.dumps({'revision':'A','supply_V':[12,0,-12],'channels':channels,'parts':parts},ensure_ascii=False,indent=2))
with (ROOT/'hardware'/'BOM.csv').open('w',newline='') as f:
    w=csv.writer(f,lineterminator="\n"); w.writerow(['Reference','Value','Type','Footprint','Sheet','Notes'])
    for p in parts:
        if p['kind']!='FLAG': w.writerow([p['ref'],p['value'],p['kind'],p.get('footprint',''),p['sheet'],p['note']])
print(f'Generated {len(parts)-3} physical components, {len(netnames)} nets, six schematic sheets plus root.')
