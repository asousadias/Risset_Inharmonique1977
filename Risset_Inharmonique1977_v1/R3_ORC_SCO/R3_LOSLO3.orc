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

