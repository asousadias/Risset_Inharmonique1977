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

giamp_fact	= 16	; Amplitude factor

; ==============================
; S 1 - NOISE4.ORC:
; ==============================
;  GLISSANDI DE BRUIT
instr 1005, 1006
; This version consolidates instruments for a better efficiency
ichannel = ( p1 == 1005 ? 1 : 2 )
iDUR	= 1/p3
iP5	= p4 * giamp_fact	; Amplitude
iP6	= p5	; center frequency
iP7	= p6	; bandwidth
iV1	= 1

ifn1 = 1001
ifn5 = 1005
ifn6 = 1006
ifnx	=	(p1 == 1005 ? ifn5 : ifn6)
ifn7 = 1007
ifn8 = 1008

aB5	oscili  iV1, iDUR, ifnx
aB4	oscili	100, iDUR, ifn7
aB4	randh	iV1, aB4
aB3	=	aB5 * iP5
aB5	=	aB5 * 0.2
aB5	=	aB5 * aB4
aB5	=	iV1 + aB5
aB5	=	iP7 * aB5
aB3	randi	aB3, aB5
aB6	oscili	iP6, iDUR, ifn8
aB4	=	aB4 * 0.2
aB4	=	iV1 + aB4
aB6	=	aB4 * aB6
aB3	oscili	aB3, aB6, ifn1
	outch ichannel, aB3
endin

</CsInstruments>
<CsScore>
; ==============================
;  S 1 - NOISE4.SCO fn:
; ==============================
f1001 0 4096 10 1
f1005 0 512 5   0.0009765 100 1 50 .3 50 1 30 .4 20 1 20 .5 30 1 80 .3 132 .0009765
f1006 0 512 5   0.0009765 150 1 50 .3 30 1 20 .4 20 1 30 .5 40 1 90 .2 82 .0009765
f1007 0 512 7   1 150 1 50 .6 100 .6 50 .5 50 .5 30 .3 82 .3
f1008 0 512 7   1 200 1 312 .25

; ==============================
;  S 1 - NOISE4.SCO not:
; ==============================
;P3	P2	P4	P5	P6	P7
;			AMP	CF	BW
i1005	0	14	187.5	1318	100
i1006	0	14	187.5	1108	100


i1005	0	13.5	312.5	2349	200
i1006	0	13.5	312.5	2093	200

i1005	0	13.3	187.5	3320	200
i1006	0	13.3	187.5	3321	200

i1005	0	13.1	125	4186	400
i1006	0	13.1	125	4186	400

i1005	0	13.0	62.5	5100	500
i1006	0	13.0	62.5	5100	500

i1005	0	12.9	62.5	6000	600
i1006	0	12.9	62.5	6000	600

i1005	0	12.7	62.5	6800	600
i1006	0	12.9	62.5	6999	699


e

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
 <bsbObject version="2" type="BSBVSlider">
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
