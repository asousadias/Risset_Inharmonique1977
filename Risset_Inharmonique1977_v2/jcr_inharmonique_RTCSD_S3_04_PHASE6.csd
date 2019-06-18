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
; S 3 - PHASE6.ORC:
; ==============================
;	HARMONIC CASCADE                     ;
; this instrument is a simpler version.
; instead of giving all frequencies, we provide an offset
; and the instrument calculates all frequencies needed.
instr	3405, 3406
iDUR 	=	1/p3
iP5	=	p4 * giamp_fact
; frequency offsets
iP7	=	p6
iP8	=	p6 + p7
iP9	=	p6 + p7 * 2
iP10	=	p6 + p7 * 3
iP11	=	p6 + p7 * 4
iP12	=	p6 - p7
iP13	=	p6 - p7 * 2
iP14	=	p6 - p7 * 3
iP15	=	p6 - p7 * 4

ichannel = ( p1 == 3405 ? 1 : 2 )

iV2	= 1
ifn2 = 3402
ifn5	=	p5	; (SET P6)

aB3	oscili	iP5,iP7,ifn2
aB4	oscili	iP5,iP8,ifn2  
aB5	oscili	iP5,iP9,ifn2  
aB3	=	aB3 + aB4 + aB5
aB4	oscili	iP5,iP10,ifn2  
aB5	oscili	iP5,iP11,ifn2
aB6	oscili	iP5,iP12,ifn2
aB4	=	aB4 + aB5 + aB6
aB5	oscili	iP5,iP13,ifn2  
aB6	oscili	iP5,iP14,ifn2  
aB7	oscili	iP5,iP15,ifn2
aB5	=	aB5 + aB6 + aB7
aB3	=	aB3 + aB4 + aB5 ; add all partial results

aB4	oscili	iV2, iDUR, ifn5
aB4	=	aB4 * aB4
aB3	=	aB3 * aB4

	outch ichannel, aB3
endin


</CsInstruments>
<CsScore>


; ==============================
;  S 3 - PHASE6.SCO fn:
; ==============================
f3402	0	4096	10	.3 0 0 .1 .1 .1 .1 .1 .1 .1
f3405	0	512	7	0 50 1 350 1 112 0
f3406	0	512	7	0 2 1 180 1 312 0

; ==============================
;  S 3 - PHASE6.SCO not:
; ==============================
; Sec 3 - from 04_33 - end
;			amp	func	freq	offset

i3405	0	35	100	3405	110	0.03
i3406	5	20	140	3405	55	0.02
i3406	20	15	100	3406	220	0.05
i3405	20	20	140	3406	110	0.04
i3405	28	30	100	3406	220	0.04
i3406	32	26	140	3406	110	0.025
i3405	32.1	23	100	3406	110	0.03
i3406	36	22	100	3405	55	0.01
f0 60; TER 60
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
