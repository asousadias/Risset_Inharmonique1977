<CsoundSynthesizer>
<CsOptions>
</CsOptions>
<CsInstruments>
;	RISSET'S INHARMONIQUE (1977) - PHASE7.ORC
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

;  "NON TUNNED HARMONIC CASCADE"

instr	9
iDUR 	=	1/p3
iP5	=	p4 * giamp_fact
iP6	=	p5
iF1	=	1
iF4	=	p6

aB3  	oscili	(iP5 * 4.6), iDUR, iF4
aB3	oscili	aB3, (iP6 * 0.5), iF1    ; octave down
	outs	aB3, aB3 	;  original: mono output

endin

</CsInstruments>
<CsScore>
;	RISSET'S INHARMONIQUE (1977) - PHASE7.SCO
; As described in Lorrain, Denis:
; "Analyse de la bande magnetique de l'oeuvre de Jean-Claude Risset - Inharmonique"
; in Rapports IRCAM 26/80.
; Csound version by Antonio de Sousa Dias
; sousa.dias@wanadoo.fr

; harmonics 26, 41, 59, 78, 93 e 111
f1 0 4096    9	26 1 0
		41 1 0
		59 1 0
		78 1 0
		93 1 0
		111 1 0

; original envelopes (f5 = f4 modif)
f4 0 512      7      0     50     1      462      0
f5 0 512      7      0    350    1      162      0

i9	1	6	100	98.00	4
i9	1	6	100	98.02	4
i9	1	6	100	98.04	4
i9	1	6	100	98.06	4
i9	1	6	100	98.08	4
i9	1	6	100	98.1	4
i9	1	6	100	97.98	4
i9	1	7	100	97.96	4
i9	1	6	100	97.94	4
; ---------------------------------------------------
i9	4.5	6	100	69.00	4
i9	4.5	6	100	69.02	4
i9	4.5	6	100	69.04	4
i9	4.5	6	100	69.06	4
i9	4.5	6	199	69.08	4
i9	4.5	6	100	69.10	4
i9	4.5	6	199	68.98	4
i9	4.5	6	100	68.96	4
; ---------------------------------------------------
i9	22	6	50	87	5
i9	22	10	50	87.02	5
i9	22	9	50	87.04	5
i9	22	6	50	87.06	5
i9	22	8	50	87.08	5
i9	22	10	50	87.1	5
i9	22	6	50	86.98	5
i9	22	6	50	86.96	5
i9	22	10	50	86.94	5
; ---------------------------------------------------
i9	35	10	50	69.00	4
i9	35	8	50	69.02	4
i9	35	9	50	69.04	4
i9	35	10	50	69.06	4
i9	35	10	50	69.08	4
i9	35	10	50	69.10	4
i9	35	10	50	68.98	4
i9	35	10	50	68.96	4
i9	35	9	50	68.94	4

e
</CsScore>
</CsoundSynthesizer>

<bsbPanel>
 <label>Widgets</label>
 <objectName/>
 <x>0</x>
 <y>0</y>
 <width>0</width>
 <height>0</height>
 <visible>true</visible>
 <uuid/>
 <bgcolor mode="nobackground">
  <r>0</r>
  <g>0</g>
  <b>0</b>
 </bgcolor>
</bsbPanel>
<bsbPresets>
</bsbPresets>
<MacGUI>
ioView nobackground {0, 0, 0}
</MacGUI>
