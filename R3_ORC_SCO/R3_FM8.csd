<CsoundSynthesizer>
<CsOptions>
</CsOptions>
<CsInstruments>
/******************************************************************************
	RISSET'S INHARMONIQUE (1977) - FM8.ORC
	
	As described in Lorrain, Denis:
	Analyse de la bande magnetique de l'oeuvre de Jean-Claude Risset - Inharmonique
	in Rapports IRCAM 26/80.
	
	Csound version by
		Antonio de Sousa Dias
		sousa.dias@wanadoo.fr
******************************************************************************/

sr	= 44100
kr	= 4410
ksmps	= 10
nchnls	= 2

giamp_fact	= 16	; Amplitude factor (not in the original orchestra)

;			 FM INSTRUMENTS                     ;

instr	3120
idur	=	1/p3
iamp	=	p4 * giamp_fact   ;  normalize from 2048 to 32000
ifc	=	p5
ifm	=	p6
imax	=	p8 * ifm
imin	=	p7 * ifm
iphs	=	p9 / 512

aamp	oscili	iamp, idur, 3102, iphs

a1	oscili	imax, idur, 3103
a2	oscili	(a1 + imin), ifm, 3101
a3  	oscili 	aamp, (ifc + a2), 3101
a4	oscili 	a3, idur, 3105

	outs1	a4
endin

instr 3121
idur	=	1/p3
iamp	=	p4 * giamp_fact   ;  normalize from 2048 to 32000
ifc	=	p5
ifm	=	p6
imax	=	p8 * ifm
imin	=	p7 * ifm
iphs	=	p9 / 512

aamp	oscili	iamp, idur, 3102, iphs

a1	oscili	imax, idur, 3103
a2	oscili	(a1 + imin), ifm, 3101
a3  	oscili 	aamp, (ifc + a2), 3101
a4	oscili 	a3, idur, 3105

	outs2	a4
endin


</CsInstruments>
<CsScore>
/******************************************************************************
	RISSET'S INHARMONIQUE (1977) - FM8.ORC
	
	As described in Lorrain, Denis:
	Analyse de la bande magnetique de l'oeuvre de Jean-Claude Risset - Inharmonique"
	in Rapports IRCAM 26/80.
	
	Csound version by
		Antonio de Sousa Dias
		sousa.dias@wanadoo.fr
******************************************************************************/

f3101	0 4096	10 1
f3102 	0 512	-5	1 20 1 40 .3 40 1 50 1 10 .3 20 1 20 1 100  .3 100 1 12 1
f3103	0 512	-7	0 100 .2 50 .15 5 .15 45 .05 40 .2 20 .16 20 .25 20 .05 15 .07 15 .02 70 .1 10 .5 40 .1 62 0

f3105	0 512	-5	.0001 60 .4 196 1.0 44 .3 50 .5 162 .0001

;P3	P2	P4	P5	P6	P7	P8	P9	P10
;			amp	fCar	fMod	Imin	Imax	Phs

i3120	0	13	312.5	440	440	0	2	0
i3121	0	16	312.5	440	220	0	3	128
s	16

i3120	1	30	781.2	165	55	0	10	0
i3121	1	30	781.2	165.4	55.1	0	10	128

i3120	1	20	546.8	220	110	0	8	0
i3121	1	20	546.8	440.5	110.13	0	7	200
f0	31	; TER 31
e

</CsScore>
</CsoundSynthesizer>

<bsbPanel>
 <label>Widgets</label>
 <objectName/>
 <x>1001</x>
 <y>489</y>
 <width>360</width>
 <height>160</height>
 <visible>true</visible>
 <uuid/>
 <bgcolor mode="nobackground">
  <r>0</r>
  <g>0</g>
  <b>0</b>
 </bgcolor>
 <bsbObject version="2" type="BSBScope">
  <objectName/>
  <x>10</x>
  <y>10</y>
  <width>350</width>
  <height>150</height>
  <uuid>{7255428f-387f-49cd-b79a-ef2ae334af10}</uuid>
  <visible>true</visible>
  <midichan>0</midichan>
  <midicc>0</midicc>
  <value>-255.00000000</value>
  <type>scope</type>
  <zoomx>2.00000000</zoomx>
  <zoomy>1.00000000</zoomy>
  <dispx>1.00000000</dispx>
  <dispy>1.00000000</dispy>
  <mode>0.00000000</mode>
 </bsbObject>
</bsbPanel>
<bsbPresets>
</bsbPresets>
<MacOptions>
Version: 3
Render: Real
Ask: Yes
Functions: ioObject
Listing: Window
WindowBounds: 1001 489 343 275
CurrentView: io
IOViewEdit: On
Options:
</MacOptions>

<MacGUI>
ioView nobackground {0, 0, 0}
ioGraph {10, 10} {350, 150} scope 2.000000 -255 
</MacGUI>
