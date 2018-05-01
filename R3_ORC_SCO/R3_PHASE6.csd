<CsoundSynthesizer>
<CsOptions>
</CsOptions>
<CsInstruments>
;	RISSET'S INHARMONIQUE (1977) - PHASE6.ORC
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

;	HARMONIC CASCADE                     ;

instr	3405
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

aB3	oscili	iP5,iP7,3402
aB4	oscili	iP5,iP8,3402  
aB5	oscili	iP5,iP9,3402  
aB3	=	aB3 + aB4 + aB5
aB4	oscili	iP5,iP10,3402  
aB5	oscili	iP5,iP11,3402
aB6	oscili	iP5,iP12,3402
aB4	=	aB4 + aB5 + aB6
aB5	oscili	iP5,iP13,3402  
aB6	oscili	iP5,iP14,3402  
aB7	oscili	iP5,iP15,3402
aB5	=	aB5 + aB6 + aB7
aB3	=	aB3 + aB4 + aB5 ; add all partial results

iV2	= 1
iF5	=	p5	; (SET P6)
aB4	oscili	iV2, iDUR, iF5
aB4	=	aB4 * aB4
aB3	=	aB3 * aB4
	outs1	aB3
endin

instr 3406
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

aB3	oscili	iP5,iP7,3402
aB4	oscili	iP5,iP8,3402  
aB5	oscili	iP5,iP9,3402  
aB3	=	aB3 + aB4 + aB5
aB4	oscili	iP5,iP10,3402  
aB5	oscili	iP5,iP11,3402
aB6	oscili	iP5,iP12,3402
aB4	=	aB4 + aB5 + aB6
aB5	oscili	iP5,iP13,3402  
aB6	oscili	iP5,iP14,3402  
aB7	oscili	iP5,iP15,3402
aB5	=	aB5 + aB6 + aB7
aB3	=	aB3 + aB4 + aB5 ; add all partial results

iV2	= 1
iF5	=	p5	; (SET P6)
aB4	oscili	iV2, iDUR, iF5
aB4	=	aB4 * aB4
aB3	=	aB3 * aB4
	outs2	aB3
endin

</CsInstruments>
<CsScore>
;	RISSET'S INHARMONIQUE (1977) - PHASE6.SCO
; As described in Lorrain, Denis:
; "Analyse de la bande magnetique de l'oeuvre de Jean-Claude Risset - Inharmonique"
; in Rapports IRCAM 26/80.
; Csound version by Antonio de Sousa Dias
; sousa.dias@wanadoo.fr

f3402	0	4096	10	.3 0 0 .1 .1 .1 .1 .1 .1 .1

f3405	0	512	7	0 50 1 350 1 112 0
f3406	0	512	7	0 2 1 180 1 312 0

; this instrument is a simpler version.
; instead of giving all frequencies, we provide an offset
; and the instrument calculates all frequencies needed.
;			amp	func	freq	offset
i3405	0	35	100	5	110	0.03
i3406	5	20	140	5	55	0.02
i3406	20	15	100	6	220	0.05
i3405	20	20	140	6	110	0.04
i3405	28	30	100	6	220	0.04
i3406	32	26	140	6	110	0.025
i3405	32.1	23	100	6	110	0.03
i3406	36	22	100	5	55	0.01
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
