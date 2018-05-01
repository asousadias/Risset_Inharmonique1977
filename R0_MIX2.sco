;	RISSET'S INHARMONIQUE (1977) - GENERAL MIXER TO MIX SECTION FILES
; As described in Lorrain, Denis:	SECTION II (0:58 - 1:25)
; "Analyse de la bande magnetique de l'oeuvre de Jean-Claude Risset - Inharmonique"
; in Rapports IRCAM 26/80.
; by Antonio de Sousa Dias
; sousa.dias@wanadoo.fr

; USE OF MACROS TO MAKE READING CLEARER
#define	MNO	#i1#
#define	STR	#i2#
; TAKE THE PREVIOUSLY GENERATED AUDIO FILES,
; THEN CHANGE THEIR NAMES TO "soundin.XX" ACCORDING
; TO EQUIVALENCE SHOWN BELLOW
#define	VOXN1	#21#	; soundin.21
#define	RVP411	#22#	; soundin.22

; 	st	dur 	amp	file	skip	pitch
$STR.	0	31.75	1	$VOXN1.	0	1
$STR.	5	16.5	.3	$RVP411.	0	1
$STR.	14.5	17.8	.5	$RVP411.	17	1

e
