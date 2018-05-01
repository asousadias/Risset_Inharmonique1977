;	RISSET'S INHARMONIQUE (1977) - LOSL03.SCO
; As described in Lorrain, Denis:
; "Analyse de la bande magnetique de l'oeuvre de Jean-Claude Risset - Inharmonique"
; in Rapports IRCAM 26/80.
; Csound version by Antonio de Sousa Dias
; sousa.dias@wanadoo.fr

f01	0 4096	10	1
f02	0 2049	1	 88       0      4     0	; BELL CURVE (SOUNDIN.88)
f03	0 4096	5	32	4096	1	; <=> 2^(-5)=.03125
f4	0 512	7	0	30	1	482	0
f5	0 512	5	.005	100	1	310	1	102	.005

f7	0	512	5	.001	30	1	370	1	80	.1	32	.00001

i1	1	50

;p1	p2	p3	p4	p5	p6	p7
i2	1	50	300	3520	-100	2452.8
i2	1	50	300	1760	-100	2963.8
i2	1	50	300	880	-100	3474.8
i2	1	50	300	440	-100	3985.8
i2	1	50	300	220	-100	404.8
i2	1	50	300	110	-100	922.8
i2	1	50	300	55	-100	1430.8
i2	1	50	300	27.5	-100	1941.8

i3	1	50

;p1	p2	p3	p4	p5	p6	p7
;	st	dur	a[b]	a[a]	fr[ab]	phs
i4	1	50	1	20	100	0
i4	1	50	1	20	100	817.6
i4	1	50	1	20	100	1635.2
i4	1	50	1	20	100	2452.8
i4	1	50	1	20	100	3270.4
e

