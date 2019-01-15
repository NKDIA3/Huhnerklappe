EESchema Schematic File Version 4
LIBS:Abschluss-cache
EELAYER 26 0
EELAYER END
$Descr User 9126 7457
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
P 1850 5200
F 0 "U1" H 1400 6050 50  0000 C CNN
F 1 "ESP-12F" H 1500 5950 50  0000 C CNN
F 2 "ESP8266-12E_ESP-12E:XCVR_ESP8266-12E%2fESP-12E" H 1850 5200 50  0001 C CNN
F 3 "http://wiki.ai-thinker.com/_media/esp8266/esp8266_series_modules_user_manual_v1.1.pdf" H 1500 5300 50  0001 C CNN
	1    1850 5200
	1    0    0    -1  
$EndComp
$Comp
L Timer_RTC:DS1307Z+ U2
U 1 1 5BF153F2
P 6200 2650
F 0 "U2" H 6741 2696 50  0000 L CNN
F 1 "DS1307Z+" H 6741 2605 50  0000 L CNN
F 2 "DS1307Z_T_R_C01:SO08" H 6200 2150 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/DS1307.pdf" H 6200 2650 50  0001 C CNN
	1    6200 2650
	1    0    0    -1  
$EndComp
$Comp
L Abschluss-rescue:MS1V-T1K_32.768kHz_7pF_+-20ppm-MS1V-T1K_32.768kHz_7pF_+-20ppm QZ1
U 1 1 5BF15E49
P 5800 3450
F 0 "QZ1" H 6200 3600 50  0000 C CNN
F 1 "MS1V-T1K_32.768kHz_7pF_+-20ppm" H 6150 3200 50  0000 C CNN
F 2 "MS1V-T1K_32.768kHz_7pF_+-20ppm:MS1V-T1K32" H 6450 3550 50  0001 L CNN
F 3 "http://www.microcrystal.com/images/_PDF/2_Crystal_Metal-Package/ms1v-t1k.pdf" H 6450 3450 50  0001 L CNN
F 4 "Crystal SMD 32.768KHz 2x6mm Crystal 32.768kHz,  /-20ppm, 2-Pin SMD, 6 x 2 x 2mm" H 6450 3350 50  0001 L CNN "Description"
F 5 "MICRO CRYSTAL" H 6450 3250 50  0001 L CNN "Manufacturer_Name"
F 6 "MS1V-T1K 32.768kHz 7pF +-20ppm" H 6450 3150 50  0001 L CNN "Manufacturer_Part_Number"
F 7 "RS" H 6450 3050 50  0001 L CNN "Supplier_Name"
F 8 "6727593P" H 6450 2950 50  0001 L CNN "RS Part Number"
	1    5800 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery BT1
U 1 1 5BF16217
P 6700 2050
F 0 "BT1" V 6800 2050 50  0000 C CNN
F 1 "Battery" V 6600 2050 50  0000 C CNN
F 2 "Battery:BatteryHolder_Keystone_1058_1x2032" V 6700 2110 50  0001 C CNN
F 3 "~" V 6700 2110 50  0001 C CNN
	1    6700 2050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6200 3050 7250 3050
Wire Wire Line
	7250 3050 7250 2050
Wire Wire Line
	5800 3550 5600 3550
Wire Wire Line
	5600 3550 5600 2750
Wire Wire Line
	5600 2750 5700 2750
Wire Wire Line
	5700 2850 5700 3150
Wire Wire Line
	5700 3150 6600 3150
Wire Wire Line
	6600 3150 6600 3450
Wire Wire Line
	5800 3450 5800 3050
Wire Wire Line
	5800 3050 6200 3050
Connection ~ 6200 3050
Wire Wire Line
	6900 2050 7250 2050
Wire Wire Line
	6200 2250 6200 2050
Wire Wire Line
	6200 2050 6500 2050
Text GLabel 6800 3050 1    50   Input ~ 0
GND
Wire Notes Line
	7400 3800 7400 1800
Text Notes 5450 1900 0    50   ~ 0
RTC\n
NoConn ~ 6700 2650
Text GLabel 5600 2450 0    50   Input ~ 0
SCL
Text GLabel 5600 2550 0    50   Input ~ 0
SDA
Text GLabel 6100 2050 1    50   Input ~ 0
5V
Text GLabel 2450 5100 2    50   Input ~ 0
SCL
Text GLabel 2450 5000 2    50   Input ~ 0
SDA
Text GLabel 1850 4400 1    50   Input ~ 0
3V3
Text GLabel 1850 5900 3    50   Input ~ 0
GND
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 5C05311F
P 3500 4150
F 0 "J1" H 3580 4142 50  0000 L CNN
F 1 "Conn_01x04" H 3580 4051 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 3500 4150 50  0001 C CNN
F 3 "~" H 3500 4150 50  0001 C CNN
	1    3500 4150
	1    0    0    -1  
$EndComp
Text GLabel 3300 4250 0    50   Input ~ 0
3V3
Text GLabel 3300 4350 0    50   Input ~ 0
GND
Text GLabel 2550 4700 2    50   Input ~ 0
TX
Wire Wire Line
	2450 4700 2500 4700
Wire Wire Line
	2500 4700 2500 4050
Wire Wire Line
	2500 4050 3300 4050
Connection ~ 2500 4700
Wire Wire Line
	2500 4700 2550 4700
Text GLabel 2800 4900 2    50   Input ~ 0
RX
Wire Wire Line
	3300 4150 2750 4150
Wire Wire Line
	2450 4900 2750 4900
Wire Wire Line
	2750 4150 2750 4900
Wire Wire Line
	2750 4900 2800 4900
Connection ~ 2750 4900
Wire Wire Line
	3050 4600 3150 4600
Connection ~ 3050 4600
$Comp
L Device:R R1
U 1 1 5C054B14
P 3300 4600
F 0 "R1" V 3200 4600 50  0000 C CNN
F 1 "10K" V 3300 4600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3230 4600 50  0001 C CNN
F 3 "~" H 3300 4600 50  0001 C CNN
	1    3300 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 4950 3150 4950
Wire Wire Line
	3050 4600 3050 4950
Text GLabel 3550 4600 2    50   Input ~ 0
3V3
Text GLabel 3750 4950 2    50   Input ~ 0
GND
Wire Wire Line
	3450 4600 3550 4600
Wire Wire Line
	2450 4600 3050 4600
$Comp
L Device:R R2
U 1 1 5C05698A
P 2850 5500
F 0 "R2" V 2750 5500 50  0000 C CNN
F 1 "10K" V 2850 5500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2780 5500 50  0001 C CNN
F 3 "~" H 2850 5500 50  0001 C CNN
	1    2850 5500
	0    1    1    0   
$EndComp
Text GLabel 3000 5500 2    50   Input ~ 0
GND
$Comp
L Switch:SW_Push SW1
U 1 1 5C056CBA
P 1000 4500
F 0 "SW1" H 1000 4785 50  0000 C CNN
F 1 "Reset" H 1000 4694 50  0000 C CNN
F 2 "Push_Button:434111025826" H 1000 4700 50  0001 C CNN
F 3 "" H 1000 4700 50  0001 C CNN
	1    1000 4500
	1    0    0    -1  
$EndComp
Text GLabel 800  4500 0    50   Input ~ 0
GND
Wire Wire Line
	1200 4500 1200 4600
Wire Wire Line
	1200 4600 1250 4600
$Comp
L Device:R R3
U 1 1 5C05774D
P 950 4700
F 0 "R3" V 850 4700 50  0000 C CNN
F 1 "10K" V 950 4700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 880 4700 50  0001 C CNN
F 3 "~" H 950 4700 50  0001 C CNN
	1    950  4700
	0    1    1    0   
$EndComp
Wire Wire Line
	1100 4700 1200 4700
Wire Wire Line
	1200 4700 1200 4600
Connection ~ 1200 4600
Text GLabel 800  4700 0    50   Input ~ 0
3V3
Text GLabel 1250 4800 0    50   Input ~ 0
3V3
Text GLabel 1250 5000 0    50   Input ~ 0
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
	500  3850 500  6150
Wire Notes Line
	500  6150 4100 6150
Wire Notes Line
	4100 6150 4100 3850
Text Notes 550  4000 0    50   ~ 0
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
P 6750 900
F 0 "Q1" H 6940 946 50  0000 L CNN
F 1 "SFH309" H 6940 855 50  0000 L CNN
F 2 "" H 7230 760 50  0001 C CNN
F 3 "http://www.osram-os.com/Graphics/XPic2/00101811_0.pdf/SFH%20309,%20SFH%20309%20FA,%20Lead%20(Pb)%20Free%20Product%20-%20RoHS%20Compliant.pdf" H 6750 900 50  0001 C CNN
	1    6750 900 
	1    0    0    -1  
$EndComp
Text GLabel 5700 850  0    50   Input ~ 0
3V3
$Comp
L Device:R R4
U 1 1 5C06240E
P 5700 1300
F 0 "R4" V 5600 1250 50  0000 L CNN
F 1 "10K" V 5700 1250 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5630 1300 50  0001 C CNN
F 3 "~" H 5700 1300 50  0001 C CNN
	1    5700 1300
	1    0    0    -1  
$EndComp
Text GLabel 5700 1500 3    50   Input ~ 0
GND
Wire Wire Line
	5700 1450 5700 1500
Wire Wire Line
	5700 1100 6100 1100
Connection ~ 5700 1100
Wire Wire Line
	5700 1100 5700 1150
Text GLabel 6100 1100 2    50   Input ~ 0
ADC
Wire Wire Line
	5700 950  5700 1100
$Comp
L Connector:Conn_01x02_Female J2
U 1 1 5C07A396
P 5900 850
F 0 "J2" H 5850 1000 50  0000 L CNN
F 1 "Photo" H 5850 900 50  0000 L CNN
F 2 "Connectors_WAGO:WAGO_734_2pin_Straight_RuggedPads" H 5900 850 50  0001 C CNN
F 3 "~" H 5900 850 50  0001 C CNN
	1    5900 850 
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 5C07A41A
P 6100 850
F 0 "J3" H 6350 1000 50  0000 C CNN
F 1 "Photo" H 6400 900 50  0000 C CNN
F 2 "" H 6100 850 50  0001 C CNN
F 3 "~" H 6100 850 50  0001 C CNN
	1    6100 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 850  6550 850 
Wire Wire Line
	6550 850  6550 700 
Wire Wire Line
	6550 700  6850 700 
Wire Wire Line
	6300 950  6550 950 
Wire Wire Line
	6550 950  6550 1100
Wire Wire Line
	6550 1100 6850 1100
Wire Notes Line
	7300 550  5400 550 
Text Notes 5450 650  0    50   ~ 0
Phototransistor\n
Wire Wire Line
	6100 2050 6100 2100
$Comp
L Device:R R6
U 1 1 5C0857A1
P 5950 2100
F 0 "R6" V 5850 2100 50  0000 C CNN
F 1 "2K2" V 5950 2100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5880 2100 50  0001 C CNN
F 3 "~" H 5950 2100 50  0001 C CNN
	1    5950 2100
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5C085831
P 5950 2200
F 0 "R5" V 6050 2200 50  0000 C CNN
F 1 "2K2" V 5950 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5880 2200 50  0001 C CNN
F 3 "~" H 5950 2200 50  0001 C CNN
	1    5950 2200
	0    1    1    0   
$EndComp
Connection ~ 6100 2200
Wire Wire Line
	6100 2200 6100 2250
Connection ~ 6100 2100
Wire Wire Line
	6100 2100 6100 2200
Wire Wire Line
	5800 2200 5700 2200
Wire Wire Line
	5700 2200 5700 2450
Wire Wire Line
	5700 2550 5650 2550
Wire Wire Line
	5650 2550 5650 2100
Wire Wire Line
	5650 2100 5800 2100
Wire Wire Line
	5600 2450 5700 2450
Connection ~ 5700 2450
Wire Wire Line
	5600 2550 5650 2550
Connection ~ 5650 2550
$Comp
L Abschluss-rescue:L293DD-L293DD U5
U 1 1 5C0914FB
P 6100 4800
F 0 "U5" H 6100 5667 50  0000 C CNN
F 1 "L293DD" H 6100 5576 50  0000 C CNN
F 2 "L293DD:SO20" H 6100 4800 50  0001 L BNN
F 3 "STMicroelectronics" H 6100 4800 50  0001 L BNN
F 4 "SOIC-20 STMicroelectronics" H 6100 4800 50  0001 L BNN "Feld4"
F 5 "None" H 6100 4800 50  0001 L BNN "Feld5"
F 6 "L293DD" H 6100 4800 50  0001 L BNN "Feld6"
F 7 "L293DD Series Push - Pull Quad Channel Driver with Diodes - SOIC-20" H 6100 4800 50  0001 L BNN "Feld7"
F 8 "Unavailable" H 6100 4800 50  0001 L BNN "Feld8"
	1    6100 4800
	1    0    0    -1  
$EndComp
Text GLabel 1250 5400 0    50   Input ~ 0
GPIO9
Text GLabel 1250 5500 0    50   Input ~ 0
GPIO10
Text GLabel 5600 4400 0    50   Input ~ 0
GPIO12
Text GLabel 5600 4600 0    50   Input ~ 0
GPIO14
Text GLabel 5600 4200 0    50   Input ~ 0
12V
Text GLabel 6600 4200 2    50   Input ~ 0
5V
Text GLabel 5600 4500 0    50   Input ~ 0
5V
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 5C094F73
P 7200 4450
F 0 "J4" H 7280 4442 50  0000 L CNN
F 1 "Motor" H 7280 4351 50  0000 L CNN
F 2 "Connector_Wago:Wago_734-132_1x02_P3.50mm_Vertical" H 7200 4450 50  0001 C CNN
F 3 "~" H 7200 4450 50  0001 C CNN
	1    7200 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 4400 7000 4450
Wire Wire Line
	6600 4400 7000 4400
Wire Wire Line
	7000 4550 7000 4600
Wire Wire Line
	6600 4600 7000 4600
NoConn ~ 6600 4800
NoConn ~ 6600 5000
NoConn ~ 5600 4800
NoConn ~ 5600 4900
NoConn ~ 5600 5000
Wire Wire Line
	6600 5200 6650 5200
Wire Wire Line
	6650 5200 6650 5300
Wire Wire Line
	6650 5500 6600 5500
Wire Wire Line
	6600 5400 6650 5400
Connection ~ 6650 5400
Wire Wire Line
	6650 5400 6650 5500
Wire Wire Line
	6600 5300 6650 5300
Connection ~ 6650 5300
Wire Wire Line
	6650 5300 6650 5400
Text GLabel 6650 5350 2    50   Input ~ 0
GND
Text GLabel 5600 5350 0    50   Input ~ 0
GND
Wire Wire Line
	5600 5200 5600 5300
Connection ~ 5600 5300
Wire Wire Line
	5600 5300 5600 5400
Connection ~ 5600 5400
Wire Wire Line
	5600 5400 5600 5500
Text Notes 5200 4000 0    50   ~ 0
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
P 3450 4950
F 0 "JP1" H 3450 5214 50  0000 C CNN
F 1 "Prog" H 3450 5123 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 3450 4950 50  0001 C CNN
F 3 "~" H 3450 4950 50  0001 C CNN
	1    3450 4950
	1    0    0    -1  
$EndComp
NoConn ~ 2450 4800
Text GLabel 2450 5200 2    50   Input ~ 0
GPIO12
Text GLabel 2450 5300 2    50   Input ~ 0
GPIO13
Text GLabel 2450 5400 2    50   Input ~ 0
GPIO14
Text GLabel 2450 5600 2    50   Input ~ 0
GPIO16
Text GLabel 1250 5200 0    50   Input ~ 0
CSO
Text GLabel 1250 5300 0    50   Input ~ 0
MISO
Text GLabel 1250 5600 0    50   Input ~ 0
MOSI
Text GLabel 1250 5700 0    50   Input ~ 0
SCLK
Text Notes 550  2650 0    50   ~ 0
GPIO Erweiterungen\n
Text GLabel 2200 3650 0    50   Input ~ 0
GPIO12
Text GLabel 2200 3550 0    50   Input ~ 0
GPIO13
Text GLabel 2200 3450 0    50   Input ~ 0
GPIO14
Text GLabel 2200 3350 0    50   Input ~ 0
GPIO16
Text GLabel 2200 3250 0    50   Input ~ 0
SCLK
Text GLabel 2200 3150 0    50   Input ~ 0
MOSI
Text GLabel 2200 3050 0    50   Input ~ 0
MISO
Text GLabel 2200 2950 0    50   Input ~ 0
CSO
$Comp
L Connector:Conn_01x11_Male J6
U 1 1 5C06F7ED
P 2400 3150
F 0 "J6" H 2250 3050 50  0000 C CNN
F 1 "Erweiterung" H 2100 3150 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x11_P2.54mm_Vertical" H 2400 3150 50  0001 C CNN
F 3 "~" H 2400 3150 50  0001 C CNN
	1    2400 3150
	-1   0    0    1   
$EndComp
Text GLabel 2200 2850 0    50   Input ~ 0
GND
Text GLabel 2200 2750 0    50   Input ~ 0
3V3
Text GLabel 2200 2650 0    50   Input ~ 0
5V
Wire Notes Line
	500  2550 500  3750
Wire Notes Line
	500  3750 3100 3750
Wire Notes Line
	3100 3750 3100 2550
Wire Notes Line
	500  2550 3100 2550
Text Notes 4300 4450 0    50   ~ 0
Bug 9 nicht Nutzbar\n
Text Notes 4300 4650 0    50   ~ 0
Bug 10 nicht nutzbar\n
Wire Wire Line
	2450 5500 2700 5500
Wire Notes Line
	5400 1800 7400 1800
Wire Notes Line
	4200 3850 7550 3850
Wire Notes Line
	4200 5650 7550 5650
Wire Notes Line
	4100 3850 500  3850
Wire Notes Line
	7550 3850 7550 5650
Wire Notes Line
	4200 5650 4200 3850
Wire Notes Line
	5400 1750 7300 1750
Wire Notes Line
	7300 1750 7300 550 
Wire Notes Line
	5400 550  5400 1750
Wire Notes Line
	5400 1800 5400 3800
Wire Notes Line
	5400 3800 7400 3800
Text Notes 4750 6700 0    78   ~ 0
Hühnerklappe \n
Text Notes 5550 6850 0    78   ~ 0
20.01.2019
Text Notes 8000 6850 0    78   ~ 0
2
$EndSCHEMATC
