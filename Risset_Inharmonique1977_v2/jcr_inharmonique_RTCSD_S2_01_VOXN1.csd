<CsoundSynthesizer>
<CsInstruments>
; ===================================================================
; RISSET'S INHARMONIQUE (1977)
; Adapted from
; Lorrain, Denis (1980)
;    "Analyse de la bande magnetique de l'oeuvre de Jean-Claude Risset - Inharmonique"
;    in Rapports IRCAM 26/80.
; different version of SV1 values for PLF6 provided by Jean-Claude Risset
; 		Developed by
; 		  Antonio de Sousa Dias (a.sousadias@belasartes.ulisboa.pt)
; 		  José Luis Ferreira
; 		2011-19
; ===================================================================

sr      = 48000
ksmps   = 8
nchnls  = 2

giamp_fact	= 16	; Amplitude factor (not in the original orchestra)


; ==============================
; S 2 - VOXN1.ORC:
; ==============================
instr 2105
iDUR	=	1 / p3
iP5	=	p4 * 0.3125 * giamp_fact	; (not p4)
iP6	=	p5
iP10	=	p9
iP11	=	p10
iP12	=	p11
iP13	=	p12
iP14	=	p13

ifn1 = 2101
ifn5 = 2105
ifn6 = 2106

aB4     oscili	iP6,  iDUR,  ifn5
aB5     oscili	iP5,  (aB4 + iP10),  ifn1
aB6     oscili	iP5,  (aB4 + iP11),  ifn1
aB7     oscili	iP5,  (aB4 + iP12),  ifn1
aB8     oscili	iP5,  (aB4 + iP13),  ifn1
aB9     oscili	iP5,  (aB4 + iP14),  ifn1
aB3	=	aB5+aB6+aB7+aB8+aB9
aB3     oscili 	aB3, iDUR, ifn6
	outch 1, aB3, 2, aB3
endin


</CsInstruments>
<CsScore>
; ==============================
;  S 2 - VOXN1.SCO fn:
; ==============================
; Sinus wave
f2101	0	4096	10	1
; Frequency variation control
f2105	0 512	7	0.985	100	1	412	0.99
; Global envelope
f2106	0 512	5	0.001	100	1	320	0.1	80	0.001	12	0.00000001


; ==============================
;  S 2 - VOXN1.SCO not:
; ==============================
;		a1	a2	freqR	fund	Instr	i1	i2	i3	i4	i5
;SV1 0 1080	1000	200	506	500	5	1	2.8	7.2	10	13
; Original score adapted to csound syntax
/*
plf 5 0 8 1080 0 0 0 0 2105 
i 2105 1 19 1800 324
i 2105 6 8 2000 273
i 2105 7 15 1400 343
i 2105 19.2 7 1800 246
i 2105 20.8 5 3000 466
i 2105 21.3 6 4000 880
i 2105 24 5 5  600 369
i 2105 24.6 4  500 523
f0 32
s
*/
;
; development by PLF5
;p1	p2	p3	p4	p5	p6	p7	p8	p9	p10	p11	p12	p13
;  	st	dur	amp	freq	ampR	f1	f2	f3	f4	f5
i 2105 1 19 360.000 320.158 0 0 0 0.640 1.793 4.610 6.403 8.324
i 2105 6 8 400.000 269.763 0 0 0 0.540 1.511 3.885 5.395 7.014
i 2105 7 15 280.000 338.933 0 0 0 0.678 1.898 4.881 6.779 8.812
i 2105 19.200 7 360.000 243.083 0 0 0 0.486 1.361 3.500 4.862 6.320
i 2105 20.800 5 600.000 460.474 0 0 0 0.921 2.579 6.631 9.209 11.972
i 2105 21.300 6 800.000 869.565 0 0 0 1.739 4.870 12.522 17.391 22.609
i 2105 24 5 120.000 364.625 0 0 0 0.729 2.042 5.251 7.292 9.480
i 2105 24.600 4 100.000 516.798 0 0 0 1.034 2.894 7.442 10.336 13.437

f0    32  ;  TER 32
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
