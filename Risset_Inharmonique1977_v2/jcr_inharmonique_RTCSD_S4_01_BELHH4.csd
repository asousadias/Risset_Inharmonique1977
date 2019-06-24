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
f4103	0	512	25	
0 0.0000001
1 .5
7 1 
255 .05 
499 .0001 
510 .0000001

; ==============================
;  S 4 - BELHH4.SCO not:
; ==============================
; Original score adapted to csound syntax
/*
plf 6 0 1 1280
i 4101 1 0 1000 440
*/

; Score developed from subroutine PLF6
i 4103 1 19.036 205.128 851.003
i 4103 1 12.691 205.128 156.332
i 4103 1 17.450 205.128 436.218
i 4103 1 13.484 205.128 1396.905
i 4103 1 4.759 153.846 2060.057
i 4103 1 2.380 76.923 2835.415
i 4103 1 1.586 51.282 3707.851
i 4103 1 1.190 20.513 4664.756
i 4103 1 0.635 10.256 5678.395
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
