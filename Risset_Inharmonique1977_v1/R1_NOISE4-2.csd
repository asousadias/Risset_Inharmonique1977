<CsoundSynthesizer>
<CsOptions>
</CsOptions>
<CsInstruments>
;	RISSET'S INHARMONIQUE (1977) - NOISE4.ORC
; As described in Lorrain, Denis:
; "Analyse de la bande magnetique de l'oeuvre de Jean-Claude Risset - Inharmonique"
; in Rapports IRCAM 26/80.
; Csound version by Antonio de Sousa Dias
; sousa.dias@wanadoo.fr

sr	= 44100
kr	= 4410
ksmps	= 10
nchnls	= 2

giamp_fact	= 16	; Amplitude factor (not in the original orchestra)


;  GLISSANDI DE BRUIT

instr 5

iDUR	= 1/p3
iP5	= p4 * giamp_fact	; Amplitude
iP6	= p5	; center frequency
iP7	= p6	; bandwidth
iV1	= 1

aB5	oscili  iV1, iDUR, 5
aB4	oscili	100, iDUR, 7
aB4	randh	iV1, aB4
aB3	=	aB5 * iP5
aB5	=	aB5 * 0.2
aB5	=	aB5 * aB4
aB5	=	iV1 + aB5
aB5	=	iP7 * aB5
aB3	randi	aB3, aB5
aB6	oscili	iP6, iDUR, 8
aB4	=	aB4 * 0.2
aB4	=	iV1 + aB4
aB6	=	aB4 * aB6
aB3	oscili	aB3, aB6, 1
	outs1	aB3
endin

instr 6

iDUR	= 1/p3
iP5	= p4 * giamp_fact
iP6	= p5
iP7	= p6
iV1	= 1

aB5	oscili  iV1, iDUR, 5
aB4	oscili	100, iDUR, 7
aB4	randh	iV1, aB4
aB3	=	aB5 * iP5
aB5	=	aB5 * 0.2
aB5	=	aB5 * aB4
aB5	=	iV1 + aB5
aB5	=	iP7 * aB5
aB3	randi	aB3, aB5
aB6	oscili	iP6, iDUR, 8
aB4	=	aB4 * 0.2
aB4	=	iV1 + aB4
aB6	=	aB4 * aB6
aB3	oscili	aB3, aB6, 1
	outs2	aB3
endin


</CsInstruments>
<CsScore>
;	RISSET'S INHARMONIQUE (1977) - NOISE4.SCO
; As described in Lorrain, Denis:
; "Analyse de la bande magnetique de l'oeuvre de Jean-Claude Risset - Inharmonique"
; in Rapports IRCAM 26/80.
; Csound version by Antonio de Sousa Dias
; sousa.dias@wanadoo.fr

f1 0 4096 10 1

f5 0 512 5   0.0009765 100 1 50 .3 50 1 30 .4 20 1 20 .5 30 1 80 .3 132 .0009765

f6 0 512 5   0.0009765 150 1 50 .3 30 1 20 .4 20 1 30 .5 40 1 90 .2 82 .0009765

f7 0 512 7   1 150 1 50 .6 100 .6 50 .5 50 .5 30 .3 82 .3

f8 0 512 7   1 200 1 312 .25

;P3	P2	P4	P5	P6	P7
;			AMP	CF	BW
i5	0	14	187.5	1318	100
i6	0	14	187.5	1108	100


i5	0	13.5	312.5	2349	200
i6	0	13.5	312.5	2093	200

i5	0	13.3	187.5	3320	200
i6	0	13.3	187.5	3321	200

i5	0	13.1	125	4186	400
i6	0	13.1	125	4186	400

i5	0	13.0	62.5	5100	500
i6	0	13.0	62.5	5100	500

i5	0	12.9	62.5	6000	600
i6	0	12.9	62.5	6000	600

i5	0	12.7	62.5	6800	600
i6	0	12.9	62.5	6999	699

i5	0	12.7	62.5	6800	600
i6	0	12.7	62.5	6800	600
	

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
  <r>0</r>
  <g>0</g>
  <b>0</b>
 </bgcolor>
</bsbPanel>
<bsbPresets>
</bsbPresets>
<MacOptions>
Version: 3
Render: Real
Ask: Yes
Functions: ioObject
Listing: Window
WindowBounds: 72 179 400 200
CurrentView: io
IOViewEdit: On
Options:
</MacOptions>

<MacGUI>
ioView nobackground {0, 0, 0}
</MacGUI>
