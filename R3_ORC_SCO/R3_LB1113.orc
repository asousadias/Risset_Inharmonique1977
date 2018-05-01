;	RISSET'S INHARMONIQUE (1977) - LB1113.ORC
; As described in Lorrain, Denis:
; "Analyse de la bande magnetique de l'oeuvre de Jean-Claude Risset - Inharmonique"
; in Rapports IRCAM 26/80.
; Csound version by Antonio de Sousa Dias
; sousa.dias@wanadoo.fr
#include	"header_stereo"
giamp_fact	= 16	; Amplitude factor (not in the original orchestra)


instr     5
iDUR	=	1/p3
iG80	=	p7
iP5	=	p4 * iG80 *giamp_fact     ; SEC1-2 = 6.25, SEC3 = 1
iP6	=	p5
iharm	=	p6         ; not used

aB3	oscili	iP5,     iDUR,     2
aB3	oscili	aB3,     iP6,     1
	outs1	aB3
endin

instr     6
iDUR	=	1/p3
iG80	=	p7
iP5	=	p4 * iG80 *giamp_fact     ; SEC1-2 = 6.25, SEC3 = 1
iP6	=	p5
iharm	=	p6         ; not used

aB3	oscili	iP5,     iDUR,     2
aB3	oscili	aB3,     iP6,     1
	outs2	aB3
endin

instr     7
iDUR	=	1/p3
iG80	=	p7
iP5	=	p4 * iG80 *giamp_fact     ; SEC1-2 = 6.25, SEC3 = 1
iP6	=	p5
iharm	=	p6         ; not used

aB3	oscili	iP5,     iDUR,     3
aB3	oscili	aB3,     iP6,     1
	outs1	aB3
endin

instr     8
iDUR	=	1/p3
iG80	=	p7
iP5	=	p4 * iG80 *giamp_fact     ; SEC1-2 = 6.25, SEC3 = 1
iP6	=	p5
iharm	=	p6         ; not used

aB3	oscili	iP5,     iDUR,     3
aB3	oscili	aB3,     iP6,     1
	outs2	aB3
endin


