;	RISSET'S INHARMONIQUE (1977) - PHASE7.ORC
; As described in Lorrain, Denis:
; "Analyse de la bande magnetique de l'oeuvre de Jean-Claude Risset - Inharmonique"
; in Rapports IRCAM 26/80.
; Csound version by Antonio de Sousa Dias
; sousa.dias@wanadoo.fr
#include	"header_stereo"
giamp_fact	= 16	; Amplitude factor (not in the original orchestra)

;  "NON TUNNED HARMONIC CASCADE"

instr	9
iDUR 	=	1/p3
iP5	=	p4 * giamp_fact
iP6	=	p5
iF1	=	1
iF4	=	p6

aB3  	oscili	(iP5 * 4.6), iDUR, iF4
aB3	oscili	aB3, (iP6 * 0.5), iF1    ; octave down
	outs	aB3, aB3 	;  original: mono output

endin
