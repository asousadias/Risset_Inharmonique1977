;	RISSET'S INHARMONIQUE (1977) - BLLTX1.ORC
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


; Although this is a more compact instrument design approach
; we kept overall MUSIC V design regarding variable names.

instr	3, 4
iDUR	=	1 / p3
iP5	=	p4   * giamp_fact 
iP6	=	p5
iF_a	=	(p1 == 3 ? 3 : 2)
iF_s	=	1
aB3	oscili	iP5, iDUR, iF_a
aB3	oscili	aB3, iP6, iF_s ; amp*amp to simulate exp envelope
	outs	aB3, aB3
endin
