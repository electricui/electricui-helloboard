EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "HelloBoard Schematic"
Date "2018-07-30"
Rev "1.0.0"
Comp ""
Comment1 "ElectricUI DEVKITS"
Comment2 "20180730"
Comment3 "Scott Rapson"
Comment4 ""
$EndDescr
$Comp
L appli_usb:USB_A_MALE_PCB J??
U 1 1 5B634FDE
P 1450 1900
F 0 "J??" H 1350 2437 60  0000 C CNN
F 1 "USB_A_MALE_PCB" H 1350 2331 60  0000 C CNN
F 2 "Applidyne_USB:USB_A_PLUG_PCB" V 1850 1900 60  0001 C CNN
F 3 "http://www.molex.com/molex/products/datasheet.jsp?part=active/0482580001_IO_CONNECTORS.xml&channel=Products&Lang=en-US" V 1800 1900 20  0001 C CNN
	1    1450 1900
	-1   0    0    -1  
$EndComp
$Comp
L appli_capacitor:10u_X7R_2012M C?
U 1 1 5B635173
P 4500 2000
F 0 "C?" H 4423 1865 50  0000 R CNN
F 1 "10u_X7R_2012M" H 4423 1945 35  0000 R CNN
F 2 "CAPC2012*" V 4615 1900 20  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1870456.pdf" V 4640 1900 20  0001 C CNN
F 4 "MULTICOMP" V 4690 1900 20  0001 C CNN "manf"
F 5 "MC0805B106K6R3CT" V 4715 1900 20  0001 C CNN "manf#"
F 6 "Element14" V 4740 1900 20  0001 C CNN "Supplier"
F 7 "2320851" V 4765 1900 20  0001 C CNN "Supplier Part No"
F 8 "http://au.element14.com/multicomp/mc0805b106k6r3ct/cap-mlcc-x7r-10uf-6-3v-0805/dp/2320851" V 4790 1900 20  0001 C CNN "Supplier URL"
F 9 "0.241" V 4815 1900 20  0001 C CNN "Supplier Price"
F 10 "10" V 4840 1900 20  0001 C CNN "Supplier Price Break"
	1    4500 2000
	1    0    0    1   
$EndComp
$Comp
L appli_capacitor:10u_X7R_2012M C?
U 1 1 5B6351FD
P 5850 1800
F 0 "C?" H 5928 1735 50  0000 L CNN
F 1 "10u_X7R_2012M" H 5928 1655 35  0000 L CNN
F 2 "CAPC2012*" V 5965 1700 20  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1870456.pdf" V 5990 1700 20  0001 C CNN
F 4 "MULTICOMP" V 6040 1700 20  0001 C CNN "manf"
F 5 "MC0805B106K6R3CT" V 6065 1700 20  0001 C CNN "manf#"
F 6 "Element14" V 6090 1700 20  0001 C CNN "Supplier"
F 7 "2320851" V 6115 1700 20  0001 C CNN "Supplier Part No"
F 8 "http://au.element14.com/multicomp/mc0805b106k6r3ct/cap-mlcc-x7r-10uf-6-3v-0805/dp/2320851" V 6140 1700 20  0001 C CNN "Supplier URL"
F 9 "0.241" V 6165 1700 20  0001 C CNN "Supplier Price"
F 10 "10" V 6190 1700 20  0001 C CNN "Supplier Price Break"
	1    5850 1800
	1    0    0    -1  
$EndComp
$Comp
L appli_capacitor:1u_X5R_1005M C?
U 1 1 5B6352DC
P 3700 4100
F 0 "C?" H 3778 4035 50  0000 L CNN
F 1 "1u_X5R_1005M" H 3778 3955 35  0000 L CNN
F 2 "Applidyne_Capacitor:CAPC1005X60N" V 3815 4000 20  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2291921.pdf" V 3840 4000 20  0001 C CNN
F 4 "TDK" V 3890 4000 20  0001 C CNN "manf"
F 5 "C1005X5R1V105K050BC" V 3915 4000 20  0001 C CNN "manf#"
F 6 "Element14" V 3940 4000 20  0001 C CNN "Supplier"
F 7 "2346885" V 3965 4000 20  0001 C CNN "Supplier Part No"
F 8 "http://au.element14.com/tdk/c1005x5r1v105k050bc/cap-mlcc-x5r-1uf-35v-0402/dp/2346885" V 3990 4000 20  0001 C CNN "Supplier URL"
F 9 "0.101" V 4015 4000 20  0001 C CNN "Supplier Price"
F 10 "100" V 4040 4000 20  0001 C CNN "Supplier Price Break"
	1    3700 4100
	1    0    0    -1  
$EndComp
$Comp
L appli_regulator:AP2112K-3.3 U?
U 1 1 5B6363D2
P 5200 1800
F 0 "U?" H 5200 2094 40  0000 C CNN
F 1 "AP2112K-3.3" H 5200 2018 40  0000 C CNN
F 2 "Applidyne_SOT:SOT95P280X145-5L30N" H 4900 2000 35  0001 L CIN
F 3 "https://au.mouser.com/datasheet/2/115/AP2112-271550.pdf" H 5200 650 60  0001 C CNN
F 4 "DIODES INCORPORATED" H 5200 1150 60  0001 C CNN "manf"
F 5 "AP2112K-3.3TRG1" H 5200 1050 60  0001 C CNN "manf#"
F 6 "Mouser" H 5200 950 60  0001 C CNN "Supplier"
F 7 "621-AP2112K-3.3TRG1" H 5200 850 60  0001 C CNN "Supplier Part No"
F 8 "https://au.mouser.com/ProductDetail/Diodes-Incorporated/AP2112K-33TRG1" H 5200 750 60  0001 C CNN "Supplier URL"
F 9 "0.207" H 5200 550 60  0001 C CNN "Supplier Price"
F 10 "100" H 5200 450 60  0001 C CNN "Supplier Price Break"
	1    5200 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 1750 4650 1750
Wire Wire Line
	4200 1750 4200 1650
Wire Wire Line
	4500 1800 4500 1750
Connection ~ 4500 1750
Wire Wire Line
	4500 1750 4200 1750
Wire Wire Line
	4750 1850 4650 1850
Wire Wire Line
	4650 1850 4650 1750
Connection ~ 4650 1750
Wire Wire Line
	4650 1750 4500 1750
Wire Wire Line
	4500 2000 4500 2200
Wire Wire Line
	5200 2100 5200 2200
$Comp
L appli_power:GND #PWR?
U 1 1 5B636631
P 5200 2200
F 0 "#PWR?" H 5200 1950 50  0001 C CNN
F 1 "GND" H 5205 2027 50  0000 C CNN
F 2 "" H 5200 2200 60  0000 C CNN
F 3 "" H 5200 2200 60  0000 C CNN
	1    5200 2200
	1    0    0    -1  
$EndComp
$Comp
L appli_power:GND #PWR?
U 1 1 5B63664D
P 4500 2200
F 0 "#PWR?" H 4500 1950 50  0001 C CNN
F 1 "GND" H 4505 2027 50  0000 C CNN
F 2 "" H 4500 2200 60  0000 C CNN
F 3 "" H 4500 2200 60  0000 C CNN
	1    4500 2200
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5B6366B1
P 4200 1650
F 0 "#PWR?" H 4200 1500 50  0001 C CNN
F 1 "VCC" H 4217 1823 50  0000 C CNN
F 2 "" H 4200 1650 50  0001 C CNN
F 3 "" H 4200 1650 50  0001 C CNN
	1    4200 1650
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5B6366CD
P 2350 1650
F 0 "#PWR?" H 2350 1500 50  0001 C CNN
F 1 "VCC" H 2367 1823 50  0000 C CNN
F 2 "" H 2350 1650 50  0001 C CNN
F 3 "" H 2350 1650 50  0001 C CNN
	1    2350 1650
	1    0    0    -1  
$EndComp
$Comp
L appli_power:PWR_FLAG #FLG?
U 1 1 5B636707
P 2150 1650
F 0 "#FLG?" H 2150 1700 30  0001 C CNN
F 1 "PWR_FLAG" H 2150 1783 30  0000 C CNN
F 2 "" H 2150 1650 60  0000 C CNN
F 3 "" H 2150 1650 60  0000 C CNN
	1    2150 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 1750 5850 1750
$Comp
L appli_power:+3.3V #PWR?
U 1 1 5B6367A8
P 6250 1650
F 0 "#PWR?" H 6250 1610 30  0001 C CNN
F 1 "+3.3V" H 6259 1788 30  0000 C CNN
F 2 "" H 6250 1650 60  0000 C CNN
F 3 "" H 6250 1650 60  0000 C CNN
	1    6250 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 1750 6250 1650
$Comp
L appli_capacitor:1u_X5R_1005M C?
U 1 1 5B636861
P 3550 3200
F 0 "C?" H 3628 3135 50  0000 L CNN
F 1 "1u_X5R_1005M" H 3628 3055 35  0000 L CNN
F 2 "Applidyne_Capacitor:CAPC1005X60N" V 3665 3100 20  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2291921.pdf" V 3690 3100 20  0001 C CNN
F 4 "TDK" V 3740 3100 20  0001 C CNN "manf"
F 5 "C1005X5R1V105K050BC" V 3765 3100 20  0001 C CNN "manf#"
F 6 "Element14" V 3790 3100 20  0001 C CNN "Supplier"
F 7 "2346885" V 3815 3100 20  0001 C CNN "Supplier Part No"
F 8 "http://au.element14.com/tdk/c1005x5r1v105k050bc/cap-mlcc-x5r-1uf-35v-0402/dp/2346885" V 3840 3100 20  0001 C CNN "Supplier URL"
F 9 "0.101" V 3865 3100 20  0001 C CNN "Supplier Price"
F 10 "100" V 3890 3100 20  0001 C CNN "Supplier Price Break"
	1    3550 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 1800 5850 1750
Connection ~ 5850 1750
Wire Wire Line
	5850 1750 6250 1750
Wire Wire Line
	5850 2000 5850 2200
$Comp
L appli_power:GND #PWR?
U 1 1 5B636BBF
P 5850 2200
F 0 "#PWR?" H 5850 1950 50  0001 C CNN
F 1 "GND" H 5855 2027 50  0000 C CNN
F 2 "" H 5850 2200 60  0000 C CNN
F 3 "" H 5850 2200 60  0000 C CNN
	1    5850 2200
	1    0    0    -1  
$EndComp
Text Notes 4775 1150 0    79   ~ 16
3.3V Regulator
Text Notes 1375 1150 0    79   ~ 16
USB Connector
Wire Wire Line
	1650 2050 2200 2050
Wire Wire Line
	2200 2050 2200 2200
Wire Wire Line
	1650 1850 2500 1850
Wire Wire Line
	1650 1950 2500 1950
Wire Wire Line
	2350 1750 2350 1650
Wire Wire Line
	1650 1750 2150 1750
Wire Wire Line
	2150 1650 2150 1750
Connection ~ 2150 1750
Wire Wire Line
	2150 1750 2350 1750
$Comp
L appli_switch:B3U-1000P_SPST-NO_SMD SW?
U 1 1 5B63789F
P 1850 5150
F 0 "SW?" H 1875 5392 50  0000 C CNN
F 1 "B3U-1000P_SPST-NO_SMD" H 1875 5301 50  0000 C CNN
F 2 "Applidyne_Switch:B3U-1000P" H 1850 4910 20  0001 C CNN
F 3 "http://www.farnell.com/cad/1520836.pdf" H 1850 4885 20  0001 C CNN
F 4 "OMRON" H 1850 4835 20  0001 C CNN "manf"
F 5 "B3U-1000P" H 1850 4810 20  0001 C CNN "manf#"
F 6 "Element 14" H 1850 4785 20  0001 C CNN "Supplier"
F 7 "1333652" H 1850 4760 20  0001 C CNN "Supplier Part No"
F 8 "http://au.element14.com/omron-electronic-components/b3u-1000p/switch-spst-no-0-05a-12v-smd/dp/1333652" H 1850 4735 20  0001 C CNN "Supplier URL"
F 9 "0.546" H 1850 4710 20  0001 C CNN "Supplier Price"
F 10 "5" H 1850 4685 20  0001 C CNN "Supplier Price Break"
	1    1850 5150
	1    0    0    -1  
$EndComp
Text GLabel 2500 1950 2    51   BiDi ~ 0
USB_D+
Text GLabel 2500 1850 2    51   BiDi ~ 0
USB_D+
$Comp
L appli_power:GND #PWR?
U 1 1 5B63836C
P 2200 2200
F 0 "#PWR?" H 2200 1950 50  0001 C CNN
F 1 "GND" H 2205 2027 50  0000 C CNN
F 2 "" H 2200 2200 60  0000 C CNN
F 3 "" H 2200 2200 60  0000 C CNN
	1    2200 2200
	1    0    0    -1  
$EndComp
Text GLabel 6375 4100 2    51   BiDi ~ 0
USB_D+
Text GLabel 6375 3975 2    51   BiDi ~ 0
USB_D+
$Comp
L appli_device:APA102-2020 U?
U 1 1 5B63D0E9
P 8450 1950
F 0 "U?" H 8200 2325 50  0000 C CNN
F 1 "APA102-2020" H 8775 2325 50  0000 C CNN
F 2 "Applidyne_LED:AP102_200X200X90L" H 8495 1010 50  0001 C CNN
F 3 "http://www.led-color.com/upload/201604/APA102-2020%20SMD%20LED.pdf" H 8500 390 50  0001 C CNN
F 4 "DotStar" H 8500 1255 60  0001 C CNN "manf"
F 5 "APA102–2020" H 8485 1090 60  0001 C CNN "manf#"
F 6 "$5.95" H 8500 600 60  0001 C CNN "Supplier Price"
F 7 "Adafruit" H 8600 700 60  0001 C CNN "Supplier"
F 8 "https://www.adafruit.com/product/3341" H 8700 800 60  0001 C CNN "Supplier URL"
F 9 "3341" H 8500 900 60  0001 C CNN "Supplier Part No"
F 10 "10" H 8500 500 59  0001 C CNN "Supplier Price Break"
	1    8450 1950
	1    0    0    -1  
$EndComp
$Comp
L appli_power:+3.3V #PWR?
U 1 1 5B63D584
P 8450 1425
F 0 "#PWR?" H 8450 1385 30  0001 C CNN
F 1 "+3.3V" H 8459 1563 30  0000 C CNN
F 2 "" H 8450 1425 60  0000 C CNN
F 3 "" H 8450 1425 60  0000 C CNN
	1    8450 1425
	1    0    0    -1  
$EndComp
$Comp
L appli_power:GND #PWR?
U 1 1 5B63D59F
P 8450 2475
F 0 "#PWR?" H 8450 2225 50  0001 C CNN
F 1 "GND" H 8455 2302 50  0000 C CNN
F 2 "" H 8450 2475 60  0000 C CNN
F 3 "" H 8450 2475 60  0000 C CNN
	1    8450 2475
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 1500 8450 1425
Wire Wire Line
	8450 2475 8450 2400
Text GLabel 7800 1850 0    59   Input ~ 0
LED_DATA
Text GLabel 7800 2050 0    59   Input ~ 0
LED_CLK
Wire Wire Line
	7800 2050 8000 2050
Wire Wire Line
	8000 1850 7800 1850
$Comp
L appli_device:LED_RED_1608M D?
U 1 1 5B63E60E
P 10450 2150
F 0 "D?" H 10450 2355 50  0000 C CNN
F 1 "LED_RED_1608M" H 10450 2264 50  0000 C CNN
F 2 "Applidyne_LED:LEDC1608X80L40N" H 10450 2350 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1720200.pdf" H 10450 1940 50  0001 C CNN
F 4 "DIALIGHT" H 10450 1730 60  0001 C CNN "manf"
F 5 "5988010107F" H 10450 1640 60  0001 C CNN "manf#"
F 6 "Element 14" H 10450 1540 60  0001 C CNN "Supplier"
F 7 "1465988" H 10450 1440 60  0001 C CNN "Supplier Part No"
F 8 "http://au.element14.com/dialight/5988010107f/led-0603-red-40mcd-635nm/dp/1465988" H 10460 1360 60  0001 C CNN "Supplier URL"
F 9 "0.18" H 10450 1260 60  0001 C CNN "Supplier Price"
F 10 "10" H 10450 1160 60  0001 C CNN "Supplier Price Break"
	1    10450 2150
	1    0    0    -1  
$EndComp
Text Notes 8200 1150 0    79   ~ 16
RGB LED
NoConn ~ 8900 2050
NoConn ~ 8900 1850
$Comp
L appli_power:GND #PWR?
U 1 1 5B63F61B
P 10100 2475
F 0 "#PWR?" H 10100 2225 50  0001 C CNN
F 1 "GND" H 10105 2302 50  0000 C CNN
F 2 "" H 10100 2475 60  0000 C CNN
F 3 "" H 10100 2475 60  0000 C CNN
	1    10100 2475
	1    0    0    -1  
$EndComp
Text Notes 625  7625 0    59   ~ 0
Design borrows heavily from Adafruit Trinket M0 design.\nKey changes are PCB USB Male connector, additional sensors, removal of pins.\nSensors follow similar design pattern to Adafruit Circuit Playground -> similar software.
$Comp
L appli_test_points:PROBE_PAD TEST?
U 1 1 5B63FE1E
P 1450 3650
F 0 "TEST?" H 1450 3550 60  0001 C CNN
F 1 "PROBE_PAD" H 1490 3772 60  0000 L CNN
F 2 "" H 1350 3450 60  0000 C CNN
F 3 "" H 1450 3550 60  0000 C CNN
F 4 "N/A" H 1450 3100 60  0001 C CNN "manf"
F 5 "N/A" H 1450 3000 60  0001 C CNN "manf#"
F 6 "N/A" H 1450 2900 60  0001 C CNN "Supplier"
F 7 "#" H 1450 2800 60  0001 C CNN "Supplier URL"
F 8 "0" H 1450 3200 60  0001 C CNN "Supplier Price"
F 9 "0" H 1450 3300 60  0001 C CNN "Supplier Price Break"
F 10 "DNP" H 1490 3666 60  0000 L CNN "Installed"
	1    1450 3650
	1    0    0    -1  
$EndComp
Text GLabel 1800 3700 2    51   BiDi ~ 0
SWD_CLK
Wire Wire Line
	1800 3700 1450 3700
Wire Wire Line
	1450 3700 1450 3650
$Comp
L appli_test_points:PROBE_PAD TEST?
U 1 1 5B644BC6
P 1450 4000
F 0 "TEST?" H 1450 3900 60  0001 C CNN
F 1 "PROBE_PAD" H 1490 4122 60  0000 L CNN
F 2 "" H 1350 3800 60  0000 C CNN
F 3 "" H 1450 3900 60  0000 C CNN
F 4 "N/A" H 1450 3450 60  0001 C CNN "manf"
F 5 "N/A" H 1450 3350 60  0001 C CNN "manf#"
F 6 "N/A" H 1450 3250 60  0001 C CNN "Supplier"
F 7 "#" H 1450 3150 60  0001 C CNN "Supplier URL"
F 8 "0" H 1450 3550 60  0001 C CNN "Supplier Price"
F 9 "0" H 1450 3650 60  0001 C CNN "Supplier Price Break"
F 10 "DNP" H 1490 4016 60  0000 L CNN "Installed"
	1    1450 4000
	1    0    0    -1  
$EndComp
Text GLabel 1800 4050 2    51   BiDi ~ 0
SWD_IO
Wire Wire Line
	1800 4050 1450 4050
Wire Wire Line
	1450 4050 1450 4000
Text Notes 1375 3225 0    79   ~ 16
SWD Programming
Text Notes 1575 4675 0    79   ~ 16
Reset Button
Text Notes 9950 1150 0    79   ~ 16
Status LED
Text Notes 9600 1450 0    59   ~ 0
Standard 'Arduino Pin 13' use
Text GLabel 10100 1750 0    59   Input ~ 0
STATUS_LED
Wire Wire Line
	10100 2150 10100 2475
$Comp
L appli_resistor:1K5_1005M R?
U 1 1 5B63E3AC
P 10600 1750
F 0 "R?" V 10412 1600 50  0000 C CNN
F 1 "1K5_1005M" V 10492 1600 35  0000 C CNN
F 2 "Applidyne_Resistor:RESC1005X40N" V 10710 1600 20  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2111203.pdf" V 10735 1600 20  0001 C CNN
F 4 "VISHAY" V 10785 1600 20  0001 C CNN "manf"
F 5 "CRCW04021K50FKED" V 10810 1600 20  0001 C CNN "manf#"
F 6 "Element14" V 10835 1600 20  0001 C CNN "Supplier"
F 7 "1653201" V 10860 1600 20  0001 C CNN "Supplier Part No"
F 8 "http://au.element14.com/vishay/crcw04021k50fked/res-thick-film-1k5-1-0-063w-0402/dp/1653201" V 10885 1600 20  0001 C CNN "Supplier URL"
F 9 "0.007" V 10910 1600 20  0001 C CNN "Supplier Price"
F 10 "100" V 10935 1600 20  0001 C CNN "Supplier Price Break"
	1    10600 1750
	0    1    1    0   
$EndComp
Text GLabel 6475 4325 2    59   Output ~ 0
STATUS_LED
Text GLabel 6350 3450 2    59   Output ~ 0
LED_DATA
Text GLabel 6375 3600 2    59   Output ~ 0
LED_CLK
Text GLabel 4100 3850 0    59   Input ~ 0
RESET
Text GLabel 2575 5150 2    59   Output ~ 0
RESET
$Comp
L appli_power:+3.3V #PWR?
U 1 1 5B64D3FE
P 3550 3025
F 0 "#PWR?" H 3550 2985 30  0001 C CNN
F 1 "+3.3V" H 3559 3163 30  0000 C CNN
F 2 "" H 3550 3025 60  0000 C CNN
F 3 "" H 3550 3025 60  0000 C CNN
	1    3550 3025
	1    0    0    -1  
$EndComp
$Comp
L appli_power:GND #PWR?
U 1 1 5B64D41D
P 3550 3550
F 0 "#PWR?" H 3550 3300 50  0001 C CNN
F 1 "GND" H 3555 3377 50  0000 C CNN
F 2 "" H 3550 3550 60  0000 C CNN
F 3 "" H 3550 3550 60  0000 C CNN
	1    3550 3550
	1    0    0    -1  
$EndComp
$Comp
L appli_power:GND #PWR?
U 1 1 5B64D43C
P 3850 5075
F 0 "#PWR?" H 3850 4825 50  0001 C CNN
F 1 "GND" H 3855 4902 50  0000 C CNN
F 2 "" H 3850 5075 60  0000 C CNN
F 3 "" H 3850 5075 60  0000 C CNN
	1    3850 5075
	1    0    0    -1  
$EndComp
$Comp
L appli_power:+3.3V #PWR?
U 1 1 5B64D45B
P 4125 3575
F 0 "#PWR?" H 4125 3535 30  0001 C CNN
F 1 "+3.3V" H 4134 3713 30  0000 C CNN
F 2 "" H 4125 3575 60  0000 C CNN
F 3 "" H 4125 3575 60  0000 C CNN
	1    4125 3575
	1    0    0    -1  
$EndComp
Text Notes 9150 3225 0    79   ~ 16
Light Sensor
Wire Wire Line
	10650 2150 10825 2150
Wire Wire Line
	10825 2150 10825 1750
Wire Wire Line
	10825 1750 10600 1750
Wire Wire Line
	10300 1750 10100 1750
Wire Wire Line
	10250 2150 10100 2150
Text Notes 8825 3525 0    59   ~ 0
Used as rough rangefinder,\ncolour sensor or pulse-monitor
Text GLabel 9400 4300 0    59   Output ~ 0
PHOTOSENSOR
Text GLabel 6450 4650 2    59   Input ~ 0
PHOTOSENSOR
Text Notes 4450 3225 0    79   ~ 16
Atmel ARM M0 Microcontroller
$Comp
L appli_power:+3.3V #PWR?
U 1 1 5B6553E0
P 9750 3825
F 0 "#PWR?" H 9750 3785 30  0001 C CNN
F 1 "+3.3V" H 9759 3963 30  0000 C CNN
F 2 "" H 9750 3825 60  0000 C CNN
F 3 "" H 9750 3825 60  0000 C CNN
	1    9750 3825
	1    0    0    -1  
$EndComp
$Comp
L appli_power:GND #PWR?
U 1 1 5B65545D
P 9725 4725
F 0 "#PWR?" H 9725 4475 50  0001 C CNN
F 1 "GND" H 9730 4552 50  0000 C CNN
F 2 "" H 9725 4725 60  0000 C CNN
F 3 "" H 9725 4725 60  0000 C CNN
	1    9725 4725
	1    0    0    -1  
$EndComp
$Comp
L appli_logo:LOGO LOGO?
U 1 1 5B655C8C
P 1000 6250
F 0 "LOGO?" H 1178 6250 47  0000 L CNN
F 1 "LOGO" H 1000 5975 47  0001 C CNN
F 2 "Applidyne_Logo:EUI_LOGO_1000X940_MASK" H 1000 6050 47  0001 C CNN
F 3 "" H 1000 6250 60  0000 C CNN
	1    1000 6250
	1    0    0    -1  
$EndComp
Text Notes 1350 5900 0    79   ~ 16
Logos and Cosmetics
Text Notes 1525 6275 0    59   ~ 0
ElectricUI Crest
$Comp
L appli_logo:LOGO LOGO?
U 1 1 5B656D7E
P 1000 6650
F 0 "LOGO?" H 1178 6650 47  0000 L CNN
F 1 "LOGO" H 1000 6375 47  0001 C CNN
F 2 "Applidyne_Logo:BULB_LOGO230X330" H 1000 6450 47  0001 C CNN
F 3 "" H 1000 6650 60  0000 C CNN
	1    1000 6650
	1    0    0    -1  
$EndComp
Text Notes 1525 6675 0    59   ~ 0
Light symbol
$Comp
L appli_logo:LOGO LOGO?
U 1 1 5B656DFD
P 2600 6250
F 0 "LOGO?" H 2778 6250 47  0000 L CNN
F 1 "LOGO" H 2600 5975 47  0001 C CNN
F 2 "Applidyne_Logo:THERMO_LOGO_170X350" H 2600 6050 47  0001 C CNN
F 3 "" H 2600 6250 60  0000 C CNN
	1    2600 6250
	1    0    0    -1  
$EndComp
Text Notes 3175 6275 0    59   ~ 0
Temperature Symbol
$Comp
L appli_logo:LOGO LOGO?
U 1 1 5B657FD7
P 2600 6650
F 0 "LOGO?" H 2778 6650 47  0000 L CNN
F 1 "LOGO" H 2600 6375 47  0001 C CNN
F 2 "Applidyne_Logo:USB_LOGO410X250" H 2600 6450 47  0001 C CNN
F 3 "" H 2600 6650 60  0000 C CNN
	1    2600 6650
	1    0    0    -1  
$EndComp
Text Notes 3175 6675 0    59   ~ 0
USB Symbol
$EndSCHEMATC
