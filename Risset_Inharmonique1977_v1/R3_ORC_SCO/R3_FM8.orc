;	RISSET'S INHARMONIQUE (1977) - FM8.ORC; As described in Lorrain, Denis:; "Analyse de la bande magnetique de l'oeuvre de Jean-Claude Risset - Inharmonique"; in Rapports IRCAM 26/80.; Csound version by Antonio de Sousa Dias; sousa.dias@wanadoo.fr

sr	= 44100
kr	= 4410
ksmps	= 10
nchnls	= 2

giamp_fact	= 16	; Amplitude factor (not in the original orchestra);			 FM INSTRUMENTS                     ;instr	20idur	=	1/p3iamp	=	p4 * giamp_fact   ;  normalize from 2048 to 32000ifc	=	p5ifm	=	p6imax	=	p8 * ifmimin	=	p7 * ifmiphs	=	p9 / 512aamp	oscili	iamp, idur, 2, iphsa1	oscili	imax, idur, 3a2	oscili	(a1 + imin), ifm, 1a3  	oscili 	aamp, (ifc + a2), 1a4	oscili 	a3, idur, 5	outs1	a4endininstr 21idur	=	1/p3iamp	=	p4 * giamp_fact   ;  normalize from 2048 to 32000ifc	=	p5ifm	=	p6imax	=	p8 * ifmimin	=	p7 * ifmiphs	=	p9 / 512aamp	oscili	iamp, idur, 2, iphsa1	oscili	imax, idur, 3a2	oscili	(a1 + imin), ifm, 1a3  	oscili 	aamp, (ifc + a2), 1a4	oscili 	a3, idur, 5	outs2	a4endin