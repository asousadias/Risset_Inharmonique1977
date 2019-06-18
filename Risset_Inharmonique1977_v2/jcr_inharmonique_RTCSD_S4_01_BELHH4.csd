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

; ==============================
; S 4 - BELHH4.ORC:
; ==============================
instr 4103

iDUR	=	1 / p3
iP5	=	p4 * giamp_fact 
iP6	=	p5

ifn1 = 4101
ifn3 = 4103

aB3	oscili	iP5, iDUR, ifn3
aB3	oscili	aB3, iP6, ifn1
	outch 1, aB3, 2, aB3
endin


</CsInstruments>
<CsScore>
; ==============================
;  S 4 - BELHH4.SCO fn:
; ==============================
f4101	0	4096	10	1
f4103	0	512	5	0.0001 2 .5 6 1 248 .05 244	.0001 12 .00001

; ==============================
;  S 4 - BELHH4.SCO not:
; ==============================
; Original score adapted to csound syntax
/*
plf 6 0 1 1280
i 4101 1 0 1000 440
*/

; Score developed from subroutine PLF6
i 4103 1 20.940 205.128 773.639
i 4103 1 13.960 205.128 142.120
i 4103 1 19.195 205.128 396.562
i 4103 1 14.833 205.128 1269.914
i 4103 1 5.235 153.846 1872.779
i 4103 1 2.618 76.923 2577.650
i 4103 1 1.745 51.282 3370.774
i 4103 1 1.309 20.513 4240.688
i 4103 1 0.698 10.256 5162.178
f0 24
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
