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
; S 3 - LOSLO3.ORC:
; ==============================
; RALLENTANDO PERPETUEL
instr 3301
gaB3206	=	0
gaB3207	=	0
endin

; PITCH EFFECT
instr 3302
iDUR	=	1/p3
iP5	=	p4 * .78125 * giamp_fact 
iP6	=	p5		;	frequency: A from 27.5 to 3520 Hz
iP7	=	1/p6		;	envelope duration
iP8	=	p7 / 4096	; 	envelope phase

ifn1 = 3301
ifn5 = 3305

aB31	oscili	iP5, iP7, ifn5, iP8	; envelope
aB32	oscili	aB31, iP6, ifn1
	 outs aB32, aB32
gaB3206	=	aB32 + gaB3206
endin

; GLOBAL ENVELOPE
instr	3303
iDUR	=	1/p3

ifn7 = 3307

aB6	oscili	gaB3206, iDUR, ifn7
		;outch 2, aB6
gaB3207	=	gaB3207 + aB6
endin

; RHYTMIC EFFECT
instr	3304
iP5	=	p4
iP6	=	p5
iP7	=	1/p6
iP8	=	p7 / 4096

ifn2 = 3302
ifn3 = 3303
ifn4 = 3304

aB3	oscili	iP5, iP7, ifn2, iP8	; IOS[b]
aB4	oscili	iP6, iP7, ifn3, iP8	; IOS[a]
aB3	oscili	aB3, aB4, ifn4		; IOS[c]
		outch 1, 	aB3 * gaB3207
endin

</CsInstruments>
<CsScore>

; ==============================
;  S 3 - LOSLO3.SCO fn:
; ==============================
f3301	0 4096	10	1
f3302	0 2049	1	 88       0      4     0	; BELL CURVE (SOUNDIN.88)
f3303	0 4096	5	32	4096	1	; <=> 1.0 -> 2^(-5)=.03125
f3304	0 512	7	0	30	1	482	0
f3305	0 512	5	.005	100	1	310	1	102	.005
f3307	0	512	5	.001	30	1	370	1	80	.1	32	.00001

; ==============================
;  S 3 - LOSLO3.SCO not:
; ==============================

i3301	1	50

;p1	p2	p3	p4	p5	p6	p7

i3302	1	50	300	3520	-100	2452.8
i3302	1	50	300	1760	-100	2963.8
i3302	1	50	300	880	-100	3474.8
i3302	1	50	300	440	-100	3985.8
i3302	1	50	300	220	-100	404.8
i3302	1	50	300	110	-100	922.8
i3302	1	50	300	55	-100	1430.8
i3302	1	50	300	27.5	-100	1941.8

i3303	1	50

;p1	p2	p3	p4	p5	p6	p7
;	st	dur	a[b]	a[a]	fr[ab]	phs

i3304	1	50	1	20	100	0
i3304	1	50	1	20	100	817.6
i3304	1	50	1	20	100	1635.2
i3304	1	50	1	20	100	2452.8
i3304	1	50	1	20	100	3270.4
f0 50
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
