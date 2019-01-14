EESchema Schematic File Version 4
LIBS:Abschluss-cache
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
L RF_Module:ESP-12E U1
U 1 1 5BF14E98
P 2300 6500
F 0 "U1" H 1850 7350 50  0000 C CNN
F 1 "ESP-12F" H 1950 7250 50  0000 C CNN
F 2 "ESP8266-12E_ESP-12E:XCVR_ESP8266-12E%2fESP-12E" H 2300 6500 50  0001 C CNN
F 3 "http://wiki.ai-thinker.com/_media/esp8266/esp8266_series_modules_user_manual_v1.1.pdf" H 1950 6600 50  0001 C CNN
	1    2300 6500
	1    0    0    -1  
$EndComp
$Comp
L Timer_RTC:DS1307Z+ U2
U 1 1 5BF153F2
P 9500 4900
F 0 "U2" H 10041 4946 50  0000 L CNN
F 1 "DS1307Z+" H 10041 4855 50  0000 L CNN
F 2 "DS1307Z_T_R_C01:SO08" H 9500 4400 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/DS1307.pdf" H 9500 4900 50  0001 C CNN
	1    9500 4900
	1    0    0    -1  
$EndComp
$Comp
L Abschluss-rescue:MS1V-T1K_32.768kHz_7pF_+-20ppm-MS1V-T1K_32.768kHz_7pF_+-20ppm QZ1
U 1 1 5BF15E49
P 9100 5700
F 0 "QZ1" H 9500 5850 50  0000 C CNN
F 1 "MS1V-T1K_32.768kHz_7pF_+-20ppm" H 9450 5450 50  0000 C CNN
F 2 "MS1V-T1K_32.768kHz_7pF_+-20ppm:MS1V-T1K32" H 9750 5800 50  0001 L CNN
F 3 "http://www.microcrystal.com/images/_PDF/2_Crystal_Metal-Package/ms1v-t1k.pdf" H 9750 5700 50  0001 L CNN
F 4 "Crystal SMD 32.768KHz 2x6mm Crystal 32.768kHz,  /-20ppm, 2-Pin SMD, 6 x 2 x 2mm" H 9750 5600 50  0001 L CNN "Description"
F 5 "MICRO CRYSTAL" H 9750 5500 50  0001 L CNN "Manufacturer_Name"
F 6 "MS1V-T1K 32.768kHz 7pF +-20ppm" H 9750 5400 50  0001 L CNN "Manufacturer_Part_Number"
F 7 "RS" H 9750 5300 50  0001 L CNN "Supplier_Name"
F 8 "6727593P" H 9750 5200 50  0001 L CNN "RS Part Number"
	1    9100 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery BT1
U 1 1 5BF16217
P 10000 4300
F 0 "BT1" V 10100 4300 50  0000 C CNN
F 1 "Battery" V 9900 4300 50  0000 C CNN
F 2 "Battery:BatteryHolder_Keystone_1058_1x2032" V 10000 4360 50  0001 C CNN
F 3 "~" V 10000 4360 50  0001 C CNN
	1    10000 4300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9500 5300 10550 5300
Wire Wire Line
	10550 5300 10550 4300
Wire Wire Line
	9100 5800 8900 5800
Wire Wire Line
	8900 5800 8900 5000
Wire Wire Line
	8900 5000 9000 5000
Wire Wire Line
	9000 5100 9000 5400
Wire Wire Line
	9000 5400 9900 5400
Wire Wire Line
	9900 5400 9900 5700
Wire Wire Line
	9100 5700 9100 5300
Wire Wire Line
	9100 5300 9500 5300
Connection ~ 9500 5300
Wire Wire Line
	10200 4300 10550 4300
Wire Wire Line
	9500 4500 9500 4300
Wire Wire Line
	9500 4300 9800 4300
Text GLabel 10100 5300 1    50   Input ~ 0
GND
Wire Notes Line
	8700 4050 8700 6050
Wire Notes Line
	8700 6050 10700 6050
Wire Notes Line
	10700 6050 10700 4050
Wire Notes Line
	10700 4050 8700 4050
Text Notes 8750 4150 0    50   ~ 0
RTC\n
NoConn ~ 10000 4900
Text GLabel 8900 4700 0    50   Input ~ 0
SCL
Text GLabel 8900 4800 0    50   Input ~ 0
SDA
Text GLabel 9400 4300 1    50   Input ~ 0
5V
Text GLabel 2900 6400 2    50   Input ~ 0
SCL
Text GLabel 2900 6300 2    50   Input ~ 0
SDA
Text GLabel 2300 5700 1    50   Input ~ 0
3V3
Text GLabel 2300 7200 3    50   Input ~ 0
GND
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 5C05311F
P 3950 5450
F 0 "J1" H 4030 5442 50  0000 L CNN
F 1 "Conn_01x04" H 4030 5351 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 3950 5450 50  0001 C CNN
F 3 "~" H 3950 5450 50  0001 C CNN
	1    3950 5450
	1    0    0    -1  
$EndComp
Text GLabel 3750 5550 0    50   Input ~ 0
3V3
Text GLabel 3750 5650 0    50   Input ~ 0
GND
Text GLabel 3000 6000 2    50   Input ~ 0
TX
Wire Wire Line
	2900 6000 2950 6000
Wire Wire Line
	2950 6000 2950 5350
Wire Wire Line
	2950 5350 3750 5350
Connection ~ 2950 6000
Wire Wire Line
	2950 6000 3000 6000
Text GLabel 3250 6200 2    50   Input ~ 0
RX
Wire Wire Line
	3750 5450 3200 5450
Wire Wire Line
	2900 6200 3200 6200
Wire Wire Line
	3200 5450 3200 6200
Wire Wire Line
	3200 6200 3250 6200
Connection ~ 3200 6200
Wire Wire Line
	3500 5900 3600 5900
Connection ~ 3500 5900
$Comp
L Device:R R1
U 1 1 5C054B14
P 3750 5900
F 0 "R1" V 3650 5900 50  0000 C CNN
F 1 "10K" V 3750 5900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3680 5900 50  0001 C CNN
F 3 "~" H 3750 5900 50  0001 C CNN
	1    3750 5900
	0    1    1    0   
$EndComp
Wire Wire Line
	3500 6250 3600 6250
Wire Wire Line
	3500 5900 3500 6250
Text GLabel 4000 5900 2    50   Input ~ 0
3V3
Text GLabel 4200 6250 2    50   Input ~ 0
GND
Wire Wire Line
	3900 5900 4000 5900
Wire Wire Line
	2900 5900 3500 5900
Wire Wire Line
	2900 6800 3100 6800
$Comp
L Device:R R2
U 1 1 5C05698A
P 3250 6800
F 0 "R2" V 3150 6800 50  0000 C CNN
F 1 "10K" V 3250 6800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3180 6800 50  0001 C CNN
F 3 "~" H 3250 6800 50  0001 C CNN
	1    3250 6800
	0    1    1    0   
$EndComp
Text GLabel 3400 6800 2    50   Input ~ 0
GND
$Comp
L Switch:SW_Push SW1
U 1 1 5C056CBA
P 1450 5800
F 0 "SW1" H 1450 6085 50  0000 C CNN
F 1 "Reset" H 1450 5994 50  0000 C CNN
F 2 "Push_Button:434111025826" H 1450 6000 50  0001 C CNN
F 3 "" H 1450 6000 50  0001 C CNN
	1    1450 5800
	1    0    0    -1  
$EndComp
Text GLabel 1250 5800 0    50   Input ~ 0
GND
Wire Wire Line
	1650 5800 1650 5900
Wire Wire Line
	1650 5900 1700 5900
$Comp
L Device:R R3
U 1 1 5C05774D
P 1400 6000
F 0 "R3" V 1300 6000 50  0000 C CNN
F 1 "10K" V 1400 6000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1330 6000 50  0001 C CNN
F 3 "~" H 1400 6000 50  0001 C CNN
	1    1400 6000
	0    1    1    0   
$EndComp
Wire Wire Line
	1550 6000 1650 6000
Wire Wire Line
	1650 6000 1650 5900
Connection ~ 1650 5900
Text GLabel 1250 6000 0    50   Input ~ 0
3V3
Text GLabel 1700 6100 0    50   Input ~ 0
3V3
Text GLabel 1700 6300 0    50   Input ~ 0
ADC
$Comp
L Regulator_Linear:L78L05_SO8 U3
U 1 1 5C05915A
P 2150 1050
F 0 "U3" H 2150 1292 50  0000 C CNN
F 1 "L78L05_SO8" H 2150 1201 50  0000 C CNN
F 2 "L78L05ACD:SOIC127P600X175-8N" H 2250 1250 50  0001 C CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/15/55/e5/aa/23/5b/43/fd/CD00000446.pdf/files/CD00000446.pdf/jcr:content/translations/en.CD00000446.pdf" H 2350 1050 50  0001 C CNN
	1    2150 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1050 1750 1050
Wire Wire Line
	2450 1050 2550 1050
Connection ~ 2150 1350
Wire Wire Line
	2150 1350 2550 1350
Text GLabel 2150 1350 3    50   Input ~ 0
GND
$Comp
L Device:C C2
U 1 1 5C05A641
P 2550 1200
F 0 "C2" H 2665 1246 50  0000 L CNN
F 1 "1uf" H 2665 1155 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2588 1050 50  0001 C CNN
F 3 "~" H 2550 1200 50  0001 C CNN
	1    2550 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5C05A6A6
P 1750 1200
F 0 "C1" H 1550 1250 50  0000 L CNN
F 1 "10uF" H 1550 1100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1788 1050 50  0001 C CNN
F 3 "~" H 1750 1200 50  0001 C CNN
	1    1750 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 1350 2150 1350
Wire Wire Line
	2550 1050 2700 1050
Connection ~ 2550 1050
Text GLabel 2700 1050 2    50   Input ~ 0
5V
$Comp
L Regulator_Linear:LM2937xMP U4
U 1 1 5C05B1EF
P 2150 1900
F 0 "U4" H 2150 2142 50  0000 C CNN
F 1 " LM 2937 IMP-3.3" H 2150 2051 50  0000 C CNN
F 2 "SOT230P700X180-4N:SOT230P700X180-4N" H 2150 2125 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2937.pdf" H 2150 1850 50  0001 C CNN
	1    2150 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5C05B44C
P 2550 2050
F 0 "C4" H 2665 2096 50  0000 L CNN
F 1 "10uf" H 2665 2005 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2588 1900 50  0001 C CNN
F 3 "~" H 2550 2050 50  0001 C CNN
	1    2550 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5C05BC8A
P 1750 2050
F 0 "C3" H 1550 2100 50  0000 L CNN
F 1 "0,1uF" H 1500 1950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1788 1900 50  0001 C CNN
F 3 "~" H 1750 2050 50  0001 C CNN
	1    1750 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 1900 1850 1900
Wire Wire Line
	2450 1900 2550 1900
Wire Wire Line
	2550 1900 2700 1900
Connection ~ 2550 1900
Connection ~ 1750 1900
Wire Wire Line
	2550 2200 2150 2200
Connection ~ 2150 2200
Wire Wire Line
	2150 2200 1750 2200
Text GLabel 2150 2200 3    50   Input ~ 0
GND
Text GLabel 2700 1900 2    50   Input ~ 0
3V3
Wire Notes Line
	950  5150 950  7450
Wire Notes Line
	950  7450 4550 7450
Wire Notes Line
	4550 7450 4550 5150
Wire Notes Line
	4550 5150 950  5150
Text Notes 1000 5300 0    50   ~ 0
ESP\n
Wire Notes Line
	3100 2500 500  2500
Wire Notes Line
	500  2500 500  550 
Wire Notes Line
	500  550  3100 550 
Wire Notes Line
	3100 550  3100 2500
Text Notes 550  750  0    50   ~ 0
DC\n\n
$Comp
L Sensor_Optical:SFH309 Q1
U 1 1 5C0621F0
P 6450 950
F 0 "Q1" H 6640 996 50  0000 L CNN
F 1 "SFH309" H 6640 905 50  0000 L CNN
F 2 "" H 6930 810 50  0001 C CNN
F 3 "http://www.osram-os.com/Graphics/XPic2/00101811_0.pdf/SFH%20309,%20SFH%20309%20FA,%20Lead%20(Pb)%20Free%20Product%20-%20RoHS%20Compliant.pdf" H 6450 950 50  0001 C CNN
	1    6450 950 
	1    0    0    -1  
$EndComp
Text GLabel 5400 900  0    50   Input ~ 0
3V3
$Comp
L Device:R R4
U 1 1 5C06240E
P 5400 1350
F 0 "R4" V 5300 1300 50  0000 L CNN
F 1 "10K" V 5400 1300 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5330 1350 50  0001 C CNN
F 3 "~" H 5400 1350 50  0001 C CNN
	1    5400 1350
	1    0    0    -1  
$EndComp
Text GLabel 5400 1550 3    50   Input ~ 0
GND
Wire Wire Line
	5400 1500 5400 1550
Wire Wire Line
	5400 1150 5800 1150
Connection ~ 5400 1150
Wire Wire Line
	5400 1150 5400 1200
Text GLabel 5800 1150 2    50   Input ~ 0
ADC
Wire Wire Line
	5400 1000 5400 1150
$Comp
L Connector:Conn_01x02_Female J2
U 1 1 5C07A396
P 5600 900
F 0 "J2" H 5550 1050 50  0000 L CNN
F 1 "Photo" H 5550 950 50  0000 L CNN
F 2 "Connectors_WAGO:WAGO_734_2pin_Straight_RuggedPads" H 5600 900 50  0001 C CNN
F 3 "~" H 5600 900 50  0001 C CNN
	1    5600 900 
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 5C07A41A
P 5800 900
F 0 "J3" H 6050 1050 50  0000 C CNN
F 1 "Photo" H 6100 950 50  0000 C CNN
F 2 "" H 5800 900 50  0001 C CNN
F 3 "~" H 5800 900 50  0001 C CNN
	1    5800 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 900  6250 900 
Wire Wire Line
	6250 900  6250 750 
Wire Wire Line
	6250 750  6550 750 
Wire Wire Line
	6000 1000 6250 1000
Wire Wire Line
	6250 1000 6250 1150
Wire Wire Line
	6250 1150 6550 1150
Wire Notes Line
	5100 600  5100 1850
Wire Notes Line
	5100 1850 7000 1850
Wire Notes Line
	7000 1850 7000 600 
Wire Notes Line
	7000 600  5100 600 
Text Notes 5150 700  0    50   ~ 0
Phototransistor\n
Wire Wire Line
	9400 4300 9400 4350
$Comp
L Device:R R6
U 1 1 5C0857A1
P 9250 4350
F 0 "R6" V 9150 4350 50  0000 C CNN
F 1 "2K2" V 9250 4350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9180 4350 50  0001 C CNN
F 3 "~" H 9250 4350 50  0001 C CNN
	1    9250 4350
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5C085831
P 9250 4450
F 0 "R5" V 9350 4450 50  0000 C CNN
F 1 "2K2" V 9250 4450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9180 4450 50  0001 C CNN
F 3 "~" H 9250 4450 50  0001 C CNN
	1    9250 4450
	0    1    1    0   
$EndComp
Connection ~ 9400 4450
Wire Wire Line
	9400 4450 9400 4500
Connection ~ 9400 4350
Wire Wire Line
	9400 4350 9400 4450
Wire Wire Line
	9100 4450 9000 4450
Wire Wire Line
	9000 4450 9000 4700
Wire Wire Line
	9000 4800 8950 4800
Wire Wire Line
	8950 4800 8950 4350
Wire Wire Line
	8950 4350 9100 4350
Wire Wire Line
	8900 4700 9000 4700
Connection ~ 9000 4700
Wire Wire Line
	8900 4800 8950 4800
Connection ~ 8950 4800
$Comp
L Abschluss-rescue:L293DD-L293DD U5
U 1 1 5C0914FB
P 9700 1600
F 0 "U5" H 9700 2467 50  0000 C CNN
F 1 "L293DD" H 9700 2376 50  0000 C CNN
F 2 "L293DD:SO20" H 9700 1600 50  0001 L BNN
F 3 "STMicroelectronics" H 9700 1600 50  0001 L BNN
F 4 "SOIC-20 STMicroelectronics" H 9700 1600 50  0001 L BNN "Feld4"
F 5 "None" H 9700 1600 50  0001 L BNN "Feld5"
F 6 "L293DD" H 9700 1600 50  0001 L BNN "Feld6"
F 7 "L293DD Series Push - Pull Quad Channel Driver with Diodes - SOIC-20" H 9700 1600 50  0001 L BNN "Feld7"
F 8 "Unavailable" H 9700 1600 50  0001 L BNN "Feld8"
	1    9700 1600
	1    0    0    -1  
$EndComp
Text GLabel 1700 6700 0    50   Input ~ 0
GPIO9
Text GLabel 1700 6800 0    50   Input ~ 0
GPIO10
Text GLabel 9200 1200 0    50   Input ~ 0
GPIO12
Text GLabel 9200 1400 0    50   Input ~ 0
GPIO14
Text GLabel 9200 1000 0    50   Input ~ 0
12V
Text GLabel 10200 1000 2    50   Input ~ 0
5V
Text GLabel 9200 1300 0    50   Input ~ 0
5V
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 5C094F73
P 10800 1250
F 0 "J4" H 10880 1242 50  0000 L CNN
F 1 "Motor" H 10880 1151 50  0000 L CNN
F 2 "Connector_Wago:Wago_734-132_1x02_P3.50mm_Vertical" H 10800 1250 50  0001 C CNN
F 3 "~" H 10800 1250 50  0001 C CNN
	1    10800 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10600 1200 10600 1250
Wire Wire Line
	10200 1200 10600 1200
Wire Wire Line
	10600 1350 10600 1400
Wire Wire Line
	10200 1400 10600 1400
NoConn ~ 10200 1600
NoConn ~ 10200 1800
NoConn ~ 9200 1600
NoConn ~ 9200 1700
NoConn ~ 9200 1800
Wire Wire Line
	10200 2000 10250 2000
Wire Wire Line
	10250 2000 10250 2100
Wire Wire Line
	10250 2300 10200 2300
Wire Wire Line
	10200 2200 10250 2200
Connection ~ 10250 2200
Wire Wire Line
	10250 2200 10250 2300
Wire Wire Line
	10200 2100 10250 2100
Connection ~ 10250 2100
Wire Wire Line
	10250 2100 10250 2200
Text GLabel 10250 2150 2    50   Input ~ 0
GND
Text GLabel 9200 2150 0    50   Input ~ 0
GND
Wire Wire Line
	9200 2000 9200 2100
Connection ~ 9200 2100
Wire Wire Line
	9200 2100 9200 2200
Connection ~ 9200 2200
Wire Wire Line
	9200 2200 9200 2300
Wire Notes Line
	8750 2550 11150 2550
Wire Notes Line
	11150 2550 11150 600 
Wire Notes Line
	11150 600  8750 600 
Wire Notes Line
	8750 600  8750 2550
Text Notes 8800 700  0    50   ~ 0
Motorsteuerung\n
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 5C0AC542
P 800 1550
F 0 "J5" H 720 1225 50  0000 C CNN
F 1 "Bat" H 720 1316 50  0000 C CNN
F 2 "Connector_Wago:Wago_734-132_1x02_P3.50mm_Vertical" H 800 1550 50  0001 C CNN
F 3 "~" H 800 1550 50  0001 C CNN
	1    800  1550
	-1   0    0    1   
$EndComp
Wire Wire Line
	1000 1900 1000 1550
Wire Wire Line
	1000 1900 1500 1900
Wire Wire Line
	1750 1050 1500 1050
Wire Wire Line
	1500 1050 1500 1900
Connection ~ 1750 1050
Connection ~ 1500 1900
Wire Wire Line
	1500 1900 1750 1900
Text GLabel 1050 1450 2    50   Input ~ 0
GND
Text GLabel 1050 1550 2    50   Input ~ 0
12V
Wire Wire Line
	1000 1450 1050 1450
Wire Wire Line
	1050 1550 1000 1550
Connection ~ 1000 1550
$Comp
L Device:Jumper JP1
U 1 1 5C05D1DE
P 3900 6250
F 0 "JP1" H 3900 6514 50  0000 C CNN
F 1 "Prog" H 3900 6423 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 3900 6250 50  0001 C CNN
F 3 "~" H 3900 6250 50  0001 C CNN
	1    3900 6250
	1    0    0    -1  
$EndComp
NoConn ~ 2900 6100
Text GLabel 2900 6500 2    50   Input ~ 0
GPIO12
Text GLabel 2900 6600 2    50   Input ~ 0
GPIO13
Text GLabel 2900 6700 2    50   Input ~ 0
GPIO14
Text GLabel 2900 6900 2    50   Input ~ 0
GPIO16
Text GLabel 1700 6500 0    50   Input ~ 0
CSO
Text GLabel 1700 6600 0    50   Input ~ 0
MISO
Text GLabel 1700 6900 0    50   Input ~ 0
MOSI
Text GLabel 1700 7000 0    50   Input ~ 0
SCLK
Text Notes 1000 3550 0    50   ~ 0
GPIO Erweiterungen\n
Text GLabel 2650 4550 0    50   Input ~ 0
GPIO12
Text GLabel 2650 4450 0    50   Input ~ 0
GPIO13
Text GLabel 2650 4350 0    50   Input ~ 0
GPIO14
Text GLabel 2650 4250 0    50   Input ~ 0
GPIO16
Text GLabel 2650 4150 0    50   Input ~ 0
SCLK
Text GLabel 2650 4050 0    50   Input ~ 0
MOSI
Text GLabel 2650 3950 0    50   Input ~ 0
MISO
Text GLabel 2650 3850 0    50   Input ~ 0
CSO
$Comp
L Connector:Conn_01x11_Male J6
U 1 1 5C06F7ED
P 2850 4050
F 0 "J6" H 2700 3950 50  0000 C CNN
F 1 "Erweiterung" H 2550 4050 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x11_P2.54mm_Vertical" H 2850 4050 50  0001 C CNN
F 3 "~" H 2850 4050 50  0001 C CNN
	1    2850 4050
	-1   0    0    1   
$EndComp
Text GLabel 2650 3750 0    50   Input ~ 0
GND
Text GLabel 2650 3650 0    50   Input ~ 0
3V3
Text GLabel 2650 3550 0    50   Input ~ 0
5V
Wire Notes Line
	950  3450 950  4650
Wire Notes Line
	950  4650 3550 4650
Wire Notes Line
	3550 4650 3550 3450
Wire Notes Line
	950  3450 3550 3450
Text Notes 7900 1250 0    50   ~ 0
Bug 9 nicht Nutzbar\n
Text Notes 7900 1450 0    50   ~ 0
Bug 10 nicht nutzbar\n
$EndSCHEMATC
