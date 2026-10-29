#!/usr/bin/env python3
"""Analytical linear model, NOT a vendor SPICE model or a hardware measurement.

MFB bandpass is solved by nodal equations with TL082 A0=200000, GBW=3 MHz.
Two all-pass stages, polarity inverter, gain buffer and summer use that same
one-pole op-amp model. Ignores offsets, slew limiting, noise and component spread.
"""
import json, pathlib, math
import numpy as np
from scipy.optimize import brentq
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
ROOT=pathlib.Path(__file__).resolve().parents[1]
OUT=ROOT/'validation';OUT.mkdir(exist_ok=True)
def A(f): return 200000/(1+1j*f/15)
def bpf(f,c,r2):
 s=2j*np.pi*f; a=A(f)
 m=np.array([[1/220e3+1/r2+s*2*c,-s*c,-s*c],[-s*c,s*c+1/470e3,-1/470e3],[0,a,1]],complex)
 return np.linalg.solve(m,[1/220e3,0,0])[2]
def ap(f,c,r):
 s=2j*np.pi*f;a=A(f)
 return a/(a+2)*(1-s*r*c)/(1+s*r*c)
def invert(f):return -A(f)/(A(f)+2)
def buffer(f):return A(f)/(A(f)+1)
def summer(f):
 # Four inputs and Rf give a noise gain of 5; following inverter has NG=2.
 return (A(f)/(A(f)+5))*(A(f)/(A(f)+2))
caps={1:10e-9,3:3.3e-9,5:2e-9,7:1.5e-9}
settings={}
for n,c in caps.items():
 f=n*1000
 r2=brentq(lambda r:bpf(f,c,r).imag,430,630,xtol=1e-10)
 def raw(r):return bpf(f,c,r2)**2*ap(f,c,r)**2*invert(f)*buffer(f)
 # Default polarity 2-3, phase controls equal and close to 90 degrees each.
 pr=brentq(lambda r:raw(r).imag, .6/(2*np.pi*f*c),1.5/(2*np.pi*f*c))
 gain=1/abs(raw(pr))
 assert 0<gain<1 and 100<pr<200100
 settings[n]=dict(frequency_Hz=f,cap_F=c,filter_R2_ohm=r2,filter_pot_used_ohm=r2-430,
                  phase_total_R_ohm=pr,phase_pot_used_ohm=pr-100,amplitude_fraction=gain,
                  output_peak_V=20/np.pi/n,phase_deg=float(np.angle(raw(pr),deg=True)))
def branch(n,f):
 v=settings[n];c=caps[n]
 return bpf(f,c,v['filter_R2_ohm'])**2*ap(f,c,v['phase_total_R_ohm'])**2*invert(f)*buffer(f)*v['amplitude_fraction']
# Residual harmonics from each filter are retained, not replaced by pure sines.
harmonics=list(range(1,102,2)); t=np.linspace(0,.004,16000,endpoint=False)
wave=np.zeros_like(t); ideal=np.zeros_like(t); per_channel={n:np.zeros_like(t) for n in caps}
spectral=[]
for m in harmonics:
 f=m*1000; ain=20/np.pi/m
 h=sum(branch(n,f) for n in caps)*summer(f)*100000/100100
 out=ain*h
 wave+=np.imag(out*np.exp(2j*np.pi*f*t))
 for n in caps:per_channel[n]+=np.imag(ain*branch(n,f)*np.exp(2j*np.pi*f*t))
 if m in caps:ideal+=ain*np.sin(2*np.pi*f*t)
 spectral.append(dict(order=m,frequency_Hz=f,peak_V=float(abs(out)),phase_deg=float(np.angle(out,deg=True))))
ratio_error=[]
for s in spectral[:4]:
 ratio_error.append(abs(s['peak_V']/spectral[0]['peak_V']*s['order']-1))
assert max(ratio_error)<.06,ratio_error
assert np.max(np.abs(wave))<9
slew=max(np.max(np.abs(np.diff(w)))/(t[1]-t[0])/1e6 for w in [wave,*per_channel.values()])
report=dict(model='Analytical nodal solution; A0=200000, GBW=3MHz, one-pole TL082 approximation; not vendor SPICE and not measured',
 source='Ideal +/-5 V, 50% duty square at SQ; the NE555/CD4013 startup and supply integrity are not simulated',
 channels=settings,spectrum=spectral,waveform_peak_V=float(np.max(wave)),waveform_Vpp=float(np.ptp(wave)),
 max_selected_harmonic_ratio_error_percent=100*max(ratio_error),max_output_slew_V_per_us=float(slew),
 ideal_four_term_Vpp=float(np.ptp(ideal)),checks_passed=True,
 limitations=['No component tolerance Monte Carlo','No vendor nonlinear IC model','No hardware or EasyEDA GUI validation','Calibration is required; fixed untrimmed parts do not satisfy the targets automatically'])
(OUT/'analysis.json').write_text(json.dumps(report,indent=2))
fig,ax=plt.subplots(2,1,figsize=(11,8))
for n in caps:ax[0].plot(t*1000,per_channel[n],label=f'{n} kHz')
ax[0].set(xlim=(0,2),ylabel='V',title='Calibrated branch outputs (including off-band leakage)');ax[0].legend(ncol=4);ax[0].grid(alpha=.3)
ax[1].plot(t*1000,5*np.sign(np.sin(2*np.pi*1000*t)),color='.7',label='10 Vpp square reference')
ax[1].plot(t*1000,ideal,'--',label='Ideal four-term Fourier series')
ax[1].plot(t*1000,wave,label='Linear circuit model, 1..101 odd harmonics')
ax[1].set(xlim=(0,2),xlabel='Time / ms',ylabel='V');ax[1].legend(fontsize=8);ax[1].grid(alpha=.3)
fig.tight_layout();fig.savefig(ROOT/'docs/waveforms.png',dpi=160);plt.close(fig)
fs=np.geomspace(200,20000,1200);fig,ax=plt.subplots(2,1,figsize=(11,8))
for n in caps:
 hs=np.array([branch(n,f) for f in fs]);ax[0].semilogx(fs,20*np.log10(abs(hs)),label=f'{n} kHz')
 ax[1].semilogx(fs,np.angle(hs,deg=True),label=f'{n} kHz')
ax[0].set(ylabel='Gain / dB',ylim=(-100,5),title='Two MFB sections + phase + gain buffer');ax[0].legend(ncol=4)
ax[1].set(xlabel='Frequency / Hz',ylabel='Phase / degrees')
for a in ax:a.grid(alpha=.3)
fig.tight_layout();fig.savefig(ROOT/'docs/frequency_response.png',dpi=160);plt.close(fig)
print(json.dumps({k:v for k,v in report.items() if k not in ['spectrum','channels']},indent=2))
