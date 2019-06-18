<CsoundSynthesizer>
<CsOptions>
</CsOptions>
<CsInstruments>
;	RISSET'S INHARMONIQUE (1977) - LOSL03.ORC
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

gaB6	init	0

; RALLENTANDO PERPETUEL

instr	1
gaB6	=	0
gaB7	=	0
endin

; PITCH EFFECT
instr 2
iDUR	=	1/p3
iP5	=	p4 * .78125 * giamp_fact 
iP6	=	p5		;	frequency: A from 27.5 to 3520 Hz
iP7	=	1/p6		;	envelope duration
iP8	=	p7 / 4096	; 	envelope phase

aB31	oscili	iP5, iP7, 5, iP8	; envelope
aB32	oscili	aB31, iP6, 1
gaB6	=	aB32 + gaB6
endin

; GLOBAL ENVELOPE
instr	3
iDUR	=	1/p3
aB6	oscili	gaB6, iDUR, 7
	outs2	aB6
gaB7	=	gaB7 + aB6
endin

; RHYTMIC EFFECT
instr	4
iP5	=	p4
iP6	=	p5
iP7	=	1/p6
iP8	=	p7 / 4096

aB3	oscili	iP5, iP7, 2, iP8	; IOS[b]
aB4	oscili	iP6, iP7, 3, iP8	; IOS[a]
aB3	oscili	aB3, aB4, 4		; IOS[c]
	outs1	aB3 * gaB7
endin


</CsInstruments>
<CsScore>
;	RISSET'S INHARMONIQUE (1977) - LOSL03.SCO
; As described in Lorrain, Denis:
; "Analyse de la bande magnetique de l'oeuvre de Jean-Claude Risset - Inharmonique"
; in Rapports IRCAM 26/80.
; Csound version by Antonio de Sousa Dias
; sousa.dias@wanadoo.fr

f01	0 4096	10	1
f02	0 2049	1	 88       0      4     0	; BELL CURVE (SOUNDIN.88)
f03	0 4096	5	32	4096	1	; <=> 2^(-5)=.03125
f4	0 512	7	0	30	1	482	0
f5	0 512	5	.005	100	1	310	1	102	.005

f7	0	512	5	.001	30	1	370	1	80	.1	32	.00001

i1	1	50

;p1	p2	p3	p4	p5	p6	p7
i2	1	50	300	3520	-100	2452.8
i2	1	50	300	1760	-100	2963.8
i2	1	50	300	880	-100	3474.8
i2	1	50	300	440	-100	3985.8
i2	1	50	300	220	-100	404.8
i2	1	50	300	110	-100	922.8
i2	1	50	300	55	-100	1430.8
i2	1	50	300	27.5	-100	1941.8

i3	1	50

;p1	p2	p3	p4	p5	p6	p7
;	st	dur	a[b]	a[a]	fr[ab]	phs
i4	1	50	1	20	100	0
i4	1	50	1	20	100	817.6
i4	1	50	1	20	100	1635.2
i4	1	50	1	20	100	2452.8
i4	1	50	1	20	100	3270.4
e

</CsScore>
</CsoundSynthesizer>

<bsbPanel>
 <label>Widgets</label>
 <objectName/>
 <x>1001</x>
 <y>427</y>
 <width>343</width>
 <height>337</height>
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
<MacGUI>
ioView nobackground {0, 0, 0}
</MacGUI>
