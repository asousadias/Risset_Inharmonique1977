;	RISSET'S INHARMONIQUE (1977) - BELHH4.ORC
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

;           BELHH4 BELL: statements already developed as NOTs (no PLF5);


instr	3
; p4 amplitude global para o conjunto de notas
; p5 frequÍncia resultante desejada
;         = PLF5 desenvolvimento =
; p6 amplitude global da estrutura PLF5
; p7 frequência res. subj da estrutura
; p8 frequência da componente
; p9 duração da componente (=p3 neste caso)
; p10 amplitude da componente
; p11 nº de componentes a desenvolver

iDUR	=	1 / p3
iP5	=	p4 * p10 / p6   * giamp_fact 
iP6	=	p8 * p5 / p7

aB3	oscili	iP5, iDUR, 3
aB3	oscili	aB3, iP6, 1
	outs	aB3, aB3
endin
