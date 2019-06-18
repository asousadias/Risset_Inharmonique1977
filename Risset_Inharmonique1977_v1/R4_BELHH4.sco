;	RISSET'S INHARMONIQUE (1977) - BELHH4.SCO
; As described in Lorrain, Denis:
; "Analyse de la bande magnetique de l'oeuvre de Jean-Claude Risset - Inharmonique"
; in Rapports IRCAM 26/80.
; Csound version by Antonio de Sousa Dias
; sousa.dias@wanadoo.fr

f01	0	4096	10	1
f03	0	512	5	0.0001 2 .5 6 1 248 .05 244	.0001 12 .00001

; BELHH4
;	(p11 is the number of components to develop hence actually it is not used)
i3	1	24	1000	440	975	349	675	24	200	9
i3	1	16	1000	440	975	349	124	16	200	9
i3	1	22	1000	440	975	349	346	22	200	9
i3	1	17	1000	440	975	349	1108	17	200	9
i3	1	6	1000	440	975	349	1634	6	200	9
i3	1	3	1000	440	975	349	2249	3	200	9
i3	1	2	1000	440	975	349	2941	2	200	9
i3	1	1.5	1000	440	975	349	3700	1.5	200	9
i3	1	0.8	1000	440	975	349	4504	0.8	200	9
e

; p4 amplitude global para o conjunto de notas
; p5 frequência resultante desejada
;         = PLF5 desenvolvimento =
; p6 amplitude global da estrutura PLF5
; p7 frequência res. subj da estrutura
; p8 frequência da componente
; p9 duração da componente (=p3 neste caso)
; p10 amplitude da componente
; p11 n. de componentes a desenvolver
