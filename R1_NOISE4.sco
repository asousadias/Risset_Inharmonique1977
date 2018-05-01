;	RISSET'S INHARMONIQUE (1977) - NOISE4.SCO
; As described in Lorrain, Denis:
; "Analyse de la bande magnetique de l'oeuvre de Jean-Claude Risset - Inharmonique"
; in Rapports IRCAM 26/80.
; Csound version by Antonio de Sousa Dias
; sousa.dias@wanadoo.fr

f1 0 4096 10 1

f5 0 512 5   0.0009765 100 1 50 .3 50 1 30 .4 20 1 20 .5 30 1 80 .3 132 .0009765

f6 0 512 5   0.0009765 150 1 50 .3 30 1 20 .4 20 1 30 .5 40 1 90 .2 82 .0009765

f7 0 512 7   1 150 1 50 .6 100 .6 50 .5 50 .5 30 .3 82 .3

f8 0 512 7   1 200 1 312 .25

;P3	P2	P4	P5	P6	P7
;			AMP	CF	BW
i5	0	14	187.5	1318	100
i6	0	14	187.5	1108	100

i5	0	13.5	312.5	2349	200
i6	0	13.5	312.5	2093	200

i5	0	13.3	187.5	3320	200
i6	0	13.3	187.5	3321	200

i5	0	13.1	125	4186	400
i6	0	13.1	125	4186	400

i5	0	13.0	62.5	5100	500
i6	0	13.0	62.5	5100	500

i5	0	12.9	62.5	6000	600
i6	0	12.9	62.5	6000	600

i5	0	12.7	62.5	6800	600
i6	0	12.9	62.5	6999	699

i5	0	12.7	62.5	6800	600
i6	0	12.7	62.5	6800	600

e
