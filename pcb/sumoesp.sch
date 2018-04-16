EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:ESP32-footprints-Shem-Lib
LIBS:ESP32-Footprints-cache
EELAYER 25 0
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
L Conn_01x03 J1
U 1 1 5ABF3E47
P 6100 1500
F 0 "J1" H 6100 1700 50  0000 C CNN
F 1 "Conn_01x03" H 6100 1300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 6100 1500 50  0001 C CNN
F 3 "" H 6100 1500 50  0001 C CNN
	1    6100 1500
	0    -1   -1   0   
$EndComp
$Comp
L Conn_01x03 J2
U 1 1 5ABF3F01
P 6700 1500
F 0 "J2" H 6700 1700 50  0000 C CNN
F 1 "Conn_01x03" H 6700 1300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 6700 1500 50  0001 C CNN
F 3 "" H 6700 1500 50  0001 C CNN
	1    6700 1500
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 5ABF3F2B
P 6100 1850
F 0 "R1" V 6180 1850 50  0000 C CNN
F 1 "R" V 6100 1850 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6030 1850 50  0001 C CNN
F 3 "" H 6100 1850 50  0001 C CNN
	1    6100 1850
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5ABF3FBA
P 6700 1850
F 0 "R2" V 6780 1850 50  0000 C CNN
F 1 "R" V 6700 1850 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6630 1850 50  0001 C CNN
F 3 "" H 6700 1850 50  0001 C CNN
	1    6700 1850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5ABF4372
P 8700 4750
F 0 "#PWR01" H 8700 4500 50  0001 C CNN
F 1 "GND" V 8700 4500 50  0000 C CNN
F 2 "" H 8700 4750 50  0001 C CNN
F 3 "" H 8700 4750 50  0001 C CNN
	1    8700 4750
	0    1    1    0   
$EndComp
$Comp
L GND #PWR02
U 1 1 5ABF43CC
P 8400 3500
F 0 "#PWR02" H 8400 3250 50  0001 C CNN
F 1 "GND" H 8400 3350 50  0000 C CNN
F 2 "" H 8400 3500 50  0001 C CNN
F 3 "" H 8400 3500 50  0001 C CNN
	1    8400 3500
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR03
U 1 1 5ABF43EC
P 8300 3500
F 0 "#PWR03" H 8300 3250 50  0001 C CNN
F 1 "GND" H 8300 3350 50  0000 C CNN
F 2 "" H 8300 3500 50  0001 C CNN
F 3 "" H 8300 3500 50  0001 C CNN
	1    8300 3500
	-1   0    0    1   
$EndComp
$Comp
L CH340G U2
U 1 1 5ABF40DB
P 6350 3950
F 0 "U2" H 6375 4425 60  0000 C CNN
F 1 "CH340G" H 6350 3475 60  0000 C CNN
F 2 "Housings_SSOP:SOP-16_4.4x10.4mm_Pitch1.27mm" H 6450 3750 60  0001 C CNN
F 3 "" H 6450 3750 60  0000 C CNN
	1    6350 3950
	-1   0    0    1   
$EndComp
Wire Wire Line
	8000 3800 6800 3800
Wire Wire Line
	6800 3900 8000 3900
Wire Wire Line
	4900 2750 7500 2750
Wire Wire Line
	7500 2750 7500 4100
Wire Wire Line
	7500 4100 6800 4100
Wire Wire Line
	6800 4200 7600 4200
Wire Wire Line
	7600 4200 7600 2850
Wire Wire Line
	7600 2850 4900 2850
$Comp
L GND #PWR04
U 1 1 5ABF46E0
P 6800 4300
F 0 "#PWR04" H 6800 4050 50  0001 C CNN
F 1 "GND" H 6800 4150 50  0000 C CNN
F 2 "" H 6800 4300 50  0001 C CNN
F 3 "" H 6800 4300 50  0001 C CNN
	1    6800 4300
	1    0    0    -1  
$EndComp
$Comp
L VBUS #PWR05
U 1 1 5ABF47E4
P 8700 4650
F 0 "#PWR05" H 8700 4500 50  0001 C CNN
F 1 "VBUS" V 8700 4900 50  0000 C CNN
F 2 "" H 8700 4650 50  0001 C CNN
F 3 "" H 8700 4650 50  0001 C CNN
	1    8700 4650
	0    -1   -1   0   
$EndComp
$Comp
L VBUS #PWR06
U 1 1 5ABF4872
P 8000 4100
F 0 "#PWR06" H 8000 3950 50  0001 C CNN
F 1 "VBUS" H 8000 4250 50  0000 C CNN
F 2 "" H 8000 4100 50  0001 C CNN
F 3 "" H 8000 4100 50  0001 C CNN
	1    8000 4100
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR08
U 1 1 5ABF4A2C
P 8700 5150
F 0 "#PWR08" H 8700 5000 50  0001 C CNN
F 1 "+5V" V 8700 5400 50  0000 C CNN
F 2 "" H 8700 5150 50  0001 C CNN
F 3 "" H 8700 5150 50  0001 C CNN
	1    8700 5150
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR09
U 1 1 5ABF4ACA
P 8700 5050
F 0 "#PWR09" H 8700 4800 50  0001 C CNN
F 1 "GND" V 8700 4800 50  0000 C CNN
F 2 "" H 8700 5050 50  0001 C CNN
F 3 "" H 8700 5050 50  0001 C CNN
	1    8700 5050
	0    1    1    0   
$EndComp
$Comp
L Conn_01x02 B1
U 1 1 5ABF4AE7
P 7950 5350
F 0 "B1" H 7950 5450 50  0000 C CNN
F 1 "Power button" H 7950 5150 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 7950 5350 50  0001 C CNN
F 3 "" H 7950 5350 50  0001 C CNN
	1    7950 5350
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR010
U 1 1 5ABF4DF7
P 8150 5350
F 0 "#PWR010" H 8150 5100 50  0001 C CNN
F 1 "GND" H 8150 5200 50  0000 C CNN
F 2 "" H 8150 5350 50  0001 C CNN
F 3 "" H 8150 5350 50  0001 C CNN
	1    8150 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 5250 8700 5250
$Comp
L Crystal Y1
U 1 1 5ABF5070
P 7200 3300
F 0 "Y1" H 7200 3450 50  0000 C CNN
F 1 "12MHz" H 7200 3150 50  0000 C CNN
F 2 "Crystals:Crystal_HC49-U_Vertical" H 7200 3300 50  0001 C CNN
F 3 "" H 7200 3300 50  0001 C CNN
	1    7200 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3700 7400 3700
Wire Wire Line
	7400 3300 7400 4300
Wire Wire Line
	7400 3300 7350 3300
$Comp
L C C2
U 1 1 5ABF5300
P 7400 4450
F 0 "C2" H 7425 4550 50  0000 L CNN
F 1 "22p" H 7425 4350 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 7438 4300 50  0001 C CNN
F 3 "" H 7400 4450 50  0001 C CNN
	1    7400 4450
	1    0    0    -1  
$EndComp
Connection ~ 7400 3700
$Comp
L C C1
U 1 1 5ABF5790
P 7050 4450
F 0 "C1" H 7075 4550 50  0000 L CNN
F 1 "22p" H 7075 4350 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 7088 4300 50  0001 C CNN
F 3 "" H 7050 4450 50  0001 C CNN
	1    7050 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 3300 7050 4300
$Comp
L GND #PWR011
U 1 1 5ABF57FF
P 7050 4600
F 0 "#PWR011" H 7050 4350 50  0001 C CNN
F 1 "GND" H 7050 4450 50  0000 C CNN
F 2 "" H 7050 4600 50  0001 C CNN
F 3 "" H 7050 4600 50  0001 C CNN
	1    7050 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 5ABF582E
P 7400 4600
F 0 "#PWR012" H 7400 4350 50  0001 C CNN
F 1 "GND" H 7400 4450 50  0000 C CNN
F 2 "" H 7400 4600 50  0001 C CNN
F 3 "" H 7400 4600 50  0001 C CNN
	1    7400 4600
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x04 J6
U 1 1 5ABFECFB
P 2100 3500
F 0 "J6" H 2250 3450 50  0000 C CNN
F 1 "Ultrasonic" H 2100 3200 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x04_Pitch2.54mm" H 2100 3500 50  0001 C CNN
F 3 "" H 2100 3500 50  0001 C CNN
	1    2100 3500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2300 3500 3050 3500
Wire Wire Line
	2300 3600 3050 3600
$Comp
L GND #PWR013
U 1 1 5ABFEF69
P 2300 3700
F 0 "#PWR013" H 2300 3450 50  0001 C CNN
F 1 "GND" V 2300 3450 50  0000 C CNN
F 2 "" H 2300 3700 50  0001 C CNN
F 3 "" H 2300 3700 50  0001 C CNN
	1    2300 3700
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR014
U 1 1 5ABFF10D
P 2300 3400
F 0 "#PWR014" H 2300 3250 50  0001 C CNN
F 1 "+3.3V" V 2300 3650 50  0000 C CNN
F 2 "" H 2300 3400 50  0001 C CNN
F 3 "" H 2300 3400 50  0001 C CNN
	1    2300 3400
	0    1    1    0   
$EndComp
$Comp
L Conn_02x03_Odd_Even J5
U 1 1 5ABFF291
P 2100 3000
F 0 "J5" H 2150 3200 50  0000 C CNN
F 1 "Photo" H 2150 2800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" H 2100 3000 50  0001 C CNN
F 3 "" H 2100 3000 50  0001 C CNN
	1    2100 3000
	1    0    0    1   
$EndComp
$Comp
L R R7
U 1 1 5ABFF449
P 2550 2500
F 0 "R7" V 2600 2700 50  0000 C CNN
F 1 "15k" V 2550 2500 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2480 2500 50  0001 C CNN
F 3 "" H 2550 2500 50  0001 C CNN
	1    2550 2500
	-1   0    0    1   
$EndComp
$Comp
L R R8
U 1 1 5ABFF506
P 2650 2500
F 0 "R8" V 2700 2700 50  0000 C CNN
F 1 "15k" V 2650 2500 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2580 2500 50  0001 C CNN
F 3 "" H 2650 2500 50  0001 C CNN
	1    2650 2500
	-1   0    0    1   
$EndComp
$Comp
L R R6
U 1 1 5ABFF546
P 2450 2500
F 0 "R6" V 2500 2700 50  0000 C CNN
F 1 "15k" V 2450 2500 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2380 2500 50  0001 C CNN
F 3 "" H 2450 2500 50  0001 C CNN
	1    2450 2500
	-1   0    0    1   
$EndComp
Wire Wire Line
	2400 3100 3050 3100
Wire Wire Line
	2400 3000 3050 3000
Wire Wire Line
	2400 2900 3050 2900
Wire Wire Line
	2650 2650 2650 3100
Connection ~ 2650 3100
Wire Wire Line
	2550 2650 2550 3000
Connection ~ 2550 3000
Wire Wire Line
	2450 2650 2450 2900
Connection ~ 2450 2900
$Comp
L +3.3V #PWR015
U 1 1 5ABFFC4C
P 2450 2350
F 0 "#PWR015" H 2450 2200 50  0001 C CNN
F 1 "+3.3V" V 2450 2600 50  0000 C CNN
F 2 "" H 2450 2350 50  0001 C CNN
F 3 "" H 2450 2350 50  0001 C CNN
	1    2450 2350
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR016
U 1 1 5ABFFCA2
P 2550 2350
F 0 "#PWR016" H 2550 2200 50  0001 C CNN
F 1 "+3.3V" V 2550 2600 50  0000 C CNN
F 2 "" H 2550 2350 50  0001 C CNN
F 3 "" H 2550 2350 50  0001 C CNN
	1    2550 2350
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR017
U 1 1 5ABFFCE0
P 2650 2350
F 0 "#PWR017" H 2650 2200 50  0001 C CNN
F 1 "+3.3V" V 2650 2600 50  0000 C CNN
F 2 "" H 2650 2350 50  0001 C CNN
F 3 "" H 2650 2350 50  0001 C CNN
	1    2650 2350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 5ABFFF7F
P 1900 2900
F 0 "#PWR018" H 1900 2650 50  0001 C CNN
F 1 "GND" V 1900 2650 50  0000 C CNN
F 2 "" H 1900 2900 50  0001 C CNN
F 3 "" H 1900 2900 50  0001 C CNN
	1    1900 2900
	0    1    1    0   
$EndComp
$Comp
L GND #PWR019
U 1 1 5AC0004A
P 1900 3000
F 0 "#PWR019" H 1900 2750 50  0001 C CNN
F 1 "GND" V 1900 2750 50  0000 C CNN
F 2 "" H 1900 3000 50  0001 C CNN
F 3 "" H 1900 3000 50  0001 C CNN
	1    1900 3000
	0    1    1    0   
$EndComp
$Comp
L GND #PWR020
U 1 1 5AC00088
P 1900 3100
F 0 "#PWR020" H 1900 2850 50  0001 C CNN
F 1 "GND" V 1900 2850 50  0000 C CNN
F 2 "" H 1900 3100 50  0001 C CNN
F 3 "" H 1900 3100 50  0001 C CNN
	1    1900 3100
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR021
U 1 1 5AC00202
P 3050 2700
F 0 "#PWR021" H 3050 2550 50  0001 C CNN
F 1 "+3.3V" V 3050 2950 50  0000 C CNN
F 2 "" H 3050 2700 50  0001 C CNN
F 3 "" H 3050 2700 50  0001 C CNN
	1    3050 2700
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x04_Female J8
U 1 1 5AC0035C
P 4850 5300
F 0 "J8" H 4850 5500 50  0000 C CNN
F 1 "OLED" V 4900 5250 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x04_Pitch2.54mm" H 4850 5300 50  0001 C CNN
F 3 "" H 4850 5300 50  0001 C CNN
	1    4850 5300
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR022
U 1 1 5AC00BA2
P 4650 5400
F 0 "#PWR022" H 4650 5250 50  0001 C CNN
F 1 "+3.3V" V 4650 5650 50  0000 C CNN
F 2 "" H 4650 5400 50  0001 C CNN
F 3 "" H 4650 5400 50  0001 C CNN
	1    4650 5400
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR023
U 1 1 5AC00C6E
P 4650 5500
F 0 "#PWR023" H 4650 5250 50  0001 C CNN
F 1 "GND" V 4650 5300 50  0000 C CNN
F 2 "" H 4650 5500 50  0001 C CNN
F 3 "" H 4650 5500 50  0001 C CNN
	1    4650 5500
	0    1    1    0   
$EndComp
$Comp
L Conn_02x03_Odd_Even J7
U 1 1 5AC016C8
P 2150 4600
F 0 "J7" H 2200 4800 50  0000 C CNN
F 1 "IR LED" H 2200 4400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" H 2150 4600 50  0001 C CNN
F 3 "" H 2150 4600 50  0001 C CNN
	1    2150 4600
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR024
U 1 1 5AC01977
P 2450 4500
F 0 "#PWR024" H 2450 4350 50  0001 C CNN
F 1 "+5V" V 2450 4750 50  0000 C CNN
F 2 "" H 2450 4500 50  0001 C CNN
F 3 "" H 2450 4500 50  0001 C CNN
	1    2450 4500
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR025
U 1 1 5AC01AFF
P 2450 4600
F 0 "#PWR025" H 2450 4450 50  0001 C CNN
F 1 "+5V" V 2450 4850 50  0000 C CNN
F 2 "" H 2450 4600 50  0001 C CNN
F 3 "" H 2450 4600 50  0001 C CNN
	1    2450 4600
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR026
U 1 1 5AC01B43
P 2450 4700
F 0 "#PWR026" H 2450 4550 50  0001 C CNN
F 1 "+5V" V 2450 4950 50  0000 C CNN
F 2 "" H 2450 4700 50  0001 C CNN
F 3 "" H 2450 4700 50  0001 C CNN
	1    2450 4700
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 5AC01C92
P 1800 4500
F 0 "R3" V 1850 4650 50  0000 C CNN
F 1 "150" V 1800 4500 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1730 4500 50  0001 C CNN
F 3 "" H 1800 4500 50  0001 C CNN
	1    1800 4500
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 5AC01DAD
P 1800 4600
F 0 "R4" V 1850 4750 50  0000 C CNN
F 1 "150" V 1800 4600 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1730 4600 50  0001 C CNN
F 3 "" H 1800 4600 50  0001 C CNN
	1    1800 4600
	0    -1   -1   0   
$EndComp
$Comp
L R R5
U 1 1 5AC01E15
P 1800 4700
F 0 "R5" V 1850 4850 50  0000 C CNN
F 1 "150" V 1800 4700 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1730 4700 50  0001 C CNN
F 3 "" H 1800 4700 50  0001 C CNN
	1    1800 4700
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR027
U 1 1 5AC01E67
P 1650 4500
F 0 "#PWR027" H 1650 4250 50  0001 C CNN
F 1 "GND" V 1650 4250 50  0000 C CNN
F 2 "" H 1650 4500 50  0001 C CNN
F 3 "" H 1650 4500 50  0001 C CNN
	1    1650 4500
	0    1    1    0   
$EndComp
$Comp
L GND #PWR028
U 1 1 5AC01F64
P 1650 4700
F 0 "#PWR028" H 1650 4450 50  0001 C CNN
F 1 "GND" V 1650 4450 50  0000 C CNN
F 2 "" H 1650 4700 50  0001 C CNN
F 3 "" H 1650 4700 50  0001 C CNN
	1    1650 4700
	0    1    1    0   
$EndComp
$Comp
L GND #PWR029
U 1 1 5AC01FB1
P 1650 4600
F 0 "#PWR029" H 1650 4350 50  0001 C CNN
F 1 "GND" V 1650 4350 50  0000 C CNN
F 2 "" H 1650 4600 50  0001 C CNN
F 3 "" H 1650 4600 50  0001 C CNN
	1    1650 4600
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR030
U 1 1 5AC02FBC
P 6700 2000
F 0 "#PWR030" H 6700 1850 50  0001 C CNN
F 1 "+5V" V 6700 2250 50  0000 C CNN
F 2 "" H 6700 2000 50  0001 C CNN
F 3 "" H 6700 2000 50  0001 C CNN
	1    6700 2000
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR031
U 1 1 5AC0312D
P 6100 2000
F 0 "#PWR031" H 6100 1850 50  0001 C CNN
F 1 "+5V" V 6100 2250 50  0000 C CNN
F 2 "" H 6100 2000 50  0001 C CNN
F 3 "" H 6100 2000 50  0001 C CNN
	1    6100 2000
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR032
U 1 1 5AC0323E
P 6000 2000
F 0 "#PWR032" H 6000 1750 50  0001 C CNN
F 1 "GND" H 6000 1850 50  0000 C CNN
F 2 "" H 6000 2000 50  0001 C CNN
F 3 "" H 6000 2000 50  0001 C CNN
	1    6000 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR033
U 1 1 5AC03292
P 6600 2000
F 0 "#PWR033" H 6600 1750 50  0001 C CNN
F 1 "GND" H 6600 1850 50  0000 C CNN
F 2 "" H 6600 2000 50  0001 C CNN
F 3 "" H 6600 2000 50  0001 C CNN
	1    6600 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 2000 6600 1700
Wire Wire Line
	6000 2000 6000 1700
Wire Wire Line
	4900 3450 5500 3450
Wire Wire Line
	5500 3450 5500 2500
Wire Wire Line
	5500 2500 6200 2500
Wire Wire Line
	6200 2500 6200 1700
Wire Wire Line
	4900 3550 5600 3550
Wire Wire Line
	5600 3550 5600 2600
Wire Wire Line
	5600 2600 6800 2600
Wire Wire Line
	6800 2600 6800 1700
$Comp
L Conn_01x03_Female J9
U 1 1 5AC03BC9
P 8900 5650
F 0 "J9" H 8900 5850 50  0000 C CNN
F 1 "3.3v step-down" H 8900 5450 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x03_Pitch2.54mm" H 8900 5650 50  0001 C CNN
F 3 "" H 8900 5650 50  0001 C CNN
	1    8900 5650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR034
U 1 1 5AC03C71
P 8700 5550
F 0 "#PWR034" H 8700 5400 50  0001 C CNN
F 1 "+5V" V 8700 5800 50  0000 C CNN
F 2 "" H 8700 5550 50  0001 C CNN
F 3 "" H 8700 5550 50  0001 C CNN
	1    8700 5550
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR035
U 1 1 5AC03CC1
P 8700 5650
F 0 "#PWR035" H 8700 5400 50  0001 C CNN
F 1 "GND" V 8700 5400 50  0000 C CNN
F 2 "" H 8700 5650 50  0001 C CNN
F 3 "" H 8700 5650 50  0001 C CNN
	1    8700 5650
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR036
U 1 1 5AC03D6D
P 8700 5750
F 0 "#PWR036" H 8700 5600 50  0001 C CNN
F 1 "+3.3V" V 8700 6000 50  0000 C CNN
F 2 "" H 8700 5750 50  0001 C CNN
F 3 "" H 8700 5750 50  0001 C CNN
	1    8700 5750
	0    -1   -1   0   
$EndComp
$Comp
L USB_B J3
U 1 1 5AC614DF
P 8300 3900
F 0 "J3" H 8100 4350 50  0000 L CNN
F 1 "USB_B" H 8100 4250 50  0000 L CNN
F 2 "Connectors:USB_B" H 8450 3850 50  0001 C CNN
F 3 "" H 8450 3850 50  0001 C CNN
	1    8300 3900
	-1   0    0    1   
$EndComp
Wire Wire Line
	6800 3600 7050 3600
Connection ~ 7050 3600
Wire Wire Line
	4900 3750 5450 3750
Wire Wire Line
	5450 3750 5450 4000
Wire Wire Line
	5450 4000 5900 4000
Wire Wire Line
	5900 4100 5450 4100
Wire Wire Line
	5450 4100 5450 4500
Wire Wire Line
	2950 4500 5450 4500
Wire Wire Line
	2950 2650 2950 4500
Wire Wire Line
	2950 2800 3050 2800
$Comp
L GND #PWR037
U 1 1 5AC61DBB
P 4900 3850
F 0 "#PWR037" H 4900 3600 50  0001 C CNN
F 1 "GND" V 4900 3650 50  0000 C CNN
F 2 "" H 4900 3850 50  0001 C CNN
F 3 "" H 4900 3850 50  0001 C CNN
	1    4900 3850
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR038
U 1 1 5AC61EF6
P 4900 3950
F 0 "#PWR038" H 4900 3700 50  0001 C CNN
F 1 "GND" V 4900 3750 50  0000 C CNN
F 2 "" H 4900 3950 50  0001 C CNN
F 3 "" H 4900 3950 50  0001 C CNN
	1    4900 3950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR039
U 1 1 5AC61F46
P 3050 4000
F 0 "#PWR039" H 3050 3750 50  0001 C CNN
F 1 "GND" V 3050 3800 50  0000 C CNN
F 2 "" H 3050 4000 50  0001 C CNN
F 3 "" H 3050 4000 50  0001 C CNN
	1    3050 4000
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x03_Female J10
U 1 1 5AC62E6B
P 8900 5150
F 0 "J10" H 8900 5350 50  0000 C CNN
F 1 "Discharge pins" H 8900 4950 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x03_Pitch2.54mm" H 8900 5150 50  0001 C CNN
F 3 "" H 8900 5150 50  0001 C CNN
	1    8900 5150
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02_Female J4
U 1 1 5AC62EDF
P 8900 4650
F 0 "J4" H 8900 4750 50  0000 C CNN
F 1 "Charge pins" H 8900 4450 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02_Pitch2.54mm" H 8900 4650 50  0001 C CNN
F 3 "" H 8900 4650 50  0001 C CNN
	1    8900 4650
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 5AC632FD
P 2950 2500
F 0 "R9" V 3000 2700 50  0000 C CNN
F 1 "100k" V 2950 2500 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2880 2500 50  0001 C CNN
F 3 "" H 2950 2500 50  0001 C CNN
	1    2950 2500
	-1   0    0    1   
$EndComp
$Comp
L +3.3V #PWR040
U 1 1 5AC633D1
P 2950 2350
F 0 "#PWR040" H 2950 2200 50  0001 C CNN
F 1 "+3.3V" V 2950 2600 50  0000 C CNN
F 2 "" H 2950 2350 50  0001 C CNN
F 3 "" H 2950 2350 50  0001 C CNN
	1    2950 2350
	1    0    0    -1  
$EndComp
Connection ~ 2950 2800
$Comp
L ESP32-WROOM U1
U 1 1 5ABF3C8D
P 4000 3300
F 0 "U1" H 3300 4550 60  0000 C CNN
F 1 "ESP32-WROOM" H 4500 4550 60  0000 C CNN
F 2 "ESP32-footprints-Lib:ESP32-WROOM" H 4350 4650 60  0001 C CNN
F 3 "" H 3550 3750 60  0001 C CNN
	1    4000 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR041
U 1 1 5AC649D3
P 4450 4350
F 0 "#PWR041" H 4450 4100 50  0001 C CNN
F 1 "GND" V 4450 4150 50  0000 C CNN
F 2 "" H 4450 4350 50  0001 C CNN
F 3 "" H 4450 4350 50  0001 C CNN
	1    4450 4350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR042
U 1 1 5AC64A29
P 3550 4350
F 0 "#PWR042" H 3550 4100 50  0001 C CNN
F 1 "GND" V 3550 4150 50  0000 C CNN
F 2 "" H 3550 4350 50  0001 C CNN
F 3 "" H 3550 4350 50  0001 C CNN
	1    3550 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 5200 4350 5200
Wire Wire Line
	4350 5200 4350 4350
Wire Wire Line
	4650 5300 3650 5300
Wire Wire Line
	3650 5300 3650 4350
$Comp
L +3.3V #PWR?
U 1 1 5AC6533E
P 5900 4300
F 0 "#PWR?" H 5900 4150 50  0001 C CNN
F 1 "+3.3V" H 5900 4440 50  0000 C CNN
F 2 "" H 5900 4300 50  0001 C CNN
F 3 "" H 5900 4300 50  0001 C CNN
	1    5900 4300
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 5AC65498
P 6800 4000
F 0 "#PWR?" H 6800 3850 50  0001 C CNN
F 1 "+3.3V" H 6800 4140 50  0000 C CNN
F 2 "" H 6800 4000 50  0001 C CNN
F 3 "" H 6800 4000 50  0001 C CNN
	1    6800 4000
	0    1    1    0   
$EndComp
$EndSCHEMATC