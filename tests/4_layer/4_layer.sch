EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:LED D1
U 1 1 5C485395
P 5675 3700
F 0 "D1" V 5713 3583 50  0000 R CNN
F 1 "LED" V 5622 3583 50  0000 R CNN
F 2 "LED_THT:LED_D1.8mm_W1.8mm_H2.4mm_Horizontal_O1.27mm_Z1.6mm" H 5675 3700 50  0001 C CNN
F 3 "~" H 5675 3700 50  0001 C CNN
	1    5675 3700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 5C485410
P 6100 3700
F 0 "D2" V 6138 3583 50  0000 R CNN
F 1 "LED" V 6047 3583 50  0000 R CNN
F 2 "LED_THT:LED_D1.8mm_W1.8mm_H2.4mm_Horizontal_O1.27mm_Z1.6mm" H 6100 3700 50  0001 C CNN
F 3 "~" H 6100 3700 50  0001 C CNN
	1    6100 3700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D3
U 1 1 5C485467
P 6500 3700
F 0 "D3" V 6538 3583 50  0000 R CNN
F 1 "LED" V 6447 3583 50  0000 R CNN
F 2 "LED_THT:LED_D1.8mm_W1.8mm_H2.4mm_Horizontal_O1.27mm_Z1.6mm" H 6500 3700 50  0001 C CNN
F 3 "~" H 6500 3700 50  0001 C CNN
	1    6500 3700
	0    -1   -1   0   
$EndComp
$Comp
L power:Earth #PWR02
U 1 1 5C4854F5
P 6100 4350
F 0 "#PWR02" H 6100 4100 50  0001 C CNN
F 1 "Earth" H 6100 4200 50  0001 C CNN
F 2 "" H 6100 4350 50  0001 C CNN
F 3 "~" H 6100 4350 50  0001 C CNN
	1    6100 4350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Female J1
U 1 1 5C48560E
P 4425 3500
F 0 "J1" H 4319 3075 50  0000 C CNN
F 1 "Conn_01x05_Female" H 4319 3166 50  0000 C CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x05_P1.00mm_Horizontal" H 4425 3500 50  0001 C CNN
F 3 "~" H 4425 3500 50  0001 C CNN
	1    4425 3500
	-1   0    0    1   
$EndComp
$Comp
L power:Earth #PWR01
U 1 1 5C485748
P 4850 4100
F 0 "#PWR01" H 4850 3850 50  0001 C CNN
F 1 "Earth" H 4850 3950 50  0001 C CNN
F 2 "" H 4850 4100 50  0001 C CNN
F 3 "~" H 4850 4100 50  0001 C CNN
	1    4850 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 4100 4850 3850
Wire Wire Line
	4850 3700 4625 3700
Wire Wire Line
	5675 3500 5675 3550
NoConn ~ 4625 3600
Wire Wire Line
	6100 3400 6100 3550
Wire Wire Line
	6500 3300 6500 3550
Wire Wire Line
	6100 3850 6100 4075
Wire Wire Line
	6500 3850 6500 4075
Wire Wire Line
	6500 4075 6100 4075
Connection ~ 6100 4075
Wire Wire Line
	6100 4075 6100 4350
Wire Wire Line
	5675 3850 5675 4075
Wire Wire Line
	5675 4075 6100 4075
$Comp
L Device:R_Small R1
U 1 1 5C485A82
P 5100 3300
F 0 "R1" V 4904 3300 50  0000 C CNN
F 1 "R_Small" V 4995 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 5100 3300 50  0001 C CNN
F 3 "~" H 5100 3300 50  0001 C CNN
	1    5100 3300
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5C485AFE
P 5325 3400
F 0 "R2" V 5129 3400 50  0000 C CNN
F 1 "R_Small" V 5220 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 5325 3400 50  0001 C CNN
F 3 "~" H 5325 3400 50  0001 C CNN
	1    5325 3400
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5C485B36
P 5500 3500
F 0 "R3" V 5304 3500 50  0000 C CNN
F 1 "R_Small" V 5395 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 5500 3500 50  0001 C CNN
F 3 "~" H 5500 3500 50  0001 C CNN
	1    5500 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	5425 3400 6100 3400
Wire Wire Line
	5600 3500 5675 3500
Wire Wire Line
	5200 3300 6500 3300
Wire Wire Line
	5000 3300 4625 3300
Wire Wire Line
	5225 3400 4625 3400
Wire Wire Line
	5400 3500 4625 3500
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5C4860DE
P 5025 3700
F 0 "#FLG0101" H 5025 3775 50  0001 C CNN
F 1 "PWR_FLAG" H 5025 3874 50  0000 C CNN
F 2 "" H 5025 3700 50  0001 C CNN
F 3 "~" H 5025 3700 50  0001 C CNN
	1    5025 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5025 3700 5025 3850
Wire Wire Line
	5025 3850 4850 3850
Connection ~ 4850 3850
Wire Wire Line
	4850 3850 4850 3700
$EndSCHEMATC
