;	RISSET'S INHARMONIQUE (1977) - VOXN1.ORC
; As described in Lorrain, Denis:
; "Analyse de la bande magnetique de l'oeuvre de Jean-Claude Risset - Inharmonique"
; in Rapports IRCAM 26/80.
; Csound version by Antonio de Sousa Dias
; sousa.dias@wanadoo.fr

sr	= 44100
kr	= 4410
ksmps	= 10
nchnls	= 2

giamp_fact	= 4	; Amplitude factor (not in the original orchestra)

instr	5
iDUR	=	1 / p3
iP5	=	p4 * 0.3125 * giamp_fact	; (not p4)
iP6	=	p5
iP10	=	p9
iP11	=	p10
iP12	=	p11
iP13	=	p12
iP14	=	p13

aB4     oscili	iP6,  iDUR,  5
aB5     oscili	iP5,  (aB4 + iP10),  1
aB6     oscili	iP5,  (aB4 + iP11),  1
aB7     oscili	iP5,  (aB4 + iP12),  1
aB8     oscili	iP5,  (aB4 + iP13),  1
aB9     oscili	iP5,  (aB4 + iP14),  1
aB3	=	aB5+aB6+aB7+aB8+aB9
aB3     oscili 	aB3, iDUR, 6
           outs	aB3, aB3
endin
