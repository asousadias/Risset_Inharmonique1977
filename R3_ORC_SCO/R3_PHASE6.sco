;	RISSET'S INHARMONIQUE (1977) - PHASE6.SCO
; As described in Lorrain, Denis:
; "Analyse de la bande magnetique de l'oeuvre de Jean-Claude Risset - Inharmonique"
; in Rapports IRCAM 26/80.
; Csound version by Antonio de Sousa Dias
; sousa.dias@wanadoo.fr

f02	0	4096	10	.3 0 0 .1 .1 .1 .1 .1 .1 .1

f05	0	512	7	0 50 1 350 1 112 0
f06	0	512	7	0 2 1 180 1 312 0

; this instrument is a simpler version.
; instead of giving all frequencies, we provide an offset
; and the instrument calculates all frequencies needed.
;			amp	func	freq	offset
i5	0	35	100	5	110	0.03
i6	5	20	140	5	55	0.02
i6	20	15	100	6	220	0.05
i5	20	20	140	6	110	0.04
i5	28	30	100	6	220	0.04
i6	32	26	140	6	110	0.025
i5	32.1	23	100	6	110	0.03
i6	36	22	100	5	55	0.01
e
