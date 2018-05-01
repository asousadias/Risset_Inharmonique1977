;	RISSET'S INHARMONIQUE (1977) - HH3.ORC
; As described in Lorrain, Denis:
; "Analyse de la bande magnetique de l'oeuvre de Jean-Claude Risset - Inharmonique"
; in Rapports IRCAM 26/80.
; Csound version by Antonio de Sousa Dias
; sousa.dias@wanadoo.fr
#include	"header_stereo"
giamp_fact	= 16	; Amplitude factor (not in the original orchestra)

;           HH3.SCO: statements to develop through PLF4 in OpenMusic;

; Although this is a more compact instrument design approach
; we kept overall MUSIC V design regarding variable names.

instr	6, 7, 8, 9

iDUR	=	1 / p3
iP5	=	p4 * giamp_fact 
iP6	=	p5 
iF_a	=	((p1 == 6) || (p1 == 8) ? 2 : 3)
iF_s	=	1
iV11	=	((p1 == 6) || (p1 == 7) ? 1 : 0)
iV12	=	((p1 == 8) || (p1 == 9) ? 1 : 0)

aB3	oscili	iP5*0.5, iDUR, iF_a
aB3	oscili	aB3, iP6, iF_s
	outs	aB3*iV11, aB3*iV12
endin
