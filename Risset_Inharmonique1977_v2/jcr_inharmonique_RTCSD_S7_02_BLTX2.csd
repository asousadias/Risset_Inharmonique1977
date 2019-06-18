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
; S 7 - BLTX2.ORC:
; ==============================
instr	7203, 7204, 13, 14
; based upon S5-BELLSB
; Although this is a more compact instrument design approach
; we kept overall MUSIC V design regarding variable names.
; consider using instr 3, 4 as statements are generated by plf6

; NOTE these instruments provide a transposition factor (p6) for realtime transposition of sequence

iDUR	=	1 / p3
iP5	=	p4  * giamp_fact 
iP6	=	p5

iTransp = p6

ifn1	= 7101
ifn2 = 7102
ifn3 = 7103
ifnx	=	((p1 == 7203) || (p1 == 13) ? ifn3 : ifn2)

aB3	oscili	iP5, iDUR, ifnx
aB3	oscili	aB3, iP6 * iTransp, ifn1

	; these are mono instruments in the original MUSIC V score
	outch 1, aB3, 2, aB3
endin

</CsInstruments>
<CsScore>
; ==============================
;  S 7 - BLTX1.SCO fn:
; ==============================
f7101	0	512	9	1	1	0	
f7102	0	512	25	0	0.0010	79	1	511	0.0010	
f7103	0	512	25	0 0.00001 49 0.5 199 0.05 209 1 299 0.1 379 0.7 419 0.05 429 0.3 439 0.05 459 0.1 511 0.00001	

; ==============================
;  S 7 - BLTX2.SCO not:
; ==============================

;
t0	240	; transposition time . original mm=120
; developed score by plf6

;p1	p2	p3	p4	p5	/ p6 the transposition factor
i7203 1 3.561 82.051 758.166 2
i7203 1 2.374 82.051 139.278
i7203 1 3.264 82.051 388.630
i7203 1 2.523 82.051 1244.516
i7203 1 0.890 61.538 1835.324
i7203 1 0.445 30.769 2526.097
i7203 1 0.297 20.513 3303.358
i7203 1 0.223 8.205 4155.874
i7203 1 0.119 4.103 5058.934
i7203 1.100 4.489 82.051 601.504
i7203 1.100 2.992 82.051 110.499
i7203 1.100 4.115 82.051 308.327
i7203 1.100 3.180 82.051 987.358
i7203 1.100 1.122 61.538 1456.086
i7203 1.100 0.561 30.769 2004.123
i7203 1.100 0.374 20.513 2620.777
i7203 1.100 0.281 8.205 3297.135
i7203 1.100 0.150 4.103 4013.593
i7203 1.200 6.744 82.051 400.358
i7203 1.200 4.496 82.051 73.547
i7203 1.200 6.182 82.051 205.221
i7203 1.200 4.777 82.051 657.181
i7203 1.200 1.686 61.538 969.163
i7203 1.200 0.843 30.769 1333.934
i7203 1.200 0.562 20.513 1744.375
i7203 1.200 0.421 8.205 2194.556
i7203 1.200 0.225 4.103 2671.427
i7203 1.300 2.520 61.538 1071.490
i7203 1.300 1.680 61.538 196.837
i7203 1.300 2.310 61.538 549.238
i7203 1.300 1.785 61.538 1758.831
i7203 1.300 0.630 46.154 2593.799
i7203 1.300 0.315 23.077 3570.046
i7203 1.300 0.210 15.385 4668.521
i7203 1.300 0.157 6.154 5873.352
i7203 1.300 0.084 3.077 7149.616
i7203 1.400 3.130 82.051 862.607
i7203 1.400 2.087 82.051 158.464
i7203 1.400 2.869 82.051 442.166
i7203 1.400 2.217 82.051 1415.954
i7203 1.400 0.783 61.538 2088.149
i7203 1.400 0.391 30.769 2874.080
i7203 1.400 0.261 20.513 3758.413
i7203 1.400 0.196 8.205 4728.367
i7203 1.400 0.104 4.103 5755.828
i7203 1.550 40.343 177.515 231.017
i7203 1.550 36.309 106.509 230.521
i7203 1.550 30.258 106.509 308.353
i7203 1.550 28.240 35.503 309.345
i7203 1.550 20.172 71.006 388.664
i7203 1.550 14.120 142.012 462.530
i7203 1.550 14.120 71.006 467.487
i7203 1.550 8.069 71.006 549.285
i7203 1.550 6.052 35.503 653.391
i7203 1.550 4.034 53.254 776.336
i7203 1.550 5.043 71.006 872.511
i7203 11 14.264 59.172 653.391
i7203 11 12.838 35.503 651.989
i7203 11 10.698 35.503 872.123
i7203 11 9.985 11.834 874.928
i7203 11 7.132 23.669 1099.268
i7203 11 4.992 47.337 1308.185
i7203 11 4.992 23.669 1322.206
i7203 11 2.853 23.669 1553.557
i7203 11 2.140 11.834 1848.004
i7203 11 1.426 17.751 2195.732
i7203 11 1.783 23.669 2467.745
i7203 12.500 12.703 59.172 733.702
i7203 12.500 11.432 35.503 732.128
i7203 12.500 9.527 35.503 979.319
i7203 12.500 8.892 11.834 982.468
i7203 12.500 6.351 23.669 1234.383
i7203 12.500 4.446 47.337 1468.979
i7203 12.500 4.446 23.669 1484.723
i7203 12.500 2.541 23.669 1744.511
i7203 12.500 1.905 11.834 2075.149
i7203 12.500 1.270 17.751 2465.617
i7203 12.500 1.588 23.669 2771.064
i7203 20.500 20.172 59.172 462.034
i7203 20.500 18.155 35.503 461.043
i7203 20.500 15.129 35.503 616.706
i7203 20.500 14.120 11.834 618.689
i7203 20.500 10.086 23.669 777.328
i7203 20.500 7.060 47.337 925.060
i7203 20.500 7.060 23.669 934.974
i7203 20.500 4.034 23.669 1098.570
i7203 20.500 3.026 11.834 1306.783
i7203 20.500 2.017 17.751 1552.672
i7203 20.500 2.521 23.669 1745.021
i7203 35 21.364 88.757 436.255
i7203 35 19.227 53.254 435.319
i7203 35 16.023 53.254 582.298
i7203 35 14.955 17.751 584.170
i7203 35 10.682 35.503 733.957
i7203 35 7.477 71.006 873.447
i7203 35 7.477 35.503 882.809
i7203 35 4.273 35.503 1037.277
i7203 35 3.205 17.751 1233.872
i7203 35 2.136 26.627 1466.043
i7203 35 2.670 35.503 1647.660
i7203 8 39.829 93.750 232.998
i7203 8 31.863 56.250 232.596
i7203 8 29.872 56.250 303.801
i7203 8 21.906 18.750 304.805
i7203 8 19.914 37.500 389.167
i7203 8 13.940 75.000 468.506
i7203 8 9.957 37.500 473.528
i7203 8 7.966 37.500 542.323
i7203 8 5.974 18.750 622.667
i7203 8 4.979 28.125 783.355
i7203 8 5.974 37.500 863.699
i7203 12 21.136 62.500 439.054
i7203 12 16.909 37.500 438.297
i7203 12 15.852 37.500 572.473
i7203 12 11.625 12.500 574.366
i7203 12 10.568 25.000 733.333
i7203 12 7.398 50.000 882.839
i7203 12 5.284 25.000 892.301
i7203 12 4.227 25.000 1021.935
i7203 12 3.170 12.500 1173.333
i7203 12 2.642 18.750 1476.129
i7203 12 3.170 25.000 1627.527
i7203 21.200 19.957 31.250 464.998
i7203 21.200 15.966 18.750 464.196
i7203 21.200 14.968 18.750 606.301
i7203 21.200 10.976 6.250 608.305
i7203 21.200 9.979 12.500 776.667
i7203 21.200 6.985 25.000 935.006
i7203 21.200 4.989 12.500 945.028
i7203 21.200 3.991 12.500 1082.323
i7203 21.200 2.994 6.250 1242.667
i7203 21.200 2.495 9.375 1563.355
i7203 21.200 2.994 12.500 1723.699
i7203 35.020 10.556 93.750 879.105
i7203 35.020 8.445 56.250 877.590
i7203 35.020 7.917 56.250 1146.247
i7203 35.020 5.806 18.750 1150.037
i7203 35.020 5.278 37.500 1468.333
i7203 35.020 3.695 75.000 1767.684
i7203 35.020 2.639 37.500 1786.630
i7203 35.020 2.111 37.500 2046.194
i7203 35.020 1.583 18.750 2349.333
i7203 35.020 1.320 28.125 2955.613
i7203 35.020 1.583 37.500 3258.753
i7203 14 10.649 200.000 225.381
i7203 14 10.116 166.667 260.127
i7203 14 9.051 200.000 361.548
i7203 14 5.324 133.333 568.147
i7203 14 7.454 66.667 93.909
i7203 14 5.857 66.667 629.188
i7203 14 4.259 66.667 762.538
i7203 19 25.128 60.000 57.705
i7203 19 22.112 45.000 61.685
i7203 19 20.102 30.000 101.481
i7203 19 25.128 180.000 291.510
i7203 19 20.102 60.000 292.008
i7203 19 17.087 120.000 347.225
i7203 19 15.077 90.000 345.236
i7203 19 13.066 60.000 437.763
i7203 19 11.056 30.000 580.036
i7203 19 5.026 30.000 666.593
i7203 19 3.015 90.000 925.271
i7203 24 20.545 107.143 218.053
i7203 24 18.491 71.429 219.027
i7203 24 13.355 107.143 358.230
i7203 24 11.300 192.857 359.885
i7203 24 6.677 285.714 463.363
i7203 24 7.191 178.571 661.947
i7203 24 5.136 157.143 778.761
i7203 24 4.109 142.857 1064.956
i7203 24 3.082 142.857 1168.142
i7203 24 2.055 107.143 1464.071
i7203 24 1.541 142.857 1584.779
i7203 27 8.159 32.143 549.097
i7203 27 7.343 21.429 551.549
i7203 27 5.303 32.143 902.088
i7203 27 4.487 57.857 906.256
i7203 27 2.652 85.714 1166.832
i7203 27 2.856 53.571 1666.903
i7203 27 2.040 47.143 1961.062
i7203 27 1.632 42.857 2681.752
i7203 27 1.224 42.857 2941.593
i7203 27 0.816 32.143 3686.796
i7203 27 0.612 42.857 3990.761
i7203 28 15.427 42.857 290.407
i7203 28 13.884 28.571 291.704
i7203 28 10.027 42.857 477.097
i7203 28 8.485 77.143 479.301
i7203 28 5.014 114.286 617.115
i7203 28 5.399 71.429 881.593
i7203 28 3.857 62.857 1037.168
i7203 28 3.085 57.143 1418.327
i7203 28 2.314 57.143 1555.752
i7203 28 1.543 42.857 1949.876
i7203 28 1.157 57.143 2110.637
i7203 27.300 4.925 66.667 487.310
i7203 27.300 4.679 55.556 562.437
i7203 27.300 4.186 66.667 781.726
i7203 27.300 2.463 44.444 1228.426
i7203 27.300 3.448 22.222 203.046
i7203 27.300 2.709 22.222 1360.406
i7203 27.300 1.970 22.222 1648.731
i7203 28.500 8.455 100.000 283.858
i7203 28.500 8.032 83.333 327.619
i7203 28.500 7.187 100.000 455.355
i7203 28.500 4.227 66.667 715.558
i7203 28.500 5.918 33.333 118.274
i7203 28.500 4.650 33.333 792.437
i7203 28.500 3.382 33.333 960.386
i7203 35.090 26.625 50.000 54.461
i7203 35.090 23.430 37.500 58.217
i7203 35.090 21.300 25.000 95.776
i7203 35.090 26.625 150.000 275.122
i7203 35.090 21.300 50.000 275.592
i7203 35.090 18.105 100.000 327.705
i7203 35.090 15.975 75.000 325.827
i7203 35.090 13.845 50.000 413.153
i7203 35.090 11.715 25.000 547.427
i7203 35.090 5.325 25.000 629.119
i7203 35.090 3.195 75.000 873.254
i7203 50 25.128 120.000 57.705
i7203 50 22.112 90.000 61.685
i7203 50 20.102 60.000 101.481
i7203 50 25.128 360.000 291.510
i7203 50 20.102 120.000 292.008
i7203 50 17.087 240.000 347.225
i7203 50 15.077 180.000 345.236
i7203 50 13.066 120.000 437.763
i7203 50 11.056 60.000 580.036
i7203 50 5.026 60.000 666.593
i7203 50 3.015 180.000 925.271
i7203 42 12.728 175.781 137.645
i7203 42 11.668 117.188 195.155
i7203 42 8.486 117.188 261.149
i7203 42 10.607 87.891 310.833
i7203 42 6.364 87.891 439.333
i7203 42 4.243 87.891 658.057
i7203 43.500 9.543 143.541 277.260
i7203 43.500 8.483 143.541 311.210
i7203 43.500 6.362 143.541 369.680
i7203 43.500 4.242 143.541 493.881
i7203 43.500 7.423 107.656 522.456
i7203 43.500 4.242 107.656 658.257
i7203 47 4.500 144.928 246
i7203 47 6 72.464 350
i7203 47 1.500 96.618 528
i7203 47 4 96.618 555.600
i7203 47 3 96.618 658
i7203 47 2 144.928 784
i7203 62 12 187.500 233
i7203 62 9 187.500 277
i7203 62 8 187.500 370
i7203 62 5 187.500 392
i7203 62 4 125.000 523
i7203 62 4 187.500 880
i7203 62.400 11.983 117.188 146.209
i7203 62.400 10.984 78.125 207.296
i7203 62.400 7.989 78.125 277.396
i7203 62.400 9.986 58.594 330.172
i7203 62.400 5.991 58.594 466.667
i7203 62.400 3.994 58.594 698.999
i7203 66 6.715 288.462 390.162
i7203 66 4.701 144.231 618.005
i7203 66 4.029 144.231 874.143
i7203 66 2.015 144.231 1167.509
i7203 66 3.358 144.231 1387.906
i7203 66 2.686 144.231 1650.000
i7203 72 4.494 61.538 901.289
i7203 72 2.996 61.538 165.570
i7203 72 4.119 61.538 461.994
i7203 72 3.183 61.538 1479.450
i7203 72 1.123 46.154 2181.788
i7203 72 0.562 23.077 3002.963
i7203 72 0.374 15.385 3926.951
i7203 72 0.281 6.154 4940.401
i7203 72 0.150 3.077 6013.937
i7203 72.150 6.365 61.538 636.318
i7203 72.150 4.243 61.538 116.894
i7203 72.150 5.834 61.538 326.172
i7203 72.150 4.508 61.538 1044.504
i7203 72.150 1.591 46.154 1540.361
i7203 72.150 0.796 23.077 2120.117
i7203 72.150 0.530 15.385 2772.461
i7203 72.150 0.398 6.154 3487.966
i7203 72.150 0.212 3.077 4245.891
i7203 72.300 10.116 61.538 400.358
i7203 72.300 6.744 61.538 73.547
i7203 72.300 9.273 61.538 205.221
i7203 72.300 7.165 61.538 657.181
i7203 72.300 2.529 46.154 969.163
i7203 72.300 1.264 23.077 1333.934
i7203 72.300 0.843 15.385 1744.375
i7203 72.300 0.632 6.154 2194.556
i7203 72.300 0.337 3.077 2671.427
i7203 72.400 10.079 61.538 535.745
i7203 72.400 6.720 61.538 98.418
i7203 72.400 9.239 61.538 274.619
i7203 72.400 7.140 61.538 879.415
i7203 72.400 2.520 46.154 1296.900
i7203 72.400 1.260 23.077 1785.023
i7203 72.400 0.840 15.385 2334.261
i7203 72.400 0.630 6.154 2936.676
i7203 72.400 0.336 3.077 3574.808
i7203 72.500 23.741 61.538 284.312
i7203 72.500 15.828 61.538 52.229
i7203 72.500 21.763 61.538 145.736
i7203 72.500 16.817 61.538 466.693
i7203 72.500 5.935 46.154 688.246
i7203 72.500 2.968 23.077 947.287
i7203 72.500 1.978 15.385 1238.759
i7203 72.500 1.484 6.154 1558.453
i7203 72.500 0.791 3.077 1897.100
i7203 72.550 3 61.538 1350
i7203 72.550 2 61.538 248
i7203 72.550 2.750 61.538 692
i7203 72.550 2.125 61.538 2216
i7203 72.550 0.750 46.154 3268
i7203 72.550 0.375 23.077 4498
i7203 72.550 0.250 15.385 5882
i7203 72.550 0.188 6.154 7400
i7203 72.550 0.100 3.077 9008
i7203 75 6.476 42.857 691.823
i7203 75 5.828 28.571 694.912
i7203 75 4.209 42.857 1136.566
i7203 75 3.562 77.143 1141.817
i7203 75 2.105 114.286 1470.124
i7203 75 2.266 71.429 2100.177
i7203 75 1.619 62.857 2470.796
i7203 75 1.295 57.143 3378.814
i7203 75 0.971 57.143 3706.195
i7203 75 0.648 42.857 4645.097
i7203 75 0.486 57.143 5028.071
i7203 76.600 19.957 187.500 464.998
i7203 76.600 15.966 112.500 464.196
i7203 76.600 14.968 112.500 606.301
i7203 76.600 10.976 37.500 608.305
i7203 76.600 9.979 75.000 776.667
i7203 76.600 6.985 150.000 935.006
i7203 76.600 4.989 75.000 945.028
i7203 76.600 3.991 75.000 1082.323
i7203 76.600 2.994 37.500 1242.667
i7203 76.600 2.495 56.250 1563.355
i7203 76.600 2.994 75.000 1723.699
i7204 77 6.246 48.649 84.049 2 ; transposition factor
i7204 77 8.329 162.162 196.914
i7204 77 7.079 121.622 197.875
i7204 77 8.329 162.162 396.230
i7204 77 6.246 243.243 480.278
i7204 77 2.499 162.162 821.276
i7204 77 2.082 121.622 1020.592
i7204 77 2.915 162.162 1200.696
i7204 77 1.666 40.541 2149.246
i7204 77 0.833 32.432 3129.014
i7204 77 0.416 40.541 3604.490
i7204 77 1.666 48.649 4082.367
i7204 77 0.625 32.432 5283.063
i7203 80 9.711 219.245 186.085
i7203 80 8.092 146.163 262.394
i7203 80 3.237 146.163 349.412
i7203 80 6.474 109.622 416.349
i7203 80 4.855 109.622 496.004
i7203 80 4.046 109.622 660.000
i7204 84 25.145 26.250 27.839
i7204 84 25.145 17.500 38.974
i7204 84 25.145 437.500 67.608
i7204 84 21.373 131.250 135.216
i7204 84 18.859 175.000 163.850
i7204 84 7.543 175.000 268.841
i7204 84 6.286 87.500 336.450
i7204 84 8.801 131.250 404.058
i7204 84 5.029 26.250 501.095
i7204 84 3.772 17.500 556.772
i7204 84 2.514 35.000 604.496
i7204 84 1.257 52.500 624.380
i7204 84 2.514 26.250 723.009
i7203 100 10.649 100.000 225.381 2 ; transposition factor
i7203 100 10.116 83.333 260.127
i7203 100 9.051 100.000 361.548
i7203 100 5.324 66.667 568.147
i7203 100 7.454 33.333 93.909
i7203 100 5.857 33.333 629.188
i7203 100 4.259 33.333 762.538
i7203 100.200 9.494 100.000 252.792
i7203 100.200 9.019 83.333 291.764
i7203 100.200 8.070 100.000 405.520
i7203 100.200 4.747 66.667 637.246
i7203 100.200 6.646 33.333 105.330
i7203 100.200 5.222 33.333 705.711
i7203 100.200 3.798 33.333 855.279
i7203 104 6.712 66.667 357.563
i7203 104 6.376 55.556 412.688
i7203 104 5.705 66.667 573.591
i7203 104 3.356 44.444 901.358
i7203 104 4.698 22.222 148.985
i7203 104 3.692 22.222 998.198
i7203 104 2.685 22.222 1209.756
i7203 107.500 7.992 233.333 300.305
i7203 107.500 7.592 194.444 346.602
i7203 107.500 6.793 233.333 481.739
i7203 107.500 3.996 155.556 757.018
i7203 107.500 5.594 77.778 125.127
i7203 107.500 4.396 77.778 838.350
i7203 107.500 3.197 77.778 1016.030
i7203 100.700 14.112 62.500 657.583
i7203 100.700 11.290 37.500 656.449
i7203 100.700 10.584 37.500 857.409
i7203 100.700 7.762 12.500 860.243
i7203 100.700 7.056 25.000 1098.333
i7203 100.700 4.939 50.000 1322.252
i7203 100.700 3.528 25.000 1336.424
i7203 100.700 2.822 25.000 1530.581
i7203 100.700 2.117 12.500 1757.333
i7203 100.700 1.764 18.750 2210.839
i7203 100.700 2.117 25.000 2437.591
i7203 101.300 4.500 57.971 246
i7203 101.300 6 28.986 350
i7203 101.300 1.500 38.647 528
i7203 101.300 4 38.647 555.600
i7203 101.300 3 38.647 658
i7203 101.300 2 57.971 784
i7203 102 8.489 80.357 329.377
i7203 102 6.367 80.357 391.577
i7203 102 5.659 80.357 523.045
i7203 102 3.537 80.357 554.145
i7203 102 2.830 53.571 739.332
i7203 102 2.830 80.357 1244.000
i7203 104.200 7.486 324.519 349.964
i7203 104.200 5.241 162.260 554.332
i7203 104.200 4.492 162.260 784.079
i7203 104.200 2.246 162.260 1047.220
i7203 104.200 3.743 162.260 1244.910
i7203 104.200 2.995 162.260 1480.000
i7203 106 12.017 175.781 145.791
i7203 106 11.016 117.188 206.704
i7203 106 8.011 117.188 276.604
i7203 106 10.014 87.891 329.228
i7203 106 6.009 87.891 465.333
i7203 106 4.006 87.891 697.001
i7203 110 61.636 96.429 109.027
i7203 110 55.473 64.286 109.513
i7203 110 40.064 96.429 179.115
i7203 110 33.900 173.571 179.942
i7203 110 20.032 257.143 231.681
i7203 110 21.573 160.714 330.973
i7203 110 15.409 141.429 389.381
i7203 110 12.327 128.571 532.478
i7203 110 9.245 128.571 584.071
i7203 110 6.164 96.429 732.035
i7203 110 4.623 128.571 792.389
f0 142
s



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
