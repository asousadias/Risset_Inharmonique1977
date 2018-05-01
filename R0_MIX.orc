;	RISSET'S INHARMONIQUE (1977) - GENERAL MIXER TO MIX SECTION FILES
; Designed in accordance to instructions given in Lorrain, Denis:
; "Analyse de la bande magnetique de l'oeuvre de Jean-Claude Risset - Inharmonique"
; in Rapports IRCAM 26/80.
; by Antonio de Sousa Dias
; sousa.dias@wanadoo.fr

sr	= 44100
kr	= 4410
ksmps	= 10
nchnls	= 2

; INSTRUMENTS TO SOUND MIX
; SOUND FILES MUST HAVE SOUNDIN.X NAMES

instr	1	; MONO SOUNDIN FILE
idur	=	p3
iampli	=	p4	; amplitude factor (0...1)
ifilcod	=	p5	; soundin number
isktim	=	p6	; skip time
kpitch	=	p7	; pitch

k1	linen	iampli, 0.003, idur, 0.003	; envelope to prevent clicks
a1	diskin 	ifilcod, kpitch, isktim
	outs	a1 * k1, a1 * k1
endin

instr	2	; STEREO SOUNDIN FILE
idur	=	p3
iampli	=	p4	; amplitude factor (0...1)
ifilcod	=	p5	; soundin number
isktim	=	p6	; skip time
kpitch	=	p7	; pitch

k1	linen	iampli, 0.003, idur, 0.003	; envelope to prevent clicks
a1, a2	diskin 	ifilcod, kpitch, isktim
	outs	a1 * k1, a2 * k1
endin
