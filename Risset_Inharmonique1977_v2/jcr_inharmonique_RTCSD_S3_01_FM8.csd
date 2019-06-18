<CsoundSynthesizer>
<CsInstruments>
; ===================================================================
; RISSET'S INHARMONIQUE (1977)
; Adapted from
; Lorrain, Denis (1980)
;    "Analyse de la bande magnetique de l'oeuvre de Jean-Claude Risset - Inharmonique"
;    in Rapports IRCAM 26/80.
; different version of SV1 values for PLF6 provided by Jean-Claude Risset
; 		Developed by:
; 		Antonio de Sousa Dias (a.sousadias@belasartes.ulisboa.pt)
; 		José Luis Ferreira
; 		2011-19
; ===================================================================

sr      = 48000
ksmps   = 8
nchnls  = 2
 

giamp_fact	= 16	; Amplitude factor (not in the original orchestra)

; S 3 - global variables:
giamp_factLB1113 = 8;
gaB3206    init 0
gaB3207    init 0

; ==============================
; S 3 - FM8.ORC:
; ==============================
instr 3120, 3121
;			 FM INSTRUMENTS                     ;
idur	=	1/p3
iamp	=	p4 * giamp_fact   ;  normalize from 2048 to 32000
ifc	=	p5
ifm	=	p6
imax	=	p8 * ifm
imin	=	p7 * ifm
iphs	=	p9 / 512

ifn1 = 3101
ifn2 = 3102
ifn3 = 3103
ifn5 = 3105

ichannel = ( p1 == 3120 ? 1 : 2 )

aamp	oscili	iamp, idur, ifn2, iphs

a1	oscili	imax, idur, ifn3
a2	oscili	(a1 + imin), ifm, ifn1
a3  	oscili 	aamp, (ifc + a2), ifn1
a4	oscili 	a3, idur, ifn5

	outch ichannel, a4
endin




</CsInstruments>
<CsScore>
; ==============================
;  S 3 - FM8.SCO fn:
; ==============================
f3101	0 4096	10 1
f3102 	0 512	-5	1 20 1 40 .3 40 1 50 1 10 .3 20 1 20 1 100  .3 100 1 12 1
f3103	0 512	-7	0 100 .2 50 .15 5 .15 45 .05 40 .2 20 .16 20 .25 20 .05 15 .07 15 .02 70 .1 10 .5 40 .1 62 0
f3105	0 512	-5	.0001 60 .4 196 1.0 44 .3 50 .5 162 .0001

; ==============================
;  S 3 - FM8.SCO not:
; ==============================
; Sec 3 - from 03_10 - 03_56
;P3	P2	P4	P5	P6	P7	P8	P9	P10
;			amp	fCar	fMod	Imin	Imax	Phs

i3120	0	13	312.5	440	440	0	2	0
i3121	0	16	312.5	440	220	0	3	128
f0 16	; SEC 36
s	

i3120	1	30	781.2	165	55	0	10	0
i3121	1	30	781.2	165.4	55.1	0	10	128

i3120	1	20	546.8	220	110	0	8	0
i3121	1	20	546.8	440.5	110.13	0	7	200
f0	31	; TER 31
s

</CsScore>
</CsoundSynthesizer>
<bsbPanel>
 <label>Widgets</label>
 <objectName/>
 <x>72</x>
 <y>179</y>
 <width>400</width>
 <height>200</height>
 <visible>true</visible>
 <uuid/>
 <bgcolor mode="nobackground">
  <r>231</r>
  <g>46</g>
  <b>255</b>
 </bgcolor>
 <bsbObject type="BSBVSlider" version="2">
  <objectName>slider1</objectName>
  <x>5</x>
  <y>5</y>
  <width>20</width>
  <height>100</height>
  <uuid>{54c876ec-5f36-4555-a184-c28782e52583}</uuid>
  <visible>true</visible>
  <midichan>0</midichan>
  <midicc>-3</midicc>
  <minimum>0.00000000</minimum>
  <maximum>1.00000000</maximum>
  <value>0.00000000</value>
  <mode>lin</mode>
  <mouseControl act="jump">continuous</mouseControl>
  <resolution>-1.00000000</resolution>
  <randomizable group="0">false</randomizable>
 </bsbObject>
</bsbPanel>
<bsbPresets>
</bsbPresets>
