;	RISSET'S INHARMONIQUE (1977) - RVP411.ORC
; As described in Lorrain, Denis:
; "Annalyse de la bande magnetique de l'oeuvre de Jean-Claude Risset - Inharmonique"
; in Rapports IRCAM 26/80.
; Csound version by Antonio de Sousa Dias
; sousa.dias@wanadoo.fr

sr	= 44100
kr	= 4410
ksmps	= 10
nchnls	= 2

giamp_fact	= 16	; Amplitude factor (not in the original orchestra)


gaB6    init 0

instr 5
iDUR	=	1/ p3
iP5	=	p4 * 0.3125 * giamp_fact	; amplitude P5
iP6	=	p5	; frequency P6

aB3	oscili	iP5,  iDUR,  2
aB4	oscili	aB3,    iP6, 1
	outs1	aB4
gaB6	=	gaB6 + aB4
endin

instr 6
iDUR	=	1/ p3
iP5	=	p4 * 0.3125 * giamp_fact	; amplitude P5
iP6	=	p5	; frequency P6
iV11	=	p6

aB3	oscili	iP5,  iDUR,  2
aB4	oscili	aB3,    iP6, 1
	outs2	aB4
gaB6	=	gaB6 + aB4 * iV11
endin

instr 46
aB7	alpass	gaB6,    0.47828,    0.03090
aB7	alpass	aB7,    0.41303,    0.02210
aB7	alpass	aB7,    0.23022,    0.01400
aB7	alpass	aB7,    0.10550,    0.00630
aB8	alpass	aB7,    0.04057,    0.00300
aB8	tone	aB8,   5000		;	! ! !
	outs	aB8,  aB8
gaB6	=	0
endin

instr 50
aB7	alpass	gaB6,    1.53555,    0.06395
aB7	alpass	aB7,    0.93259,    0.04435
aB7	alpass	aB7,    0.57843,    0.03095
aB7	alpass	aB7,    0.36424,    0.02215
aB7	alpass	aB7,    0.23529,    0.01405
	outs	aB7,  aB7
gaB6	=	0
endin


