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
LIBS:beaglebone
LIBS:shieldBeagleBone-cache
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
L BeagleBone U?
U 1 1 57F3F117
P 10000 4000
F 0 "U?" H 10100 4000 60  0000 C CNN
F 1 "BeagleBone" H 10100 4150 60  0000 C CNN
F 2 "BeagleBone_FP:beaglebone-FP" H 10100 4000 60  0001 C CNN
F 3 "" H 10100 4000 60  0000 C CNN
	1    10000 4000
	1    0    0    -1  
$EndComp
$Comp
L L293D U?
U 1 1 57F4FB55
P 3300 1300
F 0 "U?" H 3300 1300 60  0000 C CNN
F 1 "L293D" H 3350 2000 60  0000 C CNN
F 2 "BeagleBone_FP:L293D" H 3300 1300 60  0001 C CNN
F 3 "" H 3300 1300 60  0000 C CNN
	1    3300 1300
	1    0    0    -1  
$EndComp
$Comp
L 74HCT04_PERSO U?
U 1 1 57F50447
P 2200 2950
F 0 "U?" H 2200 2950 60  0000 C CNN
F 1 "74HCT04_PERSO" H 2250 3650 60  0000 C CNN
F 2 "BeagleBone_FP:74HCT04" H 2200 2950 60  0001 C CNN
F 3 "" H 2200 2950 60  0000 C CNN
	1    2200 2950
	1    0    0    -1  
$EndComp
$Comp
L RXEF050 U?
U 1 1 57F506FF
P 5600 1300
F 0 "U?" H 6200 1150 60  0000 C CNN
F 1 "RXEF050" H 6150 1300 60  0000 C CNN
F 2 "BeagleBone_FP:RXEF050" H 5600 1300 60  0001 C CNN
F 3 "" H 5600 1300 60  0000 C CNN
	1    5600 1300
	-1   0    0    1   
$EndComp
$Comp
L RXEF050 U?
U 1 1 57F50A2C
P 1000 1250
F 0 "U?" H 1600 1100 60  0000 C CNN
F 1 "RXEF050" H 1550 950 60  0000 C CNN
F 2 "BeagleBone_FP:RXEF050" H 1000 1250 60  0001 C CNN
F 3 "" H 1000 1250 60  0000 C CNN
	1    1000 1250
	1    0    0    -1  
$EndComp
$Comp
L RXEF050 U?
U 1 1 57F50A69
P 9050 700
F 0 "U?" H 9650 550 60  0000 C CNN
F 1 "RUEF135" H 9600 700 60  0000 C CNN
F 2 "BeagleBone_FP:RXEF050" H 9050 700 60  0001 C CNN
F 3 "" H 9050 700 60  0000 C CNN
	1    9050 700 
	1    0    0    -1  
$EndComp
Text GLabel 9100 3200 0    39   Input ~ 0
PWM_MOTOR_R
Text GLabel 2750 900  0    39   Input ~ 0
PWM_MOTOR_R
Text GLabel 3950 1650 2    39   Input ~ 0
PWM_MOTOR_L
Text GLabel 2750 750  0    39   Input ~ 0
motorEnable_R
Text GLabel 3950 1800 2    39   Input ~ 0
motorEnable_L
Text GLabel 3950 900  2    39   Input ~ 0
DIRECTION_MOTOR_L
Text GLabel 9100 3400 0    39   Input ~ 0
PWM_MOTOR_L
Text GLabel 3950 750  2    39   Input ~ 0
5V
Text GLabel 2750 1800 0    39   Input ~ 0
5V
Text GLabel 11050 650  1    39   Input ~ 0
GND
Text GLabel 2750 1200 0    39   Input ~ 0
GND
Text GLabel 2750 1350 0    39   Input ~ 0
GND
Text GLabel 3950 1200 2    39   Input ~ 0
GND
Text GLabel 3950 1350 2    39   Input ~ 0
GND
Text GLabel 9100 1900 0    39   Input ~ 0
GND
Text GLabel 9100 2000 0    39   Input ~ 0
GND
Text GLabel 11000 1900 2    39   Input ~ 0
GND
Text GLabel 11000 2000 2    39   Input ~ 0
GND
Text GLabel 9100 6400 0    39   Input ~ 0
GND
Text GLabel 9100 6300 0    39   Input ~ 0
GND
Text GLabel 9100 6200 0    39   Input ~ 0
GND
Text GLabel 9100 6100 0    39   Input ~ 0
GND
$Comp
L GND #PWR?
U 1 1 57F51429
P 11050 750
F 0 "#PWR?" H 11050 500 50  0001 C CNN
F 1 "GND" H 11050 600 50  0000 C CNN
F 2 "" H 11050 750 50  0000 C CNN
F 3 "" H 11050 750 50  0000 C CNN
	1    11050 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	11050 650  11050 750 
Text GLabel 9050 850  0    39   Input ~ 0
5V
Text GLabel 2800 2400 2    39   Input ~ 0
5V
Text GLabel 1700 3300 0    39   Input ~ 0
GND
$Comp
L CONN_01X02 P?
U 1 1 57F520D8
P 5800 1200
F 0 "P?" H 5800 1350 50  0000 C CNN
F 1 "MOTOR_L" V 5900 1200 50  0000 C CNN
F 2 "" H 5800 1200 50  0000 C CNN
F 3 "" H 5800 1200 50  0000 C CNN
	1    5800 1200
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P?
U 1 1 57F5214B
P 800 1350
F 0 "P?" H 800 1500 50  0000 C CNN
F 1 "MOTOR_R" V 900 1350 50  0000 C CNN
F 2 "" H 800 1350 50  0000 C CNN
F 3 "" H 800 1350 50  0000 C CNN
	1    800  1350
	-1   0    0    -1  
$EndComp
Text GLabel 9100 2400 0    39   Input ~ 0
5V
Wire Wire Line
	4500 1050 4500 1150
Wire Wire Line
	3950 1050 4500 1050
Wire Wire Line
	3950 1500 5600 1500
Wire Wire Line
	5600 1500 5600 1250
Wire Wire Line
	1000 1050 2750 1050
Text GLabel 2750 1650 0    39   Input ~ 0
DIRECTION_MOTOR_R
Wire Wire Line
	2100 1400 2350 1400
Wire Wire Line
	2350 1400 2350 1500
Wire Wire Line
	2350 1500 2750 1500
Wire Wire Line
	1000 1050 1000 1300
Text GLabel 9100 3500 0    39   Input ~ 0
motorEnable_L
Text GLabel 9100 3100 0    39   Input ~ 0
DIRECTION_MOTOR_R
Text GLabel 9100 3000 0    39   Input ~ 0
DIRECTION_MOTOR_L
Text GLabel 9100 3300 0    39   Input ~ 0
motorEnable_R
$Comp
L R R?
U 1 1 57F54212
P 1550 2550
F 0 "R?" V 1630 2550 50  0000 C CNN
F 1 "R" V 1550 2550 50  0000 C CNN
F 2 "" V 1480 2550 50  0000 C CNN
F 3 "" H 1550 2550 50  0000 C CNN
	1    1550 2550
	0    1    1    0   
$EndComp
$Comp
L CONN_01X02 P?
U 1 1 57F5444E
P 800 2550
F 0 "P?" H 800 2700 50  0000 C CNN
F 1 "LED_B_R" V 900 2550 50  0000 C CNN
F 2 "" H 800 2550 50  0000 C CNN
F 3 "" H 800 2550 50  0000 C CNN
	1    800  2550
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P?
U 1 1 57F54534
P 800 2200
F 0 "P?" H 800 2350 50  0000 C CNN
F 1 "LED_B_R" V 900 2200 50  0000 C CNN
F 2 "" H 800 2200 50  0000 C CNN
F 3 "" H 800 2200 50  0000 C CNN
	1    800  2200
	-1   0    0    1   
$EndComp
Wire Wire Line
	1000 2500 1150 2500
Wire Wire Line
	1150 2500 1150 2150
Wire Wire Line
	1150 2150 1000 2150
Text GLabel 1150 2150 2    39   Input ~ 0
GND
Text GLabel 9100 4100 0    39   Input ~ 0
Cmd_LED_R
Text GLabel 9100 4200 0    39   Input ~ 0
Cmd_LED_L
Text GLabel 9100 4300 0    39   Input ~ 0
Cmd_LED_BRAKE
Text GLabel 1700 2400 0    39   Input ~ 0
Cmd_LED_R
Wire Wire Line
	1000 2600 1400 2600
Wire Wire Line
	1400 2600 1400 2550
Wire Wire Line
	1000 2250 1000 2550
Wire Wire Line
	1000 2550 1400 2550
Text GLabel 1700 2700 0    39   Input ~ 0
Cmd_LED_L
$Comp
L R R?
U 1 1 57F54D7D
P 1550 2850
F 0 "R?" V 1630 2850 50  0000 C CNN
F 1 "R" V 1550 2850 50  0000 C CNN
F 2 "" V 1480 2850 50  0000 C CNN
F 3 "" H 1550 2850 50  0000 C CNN
	1    1550 2850
	0    1    1    0   
$EndComp
$Comp
L CONN_01X02 P?
U 1 1 57F54D83
P 800 3300
F 0 "P?" H 800 3450 50  0000 C CNN
F 1 "LED_B_L" V 900 3300 50  0000 C CNN
F 2 "" H 800 3300 50  0000 C CNN
F 3 "" H 800 3300 50  0000 C CNN
	1    800  3300
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P?
U 1 1 57F54D89
P 800 2950
F 0 "P?" H 800 3100 50  0000 C CNN
F 1 "LED_B_L" V 900 2950 50  0000 C CNN
F 2 "" H 800 2950 50  0000 C CNN
F 3 "" H 800 2950 50  0000 C CNN
	1    800  2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	1000 3250 1150 3250
Wire Wire Line
	1150 3250 1150 2900
Wire Wire Line
	1150 2900 1000 2900
Text GLabel 1150 2900 2    39   Input ~ 0
GND
Wire Wire Line
	1000 3000 1400 3000
Wire Wire Line
	1400 2850 1400 3350
Wire Wire Line
	1400 3350 1000 3350
Connection ~ 1400 3000
NoConn ~ 1700 3000
NoConn ~ 1700 3150
Text GLabel 2800 2550 2    39   Input ~ 0
Cmd_LED_BRAKE
$Comp
L R R?
U 1 1 57F55147
P 2950 2700
F 0 "R?" V 3030 2700 50  0000 C CNN
F 1 "R" V 2950 2700 50  0000 C CNN
F 2 "" V 2880 2700 50  0000 C CNN
F 3 "" H 2950 2700 50  0000 C CNN
	1    2950 2700
	0    1    1    0   
$EndComp
$Comp
L CONN_01X02 P?
U 1 1 57F551B8
P 3300 2750
F 0 "P?" H 3300 2900 50  0000 C CNN
F 1 "LED_R_BACK" V 3400 2750 50  0000 C CNN
F 2 "" H 3300 2750 50  0000 C CNN
F 3 "" H 3300 2750 50  0000 C CNN
	1    3300 2750
	1    0    0    -1  
$EndComp
Text GLabel 3100 2800 3    39   Input ~ 0
GND
NoConn ~ 2800 2850
NoConn ~ 2800 3000
NoConn ~ 2800 3150
NoConn ~ 2800 3300
Text GLabel 10150 850  2    39   Input ~ 0
inputPower
Text GLabel 9100 4400 0    39   Input ~ 0
Cmd_LED_STATUS
$EndSCHEMATC