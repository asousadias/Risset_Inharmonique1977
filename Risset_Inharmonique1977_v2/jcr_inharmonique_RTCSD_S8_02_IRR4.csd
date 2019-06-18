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
; S 8 - IRR4.ORC:
; ==============================
instr	8201
; This instrument combines two scores. 
; 1-the processing score for the delay-reverb effect
; 2-the 0.2 secs delay on channel 2 on the final mix
	iP5 = p4
	aB3   soundin "r8_ir_msbTEST48k.wav"	; NOTE ATT sr not converted must be the same SR
	aB3	= aB3 * 0.432 * iP5
	aB4	delay aB3, 0.2
	outch 1, aB3, 2, aB4 
endin

</CsInstruments>
<CsScore>

; ==============================
;  S 8 - IRR4.SCO not:
; ==============================
i8201 0.00000	14.27 1		
i8201 0.03764	14.27 1		
i8201 0.10279	14.27 1		
i8201 0.17386	14.27 1	
i8201 0.25483	14.27 1		
i8201 0.33854	14.27 0.7	
i8201 0.42638	14.27 0.2 	


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
