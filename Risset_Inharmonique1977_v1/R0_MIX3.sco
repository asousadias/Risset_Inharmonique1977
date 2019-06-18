;	RISSET'S INHARMONIQUE (1977) - GENERAL MIXER TO MIX SECTION FILES
; As described in Lorrain, Denis:	SECTION III (3:10 - 4:32)
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
#define	FM8	#31#	; soundin.31
#define	LB1113	#32#	; soundin.32
#define	LOSLO3	#33#	; soundin.33
#define	PHASE6	#34#	; soundin.34

;	st	dur	amp	file		skip	pitch
$STR.	1	47	0.6	$FM8.		0	1
$STR.	10	17	0.5	$LB1113.	0	1
$STR.	10	51	0.2	$LOSLO3.	0	1
$STR.	24	58	1	$PHASE6.	0	1
$STR.	44	17	0.25	$LB1113.	17	1
$STR.	44	17	0.1	$LB1113.	34
e
