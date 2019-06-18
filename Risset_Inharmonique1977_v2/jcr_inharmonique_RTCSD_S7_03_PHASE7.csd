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
; S 7 - PHASE7.ORC:
; ==============================
instr 7309
;  "NON TUNNED HARMONIC CASCADE"
iDUR 	=	1/p3
iP5	=	p4 * giamp_fact
iP6	=	p5

iF1	=	7301
iF4	=	p6

aB3  	oscili	(iP5 * 4.6), iDUR, iF4
aB3	oscili	aB3, (iP6 * 0.5), iF1    ; octave down
	outch 1, aB3, 2, aB3 	;  original: mono output
endin


</CsInstruments>
<CsScore>

; ==============================
;  S 7 - PHASE7.SCO fn:
; ==============================
; harmonics 26, 41, 59, 78, 93 e 111
f7301 0 4096    9	
		26 1 0
		41 1 0
		59 1 0
		78 1 0
		93 1 0
		111 1 0

; original envelopes (f5 = f4 modif)
f7304 0 512      7      0     50     1      462      0
f7305 0 512      7      0    350    1      162      0


; ==============================
;  S 7 - PHASE7.SCO not:
; ==============================

i7309	1	6	100	98.00	7304
i7309	1	6	100	98.02	7304
i7309	1	6	100	98.04	7304
i7309	1	6	100	98.06	7304
i7309	1	6	100	98.08	7304
i7309	1	6	100	98.1	7304
i7309	1	6	100	97.98	7304
i7309	1	7	100	97.96	7304
i7309	1	6	100	97.94	7304

i7309	4.5	6	100	69.00	7304
i7309	4.5	6	100	69.02	7304
i7309	4.5	6	100	69.04	7304
i7309	4.5	6	100	69.06	7304
i7309	4.5	6	199	69.08	7304
i7309	4.5	6	100	69.10	7304
i7309	4.5	6	199	68.98	7304
i7309	4.5	6	100	68.96	7304

i7309	22	6	50	87	7305
i7309	22	10	50	87.02	7305
i7309	22	9	50	87.04	7305
i7309	22	6	50	87.06	7305
i7309	22	8	50	87.08	7305
i7309	22	10	50	87.1	7305
i7309	22	6	50	86.98	7305
i7309	22	6	50	86.96	7305
i7309	22	10	50	86.94	7305

i7309	35	10	50	69.00	7304
i7309	35	8	50	69.02	7304
i7309	35	9	50	69.04	7304
i7309	35	10	50	69.06	7304
i7309	35	10	50	69.08	7304
i7309	35	10	50	69.10	7304
i7309	35	10	50	68.98	7304
i7309	35	10	50	68.96	7304
i7309	35	9	50	68.94	7304
f0 46

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
