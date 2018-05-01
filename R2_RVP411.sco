;	RISSET'S INHARMONIQUE (1977) - RVP411.SCO
; As described in Lorrain, Denis:
; "Analyse de la bande magnetique de l'oeuvre de Jean-Claude Risset - Inharmonique"
; in Rapports IRCAM 26/80.
; Csound version by Antonio de Sousa Dias
; sousa.dias@wanadoo.fr


f1	0	4096	10	1
f2	0	512	5	0.001	200	1	312	0.001

; =====  REVERBS ======
i50	0	8
i46	8	27

; =====  REV 1;  harm 2-11 ======
; developed notes

i5	0	0.8	300	329	;(mi3)
i5	0	0.8	300	1316
i5	0.2	0.8	300	658
i5	0.4	0.8	300	987
i5	0.8	0.8	300	1645
i5	1.15	0.8	300	2632
i5	1.55	0.8	300	2303
i5	1.65	0.8	300	1974
i5	2	0.8	300	3290
i5	2.3	0.8	300	2961
i5	2.7	0.8	300	3619

i6	0	0.7	400	277	0.3  ;(i5 en lieu de i6 dans l'originale)
i6	0	0.7	400	554	0.3
i6	0.2	0.7	400	1108
i6	0.5	0.7	400	831
i6	0.7	0.7	400	1385
i6	1.1	0.7	400	1662
i6	1.4	0.7	400	2216
i6	1.8	0.7	400	1939
i6	2.2	0.7	400	2493
i6	2.4	0.7	400	2770
i6	2.7	0.7	400	3047

i6	0	0.7	300	174	0.3  ;(i5 en lieu de i6 dans l'originale)
i6	0	0.7	300	348
i6	0.2	0.7	300	696
i6	0.5	0.7	300	522
i6	0.7	0.7	300	870
i6	1.1	0.7	300	1044
i6	1.4	0.7	300	1392
i6	1.8	0.7	300	1218
i6	2.2	0.7	300	1566
i6	2.4	0.7	300	1740
i6	2.7	0.7	300	1914

i5	0	0.6	300	123
i5	0	0.6	300	492
i5	0.2	0.6	300	246
i5	0.4	0.6	300	369
i5	0.8	0.6	300	615
i5	1.15	0.6	300	984
i5	1.55	0.6	300	861
i5	1.65	0.6	300	738
i5	2	0.6	300	1107
i5	2.4	0.6	300	984
i5	2.7	0.6	300	1230

; =====  REV diferente;  harm 6-14 ======
i6	8	0.5	300	329	.7;(mi3)
i6	8.1	0.46	300	3290
i6	8.3	0.42	300	2632
i6	8.8	0.38	300	2961
i6	9.1	0.34	300	3290
i6	9.8	0.3	300	1974
i6	10.1	0.26	300	2303
i6	10.3	0.22	300	3619
i6	10.6	0.18	300	4277
i6	11.1	0.14	300	3948
i6	11.9	0.1	300	4606
i6	12.8	0.06	300	3290

i6	8	0.5	300	261	.7	;(d�3)
i6	8.1	0.46	300	2610
i6	8.3	0.42	300	2088
i6	8.8	0.38	300	2349
i6	9.1	0.34	300	2610
i6	9.8	0.3	300	1566
i6	10.1	0.26	300	1827
i6	10.3	0.22	300	2871
i6	10.6	0.18	300	3393
i6	11.1	0.14	300	3132
i6	11.9	0.1	300	3654
i6	12.8	0.06	300	2610

i5	8	0.5	300	277 ;(d�#3)
i5	8.3	0.46	300	2770
i5	8.5	0.42	300	2216
i5	8.9	0.38	300	2493
i5	9.2	0.34	300	2770
i5	9.8	0.3	300	1662
i5	10.2	0.26	300	1939
i5	10.5	0.22	300	3047
i5	10.9	0.18	300	3601
i5	11.6	0.14	300	3324
i5	12.5	0.1	300	3878
i5	13.5	0.06	300	2770

i5	8	0.5	300	174 ;(f�2)
i5	8.3	0.46	300	1740
i5	8.5	0.42	300	1392
i5	8.9	0.38	300	1566
i5	9.2	0.34	300	1740
i5	9.8	0.3	300	1044
i5	10.2	0.26	300	1218
i5	10.5	0.22	300	1914
i5	10.9	0.18	300	2262
i5	11.6	0.14	300	2088
i5	12.5	0.1	300	2436
i5	13.5	0.06	300	1740

i6	8	0.5	300	123	.7	;(si1)
i6	8.4	0.46	300	984
i6	8.6	0.42	300	1230
i6	9.1	0.38	300	1230
i6	9.4	0.34	300	1107
i6	10.1	0.3	300	861
i6	10.4	0.26	300	738
i6	10.6	0.22	300	1599
i6	11	0.18	300	1353
i6	11.5	0.14	300	1722
i6	12.2	0.1	300	1476
i6	13.2	0.06	300	1230

; ==== new "section" (17secs) ==
; =====  harm 2-9 ======
i5	17	0.5	300	329 ;(mi3)
i5	17.3	0.5	300	2303
i5	17.5	0.5	300	2632
i5	17.9	0.5	300	2961
i5	18	0.5	300	1645
i5	18.8	0.5	300	1316
i5	19.5	0.5	300	2632
i5	19.6	0.5	300	2961
i5	19.8	0.5	300	987
i5	20	0.5	300	658
i5	20.4	0.5	300	1645

i5	17	0.5	300	277 ;(d�#3)
i5	17.3	0.5	300	1939
i5	17.5	0.5	300	2216
i5	17.9	0.5	300	2493
i5	18	0.5	300	1385
i5	18.8	0.5	300	1108
i5	19.5	0.5	300	2216
i5	19.6	0.5	300	2493
i5	19.8	0.5	300	831
i5	20	0.5	300	554
i5	20.4	0.5	300	1385

i6	18	0.4	300	261 ;(d�3)
i6	18	0.4	300	1827
i6	18.4	0.4	300	2088
i6	18.7	0.4	300	2349
i6	19.2	0.4	300	1305
i6	19.4	0.4	300	1044
i6	20.3	0.4	300	2088
i6	21.1	0.4	300	2349
i6	21.3	0.4	300	783
i6	21.6	0.4	300	522
i6	21.9	0.4	300	1305

i6	18	0.4	300	123 	.7	;(si1)
i6	18	0.4	300	861
i6	18.4	0.4	300	984
i6	18.7	0.4	300	1107
i6	19.2	0.4	300	615
i6	19.4	0.4	300	492
i6	20.3	0.4	300	984
i6	21.1	0.4	300	1107
i6	21.3	0.4	300	369
i6	21.6	0.4	300	246
i6	21.9	0.4	300	615


i6	19	0.4	300	174	.7;(f�2)
i6	19	0.4	300	1218
i6	19.5	0.4	300	1392
i6	19.9	0.4	300	1566
i6	20.6	0.4	300	870
i6	20.9	0.4	300	696
i6	21.8	0.4	300	1392
i6	22.1	0.4	300	1566
i6	22.5	0.4	300	522
i6	22.9	0.4	300	348
i6	23.5	0.4	300	870

; =====  harm 1-8 ======
i5	23	0.6	300	329
i5	23	0.6	300	2632
i5	23.3	0.6	300	1645
i5	23.5	0.6	300	2303
i5	23.9	0.6	300	1316
i5	24.6	0.6	300	1974
i5	25.2	0.6	300	987
i5	25.6	0.6	300	1316
i5	25.9	0.6	300	658
i5	26.1	0.6	300	987
i5	26.7	0.6	300	329

i5	23	0.6	300	261
i5	23	0.6	300	2088
i5	23.3	0.6	300	1305
i5	23.5	0.6	300	1827
i5	23.9	0.6	300	1044
i5	24.6	0.6	300	1566
i5	25.2	0.6	300	783
i5	25.6	0.6	300	1044
i5	25.9	0.6	300	522
i5	26.1	0.6	300	783
i5	26.7	0.6	300	261

; =====  harm 1-8 exc 6 ======

i5	23.5	0.6	300	174
i5	23.5	0.6	300	1392
i5	23.5	0.6	300	870
i5	23.5	0.6	300	1218
i5	24	0.6	300	696
i5	24.6	0.6	300	1044
i5	25.1	0.6	300	522
i5	25.3	0.6	300	696
i5	25.6	0.6	300	348

i5	23.5	0.6	300	123
i5	23.5	0.6	300	984
i5	23.5	0.6	300	615
i5	23.5	0.6	300	861
i5	24	0.6	300	492
i5	24.6	0.6	300	738
i5	25.1	0.6	300	369
i5	25.3	0.6	300	492
i5	25.6	0.6	300	246

; =====  harms 2 4 5 6 8  e  10 ======
i5	25	0.3	300	277
i5	25.2	0.3	300	554
i5	25.5	0.3	300	2770
i5	26	0.3	300	1108
i5	26.2	0.3	300	2216
i5	26.5	0.3	300	1385
i5	27.1	0.3	300	1662
i5	27.5	0.3	300	1108
i5	28	0.3	300	2216
i5	28.2	0.3	300	554
i5	28.4	0.3	300	2770

i5	25	0.3	300	123
i5	25.2	0.3	300	246
i5	25.5	0.3	300	1230
i5	26	0.3	300	492
i5	26.2	0.3	300	984
i5	26.5	0.3	300	615
i5	27.1	0.3	300	738
i5	27.5	0.3	300	492
i5	28	0.3	300	984
i5	28.2	0.3	300	246
i5	28.4	0.3	300	1230

i6	25	0.3	300	329	.7
i6	25.2	0.3	300	658
i6	25.5	0.3	300	3290
i6	26	0.3	300	1316
i6	26.2	0.3	300	2632
i6	26.5	0.3	300	1645
i6	27.1	0.3	300	1974
i6	27.5	0.3	300	1316
i6	28	0.3	300	2632
i6	28.2	0.3	300	658
i6	28.4	0.3	300	3290

i6	25	0.3	300	174	.7
i6	25.2	0.3	300	348
i6	25.5	0.3	300	1740
i6	26	0.3	300	696
i6	26.2	0.3	300	1392
i6	26.5	0.3	300	870
i6	27.1	0.3	300	1044
i6	27.5	0.3	300	696
i6	28	0.3	300	1392
i6	28.2	0.3	300	348
i6	28.4	0.3	300	1740

f0	35	; TER 35
e