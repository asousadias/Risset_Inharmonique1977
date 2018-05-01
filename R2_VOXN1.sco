;	RISSET'S INHARMONIQUE (1977) - VOXN1.SCO
; As described in Lorrain, Denis:
; "Analyse de la bande magnetique de l'oeuvre de Jean-Claude Risset - Inharmonique"
; in Rapports IRCAM 26/80.
; Csound version by Antonio de Sousa Dias
; sousa.dias@wanadoo.fr

; Sinus wave
f1	0	4096	10	1
; Frequency variation control
f5	0 512	7	0.985	100	1	412	0.99
; Global envelope
f6	0 512	5	0.001	100	1	320	0.1	80	0.001	12	0.00000001

;		a1	a2	freqR	fund	Instr	i1	i2	i3	i4	i5
;SV1 0 1080	1000	200	506	500	5	1	2.8	7.2	10	13
; 
;PLF    0	5	8	1080	0	0	0	0	0

;p1	p2	p3	p4	p5	p6	p7	p8	p9	p10	p11	p12	p13
;  	st	dur	amp	freq	ampR	f1	f2	f3	f4	f5
; development starting from p6
i5	1	19	360	324	1800	0	0	320.7984	321.9510	324.7684	326.5613	328.4822	
i5	6	8	400	273	2000	0	0	270.3024	271.2735	273.6474	275.1581	276.7767	
i5	7	15	280	343	1400	0	0	339.6107	340.8308	343.8134	345.7115	347.7451	
i5	19.2	7	360	246	1800	0	0	243.5692	244.4443	246.5834	247.9447	249.4032	
i5	20.8	5	600	466	3000	0	0	461.3953	463.0530	467.1051	469.6838	472.4466	
i5	21.3	6	800	880	4000	0	0	871.3043	874.4348	882.0870	886.9565	892.1739	
i5	24	5	120	369	600	0	0	365.3538	366.6664	369.8751	371.9170	374.1047	
i5	24.6	4	100	523	500	0	0	517.8320	519.6925	524.2403	527.1344	530.2352	

f0    32  ;  TER 32
e

