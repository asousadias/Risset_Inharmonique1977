<CsoundSynthesizer>
<CsInstruments>
; ===================================================================
; RISSET'S INHARMONIQUE (1977)
; Adapted from
; Lorrain, Denis (1980)
;    "Analyse de la bande magnetique de l'oeuvre de Jean-Claude Risset - Inharmonique"
;    in Rapports IRCAM 26/80.
; different version of SV1 values for PLF6 provided by Jean-Claude Risset
; 		Developed by:
; 		Antonio de Sousa Dias (a.sousadias@belasartes.ulisboa.pt)
; 		José Luis Ferreira
; 		2011-19
; ===================================================================

sr      = 48000
ksmps   = 8
nchnls  = 2

giamp_fact	= 16	; Amplitude factor (not in the original orchestra)

; ==============================
; S 8 - IRR1.ORC:
; ==============================
instr	8101
	iP5 = p4
	aB3   soundin "r8_ir_msbTEST48k.wav" 	; NOTE ATT sr not converted must be the same SR
	aB3	= aB3 * 0.2418 * iP5
	outch 1, aB3
endin


</CsInstruments>
<CsScore>
; ==============================
;  S 8 - IRR1.SCO not:
; ==============================

i8101 0.000	14.27	1	
i8101 0.029	14.27	1	
i8101 0.053	14.27	1	
i8101 0.067	14.27	1	
i8101 0.089	14.27	1	
i8101 0.113	14.27	1	
i8101 0.139	14.27	1	
i8101 0.149	14.27	1	
i8101 0.163	14.27	1	
i8101 0.167	14.27	1	
i8101 0.211	14.27	1	
i8101 0.239	14.27	1	
i8101 0.251	14.27 0.5
i8101 0.293 	14.27 0.25	


</CsScore>
</CsoundSynthesizer>
<bsbPanel>
 <label>Widgets</label>
 <objectName/>
 <x>72</x>
 <y>179</y>
 <width>400</width>
 <height>200</height>
 <visible>true</visible>
 <uuid/>
 <bgcolor mode="nobackground">
  <r>231</r>
  <g>46</g>
  <b>255</b>
 </bgcolor>
 <bsbObject type="BSBVSlider" version="2">
  <objectName>slider1</objectName>
  <x>5</x>
  <y>5</y>
  <width>20</width>
  <height>100</height>
  <uuid>{54c876ec-5f36-4555-a184-c28782e52583}</uuid>
  <visible>true</visible>
  <midichan>0</midichan>
  <midicc>-3</midicc>
  <minimum>0.00000000</minimum>
  <maximum>1.00000000</maximum>
  <value>0.00000000</value>
  <mode>lin</mode>
  <mouseControl act="jump">continuous</mouseControl>
  <resolution>-1.00000000</resolution>
  <randomizable group="0">false</randomizable>
 </bsbObject>
</bsbPanel>
<bsbPresets>
</bsbPresets>
