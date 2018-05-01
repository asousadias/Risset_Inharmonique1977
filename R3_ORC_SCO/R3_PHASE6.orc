;	RISSET'S INHARMONIQUE (1977) - PHASE6.ORC
; As described in Lorrain, Denis:
; "Analyse de la bande magnetique de l'oeuvre de Jean-Claude Risset - Inharmonique"
; in Rapports IRCAM 26/80.
; Csound version by Antonio de Sousa Dias
; sousa.dias@wanadoo.fr
#include	"header_stereo"
giamp_fact	= 16	; Amplitude factor (not in the original orchestra)

;	HARMONIC CASCADE                     ;

instr	5
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

aB3	oscili	iP5,iP7,2
aB4	oscili	iP5,iP8,2  
aB5	oscili	iP5,iP9,2  
aB3	=	aB3 + aB4 + aB5
aB4	oscili	iP5,iP10,2  
aB5	oscili	iP5,iP11,2
aB6	oscili	iP5,iP12,2
aB4	=	aB4 + aB5 + aB6
aB5	oscili	iP5,iP13,2  
aB6	oscili	iP5,iP14,2  
aB7	oscili	iP5,iP15,2
aB5	=	aB5 + aB6 + aB7
aB3	=	aB3 + aB4 + aB5 ; add all partial results

iV2	= 1
iF5	=	p5	; (SET P6)
aB4	oscili	iV2, iDUR, iF5
aB4	=	aB4 * aB4
aB3	=	aB3 * aB4
	outs1	aB3
endin

instr 6
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

aB3	oscili	iP5,iP7,2
aB4	oscili	iP5,iP8,2  
aB5	oscili	iP5,iP9,2  
aB3	=	aB3 + aB4 + aB5
aB4	oscili	iP5,iP10,2  
aB5	oscili	iP5,iP11,2
aB6	oscili	iP5,iP12,2
aB4	=	aB4 + aB5 + aB6
aB5	oscili	iP5,iP13,2  
aB6	oscili	iP5,iP14,2  
aB7	oscili	iP5,iP15,2
aB5	=	aB5 + aB6 + aB7
aB3	=	aB3 + aB4 + aB5 ; add all partial results

iV2	= 1
iF5	=	p5	; (SET P6)
aB4	oscili	iV2, iDUR, iF5
aB4	=	aB4 * aB4
aB3	=	aB3 * aB4
	outs2	aB3
endin
