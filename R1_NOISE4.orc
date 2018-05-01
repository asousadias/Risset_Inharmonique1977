;	RISSET'S INHARMONIQUE (1977) - NOISE4.ORC
; As described in Lorrain, Denis:
; "Analyse de la bande magnetique de l'oeuvre de Jean-Claude Risset - Inharmonique"
; in Rapports IRCAM 26/80.
; Csound version by Antonio de Sousa Dias
; sousa.dias@wanadoo.fr
#include	"header_stereo"
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


