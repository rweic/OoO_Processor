* Functional test stimulus file for 5ns period

* TT process corner
.include "/homes/rweic/ee526/ram_test_freepdk45_sapr_flow/OpenRAM/technology/freepdk45/models/tran_models/models_nom/PMOS_VTG.inc"
.include "/homes/rweic/ee526/ram_test_freepdk45_sapr_flow/OpenRAM/technology/freepdk45/models/tran_models/models_nom/NMOS_VTG.inc"
.include "dmem.sp"

* Global Power Supplies
Vvdd vdd 0 1.1

*Nodes gnd and 0 are the same global ground node in ngspice/hspice/xa. Otherwise, this source may be needed.
*Vgnd gnd 0 0.0

* Instantiation of the SRAM
Xdmem din0_0 din0_1 din0_2 din0_3 din0_4 din0_5 din0_6 din0_7 din0_8 din0_9 din0_10 din0_11 din0_12 din0_13 din0_14 din0_15 din0_16 din0_17 din0_18 din0_19 din0_20 din0_21 din0_22 din0_23 din0_24 din0_25 din0_26 din0_27 din0_28 din0_29 din0_30 din0_31 a0_0 a0_1 a0_2 a0_3 a0_4 a0_5 a0_6 a0_7 a1_0 a1_1 a1_2 a1_3 a1_4 a1_5 a1_6 a1_7 CSB0 CSB1 clk0 clk1 WMASK0_0 WMASK0_1 WMASK0_2 WMASK0_3 dout1_0 dout1_1 dout1_2 dout1_3 dout1_4 dout1_5 dout1_6 dout1_7 dout1_8 dout1_9 dout1_10 dout1_11 dout1_12 dout1_13 dout1_14 dout1_15 dout1_16 dout1_17 dout1_18 dout1_19 dout1_20 dout1_21 dout1_22 dout1_23 dout1_24 dout1_25 dout1_26 dout1_27 dout1_28 dout1_29 dout1_30 dout1_31 vdd gnd dmem

* SRAM output loads
CD10 dout1_0  0 0.8364f
CD11 dout1_1  0 0.8364f
CD12 dout1_2  0 0.8364f
CD13 dout1_3  0 0.8364f
CD14 dout1_4  0 0.8364f
CD15 dout1_5  0 0.8364f
CD16 dout1_6  0 0.8364f
CD17 dout1_7  0 0.8364f
CD18 dout1_8  0 0.8364f
CD19 dout1_9  0 0.8364f
CD110 dout1_10  0 0.8364f
CD111 dout1_11  0 0.8364f
CD112 dout1_12  0 0.8364f
CD113 dout1_13  0 0.8364f
CD114 dout1_14  0 0.8364f
CD115 dout1_15  0 0.8364f
CD116 dout1_16  0 0.8364f
CD117 dout1_17  0 0.8364f
CD118 dout1_18  0 0.8364f
CD119 dout1_19  0 0.8364f
CD120 dout1_20  0 0.8364f
CD121 dout1_21  0 0.8364f
CD122 dout1_22  0 0.8364f
CD123 dout1_23  0 0.8364f
CD124 dout1_24  0 0.8364f
CD125 dout1_25  0 0.8364f
CD126 dout1_26  0 0.8364f
CD127 dout1_27  0 0.8364f
CD128 dout1_28  0 0.8364f
CD129 dout1_29  0 0.8364f
CD130 dout1_30  0 0.8364f
CD131 dout1_31  0 0.8364f


* Important signals for debug
* bl:	xdmem.xbank0.bl_1_0
* br:	xdmem.xbank0.br_1_0
* s_en:	xdmem.s_en
* q:	xdmem.xbank0.xbitcell_array.xreplica_bitcell_array.xbitcell_array.xbit_r0_c0.Q
* qbar:	xdmem.xbank0.xbitcell_array.xreplica_bitcell_array.xbitcell_array.xbit_r0_c0.Q_bar


* Sequence of operations
*	Idle during cycle 0 (0ns - 5ns)
*	Writing 10000111101110010111110010001100  to  address 00000001 (from port 0) during cycle 1 (5ns - 10ns)
*	Writing 11011010000111111110000100011000  to  address 00000011 (from port 0) during cycle 2 (10ns - 15ns)
*	Writing 01000111001010001101011110000110  to  address 11111101 (from port 0) during cycle 3 (15ns - 20ns)
*	Reading 11011010000111111110000100011000 from address 00000011 (from port 1) during cycle 4 (20ns - 25ns)
*	Writing 01001011100000001111011101001111  to  address 00000011 (from port 0) during cycle 5 (25ns - 30ns)
*	Writing (partial) 10111011010100101011101001000011  to  address 00000011 with mask bit 1010 (from port 0) during cycle 9 (45ns - 50ns)
*	Writing (partial) 11100111000111101111111001011110  to  address 00000011 with mask bit 0111 (from port 0) during cycle 10 (50ns - 55ns)
*	Writing (partial) 11111001011001011001011000101001  to  address 11111101 with mask bit 1010 (from port 0) during cycle 11 (55ns - 60ns)
*	Writing 11001110001001010100000110110010  to  address 00000011 (from port 0) during cycle 12 (60ns - 65ns)
*	Writing 01100111111101101001100001001001  to  address 11111100 (from port 0) during cycle 13 (65ns - 70ns)
*	Reading 11001110001001010100000110110010 from address 00000011 (from port 1) during cycle 13 (65ns - 70ns)
*	Writing 00110100101110111111111111111111  to  address 11111100 (from port 0) during cycle 14 (70ns - 75ns)
*	Writing (partial) 11011011001101001001111101111011  to  address 11111100 with mask bit 1000 (from port 0) during cycle 15 (75ns - 80ns)
*	Writing (partial) 11111010100110000101110010000010  to  address 11111101 with mask bit 0100 (from port 0) during cycle 17 (85ns - 90ns)
*	Reading 11001110001001010100000110110010 from address 00000011 (from port 1) during cycle 17 (85ns - 90ns)
*	Reading 11001110001001010100000110110010 from address 00000011 (from port 1) during cycle 18 (90ns - 95ns)
*	Writing 01111010100100110110001000001110  to  address 11111110 (from port 0) during cycle 19 (95ns - 100ns)
*	Reading 11001110001001010100000110110010 from address 00000011 (from port 1) during cycle 20 (100ns - 105ns)
*	Writing (partial) 00011111110110101110001010000101  to  address 11111100 with mask bit 0101 (from port 0) during cycle 21 (105ns - 110ns)
*	Reading 11111001100110001001011010000110 from address 11111101 (from port 1) during cycle 21 (105ns - 110ns)
*	Writing 00001011001001100101111111111100  to  address 00000000 (from port 0) during cycle 23 (115ns - 120ns)
*	Reading 11111001100110001001011010000110 from address 11111101 (from port 1) during cycle 23 (115ns - 120ns)
*	Writing 10000000001101001001000010000001  to  address 00000011 (from port 0) during cycle 24 (120ns - 125ns)
*	Writing 10000110111101100100100011111100  to  address 00000000 (from port 0) during cycle 26 (130ns - 135ns)
*	Reading 11111001100110001001011010000110 from address 11111101 (from port 1) during cycle 26 (130ns - 135ns)
*	Writing (partial) 00011010001000111011010101001110  to  address 11111101 with mask bit 1010 (from port 0) during cycle 27 (135ns - 140ns)
*	Writing 00111111101001100111010101011000  to  address 11111011 (from port 0) during cycle 28 (140ns - 145ns)
*	Reading 10000111101110010111110010001100 from address 00000001 (from port 1) during cycle 28 (140ns - 145ns)
*	Writing 10010111010011000000001110111011  to  address 00000001 (from port 0) during cycle 30 (150ns - 155ns)
*	Reading 00011010100110001011010110000110 from address 11111101 (from port 1) during cycle 30 (150ns - 155ns)
*	Reading 00011010100110001011010110000110 from address 11111101 (from port 1) during cycle 31 (155ns - 160ns)
*	Writing (partial) 01110101011110110100001111110001  to  address 11111100 with mask bit 1001 (from port 0) during cycle 34 (170ns - 175ns)
*	Writing 01010010011001111100100001001001  to  address 00000001 (from port 0) during cycle 35 (175ns - 180ns)
*	Writing (partial) 11010101100000100011000101011001  to  address 00000011 with mask bit 0111 (from port 0) during cycle 36 (180ns - 185ns)
*	Writing (partial) 00100010101011010101011111000000  to  address 11111101 with mask bit 0010 (from port 0) during cycle 37 (185ns - 190ns)
*	Reading 00111111101001100111010101011000 from address 11111011 (from port 1) during cycle 37 (185ns - 190ns)
*	Writing (partial) 00101101101001101100011110110011  to  address 11111011 with mask bit 0011 (from port 0) during cycle 38 (190ns - 195ns)
*	Writing (partial) 01011110111110110101100011000101  to  address 00000011 with mask bit 1001 (from port 0) during cycle 39 (195ns - 200ns)
*	Writing 10100101000011110000100001111010  to  address 11111110 (from port 0) during cycle 40 (200ns - 205ns)
*	Reading 01010010011001111100100001001001 from address 00000001 (from port 1) during cycle 40 (200ns - 205ns)
*	Writing 00011010001111000000110011011001  to  address 11111101 (from port 0) during cycle 42 (210ns - 215ns)
*	Reading 01011110100000100011000111000101 from address 00000011 (from port 1) during cycle 43 (215ns - 220ns)
*	Writing (partial) 01010010000001110110001000000000  to  address 11111100 with mask bit 1010 (from port 0) during cycle 44 (220ns - 225ns)
*	Writing (partial) 11111010011001100010001101010011  to  address 00000000 with mask bit 1011 (from port 0) during cycle 45 (225ns - 230ns)
*	Reading 01011110100000100011000111000101 from address 00000011 (from port 1) during cycle 45 (225ns - 230ns)
*	Writing (partial) 01111000100001100111010100110100  to  address 11111110 with mask bit 0110 (from port 0) during cycle 46 (230ns - 235ns)
*	Writing 01111001011010010010000111100111  to  address 11111011 (from port 0) during cycle 48 (240ns - 245ns)
*	Writing 10001110000001101100100101001010  to  address 00000011 (from port 0) during cycle 49 (245ns - 250ns)
*	Writing 11011111100110010100011000001100  to  address 11111100 (from port 0) during cycle 50 (250ns - 255ns)
*	Reading 00011010001111000000110011011001 from address 11111101 (from port 1) during cycle 50 (250ns - 255ns)
*	Writing 00000101001010111001101000011100  to  address 00000001 (from port 0) during cycle 51 (255ns - 260ns)
*	Reading 10001110000001101100100101001010 from address 00000011 (from port 1) during cycle 51 (255ns - 260ns)
*	Writing 01111110001000001011010010011000  to  address 11111101 (from port 0) during cycle 52 (260ns - 265ns)
*	Writing 00010011011010111010010111001110  to  address 00000001 (from port 0) during cycle 53 (265ns - 270ns)
*	Writing (partial) 00000101011111000100001000011001  to  address 00000011 with mask bit 0100 (from port 0) during cycle 54 (270ns - 275ns)
*	Reading 11011111100110010100011000001100 from address 11111100 (from port 1) during cycle 54 (270ns - 275ns)
*	Reading 01111110001000001011010010011000 from address 11111101 (from port 1) during cycle 55 (275ns - 280ns)
*	Writing 01010010101001111101101000011101  to  address 11111100 (from port 0) during cycle 56 (280ns - 285ns)
*	Reading 10001110011111001100100101001010 from address 00000011 (from port 1) during cycle 57 (285ns - 290ns)
*	Writing (partial) 00010001000011010001101010111110  to  address 11111100 with mask bit 0010 (from port 0) during cycle 59 (295ns - 300ns)
*	Writing 01000001111010011000001101101011  to  address 00000010 (from port 0) during cycle 60 (300ns - 305ns)
*	Reading 01010010101001110001101000011101 from address 11111100 (from port 1) during cycle 62 (310ns - 315ns)
*	Writing (partial) 11110101101110110110111000111111  to  address 00000011 with mask bit 1001 (from port 0) during cycle 63 (315ns - 320ns)
*	Reading 11111010111101100010001101010011 from address 00000000 (from port 1) during cycle 63 (315ns - 320ns)
*	Reading 01000001111010011000001101101011 from address 00000010 (from port 1) during cycle 64 (320ns - 325ns)
*	Writing 00111000011101111101000010110001  to  address 00000001 (from port 0) during cycle 66 (330ns - 335ns)
*	Reading 01111001011010010010000111100111 from address 11111011 (from port 1) during cycle 66 (330ns - 335ns)
*	Writing (partial) 11100111000110010111010010001001  to  address 00000000 with mask bit 1001 (from port 0) during cycle 67 (335ns - 340ns)
*	Writing (partial) 01010110010001101110001000101101  to  address 11111100 with mask bit 0101 (from port 0) during cycle 68 (340ns - 345ns)
*	Writing (partial) 01010100110010110110101100000011  to  address 00000001 with mask bit 1110 (from port 0) during cycle 69 (345ns - 350ns)
*	Writing (partial) 11011110110011010100101001111110  to  address 00000001 with mask bit 1001 (from port 0) during cycle 70 (350ns - 355ns)
*	Reading 01111001011010010010000111100111 from address 11111011 (from port 1) during cycle 70 (350ns - 355ns)
*	Writing 00111000101000100110010011010111  to  address 00000011 (from port 0) during cycle 71 (355ns - 360ns)
*	Writing (partial) 00110001101000111111100000110111  to  address 11111110 with mask bit 1101 (from port 0) during cycle 72 (360ns - 365ns)
*	Reading 01111001011010010010000111100111 from address 11111011 (from port 1) during cycle 73 (365ns - 370ns)
*	Writing 11001010110110110100111110010111  to  address 00000001 (from port 0) during cycle 74 (370ns - 375ns)
*	Reading 01111110001000001011010010011000 from address 11111101 (from port 1) during cycle 75 (375ns - 380ns)
*	Writing 00111000111001000010001010100001  to  address 11111110 (from port 0) during cycle 76 (380ns - 385ns)
*	Writing 10100110110001101000101111111110  to  address 00000010 (from port 0) during cycle 77 (385ns - 390ns)
*	Reading 01010010010001100001101000101101 from address 11111100 (from port 1) during cycle 77 (385ns - 390ns)
*	Writing 00100011111010111111111001010011  to  address 11111100 (from port 0) during cycle 78 (390ns - 395ns)
*	Writing (partial) 11110001110000101111100000100000  to  address 00000011 with mask bit 1001 (from port 0) during cycle 79 (395ns - 400ns)
*	Writing (partial) 11000110001000001111110000100011  to  address 00000011 with mask bit 0011 (from port 0) during cycle 80 (400ns - 405ns)
*	Writing 11110000100001110100110100000001  to  address 11111101 (from port 0) during cycle 81 (405ns - 410ns)
*	Reading 00111000111001000010001010100001 from address 11111110 (from port 1) during cycle 81 (405ns - 410ns)
*	Writing (partial) 00111010011001011110101111110110  to  address 11111011 with mask bit 0101 (from port 0) during cycle 82 (410ns - 415ns)
*	Writing (partial) 01101101000001110000111111010001  to  address 11111101 with mask bit 0111 (from port 0) during cycle 83 (415ns - 420ns)
*	Reading 11001010110110110100111110010111 from address 00000001 (from port 1) during cycle 83 (415ns - 420ns)
*	Reading 00100011111010111111111001010011 from address 11111100 (from port 1) during cycle 84 (420ns - 425ns)
*	Writing (partial) 01010001000110001010110101011101  to  address 11111110 with mask bit 1110 (from port 0) during cycle 85 (425ns - 430ns)
*	Writing 11111101011101111011110011010101  to  address 00000000 (from port 0) during cycle 86 (430ns - 435ns)
*	Writing (partial) 01011100110000100111001000001110  to  address 00000011 with mask bit 0001 (from port 0) during cycle 87 (435ns - 440ns)
*	Reading 11110000000001110000111111010001 from address 11111101 (from port 1) during cycle 87 (435ns - 440ns)
*	Writing (partial) 01110001111110111001000000000010  to  address 00000010 with mask bit 0101 (from port 0) during cycle 88 (440ns - 445ns)
*	Reading 11110000000001110000111111010001 from address 11111101 (from port 1) during cycle 89 (445ns - 450ns)
*	Writing 00110110001100011000010001111101  to  address 00000001 (from port 0) during cycle 90 (450ns - 455ns)
*	Writing (partial) 01001011010011100000001010010101  to  address 11111101 with mask bit 1011 (from port 0) during cycle 91 (455ns - 460ns)
*	Writing 10110000100010110100100111110101  to  address 00000000 (from port 0) during cycle 94 (470ns - 475ns)
*	Reading 01111001011001010010000111110110 from address 11111011 (from port 1) during cycle 94 (470ns - 475ns)
*	Writing (partial) 10001000101010110101111101011101  to  address 00000000 with mask bit 0011 (from port 0) during cycle 96 (480ns - 485ns)
*	Reading 00110110001100011000010001111101 from address 00000001 (from port 1) during cycle 96 (480ns - 485ns)
*	Writing 10111101110100011001011111000011  to  address 00000001 (from port 0) during cycle 98 (490ns - 495ns)
*	Writing 11000000110110000100001110010010  to  address 00000011 (from port 0) during cycle 99 (495ns - 500ns)
*	Writing 10001011000011101100100011010110  to  address 00000001 (from port 0) during cycle 100 (500ns - 505ns)
*	Reading 00100011111010111111111001010011 from address 11111100 (from port 1) during cycle 100 (500ns - 505ns)
*	Reading 00100011111010111111111001010011 from address 11111100 (from port 1) during cycle 101 (505ns - 510ns)
*	Writing (partial) 10100011001000101011010001000010  to  address 00000011 with mask bit 1011 (from port 0) during cycle 104 (520ns - 525ns)
*	Writing 00101010001010010010100000001000  to  address 11111011 (from port 0) during cycle 108 (540ns - 545ns)
*	Reading 00100011111010111111111001010011 from address 11111100 (from port 1) during cycle 108 (540ns - 545ns)
*	Writing (partial) 01000011110010001100000110000100  to  address 00000001 with mask bit 0100 (from port 0) during cycle 109 (545ns - 550ns)
*	Writing 00110110100101110111011000101011  to  address 00000010 (from port 0) during cycle 111 (555ns - 560ns)
*	Reading 01001011000001110000001010010101 from address 11111101 (from port 1) during cycle 111 (555ns - 560ns)
*	Writing (partial) 11100001000011101101100101100110  to  address 00000011 with mask bit 1110 (from port 0) during cycle 113 (565ns - 570ns)
*	Writing (partial) 00010111100100100010101001101111  to  address 00000011 with mask bit 0101 (from port 0) during cycle 114 (570ns - 575ns)
*	Writing 11100010011101110010111000010110  to  address 00000001 (from port 0) during cycle 115 (575ns - 580ns)
*	Reading 01001011000001110000001010010101 from address 11111101 (from port 1) during cycle 115 (575ns - 580ns)
*	Writing 00000110011111010100100110001001  to  address 00000001 (from port 0) during cycle 116 (580ns - 585ns)
*	Reading 01010001000110001010110110100001 from address 11111110 (from port 1) during cycle 116 (580ns - 585ns)
*	Writing 10110011100001101000101011111100  to  address 11111100 (from port 0) during cycle 117 (585ns - 590ns)
*	Reading 00000110011111010100100110001001 from address 00000001 (from port 1) during cycle 118 (590ns - 595ns)
*	Writing (partial) 11110110100100100011001100100110  to  address 11111110 with mask bit 1001 (from port 0) during cycle 119 (595ns - 600ns)
*	Writing (partial) 11101111110101000110110101011010  to  address 11111110 with mask bit 0100 (from port 0) during cycle 120 (600ns - 605ns)
*	Reading 00110110100101110111011000101011 from address 00000010 (from port 1) during cycle 120 (600ns - 605ns)
*	Writing 01000011110000100101011010100110  to  address 11111110 (from port 0) during cycle 122 (610ns - 615ns)
*	Reading 00000110011111010100100110001001 from address 00000001 (from port 1) during cycle 122 (610ns - 615ns)
*	Writing 11000110011010001000111101001001  to  address 00000010 (from port 0) during cycle 123 (615ns - 620ns)
*	Writing 10010110000001000100100101101011  to  address 11111110 (from port 0) during cycle 124 (620ns - 625ns)
*	Writing 01010011100000010011000111011111  to  address 11111011 (from port 0) during cycle 126 (630ns - 635ns)
*	Writing (partial) 00110111001010111000100010010100  to  address 00000000 with mask bit 1010 (from port 0) during cycle 127 (635ns - 640ns)
*	Reading 01001011000001110000001010010101 from address 11111101 (from port 1) during cycle 127 (635ns - 640ns)
*	Writing (partial) 01110011110111100111011000111100  to  address 00000011 with mask bit 0111 (from port 0) during cycle 128 (640ns - 645ns)
*	Reading 00110111100010111000100001011101 from address 00000000 (from port 1) during cycle 128 (640ns - 645ns)
*	Reading 10010110000001000100100101101011 from address 11111110 (from port 1) during cycle 129 (645ns - 650ns)
*	Writing (partial) 10100001101110100110101010000110  to  address 00000001 with mask bit 1000 (from port 0) during cycle 130 (650ns - 655ns)
*	Reading 00110111100010111000100001011101 from address 00000000 (from port 1) during cycle 130 (650ns - 655ns)
*	Writing (partial) 10111001000111100011011001100111  to  address 00000000 with mask bit 0100 (from port 0) during cycle 131 (655ns - 660ns)
*	Writing (partial) 11011111110011111100011101101110  to  address 11111110 with mask bit 0011 (from port 0) during cycle 132 (660ns - 665ns)
*	Reading 01001011000001110000001010010101 from address 11111101 (from port 1) during cycle 132 (660ns - 665ns)
*	Writing (partial) 01100100110011010000111101100010  to  address 11111011 with mask bit 1100 (from port 0) during cycle 133 (665ns - 670ns)
*	Reading 00110111000111101000100001011101 from address 00000000 (from port 1) during cycle 133 (665ns - 670ns)
*	Writing 01100100011110001001000011111011  to  address 11111100 (from port 0) during cycle 134 (670ns - 675ns)
*	Reading 01100100110011010011000111011111 from address 11111011 (from port 1) during cycle 134 (670ns - 675ns)
*	Reading 01100100011110001001000011111011 from address 11111100 (from port 1) during cycle 135 (675ns - 680ns)
*	Writing 00101101110101110111010010110110  to  address 11111101 (from port 0) during cycle 136 (680ns - 685ns)
*	Reading 00110111000111101000100001011101 from address 00000000 (from port 1) during cycle 136 (680ns - 685ns)
*	Writing (partial) 00001001110000000111100100110010  to  address 00000001 with mask bit 1110 (from port 0) during cycle 139 (695ns - 700ns)
*	Reading 11000110011010001000111101001001 from address 00000010 (from port 1) during cycle 139 (695ns - 700ns)
*	Writing (partial) 11101101001011101011100100011101  to  address 11111101 with mask bit 0100 (from port 0) during cycle 140 (700ns - 705ns)
*	Writing 01011001011110111101000001010101  to  address 00000010 (from port 0) during cycle 141 (705ns - 710ns)
*	Reading 00101101001011100111010010110110 from address 11111101 (from port 1) during cycle 141 (705ns - 710ns)
*	Reading 10010110000001001100011101101110 from address 11111110 (from port 1) during cycle 142 (710ns - 715ns)
*	Writing (partial) 11110111010101100111000011101111  to  address 00000001 with mask bit 0101 (from port 0) during cycle 143 (715ns - 720ns)
*	Reading 01100100110011010011000111011111 from address 11111011 (from port 1) during cycle 144 (720ns - 725ns)
*	Writing (partial) 11111101110101111101011101110100  to  address 11111011 with mask bit 1010 (from port 0) during cycle 145 (725ns - 730ns)
*	Writing (partial) 00111011010101011110111100101001  to  address 11111100 with mask bit 0111 (from port 0) during cycle 146 (730ns - 735ns)
*	Reading 01011001011110111101000001010101 from address 00000010 (from port 1) during cycle 146 (730ns - 735ns)
*	Writing 11111011010100000110110111101110  to  address 00000001 (from port 0) during cycle 147 (735ns - 740ns)
*	Reading 11111101110011011101011111011111 from address 11111011 (from port 1) during cycle 147 (735ns - 740ns)
*	Writing (partial) 01101110110101001110000111110101  to  address 00000010 with mask bit 1110 (from port 0) during cycle 148 (740ns - 745ns)
*	Reading 00101101001011100111010010110110 from address 11111101 (from port 1) during cycle 148 (740ns - 745ns)
*	Writing (partial) 01101100101110001010010000010111  to  address 00000001 with mask bit 0010 (from port 0) during cycle 149 (745ns - 750ns)
*	Writing (partial) 00011010010001101010100000000100  to  address 00000011 with mask bit 1010 (from port 0) during cycle 150 (750ns - 755ns)
*	Writing (partial) 10010011101010100100111001010001  to  address 11111110 with mask bit 1101 (from port 0) during cycle 151 (755ns - 760ns)
*	Writing (partial) 10001110010101100011110101000110  to  address 00000000 with mask bit 1101 (from port 0) during cycle 152 (760ns - 765ns)
*	Reading 01101110110101001110000101010101 from address 00000010 (from port 1) during cycle 152 (760ns - 765ns)
*	Writing 00100011010001110001110000001100  to  address 11111101 (from port 0) during cycle 153 (765ns - 770ns)
*	Reading 11111101110011011101011111011111 from address 11111011 (from port 1) during cycle 153 (765ns - 770ns)
*	Writing (partial) 11110110001000111110011111111110  to  address 00000000 with mask bit 0111 (from port 0) during cycle 154 (770ns - 775ns)
*	Writing 01101001100111111111101111001111  to  address 11111100 (from port 0) during cycle 155 (775ns - 780ns)
*	Writing (partial) 10001000101011000010000100110111  to  address 11111011 with mask bit 1000 (from port 0) during cycle 156 (780ns - 785ns)
*	Reading 01101001100111111111101111001111 from address 11111100 (from port 1) during cycle 156 (780ns - 785ns)
*	Writing (partial) 00110000100101011110101010110100  to  address 11111100 with mask bit 0111 (from port 0) during cycle 157 (785ns - 790ns)
*	Reading 00100011010001110001110000001100 from address 11111101 (from port 1) during cycle 157 (785ns - 790ns)
*	Reading 01101110110101001110000101010101 from address 00000010 (from port 1) during cycle 158 (790ns - 795ns)
*	Writing (partial) 11111001011001011000000011010011  to  address 11111110 with mask bit 1000 (from port 0) during cycle 159 (795ns - 800ns)
*	Writing (partial) 00011011001010111011010010011100  to  address 00000011 with mask bit 1000 (from port 0) during cycle 160 (800ns - 805ns)
*	Reading 10001000110011011101011111011111 from address 11111011 (from port 1) during cycle 160 (800ns - 805ns)
*	Reading 10001110001000111110011111111110 from address 00000000 (from port 1) during cycle 161 (805ns - 810ns)
*	Reading 10001110001000111110011111111110 from address 00000000 (from port 1) during cycle 162 (810ns - 815ns)
*	Writing 10011111001110101001001110010101  to  address 00000000 (from port 0) during cycle 163 (815ns - 820ns)
*	Writing 00010010010110100011100100011110  to  address 00000000 (from port 0) during cycle 164 (820ns - 825ns)
*	Writing 11010111111101110100111110010010  to  address 11111110 (from port 0) during cycle 165 (825ns - 830ns)
*	Reading 11111011010100001010010011101110 from address 00000001 (from port 1) during cycle 165 (825ns - 830ns)
*	Writing 00000001101001100000000000000010  to  address 11111100 (from port 0) during cycle 166 (830ns - 835ns)
*	Writing (partial) 00101100001101111111110110100110  to  address 00000000 with mask bit 0100 (from port 0) during cycle 168 (840ns - 845ns)
*	Reading 10001000110011011101011111011111 from address 11111011 (from port 1) during cycle 168 (840ns - 845ns)
*	Writing (partial) 11111110101011001101000111100101  to  address 11111100 with mask bit 1011 (from port 0) during cycle 169 (845ns - 850ns)
*	Writing (partial) 01110000101100100111111011011100  to  address 00000001 with mask bit 1001 (from port 0) during cycle 170 (850ns - 855ns)
*	Writing 00111001110101011011101111100010  to  address 11111101 (from port 0) during cycle 171 (855ns - 860ns)
*	Writing 10000100010100011001001110111010  to  address 11111101 (from port 0) during cycle 172 (860ns - 865ns)
*	Writing (partial) 00010011000011101011101111011001  to  address 11111101 with mask bit 0111 (from port 0) during cycle 173 (865ns - 870ns)
*	Writing (partial) 00101011110101010110011100011000  to  address 11111101 with mask bit 1100 (from port 0) during cycle 174 (870ns - 875ns)
*	Reading 00010010001101110011100100011110 from address 00000000 (from port 1) during cycle 174 (870ns - 875ns)
*	Writing 11010011000010001100110011111111  to  address 00000000 (from port 0) during cycle 175 (875ns - 880ns)
*	Reading 00101011110101011011101111011001 from address 11111101 (from port 1) during cycle 175 (875ns - 880ns)
*	Writing 11011100110000100110110101111001  to  address 00000010 (from port 0) during cycle 176 (880ns - 885ns)
*	Reading 10001000110011011101011111011111 from address 11111011 (from port 1) during cycle 178 (890ns - 895ns)
*	Writing (partial) 10110110001000011011111001010101  to  address 11111110 with mask bit 1101 (from port 0) during cycle 180 (900ns - 905ns)
*	Reading 10001000110011011101011111011111 from address 11111011 (from port 1) during cycle 180 (900ns - 905ns)
*	Writing (partial) 11100010100100100001111000011010  to  address 11111101 with mask bit 1110 (from port 0) during cycle 181 (905ns - 910ns)
*	Writing (partial) 11010011010001010110101001110110  to  address 00000011 with mask bit 1010 (from port 0) during cycle 182 (910ns - 915ns)
*	Reading 10110110001000010100111101010101 from address 11111110 (from port 1) during cycle 183 (915ns - 920ns)
*	Writing (partial) 10001011110011000111101011110011  to  address 11111101 with mask bit 1001 (from port 0) during cycle 184 (920ns - 925ns)
*	Reading 10001000110011011101011111011111 from address 11111011 (from port 1) during cycle 184 (920ns - 925ns)
*	Writing (partial) 10001001001001001100001111010101  to  address 11111100 with mask bit 0111 (from port 0) during cycle 185 (925ns - 930ns)
*	Reading 01110000010100001010010011011100 from address 00000001 (from port 1) during cycle 185 (925ns - 930ns)
*	Writing 01101001111000011000100010010111  to  address 11111101 (from port 0) during cycle 186 (930ns - 935ns)
*	Writing 00000101011100001101111110011000  to  address 11111011 (from port 0) during cycle 187 (935ns - 940ns)
*	Writing (partial) 11011101001000100011011000011011  to  address 00000011 with mask bit 0110 (from port 0) during cycle 188 (940ns - 945ns)
*	Writing (partial) 11001001001011110111110110011000  to  address 00000000 with mask bit 1100 (from port 0) during cycle 189 (945ns - 950ns)
*	Writing 00111001101011100111001101111100  to  address 00000011 (from port 0) during cycle 191 (955ns - 960ns)
*	Reading 11111110001001001100001111010101 from address 11111100 (from port 1) during cycle 191 (955ns - 960ns)
*	Writing 00100011001010000111100101000101  to  address 11111110 (from port 0) during cycle 192 (960ns - 965ns)
*	Writing 10010010010111100100110011100111  to  address 11111101 (from port 0) during cycle 193 (965ns - 970ns)
*	Reading 00111001101011100111001101111100 from address 00000011 (from port 1) during cycle 193 (965ns - 970ns)
*	Writing (partial) 01001110010011110111010000001000  to  address 11111011 with mask bit 0111 (from port 0) during cycle 194 (970ns - 975ns)
*	Writing 00011000000100001011000010011001  to  address 00000011 (from port 0) during cycle 196 (980ns - 985ns)
*	Writing (partial) 00010011101111000010100011101111  to  address 00000010 with mask bit 0110 (from port 0) during cycle 197 (985ns - 990ns)
*	Reading 00100011001010000111100101000101 from address 11111110 (from port 1) during cycle 197 (985ns - 990ns)
*	Writing 11100010001100000100111101000010  to  address 00000001 (from port 0) during cycle 198 (990ns - 995ns)
*	Writing 00000001110000101000100111111011  to  address 11111101 (from port 0) during cycle 199 (995ns - 1000ns)
*	Writing 01010011100110010111101000111101  to  address 00000010 (from port 0) during cycle 201 (1005ns - 1010ns)
*	Writing 01110100100110010110110011111101  to  address 11111100 (from port 0) during cycle 202 (1010ns - 1015ns)
*	Reading 00100011001010000111100101000101 from address 11111110 (from port 1) during cycle 203 (1015ns - 1020ns)
*	Writing 11011001011111011001111101011010  to  address 11111100 (from port 0) during cycle 204 (1020ns - 1025ns)
*	Reading 01010011100110010111101000111101 from address 00000010 (from port 1) during cycle 204 (1020ns - 1025ns)
*	Idle during cycle 205 (1025ns - 1030ns)

* Generation of data and address signals
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 0), (55, 1), (60, 0), (65, 1), (70, 1), (75, 1), (80, 1), (85, 0), (90, 0), (95, 0), (100, 0), (105, 1), (110, 1), (115, 0), (120, 1), (125, 1), (130, 0), (135, 0), (140, 0), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 0), (190, 1), (195, 1), (200, 0), (205, 0), (210, 1), (215, 1), (220, 0), (225, 1), (230, 0), (235, 0), (240, 1), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 0), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 0), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 0), (390, 1), (395, 0), (400, 1), (405, 1), (410, 0), (415, 1), (420, 1), (425, 1), (430, 1), (435, 0), (440, 0), (445, 0), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 1), (560, 1), (565, 0), (570, 1), (575, 0), (580, 1), (585, 0), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 1), (620, 1), (625, 1), (630, 1), (635, 0), (640, 0), (645, 0), (650, 0), (655, 1), (660, 0), (665, 0), (670, 1), (675, 1), (680, 0), (685, 0), (690, 0), (695, 0), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 0), (730, 1), (735, 0), (740, 1), (745, 1), (750, 0), (755, 1), (760, 0), (765, 0), (770, 0), (775, 1), (780, 1), (785, 0), (790, 0), (795, 1), (800, 0), (805, 0), (810, 0), (815, 1), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 1), (850, 0), (855, 0), (860, 0), (865, 1), (870, 0), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 0), (910, 0), (915, 0), (920, 1), (925, 1), (930, 1), (935, 0), (940, 1), (945, 0), (950, 0), (955, 0), (960, 1), (965, 1), (970, 0), (975, 0), (980, 1), (985, 1), (990, 0), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Vdin0_0  din0_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 1.1v 29.745n 1.1v 29.755n 1.1v 34.745n 1.1v 34.755n 1.1v 39.745n 1.1v 39.755n 1.1v 44.745n 1.1v 44.755n 1.1v 49.745n 1.1v 49.755n 0.0v 54.745n 0.0v 54.755n 1.1v 59.745n 1.1v 59.755n 0.0v 64.745n 0.0v 64.755n 1.1v 69.745n 1.1v 69.755n 1.1v 74.745n 1.1v 74.755n 1.1v 79.745n 1.1v 79.755n 1.1v 84.745n 1.1v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 1.1v 109.745n 1.1v 109.755n 1.1v 114.745n 1.1v 114.755n 0.0v 119.745n 0.0v 119.755n 1.1v 124.745n 1.1v 124.755n 1.1v 129.745n 1.1v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.1v 154.745n 1.1v 154.755n 1.1v 159.745n 1.1v 159.755n 1.1v 164.745n 1.1v 164.755n 1.1v 169.745n 1.1v 169.755n 1.1v 174.745n 1.1v 174.755n 1.1v 179.745n 1.1v 179.755n 1.1v 184.745n 1.1v 184.755n 0.0v 189.745n 0.0v 189.755n 1.1v 194.745n 1.1v 194.755n 1.1v 199.745n 1.1v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 1.1v 214.745n 1.1v 214.755n 1.1v 219.745n 1.1v 219.755n 0.0v 224.745n 0.0v 224.755n 1.1v 229.745n 1.1v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 1.1v 244.745n 1.1v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.1v 274.745n 1.1v 274.755n 1.1v 279.745n 1.1v 279.755n 1.1v 284.745n 1.1v 284.755n 1.1v 289.745n 1.1v 289.755n 1.1v 294.745n 1.1v 294.755n 0.0v 299.745n 0.0v 299.755n 1.1v 304.745n 1.1v 304.755n 1.1v 309.745n 1.1v 309.755n 1.1v 314.745n 1.1v 314.755n 1.1v 319.745n 1.1v 319.755n 1.1v 324.745n 1.1v 324.755n 1.1v 329.745n 1.1v 329.755n 1.1v 334.745n 1.1v 334.755n 1.1v 339.745n 1.1v 339.755n 1.1v 344.745n 1.1v 344.755n 1.1v 349.745n 1.1v 349.755n 0.0v 354.745n 0.0v 354.755n 1.1v 359.745n 1.1v 359.755n 1.1v 364.745n 1.1v 364.755n 1.1v 369.745n 1.1v 369.755n 1.1v 374.745n 1.1v 374.755n 1.1v 379.745n 1.1v 379.755n 1.1v 384.745n 1.1v 384.755n 0.0v 389.745n 0.0v 389.755n 1.1v 394.745n 1.1v 394.755n 0.0v 399.745n 0.0v 399.755n 1.1v 404.745n 1.1v 404.755n 1.1v 409.745n 1.1v 409.755n 0.0v 414.745n 0.0v 414.755n 1.1v 419.745n 1.1v 419.755n 1.1v 424.745n 1.1v 424.755n 1.1v 429.745n 1.1v 429.755n 1.1v 434.745n 1.1v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.1v 454.745n 1.1v 454.755n 1.1v 459.745n 1.1v 459.755n 1.1v 464.745n 1.1v 464.755n 1.1v 469.745n 1.1v 469.755n 1.1v 474.745n 1.1v 474.755n 1.1v 479.745n 1.1v 479.755n 1.1v 484.745n 1.1v 484.755n 1.1v 489.745n 1.1v 489.755n 1.1v 494.745n 1.1v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.1v 559.745n 1.1v 559.755n 1.1v 564.745n 1.1v 564.755n 0.0v 569.745n 0.0v 569.755n 1.1v 574.745n 1.1v 574.755n 0.0v 579.745n 0.0v 579.755n 1.1v 584.745n 1.1v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 1.1v 619.745n 1.1v 619.755n 1.1v 624.745n 1.1v 624.755n 1.1v 629.745n 1.1v 629.755n 1.1v 634.745n 1.1v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.1v 659.745n 1.1v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 1.1v 674.745n 1.1v 674.755n 1.1v 679.745n 1.1v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.1v 704.745n 1.1v 704.755n 1.1v 709.745n 1.1v 709.755n 1.1v 714.745n 1.1v 714.755n 1.1v 719.745n 1.1v 719.755n 1.1v 724.745n 1.1v 724.755n 0.0v 729.745n 0.0v 729.755n 1.1v 734.745n 1.1v 734.755n 0.0v 739.745n 0.0v 739.755n 1.1v 744.745n 1.1v 744.755n 1.1v 749.745n 1.1v 749.755n 0.0v 754.745n 0.0v 754.755n 1.1v 759.745n 1.1v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.1v 779.745n 1.1v 779.755n 1.1v 784.745n 1.1v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.1v 799.745n 1.1v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 1.1v 819.745n 1.1v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 1.1v 849.745n 1.1v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.1v 869.745n 1.1v 869.755n 0.0v 874.745n 0.0v 874.755n 1.1v 879.745n 1.1v 879.755n 1.1v 884.745n 1.1v 884.755n 1.1v 889.745n 1.1v 889.755n 1.1v 894.745n 1.1v 894.755n 1.1v 899.745n 1.1v 899.755n 1.1v 904.745n 1.1v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 1.1v 924.745n 1.1v 924.755n 1.1v 929.745n 1.1v 929.755n 1.1v 934.745n 1.1v 934.755n 0.0v 939.745n 0.0v 939.755n 1.1v 944.745n 1.1v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 1.1v 964.745n 1.1v 964.755n 1.1v 969.745n 1.1v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.1v 984.745n 1.1v 984.755n 1.1v 989.745n 1.1v 989.755n 0.0v 994.745n 0.0v 994.755n 1.1v 999.745n 1.1v 999.755n 1.1v 1004.745n 1.1v 1004.755n 1.1v 1009.745n 1.1v 1009.755n 1.1v 1014.745n 1.1v 1014.755n 1.1v 1019.745n 1.1v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 0), (60, 1), (65, 0), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 1), (140, 0), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 0), (175, 0), (180, 0), (185, 0), (190, 1), (195, 0), (200, 1), (205, 1), (210, 0), (215, 0), (220, 0), (225, 1), (230, 0), (235, 0), (240, 1), (245, 1), (250, 0), (255, 0), (260, 0), (265, 1), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 0), (335, 0), (340, 0), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 0), (385, 1), (390, 1), (395, 0), (400, 1), (405, 0), (410, 1), (415, 0), (420, 0), (425, 0), (430, 0), (435, 1), (440, 1), (445, 1), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 0), (545, 0), (550, 0), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 0), (585, 0), (590, 0), (595, 1), (600, 1), (605, 1), (610, 1), (615, 0), (620, 1), (625, 1), (630, 1), (635, 0), (640, 0), (645, 0), (650, 1), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 0), (705, 0), (710, 0), (715, 1), (720, 1), (725, 0), (730, 0), (735, 1), (740, 0), (745, 1), (750, 0), (755, 0), (760, 1), (765, 0), (770, 1), (775, 1), (780, 1), (785, 0), (790, 0), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 0), (850, 0), (855, 1), (860, 1), (865, 0), (870, 0), (875, 1), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 1), (910, 1), (915, 1), (920, 1), (925, 0), (930, 1), (935, 0), (940, 1), (945, 0), (950, 0), (955, 0), (960, 0), (965, 1), (970, 0), (975, 0), (980, 0), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 0), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Vdin0_1  din0_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.1v 19.745n 1.1v 19.755n 1.1v 24.745n 1.1v 24.755n 1.1v 29.745n 1.1v 29.755n 1.1v 34.745n 1.1v 34.755n 1.1v 39.745n 1.1v 39.755n 1.1v 44.745n 1.1v 44.755n 1.1v 49.745n 1.1v 49.755n 1.1v 54.745n 1.1v 54.755n 0.0v 59.745n 0.0v 59.755n 1.1v 64.745n 1.1v 64.755n 0.0v 69.745n 0.0v 69.755n 1.1v 74.745n 1.1v 74.755n 1.1v 79.745n 1.1v 79.755n 1.1v 84.745n 1.1v 84.755n 1.1v 89.745n 1.1v 89.755n 1.1v 94.745n 1.1v 94.755n 1.1v 99.745n 1.1v 99.755n 1.1v 104.745n 1.1v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.1v 139.745n 1.1v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.1v 154.745n 1.1v 154.755n 1.1v 159.745n 1.1v 159.755n 1.1v 164.745n 1.1v 164.755n 1.1v 169.745n 1.1v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.1v 194.745n 1.1v 194.755n 0.0v 199.745n 0.0v 199.755n 1.1v 204.745n 1.1v 204.755n 1.1v 209.745n 1.1v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 1.1v 229.745n 1.1v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 1.1v 244.745n 1.1v 244.755n 1.1v 249.745n 1.1v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 1.1v 269.745n 1.1v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 1.1v 299.745n 1.1v 299.755n 1.1v 304.745n 1.1v 304.755n 1.1v 309.745n 1.1v 309.755n 1.1v 314.745n 1.1v 314.755n 1.1v 319.745n 1.1v 319.755n 1.1v 324.745n 1.1v 324.755n 1.1v 329.745n 1.1v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 1.1v 349.745n 1.1v 349.755n 1.1v 354.745n 1.1v 354.755n 1.1v 359.745n 1.1v 359.755n 1.1v 364.745n 1.1v 364.755n 1.1v 369.745n 1.1v 369.755n 1.1v 374.745n 1.1v 374.755n 1.1v 379.745n 1.1v 379.755n 0.0v 384.745n 0.0v 384.755n 1.1v 389.745n 1.1v 389.755n 1.1v 394.745n 1.1v 394.755n 0.0v 399.745n 0.0v 399.755n 1.1v 404.745n 1.1v 404.755n 0.0v 409.745n 0.0v 409.755n 1.1v 414.745n 1.1v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 1.1v 439.745n 1.1v 439.755n 1.1v 444.745n 1.1v 444.755n 1.1v 449.745n 1.1v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.1v 494.745n 1.1v 494.755n 1.1v 499.745n 1.1v 499.755n 1.1v 504.745n 1.1v 504.755n 1.1v 509.745n 1.1v 509.755n 1.1v 514.745n 1.1v 514.755n 1.1v 519.745n 1.1v 519.755n 1.1v 524.745n 1.1v 524.755n 1.1v 529.745n 1.1v 529.755n 1.1v 534.745n 1.1v 534.755n 1.1v 539.745n 1.1v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.1v 559.745n 1.1v 559.755n 1.1v 564.745n 1.1v 564.755n 1.1v 569.745n 1.1v 569.755n 1.1v 574.745n 1.1v 574.755n 1.1v 579.745n 1.1v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 1.1v 599.745n 1.1v 599.755n 1.1v 604.745n 1.1v 604.755n 1.1v 609.745n 1.1v 609.755n 1.1v 614.745n 1.1v 614.755n 0.0v 619.745n 0.0v 619.755n 1.1v 624.745n 1.1v 624.755n 1.1v 629.745n 1.1v 629.755n 1.1v 634.745n 1.1v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 1.1v 654.745n 1.1v 654.755n 1.1v 659.745n 1.1v 659.755n 1.1v 664.745n 1.1v 664.755n 1.1v 669.745n 1.1v 669.755n 1.1v 674.745n 1.1v 674.755n 1.1v 679.745n 1.1v 679.755n 1.1v 684.745n 1.1v 684.755n 1.1v 689.745n 1.1v 689.755n 1.1v 694.745n 1.1v 694.755n 1.1v 699.745n 1.1v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 1.1v 719.745n 1.1v 719.755n 1.1v 724.745n 1.1v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 1.1v 739.745n 1.1v 739.755n 0.0v 744.745n 0.0v 744.755n 1.1v 749.745n 1.1v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 1.1v 764.745n 1.1v 764.755n 0.0v 769.745n 0.0v 769.755n 1.1v 774.745n 1.1v 774.755n 1.1v 779.745n 1.1v 779.755n 1.1v 784.745n 1.1v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.1v 799.745n 1.1v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 1.1v 824.745n 1.1v 824.755n 1.1v 829.745n 1.1v 829.755n 1.1v 834.745n 1.1v 834.755n 1.1v 839.745n 1.1v 839.755n 1.1v 844.745n 1.1v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 1.1v 859.745n 1.1v 859.755n 1.1v 864.745n 1.1v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 1.1v 879.745n 1.1v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 1.1v 909.745n 1.1v 909.755n 1.1v 914.745n 1.1v 914.755n 1.1v 919.745n 1.1v 919.755n 1.1v 924.745n 1.1v 924.755n 0.0v 929.745n 0.0v 929.755n 1.1v 934.745n 1.1v 934.755n 0.0v 939.745n 0.0v 939.755n 1.1v 944.745n 1.1v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 1.1v 969.745n 1.1v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.1v 989.745n 1.1v 989.755n 1.1v 994.745n 1.1v 994.755n 1.1v 999.745n 1.1v 999.755n 1.1v 1004.745n 1.1v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.1v 1024.745n 1.1v 1024.755n 1.1v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 0), (50, 1), (55, 0), (60, 0), (65, 0), (70, 1), (75, 0), (80, 0), (85, 0), (90, 0), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 0), (125, 0), (130, 1), (135, 1), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 1), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 1), (235, 1), (240, 1), (245, 0), (250, 1), (255, 1), (260, 0), (265, 1), (270, 0), (275, 0), (280, 1), (285, 1), (290, 1), (295, 1), (300, 0), (305, 0), (310, 0), (315, 1), (320, 1), (325, 1), (330, 0), (335, 0), (340, 1), (345, 0), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 0), (385, 1), (390, 0), (395, 0), (400, 0), (405, 0), (410, 1), (415, 0), (420, 0), (425, 1), (430, 1), (435, 1), (440, 0), (445, 0), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 0), (495, 0), (500, 1), (505, 1), (510, 1), (515, 1), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 1), (550, 1), (555, 0), (560, 0), (565, 1), (570, 1), (575, 1), (580, 0), (585, 1), (590, 1), (595, 1), (600, 0), (605, 0), (610, 1), (615, 0), (620, 0), (625, 0), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 1), (665, 0), (670, 0), (675, 0), (680, 1), (685, 1), (690, 1), (695, 0), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 0), (735, 1), (740, 1), (745, 1), (750, 1), (755, 0), (760, 1), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 0), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 0), (830, 0), (835, 0), (840, 1), (845, 1), (850, 1), (855, 0), (860, 0), (865, 0), (870, 0), (875, 1), (880, 0), (885, 0), (890, 0), (895, 0), (900, 1), (905, 0), (910, 1), (915, 1), (920, 0), (925, 1), (930, 1), (935, 0), (940, 0), (945, 0), (950, 0), (955, 1), (960, 1), (965, 1), (970, 0), (975, 0), (980, 0), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Vdin0_2  din0_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.1v 9.745n 1.1v 9.755n 0.0v 14.745n 0.0v 14.755n 1.1v 19.745n 1.1v 19.755n 1.1v 24.745n 1.1v 24.755n 1.1v 29.745n 1.1v 29.755n 1.1v 34.745n 1.1v 34.755n 1.1v 39.745n 1.1v 39.755n 1.1v 44.745n 1.1v 44.755n 0.0v 49.745n 0.0v 49.755n 1.1v 54.745n 1.1v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 1.1v 74.745n 1.1v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.1v 99.745n 1.1v 99.755n 1.1v 104.745n 1.1v 104.755n 1.1v 109.745n 1.1v 109.755n 1.1v 114.745n 1.1v 114.755n 1.1v 119.745n 1.1v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 1.1v 134.745n 1.1v 134.755n 1.1v 139.745n 1.1v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 1.1v 199.745n 1.1v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 1.1v 234.745n 1.1v 234.755n 1.1v 239.745n 1.1v 239.755n 1.1v 244.745n 1.1v 244.755n 0.0v 249.745n 0.0v 249.755n 1.1v 254.745n 1.1v 254.755n 1.1v 259.745n 1.1v 259.755n 0.0v 264.745n 0.0v 264.755n 1.1v 269.745n 1.1v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 1.1v 284.745n 1.1v 284.755n 1.1v 289.745n 1.1v 289.755n 1.1v 294.745n 1.1v 294.755n 1.1v 299.745n 1.1v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.1v 319.745n 1.1v 319.755n 1.1v 324.745n 1.1v 324.755n 1.1v 329.745n 1.1v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 1.1v 344.745n 1.1v 344.755n 0.0v 349.745n 0.0v 349.755n 1.1v 354.745n 1.1v 354.755n 1.1v 359.745n 1.1v 359.755n 1.1v 364.745n 1.1v 364.755n 1.1v 369.745n 1.1v 369.755n 1.1v 374.745n 1.1v 374.755n 1.1v 379.745n 1.1v 379.755n 0.0v 384.745n 0.0v 384.755n 1.1v 389.745n 1.1v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.1v 414.745n 1.1v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 1.1v 429.745n 1.1v 429.755n 1.1v 434.745n 1.1v 434.755n 1.1v 439.745n 1.1v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.1v 454.745n 1.1v 454.755n 1.1v 459.745n 1.1v 459.755n 1.1v 464.745n 1.1v 464.755n 1.1v 469.745n 1.1v 469.755n 1.1v 474.745n 1.1v 474.755n 1.1v 479.745n 1.1v 479.755n 1.1v 484.745n 1.1v 484.755n 1.1v 489.745n 1.1v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 1.1v 504.745n 1.1v 504.755n 1.1v 509.745n 1.1v 509.755n 1.1v 514.745n 1.1v 514.755n 1.1v 519.745n 1.1v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 1.1v 549.745n 1.1v 549.755n 1.1v 554.745n 1.1v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.1v 569.745n 1.1v 569.755n 1.1v 574.745n 1.1v 574.755n 1.1v 579.745n 1.1v 579.755n 0.0v 584.745n 0.0v 584.755n 1.1v 589.745n 1.1v 589.755n 1.1v 594.745n 1.1v 594.755n 1.1v 599.745n 1.1v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 1.1v 614.745n 1.1v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 1.1v 634.745n 1.1v 634.755n 1.1v 639.745n 1.1v 639.755n 1.1v 644.745n 1.1v 644.755n 1.1v 649.745n 1.1v 649.755n 1.1v 654.745n 1.1v 654.755n 1.1v 659.745n 1.1v 659.755n 1.1v 664.745n 1.1v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 1.1v 684.745n 1.1v 684.755n 1.1v 689.745n 1.1v 689.755n 1.1v 694.745n 1.1v 694.755n 0.0v 699.745n 0.0v 699.755n 1.1v 704.745n 1.1v 704.755n 1.1v 709.745n 1.1v 709.755n 1.1v 714.745n 1.1v 714.755n 1.1v 719.745n 1.1v 719.755n 1.1v 724.745n 1.1v 724.755n 1.1v 729.745n 1.1v 729.755n 0.0v 734.745n 0.0v 734.755n 1.1v 739.745n 1.1v 739.755n 1.1v 744.745n 1.1v 744.755n 1.1v 749.745n 1.1v 749.755n 1.1v 754.745n 1.1v 754.755n 0.0v 759.745n 0.0v 759.755n 1.1v 764.745n 1.1v 764.755n 1.1v 769.745n 1.1v 769.755n 1.1v 774.745n 1.1v 774.755n 1.1v 779.745n 1.1v 779.755n 1.1v 784.745n 1.1v 784.755n 1.1v 789.745n 1.1v 789.755n 1.1v 794.745n 1.1v 794.755n 0.0v 799.745n 0.0v 799.755n 1.1v 804.745n 1.1v 804.755n 1.1v 809.745n 1.1v 809.755n 1.1v 814.745n 1.1v 814.755n 1.1v 819.745n 1.1v 819.755n 1.1v 824.745n 1.1v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 1.1v 844.745n 1.1v 844.755n 1.1v 849.745n 1.1v 849.755n 1.1v 854.745n 1.1v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 1.1v 879.745n 1.1v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.1v 904.745n 1.1v 904.755n 0.0v 909.745n 0.0v 909.755n 1.1v 914.745n 1.1v 914.755n 1.1v 919.745n 1.1v 919.755n 0.0v 924.745n 0.0v 924.755n 1.1v 929.745n 1.1v 929.755n 1.1v 934.745n 1.1v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.1v 959.745n 1.1v 959.755n 1.1v 964.745n 1.1v 964.755n 1.1v 969.745n 1.1v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.1v 989.745n 1.1v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.1v 1009.745n 1.1v 1009.755n 1.1v 1014.745n 1.1v 1014.755n 1.1v 1019.745n 1.1v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 0), (20, 0), (25, 1), (30, 1), (35, 1), (40, 1), (45, 0), (50, 1), (55, 1), (60, 0), (65, 1), (70, 1), (75, 1), (80, 1), (85, 0), (90, 0), (95, 1), (100, 1), (105, 0), (110, 0), (115, 1), (120, 0), (125, 0), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 0), (175, 1), (180, 1), (185, 0), (190, 0), (195, 0), (200, 1), (205, 1), (210, 1), (215, 1), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 0), (335, 1), (340, 1), (345, 0), (350, 1), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 1), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 1), (430, 0), (435, 1), (440, 0), (445, 0), (450, 1), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 1), (485, 1), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 1), (545, 0), (550, 0), (555, 1), (560, 1), (565, 0), (570, 1), (575, 0), (580, 1), (585, 1), (590, 1), (595, 0), (600, 1), (605, 1), (610, 0), (615, 1), (620, 1), (625, 1), (630, 1), (635, 0), (640, 1), (645, 1), (650, 0), (655, 0), (660, 1), (665, 0), (670, 1), (675, 1), (680, 0), (685, 0), (690, 0), (695, 0), (700, 1), (705, 0), (710, 0), (715, 1), (720, 1), (725, 0), (730, 1), (735, 1), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 1), (770, 1), (775, 1), (780, 0), (785, 0), (790, 0), (795, 0), (800, 1), (805, 1), (810, 1), (815, 0), (820, 1), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 1), (855, 0), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 0), (905, 1), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 0), (965, 0), (970, 1), (975, 1), (980, 1), (985, 1), (990, 0), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_3  din0_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.1v 9.745n 1.1v 9.755n 1.1v 14.745n 1.1v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 1.1v 29.745n 1.1v 29.755n 1.1v 34.745n 1.1v 34.755n 1.1v 39.745n 1.1v 39.755n 1.1v 44.745n 1.1v 44.755n 0.0v 49.745n 0.0v 49.755n 1.1v 54.745n 1.1v 54.755n 1.1v 59.745n 1.1v 59.755n 0.0v 64.745n 0.0v 64.755n 1.1v 69.745n 1.1v 69.755n 1.1v 74.745n 1.1v 74.755n 1.1v 79.745n 1.1v 79.755n 1.1v 84.745n 1.1v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.1v 99.745n 1.1v 99.755n 1.1v 104.745n 1.1v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.1v 119.745n 1.1v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 1.1v 134.745n 1.1v 134.755n 1.1v 139.745n 1.1v 139.755n 1.1v 144.745n 1.1v 144.755n 1.1v 149.745n 1.1v 149.755n 1.1v 154.745n 1.1v 154.755n 1.1v 159.745n 1.1v 159.755n 1.1v 164.745n 1.1v 164.755n 1.1v 169.745n 1.1v 169.755n 0.0v 174.745n 0.0v 174.755n 1.1v 179.745n 1.1v 179.755n 1.1v 184.745n 1.1v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 1.1v 204.745n 1.1v 204.755n 1.1v 209.745n 1.1v 209.755n 1.1v 214.745n 1.1v 214.755n 1.1v 219.745n 1.1v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 1.1v 249.745n 1.1v 249.755n 1.1v 254.745n 1.1v 254.755n 1.1v 259.745n 1.1v 259.755n 1.1v 264.745n 1.1v 264.755n 1.1v 269.745n 1.1v 269.755n 1.1v 274.745n 1.1v 274.755n 1.1v 279.745n 1.1v 279.755n 1.1v 284.745n 1.1v 284.755n 1.1v 289.745n 1.1v 289.755n 1.1v 294.745n 1.1v 294.755n 1.1v 299.745n 1.1v 299.755n 1.1v 304.745n 1.1v 304.755n 1.1v 309.745n 1.1v 309.755n 1.1v 314.745n 1.1v 314.755n 1.1v 319.745n 1.1v 319.755n 1.1v 324.745n 1.1v 324.755n 1.1v 329.745n 1.1v 329.755n 0.0v 334.745n 0.0v 334.755n 1.1v 339.745n 1.1v 339.755n 1.1v 344.745n 1.1v 344.755n 0.0v 349.745n 0.0v 349.755n 1.1v 354.745n 1.1v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 1.1v 389.745n 1.1v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 1.1v 429.745n 1.1v 429.755n 0.0v 434.745n 0.0v 434.755n 1.1v 439.745n 1.1v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.1v 454.745n 1.1v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 1.1v 484.745n 1.1v 484.755n 1.1v 489.745n 1.1v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.1v 544.745n 1.1v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.1v 559.745n 1.1v 559.755n 1.1v 564.745n 1.1v 564.755n 0.0v 569.745n 0.0v 569.755n 1.1v 574.745n 1.1v 574.755n 0.0v 579.745n 0.0v 579.755n 1.1v 584.745n 1.1v 584.755n 1.1v 589.745n 1.1v 589.755n 1.1v 594.745n 1.1v 594.755n 0.0v 599.745n 0.0v 599.755n 1.1v 604.745n 1.1v 604.755n 1.1v 609.745n 1.1v 609.755n 0.0v 614.745n 0.0v 614.755n 1.1v 619.745n 1.1v 619.755n 1.1v 624.745n 1.1v 624.755n 1.1v 629.745n 1.1v 629.755n 1.1v 634.745n 1.1v 634.755n 0.0v 639.745n 0.0v 639.755n 1.1v 644.745n 1.1v 644.755n 1.1v 649.745n 1.1v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.1v 664.745n 1.1v 664.755n 0.0v 669.745n 0.0v 669.755n 1.1v 674.745n 1.1v 674.755n 1.1v 679.745n 1.1v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.1v 704.745n 1.1v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 1.1v 719.745n 1.1v 719.755n 1.1v 724.745n 1.1v 724.755n 0.0v 729.745n 0.0v 729.755n 1.1v 734.745n 1.1v 734.755n 1.1v 739.745n 1.1v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 1.1v 769.745n 1.1v 769.755n 1.1v 774.745n 1.1v 774.755n 1.1v 779.745n 1.1v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.1v 804.745n 1.1v 804.755n 1.1v 809.745n 1.1v 809.755n 1.1v 814.745n 1.1v 814.755n 0.0v 819.745n 0.0v 819.755n 1.1v 824.745n 1.1v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 1.1v 854.745n 1.1v 854.755n 0.0v 859.745n 0.0v 859.755n 1.1v 864.745n 1.1v 864.755n 1.1v 869.745n 1.1v 869.755n 1.1v 874.745n 1.1v 874.755n 1.1v 879.745n 1.1v 879.755n 1.1v 884.745n 1.1v 884.755n 1.1v 889.745n 1.1v 889.755n 1.1v 894.745n 1.1v 894.755n 1.1v 899.745n 1.1v 899.755n 0.0v 904.745n 0.0v 904.755n 1.1v 909.745n 1.1v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 1.1v 939.745n 1.1v 939.755n 1.1v 944.745n 1.1v 944.755n 1.1v 949.745n 1.1v 949.755n 1.1v 954.745n 1.1v 954.755n 1.1v 959.745n 1.1v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 1.1v 974.745n 1.1v 974.755n 1.1v 979.745n 1.1v 979.755n 1.1v 984.745n 1.1v 984.755n 1.1v 989.745n 1.1v 989.755n 0.0v 994.745n 0.0v 994.755n 1.1v 999.745n 1.1v 999.755n 1.1v 1004.745n 1.1v 1004.755n 1.1v 1009.745n 1.1v 1009.755n 1.1v 1014.745n 1.1v 1014.755n 1.1v 1019.745n 1.1v 1019.755n 1.1v 1024.745n 1.1v 1024.755n 1.1v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 1), (55, 0), (60, 1), (65, 0), (70, 1), (75, 1), (80, 1), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 1), (120, 0), (125, 0), (130, 1), (135, 0), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 0), (180, 1), (185, 0), (190, 1), (195, 0), (200, 1), (205, 1), (210, 1), (215, 1), (220, 0), (225, 1), (230, 1), (235, 1), (240, 0), (245, 0), (250, 0), (255, 1), (260, 1), (265, 0), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 0), (305, 0), (310, 0), (315, 1), (320, 1), (325, 1), (330, 1), (335, 0), (340, 0), (345, 0), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 0), (385, 1), (390, 1), (395, 0), (400, 0), (405, 0), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 0), (440, 0), (445, 0), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 0), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 1), (580, 0), (585, 1), (590, 1), (595, 0), (600, 1), (605, 1), (610, 0), (615, 0), (620, 0), (625, 0), (630, 1), (635, 1), (640, 1), (645, 1), (650, 0), (655, 0), (660, 0), (665, 0), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 0), (720, 0), (725, 1), (730, 0), (735, 0), (740, 1), (745, 1), (750, 0), (755, 1), (760, 0), (765, 0), (770, 1), (775, 0), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 0), (835, 0), (840, 0), (845, 0), (850, 1), (855, 0), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 0), (965, 0), (970, 0), (975, 0), (980, 1), (985, 0), (990, 0), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_4  din0_4  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.1v 14.745n 1.1v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 1.1v 54.745n 1.1v 54.755n 0.0v 59.745n 0.0v 59.755n 1.1v 64.745n 1.1v 64.755n 0.0v 69.745n 0.0v 69.755n 1.1v 74.745n 1.1v 74.755n 1.1v 79.745n 1.1v 79.755n 1.1v 84.745n 1.1v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.1v 119.745n 1.1v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 1.1v 134.745n 1.1v 134.755n 0.0v 139.745n 0.0v 139.755n 1.1v 144.745n 1.1v 144.755n 1.1v 149.745n 1.1v 149.755n 1.1v 154.745n 1.1v 154.755n 1.1v 159.745n 1.1v 159.755n 1.1v 164.745n 1.1v 164.755n 1.1v 169.745n 1.1v 169.755n 1.1v 174.745n 1.1v 174.755n 0.0v 179.745n 0.0v 179.755n 1.1v 184.745n 1.1v 184.755n 0.0v 189.745n 0.0v 189.755n 1.1v 194.745n 1.1v 194.755n 0.0v 199.745n 0.0v 199.755n 1.1v 204.745n 1.1v 204.755n 1.1v 209.745n 1.1v 209.755n 1.1v 214.745n 1.1v 214.755n 1.1v 219.745n 1.1v 219.755n 0.0v 224.745n 0.0v 224.755n 1.1v 229.745n 1.1v 229.755n 1.1v 234.745n 1.1v 234.755n 1.1v 239.745n 1.1v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 1.1v 259.745n 1.1v 259.755n 1.1v 264.745n 1.1v 264.755n 0.0v 269.745n 0.0v 269.755n 1.1v 274.745n 1.1v 274.755n 1.1v 279.745n 1.1v 279.755n 1.1v 284.745n 1.1v 284.755n 1.1v 289.745n 1.1v 289.755n 1.1v 294.745n 1.1v 294.755n 1.1v 299.745n 1.1v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.1v 319.745n 1.1v 319.755n 1.1v 324.745n 1.1v 324.755n 1.1v 329.745n 1.1v 329.755n 1.1v 334.745n 1.1v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 1.1v 354.745n 1.1v 354.755n 1.1v 359.745n 1.1v 359.755n 1.1v 364.745n 1.1v 364.755n 1.1v 369.745n 1.1v 369.755n 1.1v 374.745n 1.1v 374.755n 1.1v 379.745n 1.1v 379.755n 0.0v 384.745n 0.0v 384.755n 1.1v 389.745n 1.1v 389.755n 1.1v 394.745n 1.1v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.1v 414.745n 1.1v 414.755n 1.1v 419.745n 1.1v 419.755n 1.1v 424.745n 1.1v 424.755n 1.1v 429.745n 1.1v 429.755n 1.1v 434.745n 1.1v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.1v 454.745n 1.1v 454.755n 1.1v 459.745n 1.1v 459.755n 1.1v 464.745n 1.1v 464.755n 1.1v 469.745n 1.1v 469.755n 1.1v 474.745n 1.1v 474.755n 1.1v 479.745n 1.1v 479.755n 1.1v 484.745n 1.1v 484.755n 1.1v 489.745n 1.1v 489.755n 0.0v 494.745n 0.0v 494.755n 1.1v 499.745n 1.1v 499.755n 1.1v 504.745n 1.1v 504.755n 1.1v 509.745n 1.1v 509.755n 1.1v 514.745n 1.1v 514.755n 1.1v 519.745n 1.1v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.1v 579.745n 1.1v 579.755n 0.0v 584.745n 0.0v 584.755n 1.1v 589.745n 1.1v 589.755n 1.1v 594.745n 1.1v 594.755n 0.0v 599.745n 0.0v 599.755n 1.1v 604.745n 1.1v 604.755n 1.1v 609.745n 1.1v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 1.1v 634.745n 1.1v 634.755n 1.1v 639.745n 1.1v 639.755n 1.1v 644.745n 1.1v 644.755n 1.1v 649.745n 1.1v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 1.1v 674.745n 1.1v 674.755n 1.1v 679.745n 1.1v 679.755n 1.1v 684.745n 1.1v 684.755n 1.1v 689.745n 1.1v 689.755n 1.1v 694.745n 1.1v 694.755n 1.1v 699.745n 1.1v 699.755n 1.1v 704.745n 1.1v 704.755n 1.1v 709.745n 1.1v 709.755n 1.1v 714.745n 1.1v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.1v 729.745n 1.1v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 1.1v 744.745n 1.1v 744.755n 1.1v 749.745n 1.1v 749.755n 0.0v 754.745n 0.0v 754.755n 1.1v 759.745n 1.1v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.1v 774.745n 1.1v 774.755n 0.0v 779.745n 0.0v 779.755n 1.1v 784.745n 1.1v 784.755n 1.1v 789.745n 1.1v 789.755n 1.1v 794.745n 1.1v 794.755n 1.1v 799.745n 1.1v 799.755n 1.1v 804.745n 1.1v 804.755n 1.1v 809.745n 1.1v 809.755n 1.1v 814.745n 1.1v 814.755n 1.1v 819.745n 1.1v 819.755n 1.1v 824.745n 1.1v 824.755n 1.1v 829.745n 1.1v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 1.1v 854.745n 1.1v 854.755n 0.0v 859.745n 0.0v 859.755n 1.1v 864.745n 1.1v 864.755n 1.1v 869.745n 1.1v 869.755n 1.1v 874.745n 1.1v 874.755n 1.1v 879.745n 1.1v 879.755n 1.1v 884.745n 1.1v 884.755n 1.1v 889.745n 1.1v 889.755n 1.1v 894.745n 1.1v 894.755n 1.1v 899.745n 1.1v 899.755n 1.1v 904.745n 1.1v 904.755n 1.1v 909.745n 1.1v 909.755n 1.1v 914.745n 1.1v 914.755n 1.1v 919.745n 1.1v 919.755n 1.1v 924.745n 1.1v 924.755n 1.1v 929.745n 1.1v 929.755n 1.1v 934.745n 1.1v 934.755n 1.1v 939.745n 1.1v 939.755n 1.1v 944.745n 1.1v 944.755n 1.1v 949.745n 1.1v 949.755n 1.1v 954.745n 1.1v 954.755n 1.1v 959.745n 1.1v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.1v 984.745n 1.1v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 1.1v 999.745n 1.1v 999.755n 1.1v 1004.745n 1.1v 1004.755n 1.1v 1009.745n 1.1v 1009.755n 1.1v 1014.745n 1.1v 1014.755n 1.1v 1019.745n 1.1v 1019.755n 1.1v 1024.745n 1.1v 1024.755n 1.1v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 1), (60, 1), (65, 0), (70, 1), (75, 1), (80, 1), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 1), (120, 0), (125, 0), (130, 1), (135, 0), (140, 0), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 0), (180, 0), (185, 0), (190, 1), (195, 0), (200, 1), (205, 1), (210, 0), (215, 0), (220, 0), (225, 0), (230, 1), (235, 1), (240, 1), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 0), (340, 1), (345, 0), (350, 1), (355, 0), (360, 1), (365, 1), (370, 0), (375, 0), (380, 1), (385, 1), (390, 0), (395, 1), (400, 1), (405, 0), (410, 1), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 1), (455, 0), (460, 0), (465, 0), (470, 1), (475, 1), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 1), (560, 1), (565, 1), (570, 1), (575, 0), (580, 0), (585, 1), (590, 1), (595, 1), (600, 0), (605, 0), (610, 1), (615, 0), (620, 1), (625, 1), (630, 0), (635, 0), (640, 1), (645, 1), (650, 0), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 0), (705, 0), (710, 0), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 1), (775, 0), (780, 1), (785, 1), (790, 1), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 1), (845, 1), (850, 0), (855, 1), (860, 1), (865, 0), (870, 0), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 0), (905, 0), (910, 1), (915, 1), (920, 1), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 1), (960, 0), (965, 1), (970, 0), (975, 0), (980, 0), (985, 1), (990, 0), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Vdin0_5  din0_5  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 1.1v 59.745n 1.1v 59.755n 1.1v 64.745n 1.1v 64.755n 0.0v 69.745n 0.0v 69.755n 1.1v 74.745n 1.1v 74.755n 1.1v 79.745n 1.1v 79.755n 1.1v 84.745n 1.1v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.1v 119.745n 1.1v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 1.1v 134.745n 1.1v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.1v 154.745n 1.1v 154.755n 1.1v 159.745n 1.1v 159.755n 1.1v 164.745n 1.1v 164.755n 1.1v 169.745n 1.1v 169.755n 1.1v 174.745n 1.1v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.1v 194.745n 1.1v 194.755n 0.0v 199.745n 0.0v 199.755n 1.1v 204.745n 1.1v 204.755n 1.1v 209.745n 1.1v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 1.1v 234.745n 1.1v 234.755n 1.1v 239.745n 1.1v 239.755n 1.1v 244.745n 1.1v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 1.1v 299.745n 1.1v 299.755n 1.1v 304.745n 1.1v 304.755n 1.1v 309.745n 1.1v 309.755n 1.1v 314.745n 1.1v 314.755n 1.1v 319.745n 1.1v 319.755n 1.1v 324.745n 1.1v 324.755n 1.1v 329.745n 1.1v 329.755n 1.1v 334.745n 1.1v 334.755n 0.0v 339.745n 0.0v 339.755n 1.1v 344.745n 1.1v 344.755n 0.0v 349.745n 0.0v 349.755n 1.1v 354.745n 1.1v 354.755n 0.0v 359.745n 0.0v 359.755n 1.1v 364.745n 1.1v 364.755n 1.1v 369.745n 1.1v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.1v 384.745n 1.1v 384.755n 1.1v 389.745n 1.1v 389.755n 0.0v 394.745n 0.0v 394.755n 1.1v 399.745n 1.1v 399.755n 1.1v 404.745n 1.1v 404.755n 0.0v 409.745n 0.0v 409.755n 1.1v 414.745n 1.1v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.1v 454.745n 1.1v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.1v 474.745n 1.1v 474.755n 1.1v 479.745n 1.1v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.1v 559.745n 1.1v 559.755n 1.1v 564.745n 1.1v 564.755n 1.1v 569.745n 1.1v 569.755n 1.1v 574.745n 1.1v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 1.1v 589.745n 1.1v 589.755n 1.1v 594.745n 1.1v 594.755n 1.1v 599.745n 1.1v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 1.1v 614.745n 1.1v 614.755n 0.0v 619.745n 0.0v 619.755n 1.1v 624.745n 1.1v 624.755n 1.1v 629.745n 1.1v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 1.1v 644.745n 1.1v 644.755n 1.1v 649.745n 1.1v 649.755n 0.0v 654.745n 0.0v 654.755n 1.1v 659.745n 1.1v 659.755n 1.1v 664.745n 1.1v 664.755n 1.1v 669.745n 1.1v 669.755n 1.1v 674.745n 1.1v 674.755n 1.1v 679.745n 1.1v 679.755n 1.1v 684.745n 1.1v 684.755n 1.1v 689.745n 1.1v 689.755n 1.1v 694.745n 1.1v 694.755n 1.1v 699.745n 1.1v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 1.1v 719.745n 1.1v 719.755n 1.1v 724.745n 1.1v 724.755n 1.1v 729.745n 1.1v 729.755n 1.1v 734.745n 1.1v 734.755n 1.1v 739.745n 1.1v 739.755n 1.1v 744.745n 1.1v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.1v 774.745n 1.1v 774.755n 0.0v 779.745n 0.0v 779.755n 1.1v 784.745n 1.1v 784.755n 1.1v 789.745n 1.1v 789.755n 1.1v 794.745n 1.1v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 1.1v 844.745n 1.1v 844.755n 1.1v 849.745n 1.1v 849.755n 0.0v 854.745n 0.0v 854.755n 1.1v 859.745n 1.1v 859.755n 1.1v 864.745n 1.1v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 1.1v 879.745n 1.1v 879.755n 1.1v 884.745n 1.1v 884.755n 1.1v 889.745n 1.1v 889.755n 1.1v 894.745n 1.1v 894.755n 1.1v 899.745n 1.1v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 1.1v 914.745n 1.1v 914.755n 1.1v 919.745n 1.1v 919.755n 1.1v 924.745n 1.1v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.1v 959.745n 1.1v 959.755n 0.0v 964.745n 0.0v 964.755n 1.1v 969.745n 1.1v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.1v 989.745n 1.1v 989.755n 0.0v 994.745n 0.0v 994.755n 1.1v 999.745n 1.1v 999.755n 1.1v 1004.745n 1.1v 1004.755n 1.1v 1009.745n 1.1v 1009.755n 1.1v 1014.745n 1.1v 1014.755n 1.1v 1019.745n 1.1v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 0), (60, 0), (65, 1), (70, 1), (75, 1), (80, 1), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 1), (120, 0), (125, 0), (130, 1), (135, 1), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 0), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 0), (225, 1), (230, 0), (235, 0), (240, 1), (245, 1), (250, 0), (255, 0), (260, 0), (265, 1), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 1), (305, 1), (310, 1), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 1), (355, 1), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 1), (390, 1), (395, 0), (400, 0), (405, 0), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 0), (440, 0), (445, 0), (450, 1), (455, 0), (460, 0), (465, 0), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 0), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 1), (570, 1), (575, 0), (580, 0), (585, 1), (590, 1), (595, 0), (600, 1), (605, 1), (610, 0), (615, 1), (620, 1), (625, 1), (630, 1), (635, 0), (640, 0), (645, 0), (650, 0), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 0), (735, 1), (740, 1), (745, 0), (750, 0), (755, 1), (760, 1), (765, 0), (770, 1), (775, 1), (780, 0), (785, 0), (790, 0), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 1), (850, 1), (855, 1), (860, 0), (865, 1), (870, 0), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 0), (910, 1), (915, 1), (920, 1), (925, 1), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 1), (960, 1), (965, 1), (970, 0), (975, 0), (980, 0), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 0), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_6  din0_6  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 1.1v 29.745n 1.1v 29.755n 1.1v 34.745n 1.1v 34.755n 1.1v 39.745n 1.1v 39.755n 1.1v 44.745n 1.1v 44.755n 1.1v 49.745n 1.1v 49.755n 1.1v 54.745n 1.1v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 1.1v 69.745n 1.1v 69.755n 1.1v 74.745n 1.1v 74.755n 1.1v 79.745n 1.1v 79.755n 1.1v 84.745n 1.1v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.1v 119.745n 1.1v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 1.1v 134.745n 1.1v 134.755n 1.1v 139.745n 1.1v 139.755n 1.1v 144.745n 1.1v 144.755n 1.1v 149.745n 1.1v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.1v 174.745n 1.1v 174.755n 1.1v 179.745n 1.1v 179.755n 1.1v 184.745n 1.1v 184.755n 1.1v 189.745n 1.1v 189.755n 0.0v 194.745n 0.0v 194.755n 1.1v 199.745n 1.1v 199.755n 1.1v 204.745n 1.1v 204.755n 1.1v 209.745n 1.1v 209.755n 1.1v 214.745n 1.1v 214.755n 1.1v 219.745n 1.1v 219.755n 0.0v 224.745n 0.0v 224.755n 1.1v 229.745n 1.1v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 1.1v 244.745n 1.1v 244.755n 1.1v 249.745n 1.1v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 1.1v 269.745n 1.1v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 1.1v 304.745n 1.1v 304.755n 1.1v 309.745n 1.1v 309.755n 1.1v 314.745n 1.1v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 1.1v 354.745n 1.1v 354.755n 1.1v 359.745n 1.1v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 1.1v 389.745n 1.1v 389.755n 1.1v 394.745n 1.1v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.1v 414.745n 1.1v 414.755n 1.1v 419.745n 1.1v 419.755n 1.1v 424.745n 1.1v 424.755n 1.1v 429.745n 1.1v 429.755n 1.1v 434.745n 1.1v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.1v 454.745n 1.1v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.1v 474.745n 1.1v 474.755n 1.1v 479.745n 1.1v 479.755n 1.1v 484.745n 1.1v 484.755n 1.1v 489.745n 1.1v 489.755n 1.1v 494.745n 1.1v 494.755n 0.0v 499.745n 0.0v 499.755n 1.1v 504.745n 1.1v 504.755n 1.1v 509.745n 1.1v 509.755n 1.1v 514.745n 1.1v 514.755n 1.1v 519.745n 1.1v 519.755n 1.1v 524.745n 1.1v 524.755n 1.1v 529.745n 1.1v 529.755n 1.1v 534.745n 1.1v 534.755n 1.1v 539.745n 1.1v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.1v 569.745n 1.1v 569.755n 1.1v 574.745n 1.1v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 1.1v 589.745n 1.1v 589.755n 1.1v 594.745n 1.1v 594.755n 0.0v 599.745n 0.0v 599.755n 1.1v 604.745n 1.1v 604.755n 1.1v 609.745n 1.1v 609.755n 0.0v 614.745n 0.0v 614.755n 1.1v 619.745n 1.1v 619.755n 1.1v 624.745n 1.1v 624.755n 1.1v 629.745n 1.1v 629.755n 1.1v 634.745n 1.1v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.1v 659.745n 1.1v 659.755n 1.1v 664.745n 1.1v 664.755n 1.1v 669.745n 1.1v 669.755n 1.1v 674.745n 1.1v 674.755n 1.1v 679.745n 1.1v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 1.1v 709.745n 1.1v 709.755n 1.1v 714.745n 1.1v 714.755n 1.1v 719.745n 1.1v 719.755n 1.1v 724.745n 1.1v 724.755n 1.1v 729.745n 1.1v 729.755n 0.0v 734.745n 0.0v 734.755n 1.1v 739.745n 1.1v 739.755n 1.1v 744.745n 1.1v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 1.1v 759.745n 1.1v 759.755n 1.1v 764.745n 1.1v 764.755n 0.0v 769.745n 0.0v 769.755n 1.1v 774.745n 1.1v 774.755n 1.1v 779.745n 1.1v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.1v 799.745n 1.1v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 1.1v 849.745n 1.1v 849.755n 1.1v 854.745n 1.1v 854.755n 1.1v 859.745n 1.1v 859.755n 0.0v 864.745n 0.0v 864.755n 1.1v 869.745n 1.1v 869.755n 0.0v 874.745n 0.0v 874.755n 1.1v 879.745n 1.1v 879.755n 1.1v 884.745n 1.1v 884.755n 1.1v 889.745n 1.1v 889.755n 1.1v 894.745n 1.1v 894.755n 1.1v 899.745n 1.1v 899.755n 1.1v 904.745n 1.1v 904.755n 0.0v 909.745n 0.0v 909.755n 1.1v 914.745n 1.1v 914.755n 1.1v 919.745n 1.1v 919.755n 1.1v 924.745n 1.1v 924.755n 1.1v 929.745n 1.1v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.1v 959.745n 1.1v 959.755n 1.1v 964.745n 1.1v 964.755n 1.1v 969.745n 1.1v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.1v 989.745n 1.1v 989.755n 1.1v 994.745n 1.1v 994.755n 1.1v 999.745n 1.1v 999.755n 1.1v 1004.745n 1.1v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 1.1v 1014.745n 1.1v 1014.755n 1.1v 1019.745n 1.1v 1019.755n 1.1v 1024.745n 1.1v 1024.755n 1.1v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 1), (20, 1), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 1), (65, 0), (70, 1), (75, 0), (80, 0), (85, 1), (90, 1), (95, 0), (100, 0), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 0), (140, 0), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 0), (180, 0), (185, 1), (190, 1), (195, 1), (200, 0), (205, 0), (210, 1), (215, 1), (220, 0), (225, 0), (230, 0), (235, 0), (240, 1), (245, 0), (250, 0), (255, 0), (260, 1), (265, 1), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 1), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 1), (335, 1), (340, 0), (345, 0), (350, 0), (355, 1), (360, 0), (365, 0), (370, 1), (375, 1), (380, 1), (385, 1), (390, 0), (395, 0), (400, 0), (405, 0), (410, 1), (415, 1), (420, 1), (425, 0), (430, 1), (435, 0), (440, 0), (445, 0), (450, 0), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 0), (485, 0), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 1), (550, 1), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 1), (585, 1), (590, 1), (595, 0), (600, 0), (605, 0), (610, 1), (615, 0), (620, 0), (625, 0), (630, 1), (635, 1), (640, 0), (645, 0), (650, 1), (655, 0), (660, 0), (665, 0), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 0), (700, 0), (705, 0), (710, 0), (715, 1), (720, 1), (725, 0), (730, 0), (735, 1), (740, 1), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 1), (775, 1), (780, 0), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 0), (825, 1), (830, 0), (835, 0), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 0), (875, 1), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 1), (925, 1), (930, 1), (935, 1), (940, 0), (945, 1), (950, 1), (955, 0), (960, 0), (965, 1), (970, 0), (975, 0), (980, 1), (985, 1), (990, 0), (995, 1), (1000, 1), (1005, 0), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Vdin0_7  din0_7  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.1v 9.745n 1.1v 9.755n 0.0v 14.745n 0.0v 14.755n 1.1v 19.745n 1.1v 19.755n 1.1v 24.745n 1.1v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 1.1v 64.745n 1.1v 64.755n 0.0v 69.745n 0.0v 69.755n 1.1v 74.745n 1.1v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 1.1v 89.745n 1.1v 89.755n 1.1v 94.745n 1.1v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 1.1v 109.745n 1.1v 109.755n 1.1v 114.745n 1.1v 114.755n 1.1v 119.745n 1.1v 119.755n 1.1v 124.745n 1.1v 124.755n 1.1v 129.745n 1.1v 129.755n 1.1v 134.745n 1.1v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.1v 154.745n 1.1v 154.755n 1.1v 159.745n 1.1v 159.755n 1.1v 164.745n 1.1v 164.755n 1.1v 169.745n 1.1v 169.755n 1.1v 174.745n 1.1v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 1.1v 189.745n 1.1v 189.755n 1.1v 194.745n 1.1v 194.755n 1.1v 199.745n 1.1v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 1.1v 214.745n 1.1v 214.755n 1.1v 219.745n 1.1v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 1.1v 244.745n 1.1v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 1.1v 264.745n 1.1v 264.755n 1.1v 269.745n 1.1v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 1.1v 299.745n 1.1v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.1v 334.745n 1.1v 334.755n 1.1v 339.745n 1.1v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 1.1v 359.745n 1.1v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 1.1v 374.745n 1.1v 374.755n 1.1v 379.745n 1.1v 379.755n 1.1v 384.745n 1.1v 384.755n 1.1v 389.745n 1.1v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.1v 414.745n 1.1v 414.755n 1.1v 419.745n 1.1v 419.755n 1.1v 424.745n 1.1v 424.755n 0.0v 429.745n 0.0v 429.755n 1.1v 434.745n 1.1v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.1v 459.745n 1.1v 459.755n 1.1v 464.745n 1.1v 464.755n 1.1v 469.745n 1.1v 469.755n 1.1v 474.745n 1.1v 474.755n 1.1v 479.745n 1.1v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.1v 494.745n 1.1v 494.755n 1.1v 499.745n 1.1v 499.755n 1.1v 504.745n 1.1v 504.755n 1.1v 509.745n 1.1v 509.755n 1.1v 514.745n 1.1v 514.755n 1.1v 519.745n 1.1v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 1.1v 549.745n 1.1v 549.755n 1.1v 554.745n 1.1v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.1v 584.745n 1.1v 584.755n 1.1v 589.745n 1.1v 589.755n 1.1v 594.745n 1.1v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 1.1v 614.745n 1.1v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 1.1v 634.745n 1.1v 634.755n 1.1v 639.745n 1.1v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 1.1v 654.745n 1.1v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 1.1v 674.745n 1.1v 674.755n 1.1v 679.745n 1.1v 679.755n 1.1v 684.745n 1.1v 684.755n 1.1v 689.745n 1.1v 689.755n 1.1v 694.745n 1.1v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 1.1v 719.745n 1.1v 719.755n 1.1v 724.745n 1.1v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 1.1v 739.745n 1.1v 739.755n 1.1v 744.745n 1.1v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.1v 774.745n 1.1v 774.755n 1.1v 779.745n 1.1v 779.755n 0.0v 784.745n 0.0v 784.755n 1.1v 789.745n 1.1v 789.755n 1.1v 794.745n 1.1v 794.755n 1.1v 799.745n 1.1v 799.755n 1.1v 804.745n 1.1v 804.755n 1.1v 809.745n 1.1v 809.755n 1.1v 814.745n 1.1v 814.755n 1.1v 819.745n 1.1v 819.755n 0.0v 824.745n 0.0v 824.755n 1.1v 829.745n 1.1v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 1.1v 844.745n 1.1v 844.755n 1.1v 849.745n 1.1v 849.755n 1.1v 854.745n 1.1v 854.755n 1.1v 859.745n 1.1v 859.755n 1.1v 864.745n 1.1v 864.755n 1.1v 869.745n 1.1v 869.755n 0.0v 874.745n 0.0v 874.755n 1.1v 879.745n 1.1v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 1.1v 924.745n 1.1v 924.755n 1.1v 929.745n 1.1v 929.755n 1.1v 934.745n 1.1v 934.755n 1.1v 939.745n 1.1v 939.755n 0.0v 944.745n 0.0v 944.755n 1.1v 949.745n 1.1v 949.755n 1.1v 954.745n 1.1v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 1.1v 969.745n 1.1v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.1v 984.745n 1.1v 984.755n 1.1v 989.745n 1.1v 989.755n 0.0v 994.745n 0.0v 994.755n 1.1v 999.745n 1.1v 999.755n 1.1v 1004.745n 1.1v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 1.1v 1014.745n 1.1v 1014.755n 1.1v 1019.745n 1.1v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 0), (50, 0), (55, 0), (60, 1), (65, 0), (70, 1), (75, 1), (80, 1), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 1), (120, 0), (125, 0), (130, 0), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 0), (180, 1), (185, 1), (190, 1), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 0), (255, 0), (260, 0), (265, 1), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 1), (305, 1), (310, 1), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 1), (350, 0), (355, 0), (360, 0), (365, 0), (370, 1), (375, 1), (380, 0), (385, 1), (390, 0), (395, 0), (400, 0), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 1), (550, 1), (555, 0), (560, 0), (565, 1), (570, 0), (575, 0), (580, 1), (585, 0), (590, 0), (595, 1), (600, 1), (605, 1), (610, 0), (615, 1), (620, 1), (625, 1), (630, 1), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 1), (665, 1), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 1), (700, 1), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 1), (740, 1), (745, 0), (750, 0), (755, 0), (760, 1), (765, 0), (770, 1), (775, 1), (780, 1), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 1), (820, 1), (825, 1), (830, 0), (835, 0), (840, 1), (845, 1), (850, 0), (855, 1), (860, 1), (865, 1), (870, 1), (875, 0), (880, 1), (885, 1), (890, 1), (895, 1), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 1), (930, 0), (935, 1), (940, 0), (945, 1), (950, 1), (955, 1), (960, 1), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 1), (995, 1), (1000, 1), (1005, 0), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Vdin0_8  din0_8  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.1v 14.745n 1.1v 14.755n 1.1v 19.745n 1.1v 19.755n 1.1v 24.745n 1.1v 24.755n 1.1v 29.745n 1.1v 29.755n 1.1v 34.745n 1.1v 34.755n 1.1v 39.745n 1.1v 39.755n 1.1v 44.745n 1.1v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 1.1v 64.745n 1.1v 64.755n 0.0v 69.745n 0.0v 69.755n 1.1v 74.745n 1.1v 74.755n 1.1v 79.745n 1.1v 79.755n 1.1v 84.745n 1.1v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.1v 119.745n 1.1v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.1v 139.745n 1.1v 139.755n 1.1v 144.745n 1.1v 144.755n 1.1v 149.745n 1.1v 149.755n 1.1v 154.745n 1.1v 154.755n 1.1v 159.745n 1.1v 159.755n 1.1v 164.745n 1.1v 164.755n 1.1v 169.745n 1.1v 169.755n 1.1v 174.745n 1.1v 174.755n 0.0v 179.745n 0.0v 179.755n 1.1v 184.745n 1.1v 184.755n 1.1v 189.745n 1.1v 189.755n 1.1v 194.745n 1.1v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 1.1v 229.745n 1.1v 229.755n 1.1v 234.745n 1.1v 234.755n 1.1v 239.745n 1.1v 239.755n 1.1v 244.745n 1.1v 244.755n 1.1v 249.745n 1.1v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 1.1v 269.745n 1.1v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 1.1v 304.745n 1.1v 304.755n 1.1v 309.745n 1.1v 309.755n 1.1v 314.745n 1.1v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 1.1v 349.745n 1.1v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 1.1v 374.745n 1.1v 374.755n 1.1v 379.745n 1.1v 379.755n 0.0v 384.745n 0.0v 384.755n 1.1v 389.745n 1.1v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 1.1v 409.745n 1.1v 409.755n 1.1v 414.745n 1.1v 414.755n 1.1v 419.745n 1.1v 419.755n 1.1v 424.745n 1.1v 424.755n 1.1v 429.745n 1.1v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.1v 474.745n 1.1v 474.755n 1.1v 479.745n 1.1v 479.755n 1.1v 484.745n 1.1v 484.755n 1.1v 489.745n 1.1v 489.755n 1.1v 494.745n 1.1v 494.755n 1.1v 499.745n 1.1v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 1.1v 549.745n 1.1v 549.755n 1.1v 554.745n 1.1v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.1v 569.745n 1.1v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.1v 584.745n 1.1v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 1.1v 599.745n 1.1v 599.755n 1.1v 604.745n 1.1v 604.755n 1.1v 609.745n 1.1v 609.755n 0.0v 614.745n 0.0v 614.755n 1.1v 619.745n 1.1v 619.755n 1.1v 624.745n 1.1v 624.755n 1.1v 629.745n 1.1v 629.755n 1.1v 634.745n 1.1v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.1v 664.745n 1.1v 664.755n 1.1v 669.745n 1.1v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.1v 699.745n 1.1v 699.755n 1.1v 704.745n 1.1v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.1v 729.745n 1.1v 729.755n 1.1v 734.745n 1.1v 734.755n 1.1v 739.745n 1.1v 739.755n 1.1v 744.745n 1.1v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 1.1v 764.745n 1.1v 764.755n 0.0v 769.745n 0.0v 769.755n 1.1v 774.745n 1.1v 774.755n 1.1v 779.745n 1.1v 779.755n 1.1v 784.745n 1.1v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 1.1v 819.745n 1.1v 819.755n 1.1v 824.745n 1.1v 824.755n 1.1v 829.745n 1.1v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 1.1v 844.745n 1.1v 844.755n 1.1v 849.745n 1.1v 849.755n 0.0v 854.745n 0.0v 854.755n 1.1v 859.745n 1.1v 859.755n 1.1v 864.745n 1.1v 864.755n 1.1v 869.745n 1.1v 869.755n 1.1v 874.745n 1.1v 874.755n 0.0v 879.745n 0.0v 879.755n 1.1v 884.745n 1.1v 884.755n 1.1v 889.745n 1.1v 889.755n 1.1v 894.745n 1.1v 894.755n 1.1v 899.745n 1.1v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 1.1v 929.745n 1.1v 929.755n 0.0v 934.745n 0.0v 934.755n 1.1v 939.745n 1.1v 939.755n 0.0v 944.745n 0.0v 944.755n 1.1v 949.745n 1.1v 949.755n 1.1v 954.745n 1.1v 954.755n 1.1v 959.745n 1.1v 959.755n 1.1v 964.745n 1.1v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 1.1v 994.745n 1.1v 994.755n 1.1v 999.745n 1.1v 999.755n 1.1v 1004.745n 1.1v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.1v 1024.745n 1.1v 1024.755n 1.1v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 0), (65, 0), (70, 1), (75, 1), (80, 1), (85, 0), (90, 0), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 0), (180, 0), (185, 1), (190, 1), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 1), (225, 1), (230, 0), (235, 0), (240, 0), (245, 0), (250, 1), (255, 1), (260, 0), (265, 0), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 0), (335, 0), (340, 1), (345, 1), (350, 1), (355, 0), (360, 0), (365, 0), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 0), (400, 0), (405, 0), (410, 1), (415, 1), (420, 1), (425, 0), (430, 0), (435, 1), (440, 0), (445, 0), (450, 0), (455, 1), (460, 1), (465, 1), (470, 0), (475, 0), (480, 1), (485, 1), (490, 1), (495, 1), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 1), (560, 1), (565, 0), (570, 1), (575, 1), (580, 0), (585, 1), (590, 1), (595, 1), (600, 0), (605, 0), (610, 1), (615, 1), (620, 0), (625, 0), (630, 0), (635, 0), (640, 1), (645, 1), (650, 1), (655, 1), (660, 1), (665, 1), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 0), (740, 0), (745, 0), (750, 0), (755, 1), (760, 0), (765, 0), (770, 1), (775, 1), (780, 0), (785, 1), (790, 1), (795, 0), (800, 0), (805, 0), (810, 0), (815, 1), (820, 0), (825, 1), (830, 0), (835, 0), (840, 0), (845, 0), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 0), (935, 1), (940, 1), (945, 0), (950, 0), (955, 1), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 1), (995, 0), (1000, 0), (1005, 1), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Vdin0_9  din0_9  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.1v 19.745n 1.1v 19.755n 1.1v 24.745n 1.1v 24.755n 1.1v 29.745n 1.1v 29.755n 1.1v 34.745n 1.1v 34.755n 1.1v 39.745n 1.1v 39.755n 1.1v 44.745n 1.1v 44.755n 1.1v 49.745n 1.1v 49.755n 1.1v 54.745n 1.1v 54.755n 1.1v 59.745n 1.1v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 1.1v 74.745n 1.1v 74.755n 1.1v 79.745n 1.1v 79.755n 1.1v 84.745n 1.1v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.1v 99.745n 1.1v 99.755n 1.1v 104.745n 1.1v 104.755n 1.1v 109.745n 1.1v 109.755n 1.1v 114.745n 1.1v 114.755n 1.1v 119.745n 1.1v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.1v 154.745n 1.1v 154.755n 1.1v 159.745n 1.1v 159.755n 1.1v 164.745n 1.1v 164.755n 1.1v 169.745n 1.1v 169.755n 1.1v 174.745n 1.1v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 1.1v 189.745n 1.1v 189.755n 1.1v 194.745n 1.1v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.1v 224.745n 1.1v 224.755n 1.1v 229.745n 1.1v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.1v 254.745n 1.1v 254.755n 1.1v 259.745n 1.1v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.1v 274.745n 1.1v 274.755n 1.1v 279.745n 1.1v 279.755n 1.1v 284.745n 1.1v 284.755n 1.1v 289.745n 1.1v 289.755n 1.1v 294.745n 1.1v 294.755n 1.1v 299.745n 1.1v 299.755n 1.1v 304.745n 1.1v 304.755n 1.1v 309.745n 1.1v 309.755n 1.1v 314.745n 1.1v 314.755n 1.1v 319.745n 1.1v 319.755n 1.1v 324.745n 1.1v 324.755n 1.1v 329.745n 1.1v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 1.1v 344.745n 1.1v 344.755n 1.1v 349.745n 1.1v 349.755n 1.1v 354.745n 1.1v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 1.1v 374.745n 1.1v 374.755n 1.1v 379.745n 1.1v 379.755n 1.1v 384.745n 1.1v 384.755n 1.1v 389.745n 1.1v 389.755n 1.1v 394.745n 1.1v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.1v 414.745n 1.1v 414.755n 1.1v 419.745n 1.1v 419.755n 1.1v 424.745n 1.1v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 1.1v 439.745n 1.1v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.1v 459.745n 1.1v 459.755n 1.1v 464.745n 1.1v 464.755n 1.1v 469.745n 1.1v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 1.1v 484.745n 1.1v 484.755n 1.1v 489.745n 1.1v 489.755n 1.1v 494.745n 1.1v 494.755n 1.1v 499.745n 1.1v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.1v 559.745n 1.1v 559.755n 1.1v 564.745n 1.1v 564.755n 0.0v 569.745n 0.0v 569.755n 1.1v 574.745n 1.1v 574.755n 1.1v 579.745n 1.1v 579.755n 0.0v 584.745n 0.0v 584.755n 1.1v 589.745n 1.1v 589.755n 1.1v 594.745n 1.1v 594.755n 1.1v 599.745n 1.1v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 1.1v 614.745n 1.1v 614.755n 1.1v 619.745n 1.1v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 1.1v 644.745n 1.1v 644.755n 1.1v 649.745n 1.1v 649.755n 1.1v 654.745n 1.1v 654.755n 1.1v 659.745n 1.1v 659.755n 1.1v 664.745n 1.1v 664.755n 1.1v 669.745n 1.1v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.1v 729.745n 1.1v 729.755n 1.1v 734.745n 1.1v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 1.1v 759.745n 1.1v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.1v 774.745n 1.1v 774.755n 1.1v 779.745n 1.1v 779.755n 0.0v 784.745n 0.0v 784.755n 1.1v 789.745n 1.1v 789.755n 1.1v 794.745n 1.1v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 1.1v 819.745n 1.1v 819.755n 0.0v 824.745n 0.0v 824.755n 1.1v 829.745n 1.1v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 1.1v 854.745n 1.1v 854.755n 1.1v 859.745n 1.1v 859.755n 1.1v 864.745n 1.1v 864.755n 1.1v 869.745n 1.1v 869.755n 1.1v 874.745n 1.1v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.1v 904.745n 1.1v 904.755n 1.1v 909.745n 1.1v 909.755n 1.1v 914.745n 1.1v 914.755n 1.1v 919.745n 1.1v 919.755n 1.1v 924.745n 1.1v 924.755n 1.1v 929.745n 1.1v 929.755n 0.0v 934.745n 0.0v 934.755n 1.1v 939.745n 1.1v 939.755n 1.1v 944.745n 1.1v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.1v 959.745n 1.1v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 1.1v 994.745n 1.1v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.1v 1009.745n 1.1v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.1v 1024.745n 1.1v 1024.755n 1.1v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 0), (50, 1), (55, 1), (60, 0), (65, 0), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 0), (100, 0), (105, 0), (110, 0), (115, 1), (120, 0), (125, 0), (130, 0), (135, 1), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 1), (190, 1), (195, 0), (200, 0), (205, 0), (210, 1), (215, 1), (220, 0), (225, 0), (230, 1), (235, 1), (240, 0), (245, 0), (250, 1), (255, 0), (260, 1), (265, 1), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 1), (320, 1), (325, 1), (330, 0), (335, 1), (340, 0), (345, 0), (350, 0), (355, 1), (360, 0), (365, 0), (370, 1), (375, 1), (380, 0), (385, 0), (390, 1), (395, 0), (400, 1), (405, 1), (410, 0), (415, 1), (420, 1), (425, 1), (430, 1), (435, 0), (440, 0), (445, 0), (450, 1), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 1), (485, 1), (490, 1), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 1), (525, 1), (530, 1), (535, 1), (540, 0), (545, 0), (550, 0), (555, 1), (560, 1), (565, 0), (570, 0), (575, 1), (580, 0), (585, 0), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 1), (620, 0), (625, 0), (630, 0), (635, 0), (640, 1), (645, 1), (650, 0), (655, 1), (660, 1), (665, 1), (670, 0), (675, 0), (680, 1), (685, 1), (690, 1), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 1), (740, 0), (745, 1), (750, 0), (755, 1), (760, 1), (765, 1), (770, 1), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 1), (805, 1), (810, 1), (815, 0), (820, 0), (825, 1), (830, 0), (835, 0), (840, 1), (845, 0), (850, 1), (855, 0), (860, 0), (865, 0), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 1), (940, 1), (945, 1), (950, 1), (955, 0), (960, 0), (965, 1), (970, 1), (975, 1), (980, 0), (985, 0), (990, 1), (995, 0), (1000, 0), (1005, 0), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_10  din0_10  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.1v 9.745n 1.1v 9.755n 0.0v 14.745n 0.0v 14.755n 1.1v 19.745n 1.1v 19.755n 1.1v 24.745n 1.1v 24.755n 1.1v 29.745n 1.1v 29.755n 1.1v 34.745n 1.1v 34.755n 1.1v 39.745n 1.1v 39.755n 1.1v 44.745n 1.1v 44.755n 0.0v 49.745n 0.0v 49.755n 1.1v 54.745n 1.1v 54.755n 1.1v 59.745n 1.1v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 1.1v 74.745n 1.1v 74.755n 1.1v 79.745n 1.1v 79.755n 1.1v 84.745n 1.1v 84.755n 1.1v 89.745n 1.1v 89.755n 1.1v 94.745n 1.1v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.1v 119.745n 1.1v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.1v 139.745n 1.1v 139.755n 1.1v 144.745n 1.1v 144.755n 1.1v 149.745n 1.1v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 1.1v 189.745n 1.1v 189.755n 1.1v 194.745n 1.1v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 1.1v 214.745n 1.1v 214.755n 1.1v 219.745n 1.1v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 1.1v 234.745n 1.1v 234.755n 1.1v 239.745n 1.1v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.1v 254.745n 1.1v 254.755n 0.0v 259.745n 0.0v 259.755n 1.1v 264.745n 1.1v 264.755n 1.1v 269.745n 1.1v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.1v 319.745n 1.1v 319.755n 1.1v 324.745n 1.1v 324.755n 1.1v 329.745n 1.1v 329.755n 0.0v 334.745n 0.0v 334.755n 1.1v 339.745n 1.1v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 1.1v 359.745n 1.1v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 1.1v 374.745n 1.1v 374.755n 1.1v 379.745n 1.1v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.1v 394.745n 1.1v 394.755n 0.0v 399.745n 0.0v 399.755n 1.1v 404.745n 1.1v 404.755n 1.1v 409.745n 1.1v 409.755n 0.0v 414.745n 0.0v 414.755n 1.1v 419.745n 1.1v 419.755n 1.1v 424.745n 1.1v 424.755n 1.1v 429.745n 1.1v 429.755n 1.1v 434.745n 1.1v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.1v 454.745n 1.1v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 1.1v 484.745n 1.1v 484.755n 1.1v 489.745n 1.1v 489.755n 1.1v 494.745n 1.1v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 1.1v 524.745n 1.1v 524.755n 1.1v 529.745n 1.1v 529.755n 1.1v 534.745n 1.1v 534.755n 1.1v 539.745n 1.1v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.1v 559.745n 1.1v 559.755n 1.1v 564.745n 1.1v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.1v 579.745n 1.1v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.1v 604.745n 1.1v 604.755n 1.1v 609.745n 1.1v 609.755n 1.1v 614.745n 1.1v 614.755n 1.1v 619.745n 1.1v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 1.1v 644.745n 1.1v 644.755n 1.1v 649.745n 1.1v 649.755n 0.0v 654.745n 0.0v 654.755n 1.1v 659.745n 1.1v 659.755n 1.1v 664.745n 1.1v 664.755n 1.1v 669.745n 1.1v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 1.1v 684.745n 1.1v 684.755n 1.1v 689.745n 1.1v 689.755n 1.1v 694.745n 1.1v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.1v 729.745n 1.1v 729.755n 1.1v 734.745n 1.1v 734.755n 1.1v 739.745n 1.1v 739.755n 0.0v 744.745n 0.0v 744.755n 1.1v 749.745n 1.1v 749.755n 0.0v 754.745n 0.0v 754.755n 1.1v 759.745n 1.1v 759.755n 1.1v 764.745n 1.1v 764.755n 1.1v 769.745n 1.1v 769.755n 1.1v 774.745n 1.1v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.1v 804.745n 1.1v 804.755n 1.1v 809.745n 1.1v 809.755n 1.1v 814.745n 1.1v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.1v 829.745n 1.1v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 1.1v 844.745n 1.1v 844.755n 0.0v 849.745n 0.0v 849.755n 1.1v 854.745n 1.1v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 1.1v 874.745n 1.1v 874.755n 1.1v 879.745n 1.1v 879.755n 1.1v 884.745n 1.1v 884.755n 1.1v 889.745n 1.1v 889.755n 1.1v 894.745n 1.1v 894.755n 1.1v 899.745n 1.1v 899.755n 1.1v 904.745n 1.1v 904.755n 1.1v 909.745n 1.1v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 1.1v 939.745n 1.1v 939.755n 1.1v 944.745n 1.1v 944.755n 1.1v 949.745n 1.1v 949.755n 1.1v 954.745n 1.1v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 1.1v 969.745n 1.1v 969.755n 1.1v 974.745n 1.1v 974.755n 1.1v 979.745n 1.1v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 1.1v 994.745n 1.1v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 1.1v 1014.745n 1.1v 1014.755n 1.1v 1019.745n 1.1v 1019.755n 1.1v 1024.745n 1.1v 1024.755n 1.1v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 1), (50, 1), (55, 0), (60, 0), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 0), (100, 0), (105, 0), (110, 0), (115, 1), (120, 0), (125, 0), (130, 1), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 1), (180, 0), (185, 0), (190, 0), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 1), (250, 0), (255, 1), (260, 0), (265, 0), (270, 0), (275, 0), (280, 1), (285, 1), (290, 1), (295, 1), (300, 0), (305, 0), (310, 0), (315, 1), (320, 1), (325, 1), (330, 0), (335, 0), (340, 0), (345, 1), (350, 1), (355, 0), (360, 1), (365, 1), (370, 1), (375, 1), (380, 0), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 1), (475, 1), (480, 1), (485, 1), (490, 0), (495, 0), (500, 1), (505, 1), (510, 1), (515, 1), (520, 0), (525, 0), (530, 0), (535, 0), (540, 1), (545, 0), (550, 0), (555, 0), (560, 0), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 0), (600, 1), (605, 1), (610, 0), (615, 1), (620, 1), (625, 1), (630, 0), (635, 1), (640, 0), (645, 0), (650, 1), (655, 0), (660, 0), (665, 1), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 1), (700, 1), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 1), (735, 1), (740, 0), (745, 0), (750, 1), (755, 1), (760, 1), (765, 1), (770, 0), (775, 1), (780, 0), (785, 1), (790, 1), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 1), (825, 1), (830, 0), (835, 0), (840, 1), (845, 0), (850, 1), (855, 1), (860, 0), (865, 1), (870, 0), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 0), (930, 1), (935, 1), (940, 0), (945, 1), (950, 1), (955, 0), (960, 1), (965, 1), (970, 0), (975, 0), (980, 0), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_11  din0_11  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.1v 9.745n 1.1v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.1v 49.745n 1.1v 49.755n 1.1v 54.745n 1.1v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 1.1v 69.745n 1.1v 69.755n 1.1v 74.745n 1.1v 74.755n 1.1v 79.745n 1.1v 79.755n 1.1v 84.745n 1.1v 84.755n 1.1v 89.745n 1.1v 89.755n 1.1v 94.745n 1.1v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.1v 119.745n 1.1v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 1.1v 134.745n 1.1v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 1.1v 179.745n 1.1v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 1.1v 199.745n 1.1v 199.755n 1.1v 204.745n 1.1v 204.755n 1.1v 209.745n 1.1v 209.755n 1.1v 214.745n 1.1v 214.755n 1.1v 219.745n 1.1v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 1.1v 249.745n 1.1v 249.755n 0.0v 254.745n 0.0v 254.755n 1.1v 259.745n 1.1v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 1.1v 284.745n 1.1v 284.755n 1.1v 289.745n 1.1v 289.755n 1.1v 294.745n 1.1v 294.755n 1.1v 299.745n 1.1v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.1v 319.745n 1.1v 319.755n 1.1v 324.745n 1.1v 324.755n 1.1v 329.745n 1.1v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 1.1v 349.745n 1.1v 349.755n 1.1v 354.745n 1.1v 354.755n 0.0v 359.745n 0.0v 359.755n 1.1v 364.745n 1.1v 364.755n 1.1v 369.745n 1.1v 369.755n 1.1v 374.745n 1.1v 374.755n 1.1v 379.745n 1.1v 379.755n 0.0v 384.745n 0.0v 384.755n 1.1v 389.745n 1.1v 389.755n 1.1v 394.745n 1.1v 394.755n 1.1v 399.745n 1.1v 399.755n 1.1v 404.745n 1.1v 404.755n 1.1v 409.745n 1.1v 409.755n 1.1v 414.745n 1.1v 414.755n 1.1v 419.745n 1.1v 419.755n 1.1v 424.745n 1.1v 424.755n 1.1v 429.745n 1.1v 429.755n 1.1v 434.745n 1.1v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.1v 474.745n 1.1v 474.755n 1.1v 479.745n 1.1v 479.755n 1.1v 484.745n 1.1v 484.755n 1.1v 489.745n 1.1v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 1.1v 504.745n 1.1v 504.755n 1.1v 509.745n 1.1v 509.755n 1.1v 514.745n 1.1v 514.755n 1.1v 519.745n 1.1v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.1v 544.745n 1.1v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.1v 569.745n 1.1v 569.755n 1.1v 574.745n 1.1v 574.755n 1.1v 579.745n 1.1v 579.755n 1.1v 584.745n 1.1v 584.755n 1.1v 589.745n 1.1v 589.755n 1.1v 594.745n 1.1v 594.755n 0.0v 599.745n 0.0v 599.755n 1.1v 604.745n 1.1v 604.755n 1.1v 609.745n 1.1v 609.755n 0.0v 614.745n 0.0v 614.755n 1.1v 619.745n 1.1v 619.755n 1.1v 624.745n 1.1v 624.755n 1.1v 629.745n 1.1v 629.755n 0.0v 634.745n 0.0v 634.755n 1.1v 639.745n 1.1v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 1.1v 654.745n 1.1v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 1.1v 669.745n 1.1v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.1v 699.745n 1.1v 699.755n 1.1v 704.745n 1.1v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 1.1v 734.745n 1.1v 734.755n 1.1v 739.745n 1.1v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 1.1v 754.745n 1.1v 754.755n 1.1v 759.745n 1.1v 759.755n 1.1v 764.745n 1.1v 764.755n 1.1v 769.745n 1.1v 769.755n 0.0v 774.745n 0.0v 774.755n 1.1v 779.745n 1.1v 779.755n 0.0v 784.745n 0.0v 784.755n 1.1v 789.745n 1.1v 789.755n 1.1v 794.745n 1.1v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 1.1v 824.745n 1.1v 824.755n 1.1v 829.745n 1.1v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 1.1v 844.745n 1.1v 844.755n 0.0v 849.745n 0.0v 849.755n 1.1v 854.745n 1.1v 854.755n 1.1v 859.745n 1.1v 859.755n 0.0v 864.745n 0.0v 864.755n 1.1v 869.745n 1.1v 869.755n 0.0v 874.745n 0.0v 874.755n 1.1v 879.745n 1.1v 879.755n 1.1v 884.745n 1.1v 884.755n 1.1v 889.745n 1.1v 889.755n 1.1v 894.745n 1.1v 894.755n 1.1v 899.745n 1.1v 899.755n 1.1v 904.745n 1.1v 904.755n 1.1v 909.745n 1.1v 909.755n 1.1v 914.745n 1.1v 914.755n 1.1v 919.745n 1.1v 919.755n 1.1v 924.745n 1.1v 924.755n 0.0v 929.745n 0.0v 929.755n 1.1v 934.745n 1.1v 934.755n 1.1v 939.745n 1.1v 939.755n 0.0v 944.745n 0.0v 944.755n 1.1v 949.745n 1.1v 949.755n 1.1v 954.745n 1.1v 954.755n 0.0v 959.745n 0.0v 959.755n 1.1v 964.745n 1.1v 964.755n 1.1v 969.745n 1.1v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.1v 989.745n 1.1v 989.755n 1.1v 994.745n 1.1v 994.755n 1.1v 999.745n 1.1v 999.755n 1.1v 1004.745n 1.1v 1004.755n 1.1v 1009.745n 1.1v 1009.755n 1.1v 1014.745n 1.1v 1014.755n 1.1v 1019.745n 1.1v 1019.755n 1.1v 1024.745n 1.1v 1024.755n 1.1v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 0), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 0), (100, 0), (105, 0), (110, 0), (115, 1), (120, 1), (125, 1), (130, 0), (135, 1), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 1), (185, 1), (190, 0), (195, 1), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 1), (235, 1), (240, 0), (245, 0), (250, 0), (255, 1), (260, 1), (265, 0), (270, 0), (275, 0), (280, 1), (285, 1), (290, 1), (295, 1), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 1), (335, 1), (340, 0), (345, 0), (350, 0), (355, 0), (360, 1), (365, 1), (370, 0), (375, 0), (380, 0), (385, 0), (390, 1), (395, 1), (400, 1), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 1), (435, 1), (440, 1), (445, 1), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 1), (485, 1), (490, 1), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 1), (525, 1), (530, 1), (535, 1), (540, 0), (545, 0), (550, 0), (555, 1), (560, 1), (565, 1), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 1), (600, 0), (605, 0), (610, 1), (615, 0), (620, 0), (625, 0), (630, 1), (635, 0), (640, 1), (645, 1), (650, 0), (655, 1), (660, 0), (665, 0), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 1), (765, 1), (770, 0), (775, 1), (780, 0), (785, 0), (790, 0), (795, 0), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 0), (830, 0), (835, 0), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 1), (905, 1), (910, 0), (915, 0), (920, 1), (925, 0), (930, 0), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 0), (970, 1), (975, 1), (980, 1), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 1), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Vdin0_12  din0_12  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.1v 9.745n 1.1v 9.755n 0.0v 14.745n 0.0v 14.755n 1.1v 19.745n 1.1v 19.755n 1.1v 24.745n 1.1v 24.755n 1.1v 29.745n 1.1v 29.755n 1.1v 34.745n 1.1v 34.755n 1.1v 39.745n 1.1v 39.755n 1.1v 44.745n 1.1v 44.755n 1.1v 49.745n 1.1v 49.755n 1.1v 54.745n 1.1v 54.755n 1.1v 59.745n 1.1v 59.755n 0.0v 64.745n 0.0v 64.755n 1.1v 69.745n 1.1v 69.755n 1.1v 74.745n 1.1v 74.755n 1.1v 79.745n 1.1v 79.755n 1.1v 84.745n 1.1v 84.755n 1.1v 89.745n 1.1v 89.755n 1.1v 94.745n 1.1v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.1v 119.745n 1.1v 119.755n 1.1v 124.745n 1.1v 124.755n 1.1v 129.745n 1.1v 129.755n 0.0v 134.745n 0.0v 134.755n 1.1v 139.745n 1.1v 139.755n 1.1v 144.745n 1.1v 144.755n 1.1v 149.745n 1.1v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.1v 184.745n 1.1v 184.755n 1.1v 189.745n 1.1v 189.755n 0.0v 194.745n 0.0v 194.755n 1.1v 199.745n 1.1v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 1.1v 234.745n 1.1v 234.755n 1.1v 239.745n 1.1v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 1.1v 259.745n 1.1v 259.755n 1.1v 264.745n 1.1v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 1.1v 284.745n 1.1v 284.755n 1.1v 289.745n 1.1v 289.755n 1.1v 294.745n 1.1v 294.755n 1.1v 299.745n 1.1v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.1v 334.745n 1.1v 334.755n 1.1v 339.745n 1.1v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 1.1v 364.745n 1.1v 364.755n 1.1v 369.745n 1.1v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.1v 394.745n 1.1v 394.755n 1.1v 399.745n 1.1v 399.755n 1.1v 404.745n 1.1v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 1.1v 434.745n 1.1v 434.755n 1.1v 439.745n 1.1v 439.755n 1.1v 444.745n 1.1v 444.755n 1.1v 449.745n 1.1v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 1.1v 484.745n 1.1v 484.755n 1.1v 489.745n 1.1v 489.755n 1.1v 494.745n 1.1v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 1.1v 524.745n 1.1v 524.755n 1.1v 529.745n 1.1v 529.755n 1.1v 534.745n 1.1v 534.755n 1.1v 539.745n 1.1v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.1v 559.745n 1.1v 559.755n 1.1v 564.745n 1.1v 564.755n 1.1v 569.745n 1.1v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 1.1v 599.745n 1.1v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 1.1v 614.745n 1.1v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 1.1v 634.745n 1.1v 634.755n 0.0v 639.745n 0.0v 639.755n 1.1v 644.745n 1.1v 644.755n 1.1v 649.745n 1.1v 649.755n 0.0v 654.745n 0.0v 654.755n 1.1v 659.745n 1.1v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 1.1v 674.745n 1.1v 674.755n 1.1v 679.745n 1.1v 679.755n 1.1v 684.745n 1.1v 684.755n 1.1v 689.745n 1.1v 689.755n 1.1v 694.745n 1.1v 694.755n 1.1v 699.745n 1.1v 699.755n 1.1v 704.745n 1.1v 704.755n 1.1v 709.745n 1.1v 709.755n 1.1v 714.745n 1.1v 714.755n 1.1v 719.745n 1.1v 719.755n 1.1v 724.745n 1.1v 724.755n 1.1v 729.745n 1.1v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 1.1v 764.745n 1.1v 764.755n 1.1v 769.745n 1.1v 769.755n 0.0v 774.745n 0.0v 774.755n 1.1v 779.745n 1.1v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.1v 804.745n 1.1v 804.755n 1.1v 809.745n 1.1v 809.755n 1.1v 814.745n 1.1v 814.755n 1.1v 819.745n 1.1v 819.755n 1.1v 824.745n 1.1v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 1.1v 844.745n 1.1v 844.755n 1.1v 849.745n 1.1v 849.755n 1.1v 854.745n 1.1v 854.755n 1.1v 859.745n 1.1v 859.755n 1.1v 864.745n 1.1v 864.755n 1.1v 869.745n 1.1v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.1v 904.745n 1.1v 904.755n 1.1v 909.745n 1.1v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 1.1v 924.745n 1.1v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 1.1v 939.745n 1.1v 939.755n 1.1v 944.745n 1.1v 944.755n 1.1v 949.745n 1.1v 949.755n 1.1v 954.745n 1.1v 954.755n 1.1v 959.745n 1.1v 959.755n 1.1v 964.745n 1.1v 964.755n 0.0v 969.745n 0.0v 969.755n 1.1v 974.745n 1.1v 974.755n 1.1v 979.745n 1.1v 979.755n 1.1v 984.745n 1.1v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.1v 1009.745n 1.1v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.1v 1024.745n 1.1v 1024.755n 1.1v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 0), (20, 0), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 0), (60, 0), (65, 0), (70, 1), (75, 0), (80, 0), (85, 0), (90, 0), (95, 1), (100, 1), (105, 1), (110, 1), (115, 0), (120, 0), (125, 0), (130, 0), (135, 1), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 1), (185, 0), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 0), (250, 0), (255, 0), (260, 1), (265, 1), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 1), (320, 1), (325, 1), (330, 0), (335, 1), (340, 1), (345, 1), (350, 0), (355, 1), (360, 1), (365, 1), (370, 0), (375, 0), (380, 1), (385, 0), (390, 1), (395, 1), (400, 1), (405, 0), (410, 1), (415, 0), (420, 0), (425, 1), (430, 1), (435, 1), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 0), (550, 0), (555, 1), (560, 1), (565, 0), (570, 1), (575, 1), (580, 0), (585, 0), (590, 0), (595, 1), (600, 1), (605, 1), (610, 0), (615, 0), (620, 0), (625, 0), (630, 1), (635, 0), (640, 1), (645, 1), (650, 1), (655, 1), (660, 0), (665, 0), (670, 0), (675, 0), (680, 1), (685, 1), (690, 1), (695, 1), (700, 1), (705, 0), (710, 0), (715, 1), (720, 1), (725, 0), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 0), (760, 1), (765, 0), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 0), (800, 1), (805, 1), (810, 1), (815, 0), (820, 1), (825, 0), (830, 0), (835, 0), (840, 1), (845, 0), (850, 1), (855, 1), (860, 0), (865, 1), (870, 1), (875, 0), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 0), (910, 1), (915, 1), (920, 1), (925, 0), (930, 0), (935, 0), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 0), (970, 1), (975, 1), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Vdin0_13  din0_13  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.1v 9.745n 1.1v 9.755n 1.1v 14.745n 1.1v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 1.1v 29.745n 1.1v 29.755n 1.1v 34.745n 1.1v 34.755n 1.1v 39.745n 1.1v 39.755n 1.1v 44.745n 1.1v 44.755n 1.1v 49.745n 1.1v 49.755n 1.1v 54.745n 1.1v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 1.1v 74.745n 1.1v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.1v 99.745n 1.1v 99.755n 1.1v 104.745n 1.1v 104.755n 1.1v 109.745n 1.1v 109.755n 1.1v 114.745n 1.1v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.1v 139.745n 1.1v 139.755n 1.1v 144.745n 1.1v 144.755n 1.1v 149.745n 1.1v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.1v 184.745n 1.1v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.1v 224.745n 1.1v 224.755n 1.1v 229.745n 1.1v 229.755n 1.1v 234.745n 1.1v 234.755n 1.1v 239.745n 1.1v 239.755n 1.1v 244.745n 1.1v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 1.1v 264.745n 1.1v 264.755n 1.1v 269.745n 1.1v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.1v 319.745n 1.1v 319.755n 1.1v 324.745n 1.1v 324.755n 1.1v 329.745n 1.1v 329.755n 0.0v 334.745n 0.0v 334.755n 1.1v 339.745n 1.1v 339.755n 1.1v 344.745n 1.1v 344.755n 1.1v 349.745n 1.1v 349.755n 0.0v 354.745n 0.0v 354.755n 1.1v 359.745n 1.1v 359.755n 1.1v 364.745n 1.1v 364.755n 1.1v 369.745n 1.1v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.1v 384.745n 1.1v 384.755n 0.0v 389.745n 0.0v 389.755n 1.1v 394.745n 1.1v 394.755n 1.1v 399.745n 1.1v 399.755n 1.1v 404.745n 1.1v 404.755n 0.0v 409.745n 0.0v 409.755n 1.1v 414.745n 1.1v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 1.1v 429.745n 1.1v 429.755n 1.1v 434.745n 1.1v 434.755n 1.1v 439.745n 1.1v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 1.1v 524.745n 1.1v 524.755n 1.1v 529.745n 1.1v 529.755n 1.1v 534.745n 1.1v 534.755n 1.1v 539.745n 1.1v 539.755n 1.1v 544.745n 1.1v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.1v 559.745n 1.1v 559.755n 1.1v 564.745n 1.1v 564.755n 0.0v 569.745n 0.0v 569.755n 1.1v 574.745n 1.1v 574.755n 1.1v 579.745n 1.1v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 1.1v 599.745n 1.1v 599.755n 1.1v 604.745n 1.1v 604.755n 1.1v 609.745n 1.1v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 1.1v 634.745n 1.1v 634.755n 0.0v 639.745n 0.0v 639.755n 1.1v 644.745n 1.1v 644.755n 1.1v 649.745n 1.1v 649.755n 1.1v 654.745n 1.1v 654.755n 1.1v 659.745n 1.1v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 1.1v 684.745n 1.1v 684.755n 1.1v 689.745n 1.1v 689.755n 1.1v 694.745n 1.1v 694.755n 1.1v 699.745n 1.1v 699.755n 1.1v 704.745n 1.1v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 1.1v 719.745n 1.1v 719.755n 1.1v 724.745n 1.1v 724.755n 0.0v 729.745n 0.0v 729.755n 1.1v 734.745n 1.1v 734.755n 1.1v 739.745n 1.1v 739.755n 1.1v 744.745n 1.1v 744.755n 1.1v 749.745n 1.1v 749.755n 1.1v 754.745n 1.1v 754.755n 0.0v 759.745n 0.0v 759.755n 1.1v 764.745n 1.1v 764.755n 0.0v 769.745n 0.0v 769.755n 1.1v 774.745n 1.1v 774.755n 1.1v 779.745n 1.1v 779.755n 1.1v 784.745n 1.1v 784.755n 1.1v 789.745n 1.1v 789.755n 1.1v 794.745n 1.1v 794.755n 0.0v 799.745n 0.0v 799.755n 1.1v 804.745n 1.1v 804.755n 1.1v 809.745n 1.1v 809.755n 1.1v 814.745n 1.1v 814.755n 0.0v 819.745n 0.0v 819.755n 1.1v 824.745n 1.1v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 1.1v 844.745n 1.1v 844.755n 0.0v 849.745n 0.0v 849.755n 1.1v 854.745n 1.1v 854.755n 1.1v 859.745n 1.1v 859.755n 0.0v 864.745n 0.0v 864.755n 1.1v 869.745n 1.1v 869.755n 1.1v 874.745n 1.1v 874.755n 0.0v 879.745n 0.0v 879.755n 1.1v 884.745n 1.1v 884.755n 1.1v 889.745n 1.1v 889.755n 1.1v 894.745n 1.1v 894.755n 1.1v 899.745n 1.1v 899.755n 1.1v 904.745n 1.1v 904.755n 0.0v 909.745n 0.0v 909.755n 1.1v 914.745n 1.1v 914.755n 1.1v 919.745n 1.1v 919.755n 1.1v 924.745n 1.1v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.1v 944.745n 1.1v 944.755n 1.1v 949.745n 1.1v 949.755n 1.1v 954.745n 1.1v 954.755n 1.1v 959.745n 1.1v 959.755n 1.1v 964.745n 1.1v 964.755n 0.0v 969.745n 0.0v 969.755n 1.1v 974.745n 1.1v 974.755n 1.1v 979.745n 1.1v 979.755n 1.1v 984.745n 1.1v 984.755n 1.1v 989.745n 1.1v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.1v 1009.745n 1.1v 1009.755n 1.1v 1014.745n 1.1v 1014.755n 1.1v 1019.745n 1.1v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 0), (50, 1), (55, 0), (60, 1), (65, 0), (70, 1), (75, 0), (80, 0), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 0), (125, 0), (130, 1), (135, 0), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 1), (180, 0), (185, 1), (190, 1), (195, 1), (200, 0), (205, 0), (210, 0), (215, 0), (220, 1), (225, 0), (230, 1), (235, 1), (240, 0), (245, 1), (250, 1), (255, 0), (260, 0), (265, 0), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 0), (300, 0), (305, 0), (310, 0), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 0), (385, 0), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 0), (420, 0), (425, 0), (430, 0), (435, 1), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 1), (475, 1), (480, 1), (485, 1), (490, 0), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 0), (575, 0), (580, 1), (585, 0), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 0), (620, 1), (625, 1), (630, 0), (635, 0), (640, 1), (645, 1), (650, 1), (655, 0), (660, 1), (665, 0), (670, 0), (675, 0), (680, 1), (685, 1), (690, 1), (695, 1), (700, 0), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 0), (750, 0), (755, 1), (760, 0), (765, 0), (770, 1), (775, 1), (780, 0), (785, 1), (790, 1), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 1), (830, 0), (835, 0), (840, 1), (845, 1), (850, 1), (855, 0), (860, 0), (865, 0), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 0), (905, 0), (910, 1), (915, 1), (920, 1), (925, 1), (930, 0), (935, 1), (940, 0), (945, 1), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 0), (985, 0), (990, 1), (995, 0), (1000, 0), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Vdin0_14  din0_14  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.1v 9.745n 1.1v 9.755n 1.1v 14.745n 1.1v 14.755n 1.1v 19.745n 1.1v 19.755n 1.1v 24.745n 1.1v 24.755n 1.1v 29.745n 1.1v 29.755n 1.1v 34.745n 1.1v 34.755n 1.1v 39.745n 1.1v 39.755n 1.1v 44.745n 1.1v 44.755n 0.0v 49.745n 0.0v 49.755n 1.1v 54.745n 1.1v 54.755n 0.0v 59.745n 0.0v 59.755n 1.1v 64.745n 1.1v 64.755n 0.0v 69.745n 0.0v 69.755n 1.1v 74.745n 1.1v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 1.1v 89.745n 1.1v 89.755n 1.1v 94.745n 1.1v 94.755n 1.1v 99.745n 1.1v 99.755n 1.1v 104.745n 1.1v 104.755n 1.1v 109.745n 1.1v 109.755n 1.1v 114.745n 1.1v 114.755n 1.1v 119.745n 1.1v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 1.1v 134.745n 1.1v 134.755n 0.0v 139.745n 0.0v 139.755n 1.1v 144.745n 1.1v 144.755n 1.1v 149.745n 1.1v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.1v 174.745n 1.1v 174.755n 1.1v 179.745n 1.1v 179.755n 0.0v 184.745n 0.0v 184.755n 1.1v 189.745n 1.1v 189.755n 1.1v 194.745n 1.1v 194.755n 1.1v 199.745n 1.1v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.1v 224.745n 1.1v 224.755n 0.0v 229.745n 0.0v 229.755n 1.1v 234.745n 1.1v 234.755n 1.1v 239.745n 1.1v 239.755n 0.0v 244.745n 0.0v 244.755n 1.1v 249.745n 1.1v 249.755n 1.1v 254.745n 1.1v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.1v 274.745n 1.1v 274.755n 1.1v 279.745n 1.1v 279.755n 1.1v 284.745n 1.1v 284.755n 1.1v 289.745n 1.1v 289.755n 1.1v 294.745n 1.1v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.1v 319.745n 1.1v 319.755n 1.1v 324.745n 1.1v 324.755n 1.1v 329.745n 1.1v 329.755n 1.1v 334.745n 1.1v 334.755n 1.1v 339.745n 1.1v 339.755n 1.1v 344.745n 1.1v 344.755n 1.1v 349.745n 1.1v 349.755n 1.1v 354.745n 1.1v 354.755n 1.1v 359.745n 1.1v 359.755n 1.1v 364.745n 1.1v 364.755n 1.1v 369.745n 1.1v 369.755n 1.1v 374.745n 1.1v 374.755n 1.1v 379.745n 1.1v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.1v 394.745n 1.1v 394.755n 1.1v 399.745n 1.1v 399.755n 1.1v 404.745n 1.1v 404.755n 1.1v 409.745n 1.1v 409.755n 1.1v 414.745n 1.1v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 1.1v 439.745n 1.1v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.1v 474.745n 1.1v 474.755n 1.1v 479.745n 1.1v 479.755n 1.1v 484.745n 1.1v 484.755n 1.1v 489.745n 1.1v 489.755n 0.0v 494.745n 0.0v 494.755n 1.1v 499.745n 1.1v 499.755n 1.1v 504.745n 1.1v 504.755n 1.1v 509.745n 1.1v 509.755n 1.1v 514.745n 1.1v 514.755n 1.1v 519.745n 1.1v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 1.1v 549.745n 1.1v 549.755n 1.1v 554.745n 1.1v 554.755n 1.1v 559.745n 1.1v 559.755n 1.1v 564.745n 1.1v 564.755n 1.1v 569.745n 1.1v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.1v 584.745n 1.1v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.1v 604.745n 1.1v 604.755n 1.1v 609.745n 1.1v 609.755n 1.1v 614.745n 1.1v 614.755n 0.0v 619.745n 0.0v 619.755n 1.1v 624.745n 1.1v 624.755n 1.1v 629.745n 1.1v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 1.1v 644.745n 1.1v 644.755n 1.1v 649.745n 1.1v 649.755n 1.1v 654.745n 1.1v 654.755n 0.0v 659.745n 0.0v 659.755n 1.1v 664.745n 1.1v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 1.1v 684.745n 1.1v 684.755n 1.1v 689.745n 1.1v 689.755n 1.1v 694.745n 1.1v 694.755n 1.1v 699.745n 1.1v 699.755n 0.0v 704.745n 0.0v 704.755n 1.1v 709.745n 1.1v 709.755n 1.1v 714.745n 1.1v 714.755n 1.1v 719.745n 1.1v 719.755n 1.1v 724.745n 1.1v 724.755n 1.1v 729.745n 1.1v 729.755n 1.1v 734.745n 1.1v 734.755n 1.1v 739.745n 1.1v 739.755n 1.1v 744.745n 1.1v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 1.1v 759.745n 1.1v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.1v 774.745n 1.1v 774.755n 1.1v 779.745n 1.1v 779.755n 0.0v 784.745n 0.0v 784.755n 1.1v 789.745n 1.1v 789.755n 1.1v 794.745n 1.1v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.1v 829.745n 1.1v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 1.1v 844.745n 1.1v 844.755n 1.1v 849.745n 1.1v 849.755n 1.1v 854.745n 1.1v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 1.1v 874.745n 1.1v 874.755n 1.1v 879.745n 1.1v 879.755n 1.1v 884.745n 1.1v 884.755n 1.1v 889.745n 1.1v 889.755n 1.1v 894.745n 1.1v 894.755n 1.1v 899.745n 1.1v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 1.1v 914.745n 1.1v 914.755n 1.1v 919.745n 1.1v 919.755n 1.1v 924.745n 1.1v 924.755n 1.1v 929.745n 1.1v 929.755n 0.0v 934.745n 0.0v 934.755n 1.1v 939.745n 1.1v 939.755n 0.0v 944.745n 0.0v 944.755n 1.1v 949.745n 1.1v 949.755n 1.1v 954.745n 1.1v 954.755n 1.1v 959.745n 1.1v 959.755n 1.1v 964.745n 1.1v 964.755n 1.1v 969.745n 1.1v 969.755n 1.1v 974.745n 1.1v 974.755n 1.1v 979.745n 1.1v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 1.1v 994.745n 1.1v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.1v 1009.745n 1.1v 1009.755n 1.1v 1014.745n 1.1v 1014.755n 1.1v 1019.745n 1.1v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 0), (65, 1), (70, 1), (75, 1), (80, 1), (85, 0), (90, 0), (95, 0), (100, 0), (105, 1), (110, 1), (115, 0), (120, 1), (125, 1), (130, 0), (135, 1), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 1), (180, 0), (185, 0), (190, 1), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 1), (250, 0), (255, 1), (260, 1), (265, 1), (270, 0), (275, 0), (280, 1), (285, 1), (290, 1), (295, 0), (300, 1), (305, 1), (310, 1), (315, 0), (320, 0), (325, 0), (330, 1), (335, 0), (340, 1), (345, 0), (350, 0), (355, 0), (360, 1), (365, 1), (370, 0), (375, 0), (380, 0), (385, 1), (390, 1), (395, 1), (400, 1), (405, 0), (410, 1), (415, 0), (420, 0), (425, 1), (430, 1), (435, 0), (440, 1), (445, 1), (450, 1), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 1), (495, 0), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 0), (545, 1), (550, 1), (555, 0), (560, 0), (565, 1), (570, 0), (575, 0), (580, 0), (585, 1), (590, 1), (595, 0), (600, 0), (605, 0), (610, 0), (615, 1), (620, 0), (625, 0), (630, 0), (635, 1), (640, 0), (645, 0), (650, 0), (655, 0), (660, 1), (665, 0), (670, 1), (675, 1), (680, 0), (685, 0), (690, 0), (695, 0), (700, 1), (705, 1), (710, 1), (715, 0), (720, 0), (725, 1), (730, 1), (735, 0), (740, 1), (745, 1), (750, 1), (755, 0), (760, 0), (765, 0), (770, 1), (775, 1), (780, 0), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 0), (825, 0), (830, 0), (835, 0), (840, 1), (845, 1), (850, 0), (855, 1), (860, 1), (865, 1), (870, 0), (875, 1), (880, 0), (885, 0), (890, 0), (895, 0), (900, 1), (905, 0), (910, 0), (915, 0), (920, 0), (925, 1), (930, 1), (935, 1), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 1), (985, 0), (990, 0), (995, 1), (1000, 1), (1005, 0), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Vdin0_15  din0_15  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.1v 14.745n 1.1v 14.755n 1.1v 19.745n 1.1v 19.755n 1.1v 24.745n 1.1v 24.755n 1.1v 29.745n 1.1v 29.755n 1.1v 34.745n 1.1v 34.755n 1.1v 39.745n 1.1v 39.755n 1.1v 44.745n 1.1v 44.755n 1.1v 49.745n 1.1v 49.755n 1.1v 54.745n 1.1v 54.755n 1.1v 59.745n 1.1v 59.755n 0.0v 64.745n 0.0v 64.755n 1.1v 69.745n 1.1v 69.755n 1.1v 74.745n 1.1v 74.755n 1.1v 79.745n 1.1v 79.755n 1.1v 84.745n 1.1v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 1.1v 109.745n 1.1v 109.755n 1.1v 114.745n 1.1v 114.755n 0.0v 119.745n 0.0v 119.755n 1.1v 124.745n 1.1v 124.755n 1.1v 129.745n 1.1v 129.755n 0.0v 134.745n 0.0v 134.755n 1.1v 139.745n 1.1v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 1.1v 179.745n 1.1v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.1v 194.745n 1.1v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 1.1v 249.745n 1.1v 249.755n 0.0v 254.745n 0.0v 254.755n 1.1v 259.745n 1.1v 259.755n 1.1v 264.745n 1.1v 264.755n 1.1v 269.745n 1.1v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 1.1v 284.745n 1.1v 284.755n 1.1v 289.745n 1.1v 289.755n 1.1v 294.745n 1.1v 294.755n 0.0v 299.745n 0.0v 299.755n 1.1v 304.745n 1.1v 304.755n 1.1v 309.745n 1.1v 309.755n 1.1v 314.745n 1.1v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.1v 334.745n 1.1v 334.755n 0.0v 339.745n 0.0v 339.755n 1.1v 344.745n 1.1v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 1.1v 364.745n 1.1v 364.755n 1.1v 369.745n 1.1v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 1.1v 389.745n 1.1v 389.755n 1.1v 394.745n 1.1v 394.755n 1.1v 399.745n 1.1v 399.755n 1.1v 404.745n 1.1v 404.755n 0.0v 409.745n 0.0v 409.755n 1.1v 414.745n 1.1v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 1.1v 429.745n 1.1v 429.755n 1.1v 434.745n 1.1v 434.755n 0.0v 439.745n 0.0v 439.755n 1.1v 444.745n 1.1v 444.755n 1.1v 449.745n 1.1v 449.755n 1.1v 454.745n 1.1v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.1v 494.745n 1.1v 494.755n 0.0v 499.745n 0.0v 499.755n 1.1v 504.745n 1.1v 504.755n 1.1v 509.745n 1.1v 509.755n 1.1v 514.745n 1.1v 514.755n 1.1v 519.745n 1.1v 519.755n 1.1v 524.745n 1.1v 524.755n 1.1v 529.745n 1.1v 529.755n 1.1v 534.745n 1.1v 534.755n 1.1v 539.745n 1.1v 539.755n 0.0v 544.745n 0.0v 544.755n 1.1v 549.745n 1.1v 549.755n 1.1v 554.745n 1.1v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.1v 569.745n 1.1v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 1.1v 589.745n 1.1v 589.755n 1.1v 594.745n 1.1v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 1.1v 619.745n 1.1v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 1.1v 639.745n 1.1v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.1v 664.745n 1.1v 664.755n 0.0v 669.745n 0.0v 669.755n 1.1v 674.745n 1.1v 674.755n 1.1v 679.745n 1.1v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.1v 704.745n 1.1v 704.755n 1.1v 709.745n 1.1v 709.755n 1.1v 714.745n 1.1v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.1v 729.745n 1.1v 729.755n 1.1v 734.745n 1.1v 734.755n 0.0v 739.745n 0.0v 739.755n 1.1v 744.745n 1.1v 744.755n 1.1v 749.745n 1.1v 749.755n 1.1v 754.745n 1.1v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.1v 774.745n 1.1v 774.755n 1.1v 779.745n 1.1v 779.755n 0.0v 784.745n 0.0v 784.755n 1.1v 789.745n 1.1v 789.755n 1.1v 794.745n 1.1v 794.755n 1.1v 799.745n 1.1v 799.755n 1.1v 804.745n 1.1v 804.755n 1.1v 809.745n 1.1v 809.755n 1.1v 814.745n 1.1v 814.755n 1.1v 819.745n 1.1v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 1.1v 844.745n 1.1v 844.755n 1.1v 849.745n 1.1v 849.755n 0.0v 854.745n 0.0v 854.755n 1.1v 859.745n 1.1v 859.755n 1.1v 864.745n 1.1v 864.755n 1.1v 869.745n 1.1v 869.755n 0.0v 874.745n 0.0v 874.755n 1.1v 879.745n 1.1v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.1v 904.745n 1.1v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 1.1v 929.745n 1.1v 929.755n 1.1v 934.745n 1.1v 934.755n 1.1v 939.745n 1.1v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.1v 984.745n 1.1v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 1.1v 999.745n 1.1v 999.755n 1.1v 1004.745n 1.1v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.1v 1024.745n 1.1v 1024.755n 1.1v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 1), (60, 1), (65, 0), (70, 1), (75, 0), (80, 0), (85, 0), (90, 0), (95, 1), (100, 1), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 1), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 1), (180, 0), (185, 1), (190, 0), (195, 1), (200, 1), (205, 1), (210, 0), (215, 0), (220, 1), (225, 0), (230, 0), (235, 0), (240, 1), (245, 0), (250, 1), (255, 1), (260, 0), (265, 1), (270, 0), (275, 0), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 0), (345, 1), (350, 1), (355, 0), (360, 1), (365, 1), (370, 1), (375, 1), (380, 0), (385, 0), (390, 1), (395, 0), (400, 0), (405, 1), (410, 1), (415, 1), (420, 1), (425, 0), (430, 1), (435, 0), (440, 1), (445, 1), (450, 1), (455, 0), (460, 0), (465, 0), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 1), (545, 0), (550, 0), (555, 1), (560, 1), (565, 0), (570, 0), (575, 1), (580, 1), (585, 0), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 1), (635, 1), (640, 0), (645, 0), (650, 0), (655, 0), (660, 1), (665, 1), (670, 0), (675, 0), (680, 1), (685, 1), (690, 1), (695, 0), (700, 0), (705, 1), (710, 1), (715, 0), (720, 0), (725, 1), (730, 1), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 1), (770, 1), (775, 1), (780, 0), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 0), (820, 0), (825, 1), (830, 0), (835, 0), (840, 1), (845, 0), (850, 0), (855, 1), (860, 1), (865, 0), (870, 1), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 1), (905, 0), (910, 1), (915, 1), (920, 0), (925, 0), (930, 1), (935, 0), (940, 0), (945, 1), (950, 1), (955, 0), (960, 0), (965, 0), (970, 1), (975, 1), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_16  din0_16  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.1v 9.745n 1.1v 9.755n 1.1v 14.745n 1.1v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 1.1v 59.745n 1.1v 59.755n 1.1v 64.745n 1.1v 64.755n 0.0v 69.745n 0.0v 69.755n 1.1v 74.745n 1.1v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.1v 99.745n 1.1v 99.755n 1.1v 104.745n 1.1v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.1v 139.745n 1.1v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.1v 174.745n 1.1v 174.755n 1.1v 179.745n 1.1v 179.755n 0.0v 184.745n 0.0v 184.755n 1.1v 189.745n 1.1v 189.755n 0.0v 194.745n 0.0v 194.755n 1.1v 199.745n 1.1v 199.755n 1.1v 204.745n 1.1v 204.755n 1.1v 209.745n 1.1v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.1v 224.745n 1.1v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 1.1v 244.745n 1.1v 244.755n 0.0v 249.745n 0.0v 249.755n 1.1v 254.745n 1.1v 254.755n 1.1v 259.745n 1.1v 259.755n 0.0v 264.745n 0.0v 264.755n 1.1v 269.745n 1.1v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 1.1v 284.745n 1.1v 284.755n 1.1v 289.745n 1.1v 289.755n 1.1v 294.745n 1.1v 294.755n 1.1v 299.745n 1.1v 299.755n 1.1v 304.745n 1.1v 304.755n 1.1v 309.745n 1.1v 309.755n 1.1v 314.745n 1.1v 314.755n 1.1v 319.745n 1.1v 319.755n 1.1v 324.745n 1.1v 324.755n 1.1v 329.745n 1.1v 329.755n 1.1v 334.745n 1.1v 334.755n 1.1v 339.745n 1.1v 339.755n 0.0v 344.745n 0.0v 344.755n 1.1v 349.745n 1.1v 349.755n 1.1v 354.745n 1.1v 354.755n 0.0v 359.745n 0.0v 359.755n 1.1v 364.745n 1.1v 364.755n 1.1v 369.745n 1.1v 369.755n 1.1v 374.745n 1.1v 374.755n 1.1v 379.745n 1.1v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.1v 394.745n 1.1v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 1.1v 409.745n 1.1v 409.755n 1.1v 414.745n 1.1v 414.755n 1.1v 419.745n 1.1v 419.755n 1.1v 424.745n 1.1v 424.755n 0.0v 429.745n 0.0v 429.755n 1.1v 434.745n 1.1v 434.755n 0.0v 439.745n 0.0v 439.755n 1.1v 444.745n 1.1v 444.755n 1.1v 449.745n 1.1v 449.755n 1.1v 454.745n 1.1v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.1v 474.745n 1.1v 474.755n 1.1v 479.745n 1.1v 479.755n 1.1v 484.745n 1.1v 484.755n 1.1v 489.745n 1.1v 489.755n 1.1v 494.745n 1.1v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.1v 544.745n 1.1v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.1v 559.745n 1.1v 559.755n 1.1v 564.745n 1.1v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.1v 579.745n 1.1v 579.755n 1.1v 584.745n 1.1v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 1.1v 634.745n 1.1v 634.755n 1.1v 639.745n 1.1v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.1v 664.745n 1.1v 664.755n 1.1v 669.745n 1.1v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 1.1v 684.745n 1.1v 684.755n 1.1v 689.745n 1.1v 689.755n 1.1v 694.745n 1.1v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 1.1v 709.745n 1.1v 709.755n 1.1v 714.745n 1.1v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.1v 729.745n 1.1v 729.755n 1.1v 734.745n 1.1v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 1.1v 769.745n 1.1v 769.755n 1.1v 774.745n 1.1v 774.755n 1.1v 779.745n 1.1v 779.755n 0.0v 784.745n 0.0v 784.755n 1.1v 789.745n 1.1v 789.755n 1.1v 794.745n 1.1v 794.755n 1.1v 799.745n 1.1v 799.755n 1.1v 804.745n 1.1v 804.755n 1.1v 809.745n 1.1v 809.755n 1.1v 814.745n 1.1v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.1v 829.745n 1.1v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 1.1v 844.745n 1.1v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 1.1v 859.745n 1.1v 859.755n 1.1v 864.745n 1.1v 864.755n 0.0v 869.745n 0.0v 869.755n 1.1v 874.745n 1.1v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.1v 904.745n 1.1v 904.755n 0.0v 909.745n 0.0v 909.755n 1.1v 914.745n 1.1v 914.755n 1.1v 919.745n 1.1v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 1.1v 934.745n 1.1v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 1.1v 949.745n 1.1v 949.755n 1.1v 954.745n 1.1v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 1.1v 974.745n 1.1v 974.755n 1.1v 979.745n 1.1v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.1v 1009.745n 1.1v 1009.755n 1.1v 1014.745n 1.1v 1014.755n 1.1v 1019.745n 1.1v 1019.755n 1.1v 1024.745n 1.1v 1024.755n 1.1v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 1), (50, 1), (55, 0), (60, 0), (65, 1), (70, 1), (75, 0), (80, 0), (85, 0), (90, 0), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 0), (125, 0), (130, 1), (135, 1), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 0), (190, 1), (195, 1), (200, 1), (205, 1), (210, 0), (215, 0), (220, 1), (225, 1), (230, 1), (235, 1), (240, 0), (245, 1), (250, 0), (255, 1), (260, 0), (265, 1), (270, 0), (275, 0), (280, 1), (285, 1), (290, 1), (295, 0), (300, 0), (305, 0), (310, 0), (315, 1), (320, 1), (325, 1), (330, 1), (335, 0), (340, 1), (345, 1), (350, 0), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 0), (385, 1), (390, 1), (395, 1), (400, 0), (405, 1), (410, 0), (415, 1), (420, 1), (425, 0), (430, 1), (435, 1), (440, 1), (445, 1), (450, 0), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 0), (495, 0), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 0), (545, 0), (550, 0), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 0), (585, 1), (590, 1), (595, 1), (600, 0), (605, 0), (610, 1), (615, 0), (620, 0), (625, 0), (630, 0), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 1), (665, 0), (670, 0), (675, 0), (680, 1), (685, 1), (690, 1), (695, 0), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 0), (735, 0), (740, 0), (745, 0), (750, 1), (755, 1), (760, 1), (765, 1), (770, 1), (775, 1), (780, 0), (785, 0), (790, 0), (795, 0), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 0), (850, 1), (855, 0), (860, 0), (865, 1), (870, 0), (875, 0), (880, 1), (885, 1), (890, 1), (895, 1), (900, 0), (905, 1), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 1), (945, 1), (950, 1), (955, 1), (960, 0), (965, 1), (970, 1), (975, 1), (980, 0), (985, 0), (990, 0), (995, 1), (1000, 1), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_17  din0_17  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.1v 14.745n 1.1v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.1v 49.745n 1.1v 49.755n 1.1v 54.745n 1.1v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 1.1v 69.745n 1.1v 69.755n 1.1v 74.745n 1.1v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.1v 99.745n 1.1v 99.755n 1.1v 104.745n 1.1v 104.755n 1.1v 109.745n 1.1v 109.755n 1.1v 114.745n 1.1v 114.755n 1.1v 119.745n 1.1v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 1.1v 134.745n 1.1v 134.755n 1.1v 139.745n 1.1v 139.755n 1.1v 144.745n 1.1v 144.755n 1.1v 149.745n 1.1v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.1v 174.745n 1.1v 174.755n 1.1v 179.745n 1.1v 179.755n 1.1v 184.745n 1.1v 184.755n 0.0v 189.745n 0.0v 189.755n 1.1v 194.745n 1.1v 194.755n 1.1v 199.745n 1.1v 199.755n 1.1v 204.745n 1.1v 204.755n 1.1v 209.745n 1.1v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.1v 224.745n 1.1v 224.755n 1.1v 229.745n 1.1v 229.755n 1.1v 234.745n 1.1v 234.755n 1.1v 239.745n 1.1v 239.755n 0.0v 244.745n 0.0v 244.755n 1.1v 249.745n 1.1v 249.755n 0.0v 254.745n 0.0v 254.755n 1.1v 259.745n 1.1v 259.755n 0.0v 264.745n 0.0v 264.755n 1.1v 269.745n 1.1v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 1.1v 284.745n 1.1v 284.755n 1.1v 289.745n 1.1v 289.755n 1.1v 294.745n 1.1v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.1v 319.745n 1.1v 319.755n 1.1v 324.745n 1.1v 324.755n 1.1v 329.745n 1.1v 329.755n 1.1v 334.745n 1.1v 334.755n 0.0v 339.745n 0.0v 339.755n 1.1v 344.745n 1.1v 344.755n 1.1v 349.745n 1.1v 349.755n 0.0v 354.745n 0.0v 354.755n 1.1v 359.745n 1.1v 359.755n 1.1v 364.745n 1.1v 364.755n 1.1v 369.745n 1.1v 369.755n 1.1v 374.745n 1.1v 374.755n 1.1v 379.745n 1.1v 379.755n 0.0v 384.745n 0.0v 384.755n 1.1v 389.745n 1.1v 389.755n 1.1v 394.745n 1.1v 394.755n 1.1v 399.745n 1.1v 399.755n 0.0v 404.745n 0.0v 404.755n 1.1v 409.745n 1.1v 409.755n 0.0v 414.745n 0.0v 414.755n 1.1v 419.745n 1.1v 419.755n 1.1v 424.745n 1.1v 424.755n 0.0v 429.745n 0.0v 429.755n 1.1v 434.745n 1.1v 434.755n 1.1v 439.745n 1.1v 439.755n 1.1v 444.745n 1.1v 444.755n 1.1v 449.745n 1.1v 449.755n 0.0v 454.745n 0.0v 454.755n 1.1v 459.745n 1.1v 459.755n 1.1v 464.745n 1.1v 464.755n 1.1v 469.745n 1.1v 469.755n 1.1v 474.745n 1.1v 474.755n 1.1v 479.745n 1.1v 479.755n 1.1v 484.745n 1.1v 484.755n 1.1v 489.745n 1.1v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 1.1v 504.745n 1.1v 504.755n 1.1v 509.745n 1.1v 509.755n 1.1v 514.745n 1.1v 514.755n 1.1v 519.745n 1.1v 519.755n 1.1v 524.745n 1.1v 524.755n 1.1v 529.745n 1.1v 529.755n 1.1v 534.745n 1.1v 534.755n 1.1v 539.745n 1.1v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.1v 559.745n 1.1v 559.755n 1.1v 564.745n 1.1v 564.755n 1.1v 569.745n 1.1v 569.755n 1.1v 574.745n 1.1v 574.755n 1.1v 579.745n 1.1v 579.755n 0.0v 584.745n 0.0v 584.755n 1.1v 589.745n 1.1v 589.755n 1.1v 594.745n 1.1v 594.755n 1.1v 599.745n 1.1v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 1.1v 614.745n 1.1v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 1.1v 639.745n 1.1v 639.755n 1.1v 644.745n 1.1v 644.755n 1.1v 649.745n 1.1v 649.755n 1.1v 654.745n 1.1v 654.755n 1.1v 659.745n 1.1v 659.755n 1.1v 664.745n 1.1v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 1.1v 684.745n 1.1v 684.755n 1.1v 689.745n 1.1v 689.755n 1.1v 694.745n 1.1v 694.755n 0.0v 699.745n 0.0v 699.755n 1.1v 704.745n 1.1v 704.755n 1.1v 709.745n 1.1v 709.755n 1.1v 714.745n 1.1v 714.755n 1.1v 719.745n 1.1v 719.755n 1.1v 724.745n 1.1v 724.755n 1.1v 729.745n 1.1v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 1.1v 754.745n 1.1v 754.755n 1.1v 759.745n 1.1v 759.755n 1.1v 764.745n 1.1v 764.755n 1.1v 769.745n 1.1v 769.755n 1.1v 774.745n 1.1v 774.755n 1.1v 779.745n 1.1v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.1v 804.745n 1.1v 804.755n 1.1v 809.745n 1.1v 809.755n 1.1v 814.745n 1.1v 814.755n 1.1v 819.745n 1.1v 819.755n 1.1v 824.745n 1.1v 824.755n 1.1v 829.745n 1.1v 829.755n 1.1v 834.745n 1.1v 834.755n 1.1v 839.745n 1.1v 839.755n 1.1v 844.745n 1.1v 844.755n 0.0v 849.745n 0.0v 849.755n 1.1v 854.745n 1.1v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.1v 869.745n 1.1v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 1.1v 884.745n 1.1v 884.755n 1.1v 889.745n 1.1v 889.755n 1.1v 894.745n 1.1v 894.755n 1.1v 899.745n 1.1v 899.755n 0.0v 904.745n 0.0v 904.755n 1.1v 909.745n 1.1v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.1v 944.745n 1.1v 944.755n 1.1v 949.745n 1.1v 949.755n 1.1v 954.745n 1.1v 954.755n 1.1v 959.745n 1.1v 959.755n 0.0v 964.745n 0.0v 964.755n 1.1v 969.745n 1.1v 969.755n 1.1v 974.745n 1.1v 974.755n 1.1v 979.745n 1.1v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 1.1v 999.745n 1.1v 999.755n 1.1v 1004.745n 1.1v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 1), (55, 1), (60, 1), (65, 1), (70, 0), (75, 1), (80, 1), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 1), (120, 1), (125, 1), (130, 1), (135, 0), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 0), (175, 1), (180, 0), (185, 1), (190, 1), (195, 0), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 1), (230, 1), (235, 1), (240, 0), (245, 1), (250, 0), (255, 0), (260, 0), (265, 0), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 1), (335, 0), (340, 1), (345, 0), (350, 1), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 1), (385, 1), (390, 0), (395, 0), (400, 0), (405, 1), (410, 1), (415, 1), (420, 1), (425, 0), (430, 1), (435, 0), (440, 0), (445, 0), (450, 0), (455, 1), (460, 1), (465, 1), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 1), (505, 1), (510, 1), (515, 1), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 1), (560, 1), (565, 1), (570, 0), (575, 1), (580, 1), (585, 1), (590, 1), (595, 0), (600, 1), (605, 1), (610, 0), (615, 0), (620, 1), (625, 1), (630, 0), (635, 0), (640, 1), (645, 1), (650, 0), (655, 1), (660, 1), (665, 1), (670, 0), (675, 0), (680, 1), (685, 1), (690, 1), (695, 0), (700, 1), (705, 0), (710, 0), (715, 1), (720, 1), (725, 1), (730, 1), (735, 0), (740, 1), (745, 0), (750, 1), (755, 0), (760, 1), (765, 1), (770, 0), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 0), (855, 1), (860, 0), (865, 1), (870, 1), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 1), (915, 1), (920, 1), (925, 1), (930, 0), (935, 0), (940, 0), (945, 1), (950, 1), (955, 1), (960, 0), (965, 1), (970, 1), (975, 1), (980, 0), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Vdin0_18  din0_18  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.1v 14.745n 1.1v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 1.1v 54.745n 1.1v 54.755n 1.1v 59.745n 1.1v 59.755n 1.1v 64.745n 1.1v 64.755n 1.1v 69.745n 1.1v 69.755n 0.0v 74.745n 0.0v 74.755n 1.1v 79.745n 1.1v 79.755n 1.1v 84.745n 1.1v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.1v 119.745n 1.1v 119.755n 1.1v 124.745n 1.1v 124.755n 1.1v 129.745n 1.1v 129.755n 1.1v 134.745n 1.1v 134.755n 0.0v 139.745n 0.0v 139.755n 1.1v 144.745n 1.1v 144.755n 1.1v 149.745n 1.1v 149.755n 1.1v 154.745n 1.1v 154.755n 1.1v 159.745n 1.1v 159.755n 1.1v 164.745n 1.1v 164.755n 1.1v 169.745n 1.1v 169.755n 0.0v 174.745n 0.0v 174.755n 1.1v 179.745n 1.1v 179.755n 0.0v 184.745n 0.0v 184.755n 1.1v 189.745n 1.1v 189.755n 1.1v 194.745n 1.1v 194.755n 0.0v 199.745n 0.0v 199.755n 1.1v 204.745n 1.1v 204.755n 1.1v 209.745n 1.1v 209.755n 1.1v 214.745n 1.1v 214.755n 1.1v 219.745n 1.1v 219.755n 1.1v 224.745n 1.1v 224.755n 1.1v 229.745n 1.1v 229.755n 1.1v 234.745n 1.1v 234.755n 1.1v 239.745n 1.1v 239.755n 0.0v 244.745n 0.0v 244.755n 1.1v 249.745n 1.1v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.1v 274.745n 1.1v 274.755n 1.1v 279.745n 1.1v 279.755n 1.1v 284.745n 1.1v 284.755n 1.1v 289.745n 1.1v 289.755n 1.1v 294.745n 1.1v 294.755n 1.1v 299.745n 1.1v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.1v 334.745n 1.1v 334.755n 0.0v 339.745n 0.0v 339.755n 1.1v 344.745n 1.1v 344.755n 0.0v 349.745n 0.0v 349.755n 1.1v 354.745n 1.1v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.1v 384.745n 1.1v 384.755n 1.1v 389.745n 1.1v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 1.1v 409.745n 1.1v 409.755n 1.1v 414.745n 1.1v 414.755n 1.1v 419.745n 1.1v 419.755n 1.1v 424.745n 1.1v 424.755n 0.0v 429.745n 0.0v 429.755n 1.1v 434.745n 1.1v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.1v 459.745n 1.1v 459.755n 1.1v 464.745n 1.1v 464.755n 1.1v 469.745n 1.1v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 1.1v 504.745n 1.1v 504.755n 1.1v 509.745n 1.1v 509.755n 1.1v 514.745n 1.1v 514.755n 1.1v 519.745n 1.1v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.1v 559.745n 1.1v 559.755n 1.1v 564.745n 1.1v 564.755n 1.1v 569.745n 1.1v 569.755n 0.0v 574.745n 0.0v 574.755n 1.1v 579.745n 1.1v 579.755n 1.1v 584.745n 1.1v 584.755n 1.1v 589.745n 1.1v 589.755n 1.1v 594.745n 1.1v 594.755n 0.0v 599.745n 0.0v 599.755n 1.1v 604.745n 1.1v 604.755n 1.1v 609.745n 1.1v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 1.1v 624.745n 1.1v 624.755n 1.1v 629.745n 1.1v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 1.1v 644.745n 1.1v 644.755n 1.1v 649.745n 1.1v 649.755n 0.0v 654.745n 0.0v 654.755n 1.1v 659.745n 1.1v 659.755n 1.1v 664.745n 1.1v 664.755n 1.1v 669.745n 1.1v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 1.1v 684.745n 1.1v 684.755n 1.1v 689.745n 1.1v 689.755n 1.1v 694.745n 1.1v 694.755n 0.0v 699.745n 0.0v 699.755n 1.1v 704.745n 1.1v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 1.1v 719.745n 1.1v 719.755n 1.1v 724.745n 1.1v 724.755n 1.1v 729.745n 1.1v 729.755n 1.1v 734.745n 1.1v 734.755n 0.0v 739.745n 0.0v 739.755n 1.1v 744.745n 1.1v 744.755n 0.0v 749.745n 0.0v 749.755n 1.1v 754.745n 1.1v 754.755n 0.0v 759.745n 0.0v 759.755n 1.1v 764.745n 1.1v 764.755n 1.1v 769.745n 1.1v 769.755n 0.0v 774.745n 0.0v 774.755n 1.1v 779.745n 1.1v 779.755n 1.1v 784.745n 1.1v 784.755n 1.1v 789.745n 1.1v 789.755n 1.1v 794.745n 1.1v 794.755n 1.1v 799.745n 1.1v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.1v 829.745n 1.1v 829.755n 1.1v 834.745n 1.1v 834.755n 1.1v 839.745n 1.1v 839.755n 1.1v 844.745n 1.1v 844.755n 1.1v 849.745n 1.1v 849.755n 0.0v 854.745n 0.0v 854.755n 1.1v 859.745n 1.1v 859.755n 0.0v 864.745n 0.0v 864.755n 1.1v 869.745n 1.1v 869.755n 1.1v 874.745n 1.1v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 1.1v 914.745n 1.1v 914.755n 1.1v 919.745n 1.1v 919.755n 1.1v 924.745n 1.1v 924.755n 1.1v 929.745n 1.1v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 1.1v 949.745n 1.1v 949.755n 1.1v 954.745n 1.1v 954.755n 1.1v 959.745n 1.1v 959.755n 0.0v 964.745n 0.0v 964.755n 1.1v 969.745n 1.1v 969.755n 1.1v 974.745n 1.1v 974.755n 1.1v 979.745n 1.1v 979.755n 0.0v 984.745n 0.0v 984.755n 1.1v 989.745n 1.1v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.1v 1024.745n 1.1v 1024.755n 1.1v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 1), (55, 0), (60, 0), (65, 0), (70, 1), (75, 0), (80, 0), (85, 1), (90, 1), (95, 0), (100, 0), (105, 1), (110, 1), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 0), (180, 0), (185, 1), (190, 0), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 0), (225, 0), (230, 0), (235, 0), (240, 1), (245, 0), (250, 1), (255, 1), (260, 0), (265, 1), (270, 1), (275, 1), (280, 0), (285, 0), (290, 0), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 0), (335, 1), (340, 0), (345, 1), (350, 1), (355, 0), (360, 0), (365, 0), (370, 1), (375, 1), (380, 0), (385, 0), (390, 1), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 1), (430, 0), (435, 0), (440, 1), (445, 1), (450, 0), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 0), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 0), (525, 0), (530, 0), (535, 0), (540, 1), (545, 1), (550, 1), (555, 0), (560, 0), (565, 1), (570, 0), (575, 0), (580, 1), (585, 0), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 1), (620, 0), (625, 0), (630, 0), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 0), (685, 0), (690, 0), (695, 0), (700, 1), (705, 1), (710, 1), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 1), (750, 0), (755, 1), (760, 0), (765, 0), (770, 0), (775, 1), (780, 1), (785, 0), (790, 0), (795, 0), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 0), (830, 0), (835, 0), (840, 0), (845, 1), (850, 0), (855, 0), (860, 0), (865, 1), (870, 0), (875, 1), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 1), (925, 0), (930, 0), (935, 0), (940, 0), (945, 1), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 0), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_19  din0_19  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.1v 9.745n 1.1v 9.755n 1.1v 14.745n 1.1v 14.755n 1.1v 19.745n 1.1v 19.755n 1.1v 24.745n 1.1v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 1.1v 54.745n 1.1v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 1.1v 74.745n 1.1v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 1.1v 89.745n 1.1v 89.755n 1.1v 94.745n 1.1v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 1.1v 109.745n 1.1v 109.755n 1.1v 114.745n 1.1v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.1v 154.745n 1.1v 154.755n 1.1v 159.745n 1.1v 159.755n 1.1v 164.745n 1.1v 164.755n 1.1v 169.745n 1.1v 169.755n 1.1v 174.745n 1.1v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 1.1v 189.745n 1.1v 189.755n 0.0v 194.745n 0.0v 194.755n 1.1v 199.745n 1.1v 199.755n 1.1v 204.745n 1.1v 204.755n 1.1v 209.745n 1.1v 209.755n 1.1v 214.745n 1.1v 214.755n 1.1v 219.745n 1.1v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 1.1v 244.745n 1.1v 244.755n 0.0v 249.745n 0.0v 249.755n 1.1v 254.745n 1.1v 254.755n 1.1v 259.745n 1.1v 259.755n 0.0v 264.745n 0.0v 264.755n 1.1v 269.745n 1.1v 269.755n 1.1v 274.745n 1.1v 274.755n 1.1v 279.745n 1.1v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 1.1v 299.745n 1.1v 299.755n 1.1v 304.745n 1.1v 304.755n 1.1v 309.745n 1.1v 309.755n 1.1v 314.745n 1.1v 314.755n 1.1v 319.745n 1.1v 319.755n 1.1v 324.745n 1.1v 324.755n 1.1v 329.745n 1.1v 329.755n 0.0v 334.745n 0.0v 334.755n 1.1v 339.745n 1.1v 339.755n 0.0v 344.745n 0.0v 344.755n 1.1v 349.745n 1.1v 349.755n 1.1v 354.745n 1.1v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 1.1v 374.745n 1.1v 374.755n 1.1v 379.745n 1.1v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.1v 394.745n 1.1v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 1.1v 429.745n 1.1v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 1.1v 444.745n 1.1v 444.755n 1.1v 449.745n 1.1v 449.755n 0.0v 454.745n 0.0v 454.755n 1.1v 459.745n 1.1v 459.755n 1.1v 464.745n 1.1v 464.755n 1.1v 469.745n 1.1v 469.755n 1.1v 474.745n 1.1v 474.755n 1.1v 479.745n 1.1v 479.755n 1.1v 484.745n 1.1v 484.755n 1.1v 489.745n 1.1v 489.755n 0.0v 494.745n 0.0v 494.755n 1.1v 499.745n 1.1v 499.755n 1.1v 504.745n 1.1v 504.755n 1.1v 509.745n 1.1v 509.755n 1.1v 514.745n 1.1v 514.755n 1.1v 519.745n 1.1v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.1v 544.745n 1.1v 544.755n 1.1v 549.745n 1.1v 549.755n 1.1v 554.745n 1.1v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.1v 569.745n 1.1v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.1v 584.745n 1.1v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 1.1v 619.745n 1.1v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 1.1v 639.745n 1.1v 639.755n 1.1v 644.745n 1.1v 644.755n 1.1v 649.745n 1.1v 649.755n 1.1v 654.745n 1.1v 654.755n 1.1v 659.745n 1.1v 659.755n 1.1v 664.745n 1.1v 664.755n 1.1v 669.745n 1.1v 669.755n 1.1v 674.745n 1.1v 674.755n 1.1v 679.745n 1.1v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.1v 704.745n 1.1v 704.755n 1.1v 709.745n 1.1v 709.755n 1.1v 714.745n 1.1v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 1.1v 749.745n 1.1v 749.755n 0.0v 754.745n 0.0v 754.755n 1.1v 759.745n 1.1v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.1v 779.745n 1.1v 779.755n 1.1v 784.745n 1.1v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.1v 804.745n 1.1v 804.755n 1.1v 809.745n 1.1v 809.755n 1.1v 814.745n 1.1v 814.755n 1.1v 819.745n 1.1v 819.755n 1.1v 824.745n 1.1v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 1.1v 849.745n 1.1v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.1v 869.745n 1.1v 869.755n 0.0v 874.745n 0.0v 874.755n 1.1v 879.745n 1.1v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 1.1v 924.745n 1.1v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 1.1v 949.745n 1.1v 949.755n 1.1v 954.745n 1.1v 954.755n 1.1v 959.745n 1.1v 959.755n 1.1v 964.745n 1.1v 964.755n 1.1v 969.745n 1.1v 969.755n 1.1v 974.745n 1.1v 974.755n 1.1v 979.745n 1.1v 979.755n 0.0v 984.745n 0.0v 984.755n 1.1v 989.745n 1.1v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.1v 1009.745n 1.1v 1009.755n 1.1v 1014.745n 1.1v 1014.755n 1.1v 1019.745n 1.1v 1019.755n 1.1v 1024.745n 1.1v 1024.755n 1.1v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 1), (50, 1), (55, 0), (60, 0), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 0), (120, 1), (125, 1), (130, 1), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 0), (180, 0), (185, 0), (190, 0), (195, 1), (200, 0), (205, 0), (210, 1), (215, 1), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 1), (255, 0), (260, 0), (265, 0), (270, 1), (275, 1), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 1), (375, 1), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 1), (430, 1), (435, 0), (440, 1), (445, 1), (450, 1), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 1), (495, 1), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 1), (560, 1), (565, 0), (570, 1), (575, 1), (580, 1), (585, 0), (590, 0), (595, 1), (600, 1), (605, 1), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 1), (645, 1), (650, 1), (655, 1), (660, 0), (665, 0), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 0), (700, 0), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 0), (755, 0), (760, 1), (765, 0), (770, 0), (775, 1), (780, 0), (785, 1), (790, 1), (795, 0), (800, 0), (805, 0), (810, 0), (815, 1), (820, 1), (825, 1), (830, 0), (835, 0), (840, 1), (845, 0), (850, 1), (855, 1), (860, 1), (865, 0), (870, 1), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 1), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 1), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 1), (970, 0), (975, 0), (980, 1), (985, 1), (990, 1), (995, 0), (1000, 0), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_20  din0_20  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.1v 9.745n 1.1v 9.755n 1.1v 14.745n 1.1v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.1v 49.745n 1.1v 49.755n 1.1v 54.745n 1.1v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 1.1v 69.745n 1.1v 69.755n 1.1v 74.745n 1.1v 74.755n 1.1v 79.745n 1.1v 79.755n 1.1v 84.745n 1.1v 84.755n 1.1v 89.745n 1.1v 89.755n 1.1v 94.745n 1.1v 94.755n 1.1v 99.745n 1.1v 99.755n 1.1v 104.745n 1.1v 104.755n 1.1v 109.745n 1.1v 109.755n 1.1v 114.745n 1.1v 114.755n 0.0v 119.745n 0.0v 119.755n 1.1v 124.745n 1.1v 124.755n 1.1v 129.745n 1.1v 129.755n 1.1v 134.745n 1.1v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.1v 174.745n 1.1v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 1.1v 199.745n 1.1v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 1.1v 214.745n 1.1v 214.755n 1.1v 219.745n 1.1v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.1v 254.745n 1.1v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.1v 274.745n 1.1v 274.755n 1.1v 279.745n 1.1v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.1v 319.745n 1.1v 319.755n 1.1v 324.745n 1.1v 324.755n 1.1v 329.745n 1.1v 329.755n 1.1v 334.745n 1.1v 334.755n 1.1v 339.745n 1.1v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 1.1v 374.745n 1.1v 374.755n 1.1v 379.745n 1.1v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 1.1v 429.745n 1.1v 429.755n 1.1v 434.745n 1.1v 434.755n 0.0v 439.745n 0.0v 439.755n 1.1v 444.745n 1.1v 444.755n 1.1v 449.745n 1.1v 449.755n 1.1v 454.745n 1.1v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.1v 494.745n 1.1v 494.755n 1.1v 499.745n 1.1v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.1v 559.745n 1.1v 559.755n 1.1v 564.745n 1.1v 564.755n 0.0v 569.745n 0.0v 569.755n 1.1v 574.745n 1.1v 574.755n 1.1v 579.745n 1.1v 579.755n 1.1v 584.745n 1.1v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 1.1v 599.745n 1.1v 599.755n 1.1v 604.745n 1.1v 604.755n 1.1v 609.745n 1.1v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 1.1v 644.745n 1.1v 644.755n 1.1v 649.745n 1.1v 649.755n 1.1v 654.745n 1.1v 654.755n 1.1v 659.745n 1.1v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 1.1v 674.745n 1.1v 674.755n 1.1v 679.745n 1.1v 679.755n 1.1v 684.745n 1.1v 684.755n 1.1v 689.745n 1.1v 689.755n 1.1v 694.745n 1.1v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 1.1v 709.745n 1.1v 709.755n 1.1v 714.745n 1.1v 714.755n 1.1v 719.745n 1.1v 719.755n 1.1v 724.745n 1.1v 724.755n 1.1v 729.745n 1.1v 729.755n 1.1v 734.745n 1.1v 734.755n 1.1v 739.745n 1.1v 739.755n 1.1v 744.745n 1.1v 744.755n 1.1v 749.745n 1.1v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 1.1v 764.745n 1.1v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.1v 779.745n 1.1v 779.755n 0.0v 784.745n 0.0v 784.755n 1.1v 789.745n 1.1v 789.755n 1.1v 794.745n 1.1v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 1.1v 819.745n 1.1v 819.755n 1.1v 824.745n 1.1v 824.755n 1.1v 829.745n 1.1v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 1.1v 844.745n 1.1v 844.755n 0.0v 849.745n 0.0v 849.755n 1.1v 854.745n 1.1v 854.755n 1.1v 859.745n 1.1v 859.755n 1.1v 864.745n 1.1v 864.755n 0.0v 869.745n 0.0v 869.755n 1.1v 874.745n 1.1v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 1.1v 909.745n 1.1v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 1.1v 939.745n 1.1v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 1.1v 969.745n 1.1v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.1v 984.745n 1.1v 984.755n 1.1v 989.745n 1.1v 989.755n 1.1v 994.745n 1.1v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.1v 1009.745n 1.1v 1009.755n 1.1v 1014.745n 1.1v 1014.755n 1.1v 1019.745n 1.1v 1019.755n 1.1v 1024.745n 1.1v 1024.755n 1.1v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 1), (20, 1), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 1), (180, 0), (185, 1), (190, 1), (195, 1), (200, 0), (205, 0), (210, 1), (215, 1), (220, 0), (225, 1), (230, 0), (235, 0), (240, 1), (245, 0), (250, 0), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 0), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 0), (340, 0), (345, 0), (350, 0), (355, 1), (360, 1), (365, 1), (370, 0), (375, 0), (380, 1), (385, 0), (390, 1), (395, 0), (400, 1), (405, 0), (410, 1), (415, 0), (420, 0), (425, 0), (430, 1), (435, 0), (440, 1), (445, 1), (450, 1), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 1), (485, 1), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 1), (580, 1), (585, 0), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 1), (620, 0), (625, 0), (630, 0), (635, 1), (640, 0), (645, 0), (650, 1), (655, 0), (660, 0), (665, 0), (670, 1), (675, 1), (680, 0), (685, 0), (690, 0), (695, 0), (700, 1), (705, 1), (710, 1), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 1), (750, 0), (755, 1), (760, 0), (765, 0), (770, 1), (775, 0), (780, 1), (785, 0), (790, 0), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 0), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 1), (905, 0), (910, 0), (915, 0), (920, 0), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 0), (970, 0), (975, 0), (980, 0), (985, 1), (990, 1), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Vdin0_21  din0_21  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.1v 9.745n 1.1v 9.755n 0.0v 14.745n 0.0v 14.755n 1.1v 19.745n 1.1v 19.755n 1.1v 24.745n 1.1v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 1.1v 59.745n 1.1v 59.755n 1.1v 64.745n 1.1v 64.755n 1.1v 69.745n 1.1v 69.755n 1.1v 74.745n 1.1v 74.755n 1.1v 79.745n 1.1v 79.755n 1.1v 84.745n 1.1v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.1v 119.745n 1.1v 119.755n 1.1v 124.745n 1.1v 124.755n 1.1v 129.745n 1.1v 129.755n 1.1v 134.745n 1.1v 134.755n 1.1v 139.745n 1.1v 139.755n 1.1v 144.745n 1.1v 144.755n 1.1v 149.745n 1.1v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.1v 174.745n 1.1v 174.755n 1.1v 179.745n 1.1v 179.755n 0.0v 184.745n 0.0v 184.755n 1.1v 189.745n 1.1v 189.755n 1.1v 194.745n 1.1v 194.755n 1.1v 199.745n 1.1v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 1.1v 214.745n 1.1v 214.755n 1.1v 219.745n 1.1v 219.755n 0.0v 224.745n 0.0v 224.755n 1.1v 229.745n 1.1v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 1.1v 244.745n 1.1v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 1.1v 259.745n 1.1v 259.755n 1.1v 264.745n 1.1v 264.755n 1.1v 269.745n 1.1v 269.755n 1.1v 274.745n 1.1v 274.755n 1.1v 279.745n 1.1v 279.755n 1.1v 284.745n 1.1v 284.755n 1.1v 289.745n 1.1v 289.755n 1.1v 294.745n 1.1v 294.755n 0.0v 299.745n 0.0v 299.755n 1.1v 304.745n 1.1v 304.755n 1.1v 309.745n 1.1v 309.755n 1.1v 314.745n 1.1v 314.755n 1.1v 319.745n 1.1v 319.755n 1.1v 324.745n 1.1v 324.755n 1.1v 329.745n 1.1v 329.755n 1.1v 334.745n 1.1v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 1.1v 359.745n 1.1v 359.755n 1.1v 364.745n 1.1v 364.755n 1.1v 369.745n 1.1v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.1v 384.745n 1.1v 384.755n 0.0v 389.745n 0.0v 389.755n 1.1v 394.745n 1.1v 394.755n 0.0v 399.745n 0.0v 399.755n 1.1v 404.745n 1.1v 404.755n 0.0v 409.745n 0.0v 409.755n 1.1v 414.745n 1.1v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 1.1v 434.745n 1.1v 434.755n 0.0v 439.745n 0.0v 439.755n 1.1v 444.745n 1.1v 444.755n 1.1v 449.745n 1.1v 449.755n 1.1v 454.745n 1.1v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 1.1v 484.745n 1.1v 484.755n 1.1v 489.745n 1.1v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 1.1v 524.745n 1.1v 524.755n 1.1v 529.745n 1.1v 529.755n 1.1v 534.745n 1.1v 534.755n 1.1v 539.745n 1.1v 539.755n 1.1v 544.745n 1.1v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.1v 579.745n 1.1v 579.755n 1.1v 584.745n 1.1v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 1.1v 619.745n 1.1v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 1.1v 639.745n 1.1v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 1.1v 654.745n 1.1v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 1.1v 674.745n 1.1v 674.755n 1.1v 679.745n 1.1v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.1v 704.745n 1.1v 704.755n 1.1v 709.745n 1.1v 709.755n 1.1v 714.745n 1.1v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 1.1v 749.745n 1.1v 749.755n 0.0v 754.745n 0.0v 754.755n 1.1v 759.745n 1.1v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.1v 774.745n 1.1v 774.755n 0.0v 779.745n 0.0v 779.755n 1.1v 784.745n 1.1v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.1v 799.745n 1.1v 799.755n 1.1v 804.745n 1.1v 804.755n 1.1v 809.745n 1.1v 809.755n 1.1v 814.745n 1.1v 814.755n 1.1v 819.745n 1.1v 819.755n 0.0v 824.745n 0.0v 824.755n 1.1v 829.745n 1.1v 829.755n 1.1v 834.745n 1.1v 834.755n 1.1v 839.745n 1.1v 839.755n 1.1v 844.745n 1.1v 844.755n 1.1v 849.745n 1.1v 849.755n 1.1v 854.745n 1.1v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.1v 904.745n 1.1v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 1.1v 929.745n 1.1v 929.755n 1.1v 934.745n 1.1v 934.755n 1.1v 939.745n 1.1v 939.755n 1.1v 944.745n 1.1v 944.755n 1.1v 949.745n 1.1v 949.755n 1.1v 954.745n 1.1v 954.755n 1.1v 959.745n 1.1v 959.755n 1.1v 964.745n 1.1v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.1v 989.745n 1.1v 989.755n 1.1v 994.745n 1.1v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.1v 1024.745n 1.1v 1024.755n 1.1v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 1), (50, 0), (55, 1), (60, 0), (65, 1), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 1), (110, 1), (115, 0), (120, 0), (125, 0), (130, 1), (135, 0), (140, 0), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 0), (185, 0), (190, 0), (195, 1), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 1), (230, 0), (235, 0), (240, 1), (245, 0), (250, 0), (255, 0), (260, 0), (265, 1), (270, 1), (275, 1), (280, 0), (285, 0), (290, 0), (295, 0), (300, 1), (305, 1), (310, 1), (315, 0), (320, 0), (325, 0), (330, 1), (335, 0), (340, 1), (345, 1), (350, 1), (355, 0), (360, 0), (365, 0), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 0), (405, 0), (410, 1), (415, 0), (420, 0), (425, 0), (430, 1), (435, 1), (440, 1), (445, 1), (450, 0), (455, 1), (460, 1), (465, 1), (470, 0), (475, 0), (480, 0), (485, 0), (490, 1), (495, 1), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 1), (550, 1), (555, 0), (560, 0), (565, 0), (570, 0), (575, 1), (580, 1), (585, 0), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 1), (620, 0), (625, 0), (630, 0), (635, 0), (640, 1), (645, 1), (650, 0), (655, 0), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 0), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 0), (750, 1), (755, 0), (760, 1), (765, 1), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 1), (825, 1), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 1), (860, 1), (865, 0), (870, 1), (875, 0), (880, 1), (885, 1), (890, 1), (895, 1), (900, 0), (905, 0), (910, 1), (915, 1), (920, 1), (925, 0), (930, 1), (935, 1), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 1), (970, 1), (975, 1), (980, 0), (985, 0), (990, 0), (995, 1), (1000, 1), (1005, 0), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Vdin0_22  din0_22  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.1v 49.745n 1.1v 49.755n 0.0v 54.745n 0.0v 54.755n 1.1v 59.745n 1.1v 59.755n 0.0v 64.745n 0.0v 64.755n 1.1v 69.745n 1.1v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 1.1v 109.745n 1.1v 109.755n 1.1v 114.745n 1.1v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 1.1v 134.745n 1.1v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.1v 154.745n 1.1v 154.755n 1.1v 159.745n 1.1v 159.755n 1.1v 164.745n 1.1v 164.755n 1.1v 169.745n 1.1v 169.755n 1.1v 174.745n 1.1v 174.755n 1.1v 179.745n 1.1v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 1.1v 199.745n 1.1v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 1.1v 229.745n 1.1v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 1.1v 244.745n 1.1v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 1.1v 269.745n 1.1v 269.755n 1.1v 274.745n 1.1v 274.755n 1.1v 279.745n 1.1v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 1.1v 304.745n 1.1v 304.755n 1.1v 309.745n 1.1v 309.755n 1.1v 314.745n 1.1v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.1v 334.745n 1.1v 334.755n 0.0v 339.745n 0.0v 339.755n 1.1v 344.745n 1.1v 344.755n 1.1v 349.745n 1.1v 349.755n 1.1v 354.745n 1.1v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 1.1v 374.745n 1.1v 374.755n 1.1v 379.745n 1.1v 379.755n 1.1v 384.745n 1.1v 384.755n 1.1v 389.745n 1.1v 389.755n 1.1v 394.745n 1.1v 394.755n 1.1v 399.745n 1.1v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.1v 414.745n 1.1v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 1.1v 434.745n 1.1v 434.755n 1.1v 439.745n 1.1v 439.755n 1.1v 444.745n 1.1v 444.755n 1.1v 449.745n 1.1v 449.755n 0.0v 454.745n 0.0v 454.755n 1.1v 459.745n 1.1v 459.755n 1.1v 464.745n 1.1v 464.755n 1.1v 469.745n 1.1v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.1v 494.745n 1.1v 494.755n 1.1v 499.745n 1.1v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 1.1v 549.745n 1.1v 549.755n 1.1v 554.745n 1.1v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.1v 579.745n 1.1v 579.755n 1.1v 584.745n 1.1v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.1v 604.745n 1.1v 604.755n 1.1v 609.745n 1.1v 609.755n 1.1v 614.745n 1.1v 614.755n 1.1v 619.745n 1.1v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 1.1v 644.745n 1.1v 644.755n 1.1v 649.745n 1.1v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.1v 664.745n 1.1v 664.755n 1.1v 669.745n 1.1v 669.755n 1.1v 674.745n 1.1v 674.755n 1.1v 679.745n 1.1v 679.755n 1.1v 684.745n 1.1v 684.755n 1.1v 689.745n 1.1v 689.755n 1.1v 694.745n 1.1v 694.755n 1.1v 699.745n 1.1v 699.755n 0.0v 704.745n 0.0v 704.755n 1.1v 709.745n 1.1v 709.755n 1.1v 714.745n 1.1v 714.755n 1.1v 719.745n 1.1v 719.755n 1.1v 724.745n 1.1v 724.755n 1.1v 729.745n 1.1v 729.755n 1.1v 734.745n 1.1v 734.755n 1.1v 739.745n 1.1v 739.755n 1.1v 744.745n 1.1v 744.755n 0.0v 749.745n 0.0v 749.755n 1.1v 754.745n 1.1v 754.755n 0.0v 759.745n 0.0v 759.755n 1.1v 764.745n 1.1v 764.755n 1.1v 769.745n 1.1v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.1v 799.745n 1.1v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 1.1v 824.745n 1.1v 824.755n 1.1v 829.745n 1.1v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 1.1v 859.745n 1.1v 859.755n 1.1v 864.745n 1.1v 864.755n 0.0v 869.745n 0.0v 869.755n 1.1v 874.745n 1.1v 874.755n 0.0v 879.745n 0.0v 879.755n 1.1v 884.745n 1.1v 884.755n 1.1v 889.745n 1.1v 889.755n 1.1v 894.745n 1.1v 894.755n 1.1v 899.745n 1.1v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 1.1v 914.745n 1.1v 914.755n 1.1v 919.745n 1.1v 919.755n 1.1v 924.745n 1.1v 924.755n 0.0v 929.745n 0.0v 929.755n 1.1v 934.745n 1.1v 934.755n 1.1v 939.745n 1.1v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 1.1v 969.745n 1.1v 969.755n 1.1v 974.745n 1.1v 974.755n 1.1v 979.745n 1.1v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 1.1v 999.745n 1.1v 999.755n 1.1v 1004.745n 1.1v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.1v 1024.745n 1.1v 1024.755n 1.1v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 0), (20, 0), (25, 1), (30, 1), (35, 1), (40, 1), (45, 0), (50, 0), (55, 0), (60, 0), (65, 1), (70, 1), (75, 0), (80, 0), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 0), (120, 0), (125, 0), (130, 1), (135, 0), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 1), (185, 1), (190, 1), (195, 1), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 1), (235, 1), (240, 0), (245, 0), (250, 1), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 1), (285, 1), (290, 1), (295, 0), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 0), (335, 0), (340, 0), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 0), (405, 1), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 1), (440, 1), (445, 1), (450, 0), (455, 0), (460, 0), (465, 0), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 1), (550, 1), (555, 1), (560, 1), (565, 0), (570, 1), (575, 0), (580, 0), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 0), (620, 0), (625, 0), (630, 1), (635, 0), (640, 1), (645, 1), (650, 1), (655, 0), (660, 1), (665, 1), (670, 0), (675, 0), (680, 1), (685, 1), (690, 1), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 0), (735, 0), (740, 1), (745, 1), (750, 0), (755, 1), (760, 0), (765, 0), (770, 0), (775, 1), (780, 1), (785, 1), (790, 1), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 1), (830, 1), (835, 1), (840, 0), (845, 1), (850, 1), (855, 1), (860, 0), (865, 0), (870, 1), (875, 0), (880, 1), (885, 1), (890, 1), (895, 1), (900, 0), (905, 1), (910, 0), (915, 0), (920, 1), (925, 0), (930, 1), (935, 0), (940, 0), (945, 0), (950, 0), (955, 1), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 1), (990, 0), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Vdin0_23  din0_23  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.1v 9.745n 1.1v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 1.1v 29.745n 1.1v 29.755n 1.1v 34.745n 1.1v 34.755n 1.1v 39.745n 1.1v 39.755n 1.1v 44.745n 1.1v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 1.1v 69.745n 1.1v 69.755n 1.1v 74.745n 1.1v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 1.1v 89.745n 1.1v 89.755n 1.1v 94.745n 1.1v 94.755n 1.1v 99.745n 1.1v 99.755n 1.1v 104.745n 1.1v 104.755n 1.1v 109.745n 1.1v 109.755n 1.1v 114.745n 1.1v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 1.1v 134.745n 1.1v 134.755n 0.0v 139.745n 0.0v 139.755n 1.1v 144.745n 1.1v 144.755n 1.1v 149.745n 1.1v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.1v 184.745n 1.1v 184.755n 1.1v 189.745n 1.1v 189.755n 1.1v 194.745n 1.1v 194.755n 1.1v 199.745n 1.1v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 1.1v 234.745n 1.1v 234.755n 1.1v 239.745n 1.1v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.1v 254.745n 1.1v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 1.1v 284.745n 1.1v 284.755n 1.1v 289.745n 1.1v 289.755n 1.1v 294.745n 1.1v 294.755n 0.0v 299.745n 0.0v 299.755n 1.1v 304.745n 1.1v 304.755n 1.1v 309.745n 1.1v 309.755n 1.1v 314.745n 1.1v 314.755n 1.1v 319.745n 1.1v 319.755n 1.1v 324.745n 1.1v 324.755n 1.1v 329.745n 1.1v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 1.1v 349.745n 1.1v 349.755n 1.1v 354.745n 1.1v 354.755n 1.1v 359.745n 1.1v 359.755n 1.1v 364.745n 1.1v 364.755n 1.1v 369.745n 1.1v 369.755n 1.1v 374.745n 1.1v 374.755n 1.1v 379.745n 1.1v 379.755n 1.1v 384.745n 1.1v 384.755n 1.1v 389.745n 1.1v 389.755n 1.1v 394.745n 1.1v 394.755n 1.1v 399.745n 1.1v 399.755n 0.0v 404.745n 0.0v 404.755n 1.1v 409.745n 1.1v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 1.1v 439.745n 1.1v 439.755n 1.1v 444.745n 1.1v 444.755n 1.1v 449.745n 1.1v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.1v 474.745n 1.1v 474.755n 1.1v 479.745n 1.1v 479.755n 1.1v 484.745n 1.1v 484.755n 1.1v 489.745n 1.1v 489.755n 1.1v 494.745n 1.1v 494.755n 1.1v 499.745n 1.1v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 1.1v 549.745n 1.1v 549.755n 1.1v 554.745n 1.1v 554.755n 1.1v 559.745n 1.1v 559.755n 1.1v 564.745n 1.1v 564.755n 0.0v 569.745n 0.0v 569.755n 1.1v 574.745n 1.1v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 1.1v 589.745n 1.1v 589.755n 1.1v 594.745n 1.1v 594.755n 1.1v 599.745n 1.1v 599.755n 1.1v 604.745n 1.1v 604.755n 1.1v 609.745n 1.1v 609.755n 1.1v 614.745n 1.1v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 1.1v 634.745n 1.1v 634.755n 0.0v 639.745n 0.0v 639.755n 1.1v 644.745n 1.1v 644.755n 1.1v 649.745n 1.1v 649.755n 1.1v 654.745n 1.1v 654.755n 0.0v 659.745n 0.0v 659.755n 1.1v 664.745n 1.1v 664.755n 1.1v 669.745n 1.1v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 1.1v 684.745n 1.1v 684.755n 1.1v 689.745n 1.1v 689.755n 1.1v 694.745n 1.1v 694.755n 1.1v 699.745n 1.1v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.1v 729.745n 1.1v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 1.1v 744.745n 1.1v 744.755n 1.1v 749.745n 1.1v 749.755n 0.0v 754.745n 0.0v 754.755n 1.1v 759.745n 1.1v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.1v 779.745n 1.1v 779.755n 1.1v 784.745n 1.1v 784.755n 1.1v 789.745n 1.1v 789.755n 1.1v 794.745n 1.1v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.1v 829.745n 1.1v 829.755n 1.1v 834.745n 1.1v 834.755n 1.1v 839.745n 1.1v 839.755n 0.0v 844.745n 0.0v 844.755n 1.1v 849.745n 1.1v 849.755n 1.1v 854.745n 1.1v 854.755n 1.1v 859.745n 1.1v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 1.1v 874.745n 1.1v 874.755n 0.0v 879.745n 0.0v 879.755n 1.1v 884.745n 1.1v 884.755n 1.1v 889.745n 1.1v 889.755n 1.1v 894.745n 1.1v 894.755n 1.1v 899.745n 1.1v 899.755n 0.0v 904.745n 0.0v 904.755n 1.1v 909.745n 1.1v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 1.1v 924.745n 1.1v 924.755n 0.0v 929.745n 0.0v 929.755n 1.1v 934.745n 1.1v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.1v 959.745n 1.1v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.1v 989.745n 1.1v 989.755n 0.0v 994.745n 0.0v 994.755n 1.1v 999.745n 1.1v 999.755n 1.1v 1004.745n 1.1v 1004.755n 1.1v 1009.745n 1.1v 1009.755n 1.1v 1014.745n 1.1v 1014.755n 1.1v 1019.745n 1.1v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 0), (65, 1), (70, 0), (75, 1), (80, 1), (85, 0), (90, 0), (95, 0), (100, 0), (105, 1), (110, 1), (115, 1), (120, 0), (125, 0), (130, 0), (135, 0), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 0), (180, 1), (185, 0), (190, 1), (195, 0), (200, 1), (205, 1), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 1), (245, 0), (250, 1), (255, 1), (260, 0), (265, 1), (270, 1), (275, 1), (280, 0), (285, 0), (290, 0), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 0), (335, 1), (340, 0), (345, 0), (350, 0), (355, 0), (360, 1), (365, 1), (370, 0), (375, 0), (380, 0), (385, 0), (390, 1), (395, 1), (400, 0), (405, 0), (410, 0), (415, 1), (420, 1), (425, 1), (430, 1), (435, 0), (440, 1), (445, 1), (450, 0), (455, 1), (460, 1), (465, 1), (470, 0), (475, 0), (480, 0), (485, 0), (490, 1), (495, 0), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 0), (545, 1), (550, 1), (555, 0), (560, 0), (565, 1), (570, 1), (575, 0), (580, 0), (585, 1), (590, 1), (595, 0), (600, 1), (605, 1), (610, 1), (615, 0), (620, 0), (625, 0), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 1), (665, 0), (670, 0), (675, 0), (680, 1), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 0), (745, 0), (750, 0), (755, 1), (760, 0), (765, 1), (770, 0), (775, 1), (780, 0), (785, 0), (790, 0), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 0), (825, 1), (830, 1), (835, 1), (840, 0), (845, 0), (850, 0), (855, 1), (860, 0), (865, 1), (870, 1), (875, 1), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 0), (970, 0), (975, 0), (980, 0), (985, 1), (990, 0), (995, 1), (1000, 1), (1005, 1), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Vdin0_24  din0_24  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.1v 9.745n 1.1v 9.755n 0.0v 14.745n 0.0v 14.755n 1.1v 19.745n 1.1v 19.755n 1.1v 24.745n 1.1v 24.755n 1.1v 29.745n 1.1v 29.755n 1.1v 34.745n 1.1v 34.755n 1.1v 39.745n 1.1v 39.755n 1.1v 44.745n 1.1v 44.755n 1.1v 49.745n 1.1v 49.755n 1.1v 54.745n 1.1v 54.755n 1.1v 59.745n 1.1v 59.755n 0.0v 64.745n 0.0v 64.755n 1.1v 69.745n 1.1v 69.755n 0.0v 74.745n 0.0v 74.755n 1.1v 79.745n 1.1v 79.755n 1.1v 84.745n 1.1v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 1.1v 109.745n 1.1v 109.755n 1.1v 114.745n 1.1v 114.755n 1.1v 119.745n 1.1v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 1.1v 144.745n 1.1v 144.755n 1.1v 149.745n 1.1v 149.755n 1.1v 154.745n 1.1v 154.755n 1.1v 159.745n 1.1v 159.755n 1.1v 164.745n 1.1v 164.755n 1.1v 169.745n 1.1v 169.755n 1.1v 174.745n 1.1v 174.755n 0.0v 179.745n 0.0v 179.755n 1.1v 184.745n 1.1v 184.755n 0.0v 189.745n 0.0v 189.755n 1.1v 194.745n 1.1v 194.755n 0.0v 199.745n 0.0v 199.755n 1.1v 204.745n 1.1v 204.755n 1.1v 209.745n 1.1v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 1.1v 244.745n 1.1v 244.755n 0.0v 249.745n 0.0v 249.755n 1.1v 254.745n 1.1v 254.755n 1.1v 259.745n 1.1v 259.755n 0.0v 264.745n 0.0v 264.755n 1.1v 269.745n 1.1v 269.755n 1.1v 274.745n 1.1v 274.755n 1.1v 279.745n 1.1v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 1.1v 299.745n 1.1v 299.755n 1.1v 304.745n 1.1v 304.755n 1.1v 309.745n 1.1v 309.755n 1.1v 314.745n 1.1v 314.755n 1.1v 319.745n 1.1v 319.755n 1.1v 324.745n 1.1v 324.755n 1.1v 329.745n 1.1v 329.755n 0.0v 334.745n 0.0v 334.755n 1.1v 339.745n 1.1v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 1.1v 364.745n 1.1v 364.755n 1.1v 369.745n 1.1v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.1v 394.745n 1.1v 394.755n 1.1v 399.745n 1.1v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.1v 419.745n 1.1v 419.755n 1.1v 424.745n 1.1v 424.755n 1.1v 429.745n 1.1v 429.755n 1.1v 434.745n 1.1v 434.755n 0.0v 439.745n 0.0v 439.755n 1.1v 444.745n 1.1v 444.755n 1.1v 449.745n 1.1v 449.755n 0.0v 454.745n 0.0v 454.755n 1.1v 459.745n 1.1v 459.755n 1.1v 464.745n 1.1v 464.755n 1.1v 469.745n 1.1v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.1v 494.745n 1.1v 494.755n 0.0v 499.745n 0.0v 499.755n 1.1v 504.745n 1.1v 504.755n 1.1v 509.745n 1.1v 509.755n 1.1v 514.745n 1.1v 514.755n 1.1v 519.745n 1.1v 519.755n 1.1v 524.745n 1.1v 524.755n 1.1v 529.745n 1.1v 529.755n 1.1v 534.745n 1.1v 534.755n 1.1v 539.745n 1.1v 539.755n 0.0v 544.745n 0.0v 544.755n 1.1v 549.745n 1.1v 549.755n 1.1v 554.745n 1.1v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.1v 569.745n 1.1v 569.755n 1.1v 574.745n 1.1v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 1.1v 589.745n 1.1v 589.755n 1.1v 594.745n 1.1v 594.755n 0.0v 599.745n 0.0v 599.755n 1.1v 604.745n 1.1v 604.755n 1.1v 609.745n 1.1v 609.755n 1.1v 614.745n 1.1v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 1.1v 634.745n 1.1v 634.755n 1.1v 639.745n 1.1v 639.755n 1.1v 644.745n 1.1v 644.755n 1.1v 649.745n 1.1v 649.755n 1.1v 654.745n 1.1v 654.755n 1.1v 659.745n 1.1v 659.755n 1.1v 664.745n 1.1v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 1.1v 684.745n 1.1v 684.755n 1.1v 689.745n 1.1v 689.755n 1.1v 694.745n 1.1v 694.755n 1.1v 699.745n 1.1v 699.755n 1.1v 704.745n 1.1v 704.755n 1.1v 709.745n 1.1v 709.755n 1.1v 714.745n 1.1v 714.755n 1.1v 719.745n 1.1v 719.755n 1.1v 724.745n 1.1v 724.755n 1.1v 729.745n 1.1v 729.755n 1.1v 734.745n 1.1v 734.755n 1.1v 739.745n 1.1v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 1.1v 759.745n 1.1v 759.755n 0.0v 764.745n 0.0v 764.755n 1.1v 769.745n 1.1v 769.755n 0.0v 774.745n 0.0v 774.755n 1.1v 779.745n 1.1v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.1v 799.745n 1.1v 799.755n 1.1v 804.745n 1.1v 804.755n 1.1v 809.745n 1.1v 809.755n 1.1v 814.745n 1.1v 814.755n 1.1v 819.745n 1.1v 819.755n 0.0v 824.745n 0.0v 824.755n 1.1v 829.745n 1.1v 829.755n 1.1v 834.745n 1.1v 834.755n 1.1v 839.745n 1.1v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 1.1v 859.745n 1.1v 859.755n 0.0v 864.745n 0.0v 864.755n 1.1v 869.745n 1.1v 869.755n 1.1v 874.745n 1.1v 874.755n 1.1v 879.745n 1.1v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 1.1v 914.745n 1.1v 914.755n 1.1v 919.745n 1.1v 919.755n 1.1v 924.745n 1.1v 924.755n 1.1v 929.745n 1.1v 929.755n 1.1v 934.745n 1.1v 934.755n 1.1v 939.745n 1.1v 939.755n 1.1v 944.745n 1.1v 944.755n 1.1v 949.745n 1.1v 949.755n 1.1v 954.745n 1.1v 954.755n 1.1v 959.745n 1.1v 959.755n 1.1v 964.745n 1.1v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.1v 989.745n 1.1v 989.755n 0.0v 994.745n 0.0v 994.755n 1.1v 999.745n 1.1v 999.755n 1.1v 1004.745n 1.1v 1004.755n 1.1v 1009.745n 1.1v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.1v 1024.745n 1.1v 1024.755n 1.1v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 0), (60, 1), (65, 1), (70, 0), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 0), (125, 0), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 0), (175, 1), (180, 0), (185, 1), (190, 0), (195, 1), (200, 0), (205, 0), (210, 1), (215, 1), (220, 1), (225, 1), (230, 0), (235, 0), (240, 0), (245, 1), (250, 1), (255, 0), (260, 1), (265, 1), (270, 0), (275, 0), (280, 1), (285, 1), (290, 1), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 1), (340, 1), (345, 0), (350, 1), (355, 0), (360, 0), (365, 0), (370, 1), (375, 1), (380, 0), (385, 1), (390, 1), (395, 0), (400, 1), (405, 0), (410, 1), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 1), (455, 1), (460, 1), (465, 1), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 0), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 0), (655, 0), (660, 1), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 1), (720, 1), (725, 0), (730, 1), (735, 1), (740, 1), (745, 0), (750, 1), (755, 1), (760, 1), (765, 1), (770, 1), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 0), (835, 0), (840, 0), (845, 1), (850, 0), (855, 0), (860, 0), (865, 1), (870, 1), (875, 1), (880, 0), (885, 0), (890, 0), (895, 0), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 1), (965, 1), (970, 1), (975, 1), (980, 0), (985, 1), (990, 1), (995, 0), (1000, 0), (1005, 1), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_25  din0_25  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.1v 9.745n 1.1v 9.755n 1.1v 14.745n 1.1v 14.755n 1.1v 19.745n 1.1v 19.755n 1.1v 24.745n 1.1v 24.755n 1.1v 29.745n 1.1v 29.755n 1.1v 34.745n 1.1v 34.755n 1.1v 39.745n 1.1v 39.755n 1.1v 44.745n 1.1v 44.755n 1.1v 49.745n 1.1v 49.755n 1.1v 54.745n 1.1v 54.755n 0.0v 59.745n 0.0v 59.755n 1.1v 64.745n 1.1v 64.755n 1.1v 69.745n 1.1v 69.755n 0.0v 74.745n 0.0v 74.755n 1.1v 79.745n 1.1v 79.755n 1.1v 84.745n 1.1v 84.755n 1.1v 89.745n 1.1v 89.755n 1.1v 94.745n 1.1v 94.755n 1.1v 99.745n 1.1v 99.755n 1.1v 104.745n 1.1v 104.755n 1.1v 109.745n 1.1v 109.755n 1.1v 114.745n 1.1v 114.755n 1.1v 119.745n 1.1v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 1.1v 134.745n 1.1v 134.755n 1.1v 139.745n 1.1v 139.755n 1.1v 144.745n 1.1v 144.755n 1.1v 149.745n 1.1v 149.755n 1.1v 154.745n 1.1v 154.755n 1.1v 159.745n 1.1v 159.755n 1.1v 164.745n 1.1v 164.755n 1.1v 169.745n 1.1v 169.755n 0.0v 174.745n 0.0v 174.755n 1.1v 179.745n 1.1v 179.755n 0.0v 184.745n 0.0v 184.755n 1.1v 189.745n 1.1v 189.755n 0.0v 194.745n 0.0v 194.755n 1.1v 199.745n 1.1v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 1.1v 214.745n 1.1v 214.755n 1.1v 219.745n 1.1v 219.755n 1.1v 224.745n 1.1v 224.755n 1.1v 229.745n 1.1v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 1.1v 249.745n 1.1v 249.755n 1.1v 254.745n 1.1v 254.755n 0.0v 259.745n 0.0v 259.755n 1.1v 264.745n 1.1v 264.755n 1.1v 269.745n 1.1v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 1.1v 284.745n 1.1v 284.755n 1.1v 289.745n 1.1v 289.755n 1.1v 294.745n 1.1v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.1v 339.745n 1.1v 339.755n 1.1v 344.745n 1.1v 344.755n 0.0v 349.745n 0.0v 349.755n 1.1v 354.745n 1.1v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 1.1v 374.745n 1.1v 374.755n 1.1v 379.745n 1.1v 379.755n 0.0v 384.745n 0.0v 384.755n 1.1v 389.745n 1.1v 389.755n 1.1v 394.745n 1.1v 394.755n 0.0v 399.745n 0.0v 399.755n 1.1v 404.745n 1.1v 404.755n 0.0v 409.745n 0.0v 409.755n 1.1v 414.745n 1.1v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.1v 454.745n 1.1v 454.755n 1.1v 459.745n 1.1v 459.755n 1.1v 464.745n 1.1v 464.755n 1.1v 469.745n 1.1v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 1.1v 504.745n 1.1v 504.755n 1.1v 509.745n 1.1v 509.755n 1.1v 514.745n 1.1v 514.755n 1.1v 519.745n 1.1v 519.755n 1.1v 524.745n 1.1v 524.755n 1.1v 529.745n 1.1v 529.755n 1.1v 534.745n 1.1v 534.755n 1.1v 539.745n 1.1v 539.755n 1.1v 544.745n 1.1v 544.755n 1.1v 549.745n 1.1v 549.755n 1.1v 554.745n 1.1v 554.755n 1.1v 559.745n 1.1v 559.755n 1.1v 564.745n 1.1v 564.755n 0.0v 569.745n 0.0v 569.755n 1.1v 574.745n 1.1v 574.755n 1.1v 579.745n 1.1v 579.755n 1.1v 584.745n 1.1v 584.755n 1.1v 589.745n 1.1v 589.755n 1.1v 594.745n 1.1v 594.755n 1.1v 599.745n 1.1v 599.755n 1.1v 604.745n 1.1v 604.755n 1.1v 609.745n 1.1v 609.755n 1.1v 614.745n 1.1v 614.755n 1.1v 619.745n 1.1v 619.755n 1.1v 624.745n 1.1v 624.755n 1.1v 629.745n 1.1v 629.755n 1.1v 634.745n 1.1v 634.755n 1.1v 639.745n 1.1v 639.755n 1.1v 644.745n 1.1v 644.755n 1.1v 649.745n 1.1v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.1v 664.745n 1.1v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 1.1v 719.745n 1.1v 719.755n 1.1v 724.745n 1.1v 724.755n 0.0v 729.745n 0.0v 729.755n 1.1v 734.745n 1.1v 734.755n 1.1v 739.745n 1.1v 739.755n 1.1v 744.745n 1.1v 744.755n 0.0v 749.745n 0.0v 749.755n 1.1v 754.745n 1.1v 754.755n 1.1v 759.745n 1.1v 759.755n 1.1v 764.745n 1.1v 764.755n 1.1v 769.745n 1.1v 769.755n 1.1v 774.745n 1.1v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.1v 804.745n 1.1v 804.755n 1.1v 809.745n 1.1v 809.755n 1.1v 814.745n 1.1v 814.755n 1.1v 819.745n 1.1v 819.755n 1.1v 824.745n 1.1v 824.755n 1.1v 829.745n 1.1v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 1.1v 849.745n 1.1v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.1v 869.745n 1.1v 869.755n 1.1v 874.745n 1.1v 874.755n 1.1v 879.745n 1.1v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.1v 904.745n 1.1v 904.755n 1.1v 909.745n 1.1v 909.755n 1.1v 914.745n 1.1v 914.755n 1.1v 919.745n 1.1v 919.755n 1.1v 924.745n 1.1v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 1.1v 964.745n 1.1v 964.755n 1.1v 969.745n 1.1v 969.755n 1.1v 974.745n 1.1v 974.755n 1.1v 979.745n 1.1v 979.755n 0.0v 984.745n 0.0v 984.755n 1.1v 989.745n 1.1v 989.755n 1.1v 994.745n 1.1v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.1v 1009.745n 1.1v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 1), (20, 1), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 1), (55, 0), (60, 1), (65, 1), (70, 1), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 1), (110, 1), (115, 0), (120, 0), (125, 0), (130, 1), (135, 0), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 0), (180, 1), (185, 0), (190, 1), (195, 1), (200, 1), (205, 1), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 1), (250, 1), (255, 1), (260, 1), (265, 0), (270, 1), (275, 1), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 1), (320, 1), (325, 1), (330, 0), (335, 1), (340, 1), (345, 1), (350, 1), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 1), (390, 0), (395, 0), (400, 1), (405, 0), (410, 0), (415, 1), (420, 1), (425, 0), (430, 1), (435, 1), (440, 0), (445, 0), (450, 1), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 1), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 1), (560, 1), (565, 0), (570, 1), (575, 0), (580, 1), (585, 0), (590, 0), (595, 1), (600, 1), (605, 1), (610, 0), (615, 1), (620, 1), (625, 1), (630, 0), (635, 1), (640, 0), (645, 0), (650, 0), (655, 0), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 0), (700, 1), (705, 0), (710, 0), (715, 1), (720, 1), (725, 1), (730, 0), (735, 0), (740, 1), (745, 1), (750, 0), (755, 0), (760, 1), (765, 0), (770, 1), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 1), (820, 0), (825, 1), (830, 0), (835, 0), (840, 1), (845, 1), (850, 0), (855, 0), (860, 1), (865, 0), (870, 0), (875, 0), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 1), (940, 1), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 1), (975, 1), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Vdin0_26  din0_26  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.1v 9.745n 1.1v 9.755n 0.0v 14.745n 0.0v 14.755n 1.1v 19.745n 1.1v 19.755n 1.1v 24.745n 1.1v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 1.1v 54.745n 1.1v 54.755n 0.0v 59.745n 0.0v 59.755n 1.1v 64.745n 1.1v 64.755n 1.1v 69.745n 1.1v 69.755n 1.1v 74.745n 1.1v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 1.1v 109.745n 1.1v 109.755n 1.1v 114.745n 1.1v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 1.1v 134.745n 1.1v 134.755n 0.0v 139.745n 0.0v 139.755n 1.1v 144.745n 1.1v 144.755n 1.1v 149.745n 1.1v 149.755n 1.1v 154.745n 1.1v 154.755n 1.1v 159.745n 1.1v 159.755n 1.1v 164.745n 1.1v 164.755n 1.1v 169.745n 1.1v 169.755n 1.1v 174.745n 1.1v 174.755n 0.0v 179.745n 0.0v 179.755n 1.1v 184.745n 1.1v 184.755n 0.0v 189.745n 0.0v 189.755n 1.1v 194.745n 1.1v 194.755n 1.1v 199.745n 1.1v 199.755n 1.1v 204.745n 1.1v 204.755n 1.1v 209.745n 1.1v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 1.1v 249.745n 1.1v 249.755n 1.1v 254.745n 1.1v 254.755n 1.1v 259.745n 1.1v 259.755n 1.1v 264.745n 1.1v 264.755n 0.0v 269.745n 0.0v 269.755n 1.1v 274.745n 1.1v 274.755n 1.1v 279.745n 1.1v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.1v 319.745n 1.1v 319.755n 1.1v 324.745n 1.1v 324.755n 1.1v 329.745n 1.1v 329.755n 0.0v 334.745n 0.0v 334.755n 1.1v 339.745n 1.1v 339.755n 1.1v 344.745n 1.1v 344.755n 1.1v 349.745n 1.1v 349.755n 1.1v 354.745n 1.1v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 1.1v 389.745n 1.1v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 1.1v 404.745n 1.1v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.1v 419.745n 1.1v 419.755n 1.1v 424.745n 1.1v 424.755n 0.0v 429.745n 0.0v 429.755n 1.1v 434.745n 1.1v 434.755n 1.1v 439.745n 1.1v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.1v 454.745n 1.1v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.1v 494.745n 1.1v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.1v 559.745n 1.1v 559.755n 1.1v 564.745n 1.1v 564.755n 0.0v 569.745n 0.0v 569.755n 1.1v 574.745n 1.1v 574.755n 0.0v 579.745n 0.0v 579.755n 1.1v 584.745n 1.1v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 1.1v 599.745n 1.1v 599.755n 1.1v 604.745n 1.1v 604.755n 1.1v 609.745n 1.1v 609.755n 0.0v 614.745n 0.0v 614.755n 1.1v 619.745n 1.1v 619.755n 1.1v 624.745n 1.1v 624.755n 1.1v 629.745n 1.1v 629.755n 0.0v 634.745n 0.0v 634.755n 1.1v 639.745n 1.1v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.1v 664.745n 1.1v 664.755n 1.1v 669.745n 1.1v 669.755n 1.1v 674.745n 1.1v 674.755n 1.1v 679.745n 1.1v 679.755n 1.1v 684.745n 1.1v 684.755n 1.1v 689.745n 1.1v 689.755n 1.1v 694.745n 1.1v 694.755n 0.0v 699.745n 0.0v 699.755n 1.1v 704.745n 1.1v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 1.1v 719.745n 1.1v 719.755n 1.1v 724.745n 1.1v 724.755n 1.1v 729.745n 1.1v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 1.1v 744.745n 1.1v 744.755n 1.1v 749.745n 1.1v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 1.1v 764.745n 1.1v 764.755n 0.0v 769.745n 0.0v 769.755n 1.1v 774.745n 1.1v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 1.1v 819.745n 1.1v 819.755n 0.0v 824.745n 0.0v 824.755n 1.1v 829.745n 1.1v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 1.1v 844.745n 1.1v 844.755n 1.1v 849.745n 1.1v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 1.1v 864.745n 1.1v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 1.1v 884.745n 1.1v 884.755n 1.1v 889.745n 1.1v 889.755n 1.1v 894.745n 1.1v 894.755n 1.1v 899.745n 1.1v 899.755n 1.1v 904.745n 1.1v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 1.1v 939.745n 1.1v 939.755n 1.1v 944.745n 1.1v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 1.1v 974.745n 1.1v 974.755n 1.1v 979.745n 1.1v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 1.1v 1014.745n 1.1v 1014.755n 1.1v 1019.745n 1.1v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 0), (55, 1), (60, 1), (65, 0), (70, 0), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 0), (125, 0), (130, 0), (135, 1), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 1), (195, 1), (200, 0), (205, 0), (210, 1), (215, 1), (220, 0), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 0), (260, 1), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 1), (335, 0), (340, 0), (345, 0), (350, 1), (355, 1), (360, 0), (365, 0), (370, 1), (375, 1), (380, 1), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 1), (415, 1), (420, 1), (425, 0), (430, 1), (435, 1), (440, 0), (445, 0), (450, 0), (455, 1), (460, 1), (465, 1), (470, 0), (475, 0), (480, 1), (485, 1), (490, 1), (495, 0), (500, 1), (505, 1), (510, 1), (515, 1), (520, 0), (525, 0), (530, 0), (535, 0), (540, 1), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 1), (605, 1), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 1), (660, 1), (665, 0), (670, 0), (675, 0), (680, 1), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 0), (720, 0), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 0), (760, 1), (765, 0), (770, 0), (775, 1), (780, 1), (785, 0), (790, 0), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 0), (825, 0), (830, 0), (835, 0), (840, 1), (845, 1), (850, 0), (855, 1), (860, 0), (865, 0), (870, 1), (875, 0), (880, 1), (885, 1), (890, 1), (895, 1), (900, 0), (905, 0), (910, 0), (915, 0), (920, 1), (925, 1), (930, 1), (935, 0), (940, 1), (945, 1), (950, 1), (955, 1), (960, 0), (965, 0), (970, 1), (975, 1), (980, 1), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Vdin0_27  din0_27  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.1v 14.745n 1.1v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 1.1v 29.745n 1.1v 29.755n 1.1v 34.745n 1.1v 34.755n 1.1v 39.745n 1.1v 39.755n 1.1v 44.745n 1.1v 44.755n 1.1v 49.745n 1.1v 49.755n 0.0v 54.745n 0.0v 54.755n 1.1v 59.745n 1.1v 59.755n 1.1v 64.745n 1.1v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 1.1v 79.745n 1.1v 79.755n 1.1v 84.745n 1.1v 84.755n 1.1v 89.745n 1.1v 89.755n 1.1v 94.745n 1.1v 94.755n 1.1v 99.745n 1.1v 99.755n 1.1v 104.745n 1.1v 104.755n 1.1v 109.745n 1.1v 109.755n 1.1v 114.745n 1.1v 114.755n 1.1v 119.745n 1.1v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.1v 139.745n 1.1v 139.755n 1.1v 144.745n 1.1v 144.755n 1.1v 149.745n 1.1v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.1v 194.745n 1.1v 194.755n 1.1v 199.745n 1.1v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 1.1v 214.745n 1.1v 214.755n 1.1v 219.745n 1.1v 219.755n 0.0v 224.745n 0.0v 224.755n 1.1v 229.745n 1.1v 229.755n 1.1v 234.745n 1.1v 234.755n 1.1v 239.745n 1.1v 239.755n 1.1v 244.745n 1.1v 244.755n 1.1v 249.745n 1.1v 249.755n 1.1v 254.745n 1.1v 254.755n 0.0v 259.745n 0.0v 259.755n 1.1v 264.745n 1.1v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.1v 334.745n 1.1v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 1.1v 354.745n 1.1v 354.755n 1.1v 359.745n 1.1v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 1.1v 374.745n 1.1v 374.755n 1.1v 379.745n 1.1v 379.755n 1.1v 384.745n 1.1v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.1v 414.745n 1.1v 414.755n 1.1v 419.745n 1.1v 419.755n 1.1v 424.745n 1.1v 424.755n 0.0v 429.745n 0.0v 429.755n 1.1v 434.745n 1.1v 434.755n 1.1v 439.745n 1.1v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.1v 459.745n 1.1v 459.755n 1.1v 464.745n 1.1v 464.755n 1.1v 469.745n 1.1v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 1.1v 484.745n 1.1v 484.755n 1.1v 489.745n 1.1v 489.755n 1.1v 494.745n 1.1v 494.755n 0.0v 499.745n 0.0v 499.755n 1.1v 504.745n 1.1v 504.755n 1.1v 509.745n 1.1v 509.755n 1.1v 514.745n 1.1v 514.755n 1.1v 519.745n 1.1v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.1v 544.745n 1.1v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.1v 604.745n 1.1v 604.755n 1.1v 609.745n 1.1v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.1v 659.745n 1.1v 659.755n 1.1v 664.745n 1.1v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 1.1v 684.745n 1.1v 684.755n 1.1v 689.745n 1.1v 689.755n 1.1v 694.745n 1.1v 694.755n 1.1v 699.745n 1.1v 699.755n 1.1v 704.745n 1.1v 704.755n 1.1v 709.745n 1.1v 709.755n 1.1v 714.745n 1.1v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.1v 729.745n 1.1v 729.755n 1.1v 734.745n 1.1v 734.755n 1.1v 739.745n 1.1v 739.755n 1.1v 744.745n 1.1v 744.755n 1.1v 749.745n 1.1v 749.755n 1.1v 754.745n 1.1v 754.755n 0.0v 759.745n 0.0v 759.755n 1.1v 764.745n 1.1v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.1v 779.745n 1.1v 779.755n 1.1v 784.745n 1.1v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.1v 799.745n 1.1v 799.755n 1.1v 804.745n 1.1v 804.755n 1.1v 809.745n 1.1v 809.755n 1.1v 814.745n 1.1v 814.755n 1.1v 819.745n 1.1v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 1.1v 844.745n 1.1v 844.755n 1.1v 849.745n 1.1v 849.755n 0.0v 854.745n 0.0v 854.755n 1.1v 859.745n 1.1v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 1.1v 874.745n 1.1v 874.755n 0.0v 879.745n 0.0v 879.755n 1.1v 884.745n 1.1v 884.755n 1.1v 889.745n 1.1v 889.755n 1.1v 894.745n 1.1v 894.755n 1.1v 899.745n 1.1v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 1.1v 924.745n 1.1v 924.755n 1.1v 929.745n 1.1v 929.755n 1.1v 934.745n 1.1v 934.755n 0.0v 939.745n 0.0v 939.755n 1.1v 944.745n 1.1v 944.755n 1.1v 949.745n 1.1v 949.755n 1.1v 954.745n 1.1v 954.755n 1.1v 959.745n 1.1v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 1.1v 974.745n 1.1v 974.755n 1.1v 979.745n 1.1v 979.755n 1.1v 984.745n 1.1v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.1v 1024.745n 1.1v 1024.755n 1.1v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 1), (50, 0), (55, 1), (60, 0), (65, 0), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 0), (120, 0), (125, 0), (130, 0), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 0), (190, 0), (195, 1), (200, 0), (205, 0), (210, 1), (215, 1), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 0), (250, 1), (255, 0), (260, 1), (265, 1), (270, 0), (275, 0), (280, 1), (285, 1), (290, 1), (295, 1), (300, 0), (305, 0), (310, 0), (315, 1), (320, 1), (325, 1), (330, 1), (335, 0), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 0), (375, 0), (380, 1), (385, 0), (390, 0), (395, 1), (400, 0), (405, 1), (410, 1), (415, 0), (420, 0), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 0), (460, 0), (465, 0), (470, 1), (475, 1), (480, 0), (485, 0), (490, 1), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 1), (560, 1), (565, 0), (570, 1), (575, 0), (580, 0), (585, 1), (590, 1), (595, 1), (600, 0), (605, 0), (610, 0), (615, 0), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 0), (655, 1), (660, 1), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 0), (745, 0), (750, 1), (755, 1), (760, 0), (765, 0), (770, 1), (775, 0), (780, 0), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 0), (835, 0), (840, 0), (845, 1), (850, 1), (855, 1), (860, 0), (865, 1), (870, 0), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 0), (910, 1), (915, 1), (920, 0), (925, 0), (930, 0), (935, 0), (940, 1), (945, 0), (950, 0), (955, 1), (960, 0), (965, 1), (970, 0), (975, 0), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_28  din0_28  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.1v 14.745n 1.1v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.1v 49.745n 1.1v 49.755n 0.0v 54.745n 0.0v 54.755n 1.1v 59.745n 1.1v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 1.1v 74.745n 1.1v 74.755n 1.1v 79.745n 1.1v 79.755n 1.1v 84.745n 1.1v 84.755n 1.1v 89.745n 1.1v 89.755n 1.1v 94.745n 1.1v 94.755n 1.1v 99.745n 1.1v 99.755n 1.1v 104.745n 1.1v 104.755n 1.1v 109.745n 1.1v 109.755n 1.1v 114.745n 1.1v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.1v 139.745n 1.1v 139.755n 1.1v 144.745n 1.1v 144.755n 1.1v 149.745n 1.1v 149.755n 1.1v 154.745n 1.1v 154.755n 1.1v 159.745n 1.1v 159.755n 1.1v 164.745n 1.1v 164.755n 1.1v 169.745n 1.1v 169.755n 1.1v 174.745n 1.1v 174.755n 1.1v 179.745n 1.1v 179.755n 1.1v 184.745n 1.1v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 1.1v 199.745n 1.1v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 1.1v 214.745n 1.1v 214.755n 1.1v 219.745n 1.1v 219.755n 1.1v 224.745n 1.1v 224.755n 1.1v 229.745n 1.1v 229.755n 1.1v 234.745n 1.1v 234.755n 1.1v 239.745n 1.1v 239.755n 1.1v 244.745n 1.1v 244.755n 0.0v 249.745n 0.0v 249.755n 1.1v 254.745n 1.1v 254.755n 0.0v 259.745n 0.0v 259.755n 1.1v 264.745n 1.1v 264.755n 1.1v 269.745n 1.1v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 1.1v 284.745n 1.1v 284.755n 1.1v 289.745n 1.1v 289.755n 1.1v 294.745n 1.1v 294.755n 1.1v 299.745n 1.1v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.1v 319.745n 1.1v 319.755n 1.1v 324.745n 1.1v 324.755n 1.1v 329.745n 1.1v 329.755n 1.1v 334.745n 1.1v 334.755n 0.0v 339.745n 0.0v 339.755n 1.1v 344.745n 1.1v 344.755n 1.1v 349.745n 1.1v 349.755n 1.1v 354.745n 1.1v 354.755n 1.1v 359.745n 1.1v 359.755n 1.1v 364.745n 1.1v 364.755n 1.1v 369.745n 1.1v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.1v 384.745n 1.1v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 1.1v 399.745n 1.1v 399.755n 0.0v 404.745n 0.0v 404.755n 1.1v 409.745n 1.1v 409.755n 1.1v 414.745n 1.1v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 1.1v 429.745n 1.1v 429.755n 1.1v 434.745n 1.1v 434.755n 1.1v 439.745n 1.1v 439.755n 1.1v 444.745n 1.1v 444.755n 1.1v 449.745n 1.1v 449.755n 1.1v 454.745n 1.1v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.1v 474.745n 1.1v 474.755n 1.1v 479.745n 1.1v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.1v 494.745n 1.1v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.1v 559.745n 1.1v 559.755n 1.1v 564.745n 1.1v 564.755n 0.0v 569.745n 0.0v 569.755n 1.1v 574.745n 1.1v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 1.1v 589.745n 1.1v 589.755n 1.1v 594.745n 1.1v 594.755n 1.1v 599.745n 1.1v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 1.1v 624.745n 1.1v 624.755n 1.1v 629.745n 1.1v 629.755n 1.1v 634.745n 1.1v 634.755n 1.1v 639.745n 1.1v 639.755n 1.1v 644.745n 1.1v 644.755n 1.1v 649.745n 1.1v 649.755n 0.0v 654.745n 0.0v 654.755n 1.1v 659.745n 1.1v 659.755n 1.1v 664.745n 1.1v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 1.1v 709.745n 1.1v 709.755n 1.1v 714.745n 1.1v 714.755n 1.1v 719.745n 1.1v 719.755n 1.1v 724.745n 1.1v 724.755n 1.1v 729.745n 1.1v 729.755n 1.1v 734.745n 1.1v 734.755n 1.1v 739.745n 1.1v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 1.1v 754.745n 1.1v 754.755n 1.1v 759.745n 1.1v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.1v 774.745n 1.1v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 1.1v 789.745n 1.1v 789.755n 1.1v 794.745n 1.1v 794.755n 1.1v 799.745n 1.1v 799.755n 1.1v 804.745n 1.1v 804.755n 1.1v 809.745n 1.1v 809.755n 1.1v 814.745n 1.1v 814.755n 1.1v 819.745n 1.1v 819.755n 1.1v 824.745n 1.1v 824.755n 1.1v 829.745n 1.1v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 1.1v 849.745n 1.1v 849.755n 1.1v 854.745n 1.1v 854.755n 1.1v 859.745n 1.1v 859.755n 0.0v 864.745n 0.0v 864.755n 1.1v 869.745n 1.1v 869.755n 0.0v 874.745n 0.0v 874.755n 1.1v 879.745n 1.1v 879.755n 1.1v 884.745n 1.1v 884.755n 1.1v 889.745n 1.1v 889.755n 1.1v 894.745n 1.1v 894.755n 1.1v 899.745n 1.1v 899.755n 1.1v 904.745n 1.1v 904.755n 0.0v 909.745n 0.0v 909.755n 1.1v 914.745n 1.1v 914.755n 1.1v 919.745n 1.1v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.1v 944.745n 1.1v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.1v 959.745n 1.1v 959.755n 0.0v 964.745n 0.0v 964.755n 1.1v 969.745n 1.1v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.1v 984.745n 1.1v 984.755n 1.1v 989.745n 1.1v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.1v 1009.745n 1.1v 1009.755n 1.1v 1014.745n 1.1v 1014.755n 1.1v 1019.745n 1.1v 1019.755n 1.1v 1024.745n 1.1v 1024.755n 1.1v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 1), (50, 1), (55, 1), (60, 0), (65, 1), (70, 1), (75, 0), (80, 0), (85, 1), (90, 1), (95, 1), (100, 1), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 0), (180, 0), (185, 1), (190, 1), (195, 0), (200, 1), (205, 1), (210, 0), (215, 0), (220, 0), (225, 1), (230, 1), (235, 1), (240, 1), (245, 0), (250, 0), (255, 0), (260, 1), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 0), (345, 0), (350, 0), (355, 1), (360, 1), (365, 1), (370, 0), (375, 0), (380, 1), (385, 1), (390, 1), (395, 1), (400, 0), (405, 1), (410, 1), (415, 1), (420, 1), (425, 0), (430, 1), (435, 0), (440, 1), (445, 1), (450, 1), (455, 0), (460, 0), (465, 0), (470, 1), (475, 1), (480, 0), (485, 0), (490, 1), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 0), (550, 0), (555, 1), (560, 1), (565, 1), (570, 0), (575, 1), (580, 0), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 0), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 0), (700, 1), (705, 0), (710, 0), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 0), (755, 0), (760, 0), (765, 1), (770, 1), (775, 1), (780, 0), (785, 1), (790, 1), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 1), (845, 1), (850, 1), (855, 1), (860, 0), (865, 0), (870, 1), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 1), (905, 1), (910, 0), (915, 0), (920, 0), (925, 0), (930, 1), (935, 0), (940, 0), (945, 0), (950, 0), (955, 1), (960, 1), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 1), (995, 0), (1000, 0), (1005, 0), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Vdin0_29  din0_29  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.1v 49.745n 1.1v 49.755n 1.1v 54.745n 1.1v 54.755n 1.1v 59.745n 1.1v 59.755n 0.0v 64.745n 0.0v 64.755n 1.1v 69.745n 1.1v 69.755n 1.1v 74.745n 1.1v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 1.1v 89.745n 1.1v 89.755n 1.1v 94.745n 1.1v 94.755n 1.1v 99.745n 1.1v 99.755n 1.1v 104.745n 1.1v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 1.1v 144.745n 1.1v 144.755n 1.1v 149.745n 1.1v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.1v 174.745n 1.1v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 1.1v 189.745n 1.1v 189.755n 1.1v 194.745n 1.1v 194.755n 0.0v 199.745n 0.0v 199.755n 1.1v 204.745n 1.1v 204.755n 1.1v 209.745n 1.1v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 1.1v 229.745n 1.1v 229.755n 1.1v 234.745n 1.1v 234.755n 1.1v 239.745n 1.1v 239.755n 1.1v 244.745n 1.1v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 1.1v 264.745n 1.1v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.1v 319.745n 1.1v 319.755n 1.1v 324.745n 1.1v 324.755n 1.1v 329.745n 1.1v 329.755n 1.1v 334.745n 1.1v 334.755n 1.1v 339.745n 1.1v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 1.1v 359.745n 1.1v 359.755n 1.1v 364.745n 1.1v 364.755n 1.1v 369.745n 1.1v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.1v 384.745n 1.1v 384.755n 1.1v 389.745n 1.1v 389.755n 1.1v 394.745n 1.1v 394.755n 1.1v 399.745n 1.1v 399.755n 0.0v 404.745n 0.0v 404.755n 1.1v 409.745n 1.1v 409.755n 1.1v 414.745n 1.1v 414.755n 1.1v 419.745n 1.1v 419.755n 1.1v 424.745n 1.1v 424.755n 0.0v 429.745n 0.0v 429.755n 1.1v 434.745n 1.1v 434.755n 0.0v 439.745n 0.0v 439.755n 1.1v 444.745n 1.1v 444.755n 1.1v 449.745n 1.1v 449.755n 1.1v 454.745n 1.1v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.1v 474.745n 1.1v 474.755n 1.1v 479.745n 1.1v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.1v 494.745n 1.1v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 1.1v 524.745n 1.1v 524.755n 1.1v 529.745n 1.1v 529.755n 1.1v 534.745n 1.1v 534.755n 1.1v 539.745n 1.1v 539.755n 1.1v 544.745n 1.1v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.1v 559.745n 1.1v 559.755n 1.1v 564.745n 1.1v 564.755n 1.1v 569.745n 1.1v 569.755n 0.0v 574.745n 0.0v 574.755n 1.1v 579.745n 1.1v 579.755n 0.0v 584.745n 0.0v 584.755n 1.1v 589.745n 1.1v 589.755n 1.1v 594.745n 1.1v 594.755n 1.1v 599.745n 1.1v 599.755n 1.1v 604.745n 1.1v 604.755n 1.1v 609.745n 1.1v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 1.1v 639.745n 1.1v 639.755n 1.1v 644.745n 1.1v 644.755n 1.1v 649.745n 1.1v 649.755n 1.1v 654.745n 1.1v 654.755n 1.1v 659.745n 1.1v 659.755n 0.0v 664.745n 0.0v 664.755n 1.1v 669.745n 1.1v 669.755n 1.1v 674.745n 1.1v 674.755n 1.1v 679.745n 1.1v 679.755n 1.1v 684.745n 1.1v 684.755n 1.1v 689.745n 1.1v 689.755n 1.1v 694.745n 1.1v 694.755n 0.0v 699.745n 0.0v 699.755n 1.1v 704.745n 1.1v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 1.1v 719.745n 1.1v 719.755n 1.1v 724.745n 1.1v 724.755n 1.1v 729.745n 1.1v 729.755n 1.1v 734.745n 1.1v 734.755n 1.1v 739.745n 1.1v 739.755n 1.1v 744.745n 1.1v 744.755n 1.1v 749.745n 1.1v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 1.1v 769.745n 1.1v 769.755n 1.1v 774.745n 1.1v 774.755n 1.1v 779.745n 1.1v 779.755n 0.0v 784.745n 0.0v 784.755n 1.1v 789.745n 1.1v 789.755n 1.1v 794.745n 1.1v 794.755n 1.1v 799.745n 1.1v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 1.1v 844.745n 1.1v 844.755n 1.1v 849.745n 1.1v 849.755n 1.1v 854.745n 1.1v 854.755n 1.1v 859.745n 1.1v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 1.1v 874.745n 1.1v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.1v 904.745n 1.1v 904.755n 1.1v 909.745n 1.1v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 1.1v 934.745n 1.1v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.1v 959.745n 1.1v 959.755n 1.1v 964.745n 1.1v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 1.1v 994.745n 1.1v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 1.1v 1014.745n 1.1v 1014.755n 1.1v 1019.745n 1.1v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 0), (50, 1), (55, 1), (60, 1), (65, 1), (70, 0), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 0), (190, 0), (195, 1), (200, 0), (205, 0), (210, 0), (215, 0), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 0), (250, 1), (255, 0), (260, 1), (265, 0), (270, 0), (275, 0), (280, 1), (285, 1), (290, 1), (295, 0), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 0), (335, 1), (340, 1), (345, 1), (350, 1), (355, 0), (360, 0), (365, 0), (370, 1), (375, 1), (380, 0), (385, 0), (390, 0), (395, 1), (400, 1), (405, 1), (410, 0), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 0), (455, 1), (460, 1), (465, 1), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 1), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 1), (550, 1), (555, 0), (560, 0), (565, 1), (570, 0), (575, 1), (580, 0), (585, 0), (590, 0), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 0), (625, 0), (630, 1), (635, 0), (640, 1), (645, 1), (650, 0), (655, 0), (660, 1), (665, 1), (670, 1), (675, 1), (680, 0), (685, 0), (690, 0), (695, 0), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 0), (735, 1), (740, 1), (745, 1), (750, 0), (755, 0), (760, 0), (765, 0), (770, 1), (775, 1), (780, 0), (785, 0), (790, 0), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 1), (830, 0), (835, 0), (840, 0), (845, 1), (850, 1), (855, 0), (860, 0), (865, 0), (870, 0), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 0), (905, 1), (910, 1), (915, 1), (920, 0), (925, 0), (930, 1), (935, 0), (940, 1), (945, 1), (950, 1), (955, 0), (960, 0), (965, 0), (970, 1), (975, 1), (980, 0), (985, 0), (990, 1), (995, 0), (1000, 0), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_30  din0_30  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.1v 14.745n 1.1v 14.755n 1.1v 19.745n 1.1v 19.755n 1.1v 24.745n 1.1v 24.755n 1.1v 29.745n 1.1v 29.755n 1.1v 34.745n 1.1v 34.755n 1.1v 39.745n 1.1v 39.755n 1.1v 44.745n 1.1v 44.755n 0.0v 49.745n 0.0v 49.755n 1.1v 54.745n 1.1v 54.755n 1.1v 59.745n 1.1v 59.755n 1.1v 64.745n 1.1v 64.755n 1.1v 69.745n 1.1v 69.755n 0.0v 74.745n 0.0v 74.755n 1.1v 79.745n 1.1v 79.755n 1.1v 84.745n 1.1v 84.755n 1.1v 89.745n 1.1v 89.755n 1.1v 94.745n 1.1v 94.755n 1.1v 99.745n 1.1v 99.755n 1.1v 104.745n 1.1v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.1v 174.745n 1.1v 174.755n 1.1v 179.745n 1.1v 179.755n 1.1v 184.745n 1.1v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 1.1v 199.745n 1.1v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.1v 224.745n 1.1v 224.755n 1.1v 229.745n 1.1v 229.755n 1.1v 234.745n 1.1v 234.755n 1.1v 239.745n 1.1v 239.755n 1.1v 244.745n 1.1v 244.755n 0.0v 249.745n 0.0v 249.755n 1.1v 254.745n 1.1v 254.755n 0.0v 259.745n 0.0v 259.755n 1.1v 264.745n 1.1v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 1.1v 284.745n 1.1v 284.755n 1.1v 289.745n 1.1v 289.755n 1.1v 294.745n 1.1v 294.755n 0.0v 299.745n 0.0v 299.755n 1.1v 304.745n 1.1v 304.755n 1.1v 309.745n 1.1v 309.755n 1.1v 314.745n 1.1v 314.755n 1.1v 319.745n 1.1v 319.755n 1.1v 324.745n 1.1v 324.755n 1.1v 329.745n 1.1v 329.755n 0.0v 334.745n 0.0v 334.755n 1.1v 339.745n 1.1v 339.755n 1.1v 344.745n 1.1v 344.755n 1.1v 349.745n 1.1v 349.755n 1.1v 354.745n 1.1v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 1.1v 374.745n 1.1v 374.755n 1.1v 379.745n 1.1v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 1.1v 399.745n 1.1v 399.755n 1.1v 404.745n 1.1v 404.755n 1.1v 409.745n 1.1v 409.755n 0.0v 414.745n 0.0v 414.755n 1.1v 419.745n 1.1v 419.755n 1.1v 424.745n 1.1v 424.755n 1.1v 429.745n 1.1v 429.755n 1.1v 434.745n 1.1v 434.755n 1.1v 439.745n 1.1v 439.755n 1.1v 444.745n 1.1v 444.755n 1.1v 449.745n 1.1v 449.755n 0.0v 454.745n 0.0v 454.755n 1.1v 459.745n 1.1v 459.755n 1.1v 464.745n 1.1v 464.755n 1.1v 469.745n 1.1v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 1.1v 499.745n 1.1v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 1.1v 549.745n 1.1v 549.755n 1.1v 554.745n 1.1v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.1v 569.745n 1.1v 569.755n 0.0v 574.745n 0.0v 574.755n 1.1v 579.745n 1.1v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 1.1v 599.745n 1.1v 599.755n 1.1v 604.745n 1.1v 604.755n 1.1v 609.745n 1.1v 609.755n 1.1v 614.745n 1.1v 614.755n 1.1v 619.745n 1.1v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 1.1v 634.745n 1.1v 634.755n 0.0v 639.745n 0.0v 639.755n 1.1v 644.745n 1.1v 644.755n 1.1v 649.745n 1.1v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.1v 664.745n 1.1v 664.755n 1.1v 669.745n 1.1v 669.755n 1.1v 674.745n 1.1v 674.755n 1.1v 679.745n 1.1v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.1v 704.745n 1.1v 704.755n 1.1v 709.745n 1.1v 709.755n 1.1v 714.745n 1.1v 714.755n 1.1v 719.745n 1.1v 719.755n 1.1v 724.745n 1.1v 724.755n 1.1v 729.745n 1.1v 729.755n 0.0v 734.745n 0.0v 734.755n 1.1v 739.745n 1.1v 739.755n 1.1v 744.745n 1.1v 744.755n 1.1v 749.745n 1.1v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.1v 774.745n 1.1v 774.755n 1.1v 779.745n 1.1v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.1v 799.745n 1.1v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.1v 829.745n 1.1v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 1.1v 849.745n 1.1v 849.755n 1.1v 854.745n 1.1v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 1.1v 879.745n 1.1v 879.755n 1.1v 884.745n 1.1v 884.755n 1.1v 889.745n 1.1v 889.755n 1.1v 894.745n 1.1v 894.755n 1.1v 899.745n 1.1v 899.755n 0.0v 904.745n 0.0v 904.755n 1.1v 909.745n 1.1v 909.755n 1.1v 914.745n 1.1v 914.755n 1.1v 919.745n 1.1v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 1.1v 934.745n 1.1v 934.755n 0.0v 939.745n 0.0v 939.755n 1.1v 944.745n 1.1v 944.755n 1.1v 949.745n 1.1v 949.755n 1.1v 954.745n 1.1v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 1.1v 974.745n 1.1v 974.755n 1.1v 979.745n 1.1v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 1.1v 994.745n 1.1v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.1v 1009.745n 1.1v 1009.755n 1.1v 1014.745n 1.1v 1014.755n 1.1v 1019.745n 1.1v 1019.755n 1.1v 1024.745n 1.1v 1024.755n 1.1v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 1), (50, 1), (55, 1), (60, 1), (65, 0), (70, 0), (75, 1), (80, 1), (85, 1), (90, 1), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 1), (125, 1), (130, 1), (135, 0), (140, 0), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 0), (175, 0), (180, 1), (185, 0), (190, 0), (195, 0), (200, 1), (205, 1), (210, 0), (215, 0), (220, 0), (225, 1), (230, 0), (235, 0), (240, 0), (245, 1), (250, 1), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 1), (320, 1), (325, 1), (330, 0), (335, 1), (340, 0), (345, 0), (350, 1), (355, 0), (360, 0), (365, 0), (370, 1), (375, 1), (380, 0), (385, 1), (390, 0), (395, 1), (400, 1), (405, 1), (410, 0), (415, 0), (420, 0), (425, 0), (430, 1), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 1), (570, 0), (575, 1), (580, 0), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 0), (615, 1), (620, 1), (625, 1), (630, 0), (635, 0), (640, 0), (645, 0), (650, 1), (655, 1), (660, 1), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 1), (705, 0), (710, 0), (715, 1), (720, 1), (725, 1), (730, 0), (735, 1), (740, 0), (745, 0), (750, 0), (755, 1), (760, 1), (765, 0), (770, 1), (775, 0), (780, 1), (785, 0), (790, 0), (795, 1), (800, 0), (805, 0), (810, 0), (815, 1), (820, 0), (825, 1), (830, 0), (835, 0), (840, 0), (845, 1), (850, 0), (855, 0), (860, 1), (865, 0), (870, 0), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 0), (935, 0), (940, 1), (945, 1), (950, 1), (955, 0), (960, 0), (965, 1), (970, 0), (975, 0), (980, 0), (985, 0), (990, 1), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Vdin0_31  din0_31  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.1v 9.745n 1.1v 9.755n 1.1v 14.745n 1.1v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.1v 49.745n 1.1v 49.755n 1.1v 54.745n 1.1v 54.755n 1.1v 59.745n 1.1v 59.755n 1.1v 64.745n 1.1v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 1.1v 79.745n 1.1v 79.755n 1.1v 84.745n 1.1v 84.755n 1.1v 89.745n 1.1v 89.755n 1.1v 94.745n 1.1v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.1v 124.745n 1.1v 124.755n 1.1v 129.745n 1.1v 129.755n 1.1v 134.745n 1.1v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.1v 154.745n 1.1v 154.755n 1.1v 159.745n 1.1v 159.755n 1.1v 164.745n 1.1v 164.755n 1.1v 169.745n 1.1v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.1v 184.745n 1.1v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 1.1v 204.745n 1.1v 204.755n 1.1v 209.745n 1.1v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 1.1v 229.745n 1.1v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 1.1v 249.745n 1.1v 249.755n 1.1v 254.745n 1.1v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.1v 319.745n 1.1v 319.755n 1.1v 324.745n 1.1v 324.755n 1.1v 329.745n 1.1v 329.755n 0.0v 334.745n 0.0v 334.755n 1.1v 339.745n 1.1v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 1.1v 354.745n 1.1v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 1.1v 374.745n 1.1v 374.755n 1.1v 379.745n 1.1v 379.755n 0.0v 384.745n 0.0v 384.755n 1.1v 389.745n 1.1v 389.755n 0.0v 394.745n 0.0v 394.755n 1.1v 399.745n 1.1v 399.755n 1.1v 404.745n 1.1v 404.755n 1.1v 409.745n 1.1v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 1.1v 434.745n 1.1v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.1v 474.745n 1.1v 474.755n 1.1v 479.745n 1.1v 479.755n 1.1v 484.745n 1.1v 484.755n 1.1v 489.745n 1.1v 489.755n 1.1v 494.745n 1.1v 494.755n 1.1v 499.745n 1.1v 499.755n 1.1v 504.745n 1.1v 504.755n 1.1v 509.745n 1.1v 509.755n 1.1v 514.745n 1.1v 514.755n 1.1v 519.745n 1.1v 519.755n 1.1v 524.745n 1.1v 524.755n 1.1v 529.745n 1.1v 529.755n 1.1v 534.745n 1.1v 534.755n 1.1v 539.745n 1.1v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.1v 569.745n 1.1v 569.755n 0.0v 574.745n 0.0v 574.755n 1.1v 579.745n 1.1v 579.755n 0.0v 584.745n 0.0v 584.755n 1.1v 589.745n 1.1v 589.755n 1.1v 594.745n 1.1v 594.755n 1.1v 599.745n 1.1v 599.755n 1.1v 604.745n 1.1v 604.755n 1.1v 609.745n 1.1v 609.755n 0.0v 614.745n 0.0v 614.755n 1.1v 619.745n 1.1v 619.755n 1.1v 624.745n 1.1v 624.755n 1.1v 629.745n 1.1v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 1.1v 654.745n 1.1v 654.755n 1.1v 659.745n 1.1v 659.755n 1.1v 664.745n 1.1v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.1v 704.745n 1.1v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 1.1v 719.745n 1.1v 719.755n 1.1v 724.745n 1.1v 724.755n 1.1v 729.745n 1.1v 729.755n 0.0v 734.745n 0.0v 734.755n 1.1v 739.745n 1.1v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 1.1v 759.745n 1.1v 759.755n 1.1v 764.745n 1.1v 764.755n 0.0v 769.745n 0.0v 769.755n 1.1v 774.745n 1.1v 774.755n 0.0v 779.745n 0.0v 779.755n 1.1v 784.745n 1.1v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.1v 799.745n 1.1v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 1.1v 819.745n 1.1v 819.755n 0.0v 824.745n 0.0v 824.755n 1.1v 829.745n 1.1v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 1.1v 849.745n 1.1v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 1.1v 864.745n 1.1v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 1.1v 879.745n 1.1v 879.755n 1.1v 884.745n 1.1v 884.755n 1.1v 889.745n 1.1v 889.755n 1.1v 894.745n 1.1v 894.755n 1.1v 899.745n 1.1v 899.755n 1.1v 904.745n 1.1v 904.755n 1.1v 909.745n 1.1v 909.755n 1.1v 914.745n 1.1v 914.755n 1.1v 919.745n 1.1v 919.755n 1.1v 924.745n 1.1v 924.755n 1.1v 929.745n 1.1v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.1v 944.745n 1.1v 944.755n 1.1v 949.745n 1.1v 949.755n 1.1v 954.745n 1.1v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 1.1v 969.745n 1.1v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 1.1v 994.745n 1.1v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.1v 1024.745n 1.1v 1024.755n 1.1v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 0), (70, 0), (75, 0), (80, 0), (85, 1), (90, 1), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 1), (125, 1), (130, 0), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 0), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 0), (205, 0), (210, 1), (215, 1), (220, 0), (225, 0), (230, 0), (235, 0), (240, 1), (245, 1), (250, 0), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 1), (320, 1), (325, 1), (330, 1), (335, 0), (340, 0), (345, 1), (350, 1), (355, 1), (360, 0), (365, 0), (370, 1), (375, 1), (380, 0), (385, 0), (390, 0), (395, 1), (400, 1), (405, 1), (410, 1), (415, 1), (420, 1), (425, 0), (430, 0), (435, 1), (440, 0), (445, 0), (450, 1), (455, 1), (460, 1), (465, 1), (470, 0), (475, 0), (480, 0), (485, 0), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 0), (560, 0), (565, 1), (570, 1), (575, 1), (580, 1), (585, 0), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 1), (635, 0), (640, 1), (645, 1), (650, 1), (655, 0), (660, 0), (665, 1), (670, 0), (675, 0), (680, 1), (685, 1), (690, 1), (695, 1), (700, 1), (705, 0), (710, 0), (715, 1), (720, 1), (725, 1), (730, 0), (735, 1), (740, 0), (745, 1), (750, 1), (755, 0), (760, 0), (765, 1), (770, 0), (775, 0), (780, 1), (785, 0), (790, 0), (795, 0), (800, 1), (805, 1), (810, 1), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 1), (910, 1), (915, 1), (920, 1), (925, 0), (930, 1), (935, 1), (940, 1), (945, 0), (950, 0), (955, 1), (960, 0), (965, 1), (970, 1), (975, 1), (980, 1), (985, 0), (990, 1), (995, 1), (1000, 1), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va0_0  a0_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.1v 9.745n 1.1v 9.755n 1.1v 14.745n 1.1v 14.755n 1.1v 19.745n 1.1v 19.755n 1.1v 24.745n 1.1v 24.755n 1.1v 29.745n 1.1v 29.755n 1.1v 34.745n 1.1v 34.755n 1.1v 39.745n 1.1v 39.755n 1.1v 44.745n 1.1v 44.755n 1.1v 49.745n 1.1v 49.755n 1.1v 54.745n 1.1v 54.755n 1.1v 59.745n 1.1v 59.755n 1.1v 64.745n 1.1v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 1.1v 89.745n 1.1v 89.755n 1.1v 94.745n 1.1v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.1v 124.745n 1.1v 124.755n 1.1v 129.745n 1.1v 129.755n 0.0v 134.745n 0.0v 134.755n 1.1v 139.745n 1.1v 139.755n 1.1v 144.745n 1.1v 144.755n 1.1v 149.745n 1.1v 149.755n 1.1v 154.745n 1.1v 154.755n 1.1v 159.745n 1.1v 159.755n 1.1v 164.745n 1.1v 164.755n 1.1v 169.745n 1.1v 169.755n 0.0v 174.745n 0.0v 174.755n 1.1v 179.745n 1.1v 179.755n 1.1v 184.745n 1.1v 184.755n 1.1v 189.745n 1.1v 189.755n 1.1v 194.745n 1.1v 194.755n 1.1v 199.745n 1.1v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 1.1v 214.745n 1.1v 214.755n 1.1v 219.745n 1.1v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 1.1v 244.745n 1.1v 244.755n 1.1v 249.745n 1.1v 249.755n 0.0v 254.745n 0.0v 254.755n 1.1v 259.745n 1.1v 259.755n 1.1v 264.745n 1.1v 264.755n 1.1v 269.745n 1.1v 269.755n 1.1v 274.745n 1.1v 274.755n 1.1v 279.745n 1.1v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.1v 319.745n 1.1v 319.755n 1.1v 324.745n 1.1v 324.755n 1.1v 329.745n 1.1v 329.755n 1.1v 334.745n 1.1v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 1.1v 349.745n 1.1v 349.755n 1.1v 354.745n 1.1v 354.755n 1.1v 359.745n 1.1v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 1.1v 374.745n 1.1v 374.755n 1.1v 379.745n 1.1v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 1.1v 399.745n 1.1v 399.755n 1.1v 404.745n 1.1v 404.755n 1.1v 409.745n 1.1v 409.755n 1.1v 414.745n 1.1v 414.755n 1.1v 419.745n 1.1v 419.755n 1.1v 424.745n 1.1v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 1.1v 439.745n 1.1v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.1v 454.745n 1.1v 454.755n 1.1v 459.745n 1.1v 459.755n 1.1v 464.745n 1.1v 464.755n 1.1v 469.745n 1.1v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.1v 494.745n 1.1v 494.755n 1.1v 499.745n 1.1v 499.755n 1.1v 504.745n 1.1v 504.755n 1.1v 509.745n 1.1v 509.755n 1.1v 514.745n 1.1v 514.755n 1.1v 519.745n 1.1v 519.755n 1.1v 524.745n 1.1v 524.755n 1.1v 529.745n 1.1v 529.755n 1.1v 534.745n 1.1v 534.755n 1.1v 539.745n 1.1v 539.755n 1.1v 544.745n 1.1v 544.755n 1.1v 549.745n 1.1v 549.755n 1.1v 554.745n 1.1v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.1v 569.745n 1.1v 569.755n 1.1v 574.745n 1.1v 574.755n 1.1v 579.745n 1.1v 579.755n 1.1v 584.745n 1.1v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 1.1v 634.745n 1.1v 634.755n 0.0v 639.745n 0.0v 639.755n 1.1v 644.745n 1.1v 644.755n 1.1v 649.745n 1.1v 649.755n 1.1v 654.745n 1.1v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 1.1v 669.745n 1.1v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 1.1v 684.745n 1.1v 684.755n 1.1v 689.745n 1.1v 689.755n 1.1v 694.745n 1.1v 694.755n 1.1v 699.745n 1.1v 699.755n 1.1v 704.745n 1.1v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 1.1v 719.745n 1.1v 719.755n 1.1v 724.745n 1.1v 724.755n 1.1v 729.745n 1.1v 729.755n 0.0v 734.745n 0.0v 734.755n 1.1v 739.745n 1.1v 739.755n 0.0v 744.745n 0.0v 744.755n 1.1v 749.745n 1.1v 749.755n 1.1v 754.745n 1.1v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 1.1v 769.745n 1.1v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 1.1v 784.745n 1.1v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.1v 804.745n 1.1v 804.755n 1.1v 809.745n 1.1v 809.755n 1.1v 814.745n 1.1v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 1.1v 854.745n 1.1v 854.755n 1.1v 859.745n 1.1v 859.755n 1.1v 864.745n 1.1v 864.755n 1.1v 869.745n 1.1v 869.755n 1.1v 874.745n 1.1v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 1.1v 909.745n 1.1v 909.755n 1.1v 914.745n 1.1v 914.755n 1.1v 919.745n 1.1v 919.755n 1.1v 924.745n 1.1v 924.755n 0.0v 929.745n 0.0v 929.755n 1.1v 934.745n 1.1v 934.755n 1.1v 939.745n 1.1v 939.755n 1.1v 944.745n 1.1v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.1v 959.745n 1.1v 959.755n 0.0v 964.745n 0.0v 964.755n 1.1v 969.745n 1.1v 969.755n 1.1v 974.745n 1.1v 974.755n 1.1v 979.745n 1.1v 979.755n 1.1v 984.745n 1.1v 984.755n 0.0v 989.745n 0.0v 989.755n 1.1v 994.745n 1.1v 994.755n 1.1v 999.745n 1.1v 999.755n 1.1v 1004.745n 1.1v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 0), (60, 1), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 1), (100, 1), (105, 0), (110, 0), (115, 0), (120, 1), (125, 1), (130, 0), (135, 0), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 1), (185, 0), (190, 1), (195, 1), (200, 1), (205, 1), (210, 0), (215, 0), (220, 0), (225, 0), (230, 1), (235, 1), (240, 1), (245, 1), (250, 0), (255, 0), (260, 0), (265, 0), (270, 1), (275, 1), (280, 0), (285, 0), (290, 0), (295, 0), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 1), (360, 1), (365, 1), (370, 0), (375, 0), (380, 1), (385, 1), (390, 0), (395, 1), (400, 1), (405, 0), (410, 1), (415, 0), (420, 0), (425, 1), (430, 0), (435, 1), (440, 1), (445, 1), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 1), (500, 0), (505, 0), (510, 0), (515, 0), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 0), (550, 0), (555, 1), (560, 1), (565, 1), (570, 1), (575, 0), (580, 0), (585, 0), (590, 0), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 0), (640, 1), (645, 1), (650, 0), (655, 0), (660, 1), (665, 1), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 1), (710, 1), (715, 0), (720, 0), (725, 1), (730, 0), (735, 0), (740, 1), (745, 0), (750, 1), (755, 1), (760, 0), (765, 0), (770, 0), (775, 0), (780, 1), (785, 0), (790, 0), (795, 1), (800, 1), (805, 1), (810, 1), (815, 0), (820, 0), (825, 1), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 0), (910, 1), (915, 1), (920, 0), (925, 0), (930, 0), (935, 1), (940, 1), (945, 0), (950, 0), (955, 1), (960, 1), (965, 0), (970, 1), (975, 1), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 1), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va0_1  a0_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.1v 14.745n 1.1v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 1.1v 29.745n 1.1v 29.755n 1.1v 34.745n 1.1v 34.755n 1.1v 39.745n 1.1v 39.755n 1.1v 44.745n 1.1v 44.755n 1.1v 49.745n 1.1v 49.755n 1.1v 54.745n 1.1v 54.755n 0.0v 59.745n 0.0v 59.755n 1.1v 64.745n 1.1v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.1v 99.745n 1.1v 99.755n 1.1v 104.745n 1.1v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.1v 124.745n 1.1v 124.755n 1.1v 129.745n 1.1v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 1.1v 144.745n 1.1v 144.755n 1.1v 149.745n 1.1v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.1v 184.745n 1.1v 184.755n 0.0v 189.745n 0.0v 189.755n 1.1v 194.745n 1.1v 194.755n 1.1v 199.745n 1.1v 199.755n 1.1v 204.745n 1.1v 204.755n 1.1v 209.745n 1.1v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 1.1v 234.745n 1.1v 234.755n 1.1v 239.745n 1.1v 239.755n 1.1v 244.745n 1.1v 244.755n 1.1v 249.745n 1.1v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.1v 274.745n 1.1v 274.755n 1.1v 279.745n 1.1v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 1.1v 304.745n 1.1v 304.755n 1.1v 309.745n 1.1v 309.755n 1.1v 314.745n 1.1v 314.755n 1.1v 319.745n 1.1v 319.755n 1.1v 324.745n 1.1v 324.755n 1.1v 329.745n 1.1v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 1.1v 359.745n 1.1v 359.755n 1.1v 364.745n 1.1v 364.755n 1.1v 369.745n 1.1v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.1v 384.745n 1.1v 384.755n 1.1v 389.745n 1.1v 389.755n 0.0v 394.745n 0.0v 394.755n 1.1v 399.745n 1.1v 399.755n 1.1v 404.745n 1.1v 404.755n 0.0v 409.745n 0.0v 409.755n 1.1v 414.745n 1.1v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 1.1v 429.745n 1.1v 429.755n 0.0v 434.745n 0.0v 434.755n 1.1v 439.745n 1.1v 439.755n 1.1v 444.745n 1.1v 444.755n 1.1v 449.745n 1.1v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 1.1v 499.745n 1.1v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 1.1v 524.745n 1.1v 524.755n 1.1v 529.745n 1.1v 529.755n 1.1v 534.745n 1.1v 534.755n 1.1v 539.745n 1.1v 539.755n 1.1v 544.745n 1.1v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.1v 559.745n 1.1v 559.755n 1.1v 564.745n 1.1v 564.755n 1.1v 569.745n 1.1v 569.755n 1.1v 574.745n 1.1v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 1.1v 599.745n 1.1v 599.755n 1.1v 604.745n 1.1v 604.755n 1.1v 609.745n 1.1v 609.755n 1.1v 614.745n 1.1v 614.755n 1.1v 619.745n 1.1v 619.755n 1.1v 624.745n 1.1v 624.755n 1.1v 629.745n 1.1v 629.755n 1.1v 634.745n 1.1v 634.755n 0.0v 639.745n 0.0v 639.755n 1.1v 644.745n 1.1v 644.755n 1.1v 649.745n 1.1v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.1v 664.745n 1.1v 664.755n 1.1v 669.745n 1.1v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 1.1v 709.745n 1.1v 709.755n 1.1v 714.745n 1.1v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.1v 729.745n 1.1v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 1.1v 744.745n 1.1v 744.755n 0.0v 749.745n 0.0v 749.755n 1.1v 754.745n 1.1v 754.755n 1.1v 759.745n 1.1v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 1.1v 784.745n 1.1v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.1v 799.745n 1.1v 799.755n 1.1v 804.745n 1.1v 804.755n 1.1v 809.745n 1.1v 809.755n 1.1v 814.745n 1.1v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.1v 829.745n 1.1v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 1.1v 884.745n 1.1v 884.755n 1.1v 889.745n 1.1v 889.755n 1.1v 894.745n 1.1v 894.755n 1.1v 899.745n 1.1v 899.755n 1.1v 904.745n 1.1v 904.755n 0.0v 909.745n 0.0v 909.755n 1.1v 914.745n 1.1v 914.755n 1.1v 919.745n 1.1v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 1.1v 939.745n 1.1v 939.755n 1.1v 944.745n 1.1v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.1v 959.745n 1.1v 959.755n 1.1v 964.745n 1.1v 964.755n 0.0v 969.745n 0.0v 969.755n 1.1v 974.745n 1.1v 974.755n 1.1v 979.745n 1.1v 979.755n 1.1v 984.745n 1.1v 984.755n 1.1v 989.745n 1.1v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.1v 1009.745n 1.1v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 1), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 1), (60, 0), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 0), (120, 0), (125, 0), (130, 0), (135, 1), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 0), (180, 0), (185, 1), (190, 0), (195, 0), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 1), (235, 1), (240, 0), (245, 0), (250, 1), (255, 0), (260, 1), (265, 0), (270, 0), (275, 0), (280, 1), (285, 1), (290, 1), (295, 1), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 1), (345, 0), (350, 0), (355, 0), (360, 1), (365, 1), (370, 0), (375, 0), (380, 1), (385, 0), (390, 1), (395, 0), (400, 0), (405, 1), (410, 0), (415, 1), (420, 1), (425, 1), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 1), (460, 1), (465, 1), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 0), (620, 1), (625, 1), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 1), (665, 0), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 0), (700, 1), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 1), (735, 0), (740, 0), (745, 0), (750, 0), (755, 1), (760, 0), (765, 1), (770, 0), (775, 1), (780, 0), (785, 1), (790, 1), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 1), (830, 1), (835, 1), (840, 0), (845, 1), (850, 0), (855, 1), (860, 1), (865, 1), (870, 1), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 1), (905, 1), (910, 0), (915, 0), (920, 1), (925, 1), (930, 1), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 1), (965, 1), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 1), (1000, 1), (1005, 0), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va0_2  a0_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.1v 19.745n 1.1v 19.755n 1.1v 24.745n 1.1v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 1.1v 59.745n 1.1v 59.755n 0.0v 64.745n 0.0v 64.755n 1.1v 69.745n 1.1v 69.755n 1.1v 74.745n 1.1v 74.755n 1.1v 79.745n 1.1v 79.755n 1.1v 84.745n 1.1v 84.755n 1.1v 89.745n 1.1v 89.755n 1.1v 94.745n 1.1v 94.755n 1.1v 99.745n 1.1v 99.755n 1.1v 104.745n 1.1v 104.755n 1.1v 109.745n 1.1v 109.755n 1.1v 114.745n 1.1v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.1v 139.745n 1.1v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.1v 174.745n 1.1v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 1.1v 189.745n 1.1v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 1.1v 204.745n 1.1v 204.755n 1.1v 209.745n 1.1v 209.755n 1.1v 214.745n 1.1v 214.755n 1.1v 219.745n 1.1v 219.755n 1.1v 224.745n 1.1v 224.755n 0.0v 229.745n 0.0v 229.755n 1.1v 234.745n 1.1v 234.755n 1.1v 239.745n 1.1v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.1v 254.745n 1.1v 254.755n 0.0v 259.745n 0.0v 259.755n 1.1v 264.745n 1.1v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 1.1v 284.745n 1.1v 284.755n 1.1v 289.745n 1.1v 289.755n 1.1v 294.745n 1.1v 294.755n 1.1v 299.745n 1.1v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 1.1v 344.745n 1.1v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 1.1v 364.745n 1.1v 364.755n 1.1v 369.745n 1.1v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.1v 384.745n 1.1v 384.755n 0.0v 389.745n 0.0v 389.755n 1.1v 394.745n 1.1v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 1.1v 409.745n 1.1v 409.755n 0.0v 414.745n 0.0v 414.755n 1.1v 419.745n 1.1v 419.755n 1.1v 424.745n 1.1v 424.755n 1.1v 429.745n 1.1v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.1v 459.745n 1.1v 459.755n 1.1v 464.745n 1.1v 464.755n 1.1v 469.745n 1.1v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 1.1v 589.745n 1.1v 589.755n 1.1v 594.745n 1.1v 594.755n 1.1v 599.745n 1.1v 599.755n 1.1v 604.745n 1.1v 604.755n 1.1v 609.745n 1.1v 609.755n 1.1v 614.745n 1.1v 614.755n 0.0v 619.745n 0.0v 619.755n 1.1v 624.745n 1.1v 624.755n 1.1v 629.745n 1.1v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.1v 664.745n 1.1v 664.755n 0.0v 669.745n 0.0v 669.755n 1.1v 674.745n 1.1v 674.755n 1.1v 679.745n 1.1v 679.755n 1.1v 684.745n 1.1v 684.755n 1.1v 689.745n 1.1v 689.755n 1.1v 694.745n 1.1v 694.755n 0.0v 699.745n 0.0v 699.755n 1.1v 704.745n 1.1v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 1.1v 734.745n 1.1v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 1.1v 759.745n 1.1v 759.755n 0.0v 764.745n 0.0v 764.755n 1.1v 769.745n 1.1v 769.755n 0.0v 774.745n 0.0v 774.755n 1.1v 779.745n 1.1v 779.755n 0.0v 784.745n 0.0v 784.755n 1.1v 789.745n 1.1v 789.755n 1.1v 794.745n 1.1v 794.755n 1.1v 799.745n 1.1v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.1v 829.745n 1.1v 829.755n 1.1v 834.745n 1.1v 834.755n 1.1v 839.745n 1.1v 839.755n 0.0v 844.745n 0.0v 844.755n 1.1v 849.745n 1.1v 849.755n 0.0v 854.745n 0.0v 854.755n 1.1v 859.745n 1.1v 859.755n 1.1v 864.745n 1.1v 864.755n 1.1v 869.745n 1.1v 869.755n 1.1v 874.745n 1.1v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.1v 904.745n 1.1v 904.755n 1.1v 909.745n 1.1v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 1.1v 924.745n 1.1v 924.755n 1.1v 929.745n 1.1v 929.755n 1.1v 934.745n 1.1v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 1.1v 964.745n 1.1v 964.755n 1.1v 969.745n 1.1v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 1.1v 999.745n 1.1v 999.755n 1.1v 1004.745n 1.1v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 1.1v 1014.745n 1.1v 1014.755n 1.1v 1019.745n 1.1v 1019.755n 1.1v 1024.745n 1.1v 1024.755n 1.1v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 1), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 1), (60, 0), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 0), (120, 0), (125, 0), (130, 0), (135, 1), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 0), (180, 0), (185, 1), (190, 1), (195, 0), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 1), (235, 1), (240, 1), (245, 0), (250, 1), (255, 0), (260, 1), (265, 0), (270, 0), (275, 0), (280, 1), (285, 1), (290, 1), (295, 1), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 1), (345, 0), (350, 0), (355, 0), (360, 1), (365, 1), (370, 0), (375, 0), (380, 1), (385, 0), (390, 1), (395, 0), (400, 0), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 1), (460, 1), (465, 1), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 1), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 0), (620, 1), (625, 1), (630, 1), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 0), (700, 1), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 0), (740, 0), (745, 0), (750, 0), (755, 1), (760, 0), (765, 1), (770, 0), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 1), (830, 1), (835, 1), (840, 0), (845, 1), (850, 0), (855, 1), (860, 1), (865, 1), (870, 1), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 1), (905, 1), (910, 0), (915, 0), (920, 1), (925, 1), (930, 1), (935, 1), (940, 0), (945, 0), (950, 0), (955, 0), (960, 1), (965, 1), (970, 1), (975, 1), (980, 0), (985, 0), (990, 0), (995, 1), (1000, 1), (1005, 0), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va0_3  a0_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.1v 19.745n 1.1v 19.755n 1.1v 24.745n 1.1v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 1.1v 59.745n 1.1v 59.755n 0.0v 64.745n 0.0v 64.755n 1.1v 69.745n 1.1v 69.755n 1.1v 74.745n 1.1v 74.755n 1.1v 79.745n 1.1v 79.755n 1.1v 84.745n 1.1v 84.755n 1.1v 89.745n 1.1v 89.755n 1.1v 94.745n 1.1v 94.755n 1.1v 99.745n 1.1v 99.755n 1.1v 104.745n 1.1v 104.755n 1.1v 109.745n 1.1v 109.755n 1.1v 114.745n 1.1v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.1v 139.745n 1.1v 139.755n 1.1v 144.745n 1.1v 144.755n 1.1v 149.745n 1.1v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.1v 174.745n 1.1v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 1.1v 189.745n 1.1v 189.755n 1.1v 194.745n 1.1v 194.755n 0.0v 199.745n 0.0v 199.755n 1.1v 204.745n 1.1v 204.755n 1.1v 209.745n 1.1v 209.755n 1.1v 214.745n 1.1v 214.755n 1.1v 219.745n 1.1v 219.755n 1.1v 224.745n 1.1v 224.755n 0.0v 229.745n 0.0v 229.755n 1.1v 234.745n 1.1v 234.755n 1.1v 239.745n 1.1v 239.755n 1.1v 244.745n 1.1v 244.755n 0.0v 249.745n 0.0v 249.755n 1.1v 254.745n 1.1v 254.755n 0.0v 259.745n 0.0v 259.755n 1.1v 264.745n 1.1v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 1.1v 284.745n 1.1v 284.755n 1.1v 289.745n 1.1v 289.755n 1.1v 294.745n 1.1v 294.755n 1.1v 299.745n 1.1v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 1.1v 344.745n 1.1v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 1.1v 364.745n 1.1v 364.755n 1.1v 369.745n 1.1v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.1v 384.745n 1.1v 384.755n 0.0v 389.745n 0.0v 389.755n 1.1v 394.745n 1.1v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 1.1v 409.745n 1.1v 409.755n 1.1v 414.745n 1.1v 414.755n 1.1v 419.745n 1.1v 419.755n 1.1v 424.745n 1.1v 424.755n 1.1v 429.745n 1.1v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.1v 459.745n 1.1v 459.755n 1.1v 464.745n 1.1v 464.755n 1.1v 469.745n 1.1v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.1v 544.745n 1.1v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 1.1v 589.745n 1.1v 589.755n 1.1v 594.745n 1.1v 594.755n 1.1v 599.745n 1.1v 599.755n 1.1v 604.745n 1.1v 604.755n 1.1v 609.745n 1.1v 609.755n 1.1v 614.745n 1.1v 614.755n 0.0v 619.745n 0.0v 619.755n 1.1v 624.745n 1.1v 624.755n 1.1v 629.745n 1.1v 629.755n 1.1v 634.745n 1.1v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.1v 664.745n 1.1v 664.755n 1.1v 669.745n 1.1v 669.755n 1.1v 674.745n 1.1v 674.755n 1.1v 679.745n 1.1v 679.755n 1.1v 684.745n 1.1v 684.755n 1.1v 689.745n 1.1v 689.755n 1.1v 694.745n 1.1v 694.755n 0.0v 699.745n 0.0v 699.755n 1.1v 704.745n 1.1v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.1v 729.745n 1.1v 729.755n 1.1v 734.745n 1.1v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 1.1v 759.745n 1.1v 759.755n 0.0v 764.745n 0.0v 764.755n 1.1v 769.745n 1.1v 769.755n 0.0v 774.745n 0.0v 774.755n 1.1v 779.745n 1.1v 779.755n 1.1v 784.745n 1.1v 784.755n 1.1v 789.745n 1.1v 789.755n 1.1v 794.745n 1.1v 794.755n 1.1v 799.745n 1.1v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.1v 829.745n 1.1v 829.755n 1.1v 834.745n 1.1v 834.755n 1.1v 839.745n 1.1v 839.755n 0.0v 844.745n 0.0v 844.755n 1.1v 849.745n 1.1v 849.755n 0.0v 854.745n 0.0v 854.755n 1.1v 859.745n 1.1v 859.755n 1.1v 864.745n 1.1v 864.755n 1.1v 869.745n 1.1v 869.755n 1.1v 874.745n 1.1v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.1v 904.745n 1.1v 904.755n 1.1v 909.745n 1.1v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 1.1v 924.745n 1.1v 924.755n 1.1v 929.745n 1.1v 929.755n 1.1v 934.745n 1.1v 934.755n 1.1v 939.745n 1.1v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 1.1v 964.745n 1.1v 964.755n 1.1v 969.745n 1.1v 969.755n 1.1v 974.745n 1.1v 974.755n 1.1v 979.745n 1.1v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 1.1v 999.745n 1.1v 999.755n 1.1v 1004.745n 1.1v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 1.1v 1014.745n 1.1v 1014.755n 1.1v 1019.745n 1.1v 1019.755n 1.1v 1024.745n 1.1v 1024.755n 1.1v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 1), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 1), (60, 0), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 0), (120, 0), (125, 0), (130, 0), (135, 1), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 0), (180, 0), (185, 1), (190, 1), (195, 0), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 1), (235, 1), (240, 1), (245, 0), (250, 1), (255, 0), (260, 1), (265, 0), (270, 0), (275, 0), (280, 1), (285, 1), (290, 1), (295, 1), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 1), (345, 0), (350, 0), (355, 0), (360, 1), (365, 1), (370, 0), (375, 0), (380, 1), (385, 0), (390, 1), (395, 0), (400, 0), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 1), (460, 1), (465, 1), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 1), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 0), (620, 1), (625, 1), (630, 1), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 0), (700, 1), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 0), (740, 0), (745, 0), (750, 0), (755, 1), (760, 0), (765, 1), (770, 0), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 1), (830, 1), (835, 1), (840, 0), (845, 1), (850, 0), (855, 1), (860, 1), (865, 1), (870, 1), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 1), (905, 1), (910, 0), (915, 0), (920, 1), (925, 1), (930, 1), (935, 1), (940, 0), (945, 0), (950, 0), (955, 0), (960, 1), (965, 1), (970, 1), (975, 1), (980, 0), (985, 0), (990, 0), (995, 1), (1000, 1), (1005, 0), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va0_4  a0_4  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.1v 19.745n 1.1v 19.755n 1.1v 24.745n 1.1v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 1.1v 59.745n 1.1v 59.755n 0.0v 64.745n 0.0v 64.755n 1.1v 69.745n 1.1v 69.755n 1.1v 74.745n 1.1v 74.755n 1.1v 79.745n 1.1v 79.755n 1.1v 84.745n 1.1v 84.755n 1.1v 89.745n 1.1v 89.755n 1.1v 94.745n 1.1v 94.755n 1.1v 99.745n 1.1v 99.755n 1.1v 104.745n 1.1v 104.755n 1.1v 109.745n 1.1v 109.755n 1.1v 114.745n 1.1v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.1v 139.745n 1.1v 139.755n 1.1v 144.745n 1.1v 144.755n 1.1v 149.745n 1.1v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.1v 174.745n 1.1v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 1.1v 189.745n 1.1v 189.755n 1.1v 194.745n 1.1v 194.755n 0.0v 199.745n 0.0v 199.755n 1.1v 204.745n 1.1v 204.755n 1.1v 209.745n 1.1v 209.755n 1.1v 214.745n 1.1v 214.755n 1.1v 219.745n 1.1v 219.755n 1.1v 224.745n 1.1v 224.755n 0.0v 229.745n 0.0v 229.755n 1.1v 234.745n 1.1v 234.755n 1.1v 239.745n 1.1v 239.755n 1.1v 244.745n 1.1v 244.755n 0.0v 249.745n 0.0v 249.755n 1.1v 254.745n 1.1v 254.755n 0.0v 259.745n 0.0v 259.755n 1.1v 264.745n 1.1v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 1.1v 284.745n 1.1v 284.755n 1.1v 289.745n 1.1v 289.755n 1.1v 294.745n 1.1v 294.755n 1.1v 299.745n 1.1v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 1.1v 344.745n 1.1v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 1.1v 364.745n 1.1v 364.755n 1.1v 369.745n 1.1v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.1v 384.745n 1.1v 384.755n 0.0v 389.745n 0.0v 389.755n 1.1v 394.745n 1.1v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 1.1v 409.745n 1.1v 409.755n 1.1v 414.745n 1.1v 414.755n 1.1v 419.745n 1.1v 419.755n 1.1v 424.745n 1.1v 424.755n 1.1v 429.745n 1.1v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.1v 459.745n 1.1v 459.755n 1.1v 464.745n 1.1v 464.755n 1.1v 469.745n 1.1v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.1v 544.745n 1.1v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 1.1v 589.745n 1.1v 589.755n 1.1v 594.745n 1.1v 594.755n 1.1v 599.745n 1.1v 599.755n 1.1v 604.745n 1.1v 604.755n 1.1v 609.745n 1.1v 609.755n 1.1v 614.745n 1.1v 614.755n 0.0v 619.745n 0.0v 619.755n 1.1v 624.745n 1.1v 624.755n 1.1v 629.745n 1.1v 629.755n 1.1v 634.745n 1.1v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.1v 664.745n 1.1v 664.755n 1.1v 669.745n 1.1v 669.755n 1.1v 674.745n 1.1v 674.755n 1.1v 679.745n 1.1v 679.755n 1.1v 684.745n 1.1v 684.755n 1.1v 689.745n 1.1v 689.755n 1.1v 694.745n 1.1v 694.755n 0.0v 699.745n 0.0v 699.755n 1.1v 704.745n 1.1v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.1v 729.745n 1.1v 729.755n 1.1v 734.745n 1.1v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 1.1v 759.745n 1.1v 759.755n 0.0v 764.745n 0.0v 764.755n 1.1v 769.745n 1.1v 769.755n 0.0v 774.745n 0.0v 774.755n 1.1v 779.745n 1.1v 779.755n 1.1v 784.745n 1.1v 784.755n 1.1v 789.745n 1.1v 789.755n 1.1v 794.745n 1.1v 794.755n 1.1v 799.745n 1.1v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.1v 829.745n 1.1v 829.755n 1.1v 834.745n 1.1v 834.755n 1.1v 839.745n 1.1v 839.755n 0.0v 844.745n 0.0v 844.755n 1.1v 849.745n 1.1v 849.755n 0.0v 854.745n 0.0v 854.755n 1.1v 859.745n 1.1v 859.755n 1.1v 864.745n 1.1v 864.755n 1.1v 869.745n 1.1v 869.755n 1.1v 874.745n 1.1v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.1v 904.745n 1.1v 904.755n 1.1v 909.745n 1.1v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 1.1v 924.745n 1.1v 924.755n 1.1v 929.745n 1.1v 929.755n 1.1v 934.745n 1.1v 934.755n 1.1v 939.745n 1.1v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 1.1v 964.745n 1.1v 964.755n 1.1v 969.745n 1.1v 969.755n 1.1v 974.745n 1.1v 974.755n 1.1v 979.745n 1.1v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 1.1v 999.745n 1.1v 999.755n 1.1v 1004.745n 1.1v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 1.1v 1014.745n 1.1v 1014.755n 1.1v 1019.745n 1.1v 1019.755n 1.1v 1024.745n 1.1v 1024.755n 1.1v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 1), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 1), (60, 0), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 0), (120, 0), (125, 0), (130, 0), (135, 1), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 0), (180, 0), (185, 1), (190, 1), (195, 0), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 1), (235, 1), (240, 1), (245, 0), (250, 1), (255, 0), (260, 1), (265, 0), (270, 0), (275, 0), (280, 1), (285, 1), (290, 1), (295, 1), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 1), (345, 0), (350, 0), (355, 0), (360, 1), (365, 1), (370, 0), (375, 0), (380, 1), (385, 0), (390, 1), (395, 0), (400, 0), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 1), (460, 1), (465, 1), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 1), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 0), (620, 1), (625, 1), (630, 1), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 0), (700, 1), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 0), (740, 0), (745, 0), (750, 0), (755, 1), (760, 0), (765, 1), (770, 0), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 1), (830, 1), (835, 1), (840, 0), (845, 1), (850, 0), (855, 1), (860, 1), (865, 1), (870, 1), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 1), (905, 1), (910, 0), (915, 0), (920, 1), (925, 1), (930, 1), (935, 1), (940, 0), (945, 0), (950, 0), (955, 0), (960, 1), (965, 1), (970, 1), (975, 1), (980, 0), (985, 0), (990, 0), (995, 1), (1000, 1), (1005, 0), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va0_5  a0_5  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.1v 19.745n 1.1v 19.755n 1.1v 24.745n 1.1v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 1.1v 59.745n 1.1v 59.755n 0.0v 64.745n 0.0v 64.755n 1.1v 69.745n 1.1v 69.755n 1.1v 74.745n 1.1v 74.755n 1.1v 79.745n 1.1v 79.755n 1.1v 84.745n 1.1v 84.755n 1.1v 89.745n 1.1v 89.755n 1.1v 94.745n 1.1v 94.755n 1.1v 99.745n 1.1v 99.755n 1.1v 104.745n 1.1v 104.755n 1.1v 109.745n 1.1v 109.755n 1.1v 114.745n 1.1v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.1v 139.745n 1.1v 139.755n 1.1v 144.745n 1.1v 144.755n 1.1v 149.745n 1.1v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.1v 174.745n 1.1v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 1.1v 189.745n 1.1v 189.755n 1.1v 194.745n 1.1v 194.755n 0.0v 199.745n 0.0v 199.755n 1.1v 204.745n 1.1v 204.755n 1.1v 209.745n 1.1v 209.755n 1.1v 214.745n 1.1v 214.755n 1.1v 219.745n 1.1v 219.755n 1.1v 224.745n 1.1v 224.755n 0.0v 229.745n 0.0v 229.755n 1.1v 234.745n 1.1v 234.755n 1.1v 239.745n 1.1v 239.755n 1.1v 244.745n 1.1v 244.755n 0.0v 249.745n 0.0v 249.755n 1.1v 254.745n 1.1v 254.755n 0.0v 259.745n 0.0v 259.755n 1.1v 264.745n 1.1v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 1.1v 284.745n 1.1v 284.755n 1.1v 289.745n 1.1v 289.755n 1.1v 294.745n 1.1v 294.755n 1.1v 299.745n 1.1v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 1.1v 344.745n 1.1v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 1.1v 364.745n 1.1v 364.755n 1.1v 369.745n 1.1v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.1v 384.745n 1.1v 384.755n 0.0v 389.745n 0.0v 389.755n 1.1v 394.745n 1.1v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 1.1v 409.745n 1.1v 409.755n 1.1v 414.745n 1.1v 414.755n 1.1v 419.745n 1.1v 419.755n 1.1v 424.745n 1.1v 424.755n 1.1v 429.745n 1.1v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.1v 459.745n 1.1v 459.755n 1.1v 464.745n 1.1v 464.755n 1.1v 469.745n 1.1v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.1v 544.745n 1.1v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 1.1v 589.745n 1.1v 589.755n 1.1v 594.745n 1.1v 594.755n 1.1v 599.745n 1.1v 599.755n 1.1v 604.745n 1.1v 604.755n 1.1v 609.745n 1.1v 609.755n 1.1v 614.745n 1.1v 614.755n 0.0v 619.745n 0.0v 619.755n 1.1v 624.745n 1.1v 624.755n 1.1v 629.745n 1.1v 629.755n 1.1v 634.745n 1.1v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.1v 664.745n 1.1v 664.755n 1.1v 669.745n 1.1v 669.755n 1.1v 674.745n 1.1v 674.755n 1.1v 679.745n 1.1v 679.755n 1.1v 684.745n 1.1v 684.755n 1.1v 689.745n 1.1v 689.755n 1.1v 694.745n 1.1v 694.755n 0.0v 699.745n 0.0v 699.755n 1.1v 704.745n 1.1v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.1v 729.745n 1.1v 729.755n 1.1v 734.745n 1.1v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 1.1v 759.745n 1.1v 759.755n 0.0v 764.745n 0.0v 764.755n 1.1v 769.745n 1.1v 769.755n 0.0v 774.745n 0.0v 774.755n 1.1v 779.745n 1.1v 779.755n 1.1v 784.745n 1.1v 784.755n 1.1v 789.745n 1.1v 789.755n 1.1v 794.745n 1.1v 794.755n 1.1v 799.745n 1.1v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.1v 829.745n 1.1v 829.755n 1.1v 834.745n 1.1v 834.755n 1.1v 839.745n 1.1v 839.755n 0.0v 844.745n 0.0v 844.755n 1.1v 849.745n 1.1v 849.755n 0.0v 854.745n 0.0v 854.755n 1.1v 859.745n 1.1v 859.755n 1.1v 864.745n 1.1v 864.755n 1.1v 869.745n 1.1v 869.755n 1.1v 874.745n 1.1v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.1v 904.745n 1.1v 904.755n 1.1v 909.745n 1.1v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 1.1v 924.745n 1.1v 924.755n 1.1v 929.745n 1.1v 929.755n 1.1v 934.745n 1.1v 934.755n 1.1v 939.745n 1.1v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 1.1v 964.745n 1.1v 964.755n 1.1v 969.745n 1.1v 969.755n 1.1v 974.745n 1.1v 974.755n 1.1v 979.745n 1.1v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 1.1v 999.745n 1.1v 999.755n 1.1v 1004.745n 1.1v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 1.1v 1014.745n 1.1v 1014.755n 1.1v 1019.745n 1.1v 1019.755n 1.1v 1024.745n 1.1v 1024.755n 1.1v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 1), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 1), (60, 0), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 0), (120, 0), (125, 0), (130, 0), (135, 1), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 0), (180, 0), (185, 1), (190, 1), (195, 0), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 1), (235, 1), (240, 1), (245, 0), (250, 1), (255, 0), (260, 1), (265, 0), (270, 0), (275, 0), (280, 1), (285, 1), (290, 1), (295, 1), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 1), (345, 0), (350, 0), (355, 0), (360, 1), (365, 1), (370, 0), (375, 0), (380, 1), (385, 0), (390, 1), (395, 0), (400, 0), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 1), (460, 1), (465, 1), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 1), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 0), (620, 1), (625, 1), (630, 1), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 0), (700, 1), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 0), (740, 0), (745, 0), (750, 0), (755, 1), (760, 0), (765, 1), (770, 0), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 1), (830, 1), (835, 1), (840, 0), (845, 1), (850, 0), (855, 1), (860, 1), (865, 1), (870, 1), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 1), (905, 1), (910, 0), (915, 0), (920, 1), (925, 1), (930, 1), (935, 1), (940, 0), (945, 0), (950, 0), (955, 0), (960, 1), (965, 1), (970, 1), (975, 1), (980, 0), (985, 0), (990, 0), (995, 1), (1000, 1), (1005, 0), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va0_6  a0_6  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.1v 19.745n 1.1v 19.755n 1.1v 24.745n 1.1v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 1.1v 59.745n 1.1v 59.755n 0.0v 64.745n 0.0v 64.755n 1.1v 69.745n 1.1v 69.755n 1.1v 74.745n 1.1v 74.755n 1.1v 79.745n 1.1v 79.755n 1.1v 84.745n 1.1v 84.755n 1.1v 89.745n 1.1v 89.755n 1.1v 94.745n 1.1v 94.755n 1.1v 99.745n 1.1v 99.755n 1.1v 104.745n 1.1v 104.755n 1.1v 109.745n 1.1v 109.755n 1.1v 114.745n 1.1v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.1v 139.745n 1.1v 139.755n 1.1v 144.745n 1.1v 144.755n 1.1v 149.745n 1.1v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.1v 174.745n 1.1v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 1.1v 189.745n 1.1v 189.755n 1.1v 194.745n 1.1v 194.755n 0.0v 199.745n 0.0v 199.755n 1.1v 204.745n 1.1v 204.755n 1.1v 209.745n 1.1v 209.755n 1.1v 214.745n 1.1v 214.755n 1.1v 219.745n 1.1v 219.755n 1.1v 224.745n 1.1v 224.755n 0.0v 229.745n 0.0v 229.755n 1.1v 234.745n 1.1v 234.755n 1.1v 239.745n 1.1v 239.755n 1.1v 244.745n 1.1v 244.755n 0.0v 249.745n 0.0v 249.755n 1.1v 254.745n 1.1v 254.755n 0.0v 259.745n 0.0v 259.755n 1.1v 264.745n 1.1v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 1.1v 284.745n 1.1v 284.755n 1.1v 289.745n 1.1v 289.755n 1.1v 294.745n 1.1v 294.755n 1.1v 299.745n 1.1v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 1.1v 344.745n 1.1v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 1.1v 364.745n 1.1v 364.755n 1.1v 369.745n 1.1v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.1v 384.745n 1.1v 384.755n 0.0v 389.745n 0.0v 389.755n 1.1v 394.745n 1.1v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 1.1v 409.745n 1.1v 409.755n 1.1v 414.745n 1.1v 414.755n 1.1v 419.745n 1.1v 419.755n 1.1v 424.745n 1.1v 424.755n 1.1v 429.745n 1.1v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.1v 459.745n 1.1v 459.755n 1.1v 464.745n 1.1v 464.755n 1.1v 469.745n 1.1v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.1v 544.745n 1.1v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 1.1v 589.745n 1.1v 589.755n 1.1v 594.745n 1.1v 594.755n 1.1v 599.745n 1.1v 599.755n 1.1v 604.745n 1.1v 604.755n 1.1v 609.745n 1.1v 609.755n 1.1v 614.745n 1.1v 614.755n 0.0v 619.745n 0.0v 619.755n 1.1v 624.745n 1.1v 624.755n 1.1v 629.745n 1.1v 629.755n 1.1v 634.745n 1.1v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.1v 664.745n 1.1v 664.755n 1.1v 669.745n 1.1v 669.755n 1.1v 674.745n 1.1v 674.755n 1.1v 679.745n 1.1v 679.755n 1.1v 684.745n 1.1v 684.755n 1.1v 689.745n 1.1v 689.755n 1.1v 694.745n 1.1v 694.755n 0.0v 699.745n 0.0v 699.755n 1.1v 704.745n 1.1v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.1v 729.745n 1.1v 729.755n 1.1v 734.745n 1.1v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 1.1v 759.745n 1.1v 759.755n 0.0v 764.745n 0.0v 764.755n 1.1v 769.745n 1.1v 769.755n 0.0v 774.745n 0.0v 774.755n 1.1v 779.745n 1.1v 779.755n 1.1v 784.745n 1.1v 784.755n 1.1v 789.745n 1.1v 789.755n 1.1v 794.745n 1.1v 794.755n 1.1v 799.745n 1.1v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.1v 829.745n 1.1v 829.755n 1.1v 834.745n 1.1v 834.755n 1.1v 839.745n 1.1v 839.755n 0.0v 844.745n 0.0v 844.755n 1.1v 849.745n 1.1v 849.755n 0.0v 854.745n 0.0v 854.755n 1.1v 859.745n 1.1v 859.755n 1.1v 864.745n 1.1v 864.755n 1.1v 869.745n 1.1v 869.755n 1.1v 874.745n 1.1v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.1v 904.745n 1.1v 904.755n 1.1v 909.745n 1.1v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 1.1v 924.745n 1.1v 924.755n 1.1v 929.745n 1.1v 929.755n 1.1v 934.745n 1.1v 934.755n 1.1v 939.745n 1.1v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 1.1v 964.745n 1.1v 964.755n 1.1v 969.745n 1.1v 969.755n 1.1v 974.745n 1.1v 974.755n 1.1v 979.745n 1.1v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 1.1v 999.745n 1.1v 999.755n 1.1v 1004.745n 1.1v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 1.1v 1014.745n 1.1v 1014.755n 1.1v 1019.745n 1.1v 1019.755n 1.1v 1024.745n 1.1v 1024.755n 1.1v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 1), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 1), (60, 0), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 0), (120, 0), (125, 0), (130, 0), (135, 1), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 0), (180, 0), (185, 1), (190, 1), (195, 0), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 1), (235, 1), (240, 1), (245, 0), (250, 1), (255, 0), (260, 1), (265, 0), (270, 0), (275, 0), (280, 1), (285, 1), (290, 1), (295, 1), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 1), (345, 0), (350, 0), (355, 0), (360, 1), (365, 1), (370, 0), (375, 0), (380, 1), (385, 0), (390, 1), (395, 0), (400, 0), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 1), (460, 1), (465, 1), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 1), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 0), (620, 1), (625, 1), (630, 1), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 0), (700, 1), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 0), (740, 0), (745, 0), (750, 0), (755, 1), (760, 0), (765, 1), (770, 0), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 1), (830, 1), (835, 1), (840, 0), (845, 1), (850, 0), (855, 1), (860, 1), (865, 1), (870, 1), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 1), (905, 1), (910, 0), (915, 0), (920, 1), (925, 1), (930, 1), (935, 1), (940, 0), (945, 0), (950, 0), (955, 0), (960, 1), (965, 1), (970, 1), (975, 1), (980, 0), (985, 0), (990, 0), (995, 1), (1000, 1), (1005, 0), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va0_7  a0_7  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.1v 19.745n 1.1v 19.755n 1.1v 24.745n 1.1v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 1.1v 59.745n 1.1v 59.755n 0.0v 64.745n 0.0v 64.755n 1.1v 69.745n 1.1v 69.755n 1.1v 74.745n 1.1v 74.755n 1.1v 79.745n 1.1v 79.755n 1.1v 84.745n 1.1v 84.755n 1.1v 89.745n 1.1v 89.755n 1.1v 94.745n 1.1v 94.755n 1.1v 99.745n 1.1v 99.755n 1.1v 104.745n 1.1v 104.755n 1.1v 109.745n 1.1v 109.755n 1.1v 114.745n 1.1v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.1v 139.745n 1.1v 139.755n 1.1v 144.745n 1.1v 144.755n 1.1v 149.745n 1.1v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.1v 174.745n 1.1v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 1.1v 189.745n 1.1v 189.755n 1.1v 194.745n 1.1v 194.755n 0.0v 199.745n 0.0v 199.755n 1.1v 204.745n 1.1v 204.755n 1.1v 209.745n 1.1v 209.755n 1.1v 214.745n 1.1v 214.755n 1.1v 219.745n 1.1v 219.755n 1.1v 224.745n 1.1v 224.755n 0.0v 229.745n 0.0v 229.755n 1.1v 234.745n 1.1v 234.755n 1.1v 239.745n 1.1v 239.755n 1.1v 244.745n 1.1v 244.755n 0.0v 249.745n 0.0v 249.755n 1.1v 254.745n 1.1v 254.755n 0.0v 259.745n 0.0v 259.755n 1.1v 264.745n 1.1v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 1.1v 284.745n 1.1v 284.755n 1.1v 289.745n 1.1v 289.755n 1.1v 294.745n 1.1v 294.755n 1.1v 299.745n 1.1v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 1.1v 344.745n 1.1v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 1.1v 364.745n 1.1v 364.755n 1.1v 369.745n 1.1v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.1v 384.745n 1.1v 384.755n 0.0v 389.745n 0.0v 389.755n 1.1v 394.745n 1.1v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 1.1v 409.745n 1.1v 409.755n 1.1v 414.745n 1.1v 414.755n 1.1v 419.745n 1.1v 419.755n 1.1v 424.745n 1.1v 424.755n 1.1v 429.745n 1.1v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.1v 459.745n 1.1v 459.755n 1.1v 464.745n 1.1v 464.755n 1.1v 469.745n 1.1v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.1v 544.745n 1.1v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 1.1v 589.745n 1.1v 589.755n 1.1v 594.745n 1.1v 594.755n 1.1v 599.745n 1.1v 599.755n 1.1v 604.745n 1.1v 604.755n 1.1v 609.745n 1.1v 609.755n 1.1v 614.745n 1.1v 614.755n 0.0v 619.745n 0.0v 619.755n 1.1v 624.745n 1.1v 624.755n 1.1v 629.745n 1.1v 629.755n 1.1v 634.745n 1.1v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.1v 664.745n 1.1v 664.755n 1.1v 669.745n 1.1v 669.755n 1.1v 674.745n 1.1v 674.755n 1.1v 679.745n 1.1v 679.755n 1.1v 684.745n 1.1v 684.755n 1.1v 689.745n 1.1v 689.755n 1.1v 694.745n 1.1v 694.755n 0.0v 699.745n 0.0v 699.755n 1.1v 704.745n 1.1v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.1v 729.745n 1.1v 729.755n 1.1v 734.745n 1.1v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 1.1v 759.745n 1.1v 759.755n 0.0v 764.745n 0.0v 764.755n 1.1v 769.745n 1.1v 769.755n 0.0v 774.745n 0.0v 774.755n 1.1v 779.745n 1.1v 779.755n 1.1v 784.745n 1.1v 784.755n 1.1v 789.745n 1.1v 789.755n 1.1v 794.745n 1.1v 794.755n 1.1v 799.745n 1.1v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.1v 829.745n 1.1v 829.755n 1.1v 834.745n 1.1v 834.755n 1.1v 839.745n 1.1v 839.755n 0.0v 844.745n 0.0v 844.755n 1.1v 849.745n 1.1v 849.755n 0.0v 854.745n 0.0v 854.755n 1.1v 859.745n 1.1v 859.755n 1.1v 864.745n 1.1v 864.755n 1.1v 869.745n 1.1v 869.755n 1.1v 874.745n 1.1v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.1v 904.745n 1.1v 904.755n 1.1v 909.745n 1.1v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 1.1v 924.745n 1.1v 924.755n 1.1v 929.745n 1.1v 929.755n 1.1v 934.745n 1.1v 934.755n 1.1v 939.745n 1.1v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 1.1v 964.745n 1.1v 964.755n 1.1v 969.745n 1.1v 969.755n 1.1v 974.745n 1.1v 974.755n 1.1v 979.745n 1.1v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 1.1v 999.745n 1.1v 999.755n 1.1v 1004.745n 1.1v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 1.1v 1014.745n 1.1v 1014.755n 1.1v 1019.745n 1.1v 1019.755n 1.1v 1024.745n 1.1v 1024.755n 1.1v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 0), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 0), (315, 0), (320, 0), (325, 0), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 1), (420, 0), (425, 0), (430, 0), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 0), (585, 0), (590, 1), (595, 1), (600, 0), (605, 0), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 0), (645, 0), (650, 0), (655, 0), (660, 1), (665, 0), (670, 1), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 1), (710, 0), (715, 0), (720, 1), (725, 1), (730, 0), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 0), (765, 1), (770, 1), (775, 1), (780, 0), (785, 1), (790, 0), (795, 0), (800, 1), (805, 0), (810, 0), (815, 0), (820, 0), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 0), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 0), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 0), (960, 0), (965, 1), (970, 1), (975, 1), (980, 1), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va1_0  a1_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 1.1v 24.745n 1.1v 24.755n 1.1v 29.745n 1.1v 29.755n 1.1v 34.745n 1.1v 34.755n 1.1v 39.745n 1.1v 39.755n 1.1v 44.745n 1.1v 44.755n 1.1v 49.745n 1.1v 49.755n 1.1v 54.745n 1.1v 54.755n 1.1v 59.745n 1.1v 59.755n 1.1v 64.745n 1.1v 64.755n 1.1v 69.745n 1.1v 69.755n 1.1v 74.745n 1.1v 74.755n 1.1v 79.745n 1.1v 79.755n 1.1v 84.745n 1.1v 84.755n 1.1v 89.745n 1.1v 89.755n 1.1v 94.745n 1.1v 94.755n 1.1v 99.745n 1.1v 99.755n 1.1v 104.745n 1.1v 104.755n 1.1v 109.745n 1.1v 109.755n 1.1v 114.745n 1.1v 114.755n 1.1v 119.745n 1.1v 119.755n 1.1v 124.745n 1.1v 124.755n 1.1v 129.745n 1.1v 129.755n 1.1v 134.745n 1.1v 134.755n 1.1v 139.745n 1.1v 139.755n 1.1v 144.745n 1.1v 144.755n 1.1v 149.745n 1.1v 149.755n 1.1v 154.745n 1.1v 154.755n 1.1v 159.745n 1.1v 159.755n 1.1v 164.745n 1.1v 164.755n 1.1v 169.745n 1.1v 169.755n 1.1v 174.745n 1.1v 174.755n 1.1v 179.745n 1.1v 179.755n 1.1v 184.745n 1.1v 184.755n 1.1v 189.745n 1.1v 189.755n 1.1v 194.745n 1.1v 194.755n 1.1v 199.745n 1.1v 199.755n 1.1v 204.745n 1.1v 204.755n 1.1v 209.745n 1.1v 209.755n 1.1v 214.745n 1.1v 214.755n 1.1v 219.745n 1.1v 219.755n 1.1v 224.745n 1.1v 224.755n 1.1v 229.745n 1.1v 229.755n 1.1v 234.745n 1.1v 234.755n 1.1v 239.745n 1.1v 239.755n 1.1v 244.745n 1.1v 244.755n 1.1v 249.745n 1.1v 249.755n 1.1v 254.745n 1.1v 254.755n 1.1v 259.745n 1.1v 259.755n 1.1v 264.745n 1.1v 264.755n 1.1v 269.745n 1.1v 269.755n 0.0v 274.745n 0.0v 274.755n 1.1v 279.745n 1.1v 279.755n 1.1v 284.745n 1.1v 284.755n 1.1v 289.745n 1.1v 289.755n 1.1v 294.745n 1.1v 294.755n 1.1v 299.745n 1.1v 299.755n 1.1v 304.745n 1.1v 304.755n 1.1v 309.745n 1.1v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.1v 334.745n 1.1v 334.755n 1.1v 339.745n 1.1v 339.755n 1.1v 344.745n 1.1v 344.755n 1.1v 349.745n 1.1v 349.755n 1.1v 354.745n 1.1v 354.755n 1.1v 359.745n 1.1v 359.755n 1.1v 364.745n 1.1v 364.755n 1.1v 369.745n 1.1v 369.755n 1.1v 374.745n 1.1v 374.755n 1.1v 379.745n 1.1v 379.755n 1.1v 384.745n 1.1v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.1v 419.745n 1.1v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 1.1v 439.745n 1.1v 439.755n 1.1v 444.745n 1.1v 444.755n 1.1v 449.745n 1.1v 449.755n 1.1v 454.745n 1.1v 454.755n 1.1v 459.745n 1.1v 459.755n 1.1v 464.745n 1.1v 464.755n 1.1v 469.745n 1.1v 469.755n 1.1v 474.745n 1.1v 474.755n 1.1v 479.745n 1.1v 479.755n 1.1v 484.745n 1.1v 484.755n 1.1v 489.745n 1.1v 489.755n 1.1v 494.745n 1.1v 494.755n 1.1v 499.745n 1.1v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.1v 559.745n 1.1v 559.755n 1.1v 564.745n 1.1v 564.755n 1.1v 569.745n 1.1v 569.755n 1.1v 574.745n 1.1v 574.755n 1.1v 579.745n 1.1v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 1.1v 594.745n 1.1v 594.755n 1.1v 599.745n 1.1v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 1.1v 614.745n 1.1v 614.755n 1.1v 619.745n 1.1v 619.755n 1.1v 624.745n 1.1v 624.755n 1.1v 629.745n 1.1v 629.755n 1.1v 634.745n 1.1v 634.755n 1.1v 639.745n 1.1v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.1v 664.745n 1.1v 664.755n 0.0v 669.745n 0.0v 669.755n 1.1v 674.745n 1.1v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 1.1v 709.745n 1.1v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 1.1v 724.745n 1.1v 724.755n 1.1v 729.745n 1.1v 729.755n 0.0v 734.745n 0.0v 734.755n 1.1v 739.745n 1.1v 739.755n 1.1v 744.745n 1.1v 744.755n 1.1v 749.745n 1.1v 749.755n 1.1v 754.745n 1.1v 754.755n 1.1v 759.745n 1.1v 759.755n 0.0v 764.745n 0.0v 764.755n 1.1v 769.745n 1.1v 769.755n 1.1v 774.745n 1.1v 774.755n 1.1v 779.745n 1.1v 779.755n 0.0v 784.745n 0.0v 784.755n 1.1v 789.745n 1.1v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.1v 804.745n 1.1v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.1v 829.745n 1.1v 829.755n 1.1v 834.745n 1.1v 834.755n 1.1v 839.745n 1.1v 839.755n 1.1v 844.745n 1.1v 844.755n 1.1v 849.745n 1.1v 849.755n 1.1v 854.745n 1.1v 854.755n 1.1v 859.745n 1.1v 859.755n 1.1v 864.745n 1.1v 864.755n 1.1v 869.745n 1.1v 869.755n 0.0v 874.745n 0.0v 874.755n 1.1v 879.745n 1.1v 879.755n 1.1v 884.745n 1.1v 884.755n 1.1v 889.745n 1.1v 889.755n 1.1v 894.745n 1.1v 894.755n 1.1v 899.745n 1.1v 899.755n 1.1v 904.745n 1.1v 904.755n 1.1v 909.745n 1.1v 909.755n 1.1v 914.745n 1.1v 914.755n 0.0v 919.745n 0.0v 919.755n 1.1v 924.745n 1.1v 924.755n 1.1v 929.745n 1.1v 929.755n 1.1v 934.745n 1.1v 934.755n 1.1v 939.745n 1.1v 939.755n 1.1v 944.745n 1.1v 944.755n 1.1v 949.745n 1.1v 949.755n 1.1v 954.745n 1.1v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 1.1v 969.745n 1.1v 969.755n 1.1v 974.745n 1.1v 974.755n 1.1v 979.745n 1.1v 979.755n 1.1v 984.745n 1.1v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 1), (190, 1), (195, 1), (200, 0), (205, 0), (210, 0), (215, 1), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 0), (255, 1), (260, 1), (265, 1), (270, 0), (275, 0), (280, 0), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 0), (315, 0), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 1), (410, 1), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 1), (475, 1), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 1), (585, 1), (590, 0), (595, 0), (600, 1), (605, 1), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 1), (650, 0), (655, 0), (660, 0), (665, 0), (670, 1), (675, 0), (680, 0), (685, 0), (690, 0), (695, 1), (700, 1), (705, 0), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 0), (745, 0), (750, 0), (755, 0), (760, 1), (765, 1), (770, 1), (775, 1), (780, 0), (785, 0), (790, 1), (795, 1), (800, 1), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 0), (875, 0), (880, 0), (885, 0), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va1_1  a1_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 1.1v 24.745n 1.1v 24.755n 1.1v 29.745n 1.1v 29.755n 1.1v 34.745n 1.1v 34.755n 1.1v 39.745n 1.1v 39.755n 1.1v 44.745n 1.1v 44.755n 1.1v 49.745n 1.1v 49.755n 1.1v 54.745n 1.1v 54.755n 1.1v 59.745n 1.1v 59.755n 1.1v 64.745n 1.1v 64.755n 1.1v 69.745n 1.1v 69.755n 1.1v 74.745n 1.1v 74.755n 1.1v 79.745n 1.1v 79.755n 1.1v 84.745n 1.1v 84.755n 1.1v 89.745n 1.1v 89.755n 1.1v 94.745n 1.1v 94.755n 1.1v 99.745n 1.1v 99.755n 1.1v 104.745n 1.1v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 1.1v 189.745n 1.1v 189.755n 1.1v 194.745n 1.1v 194.755n 1.1v 199.745n 1.1v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 1.1v 219.745n 1.1v 219.755n 1.1v 224.745n 1.1v 224.755n 1.1v 229.745n 1.1v 229.755n 1.1v 234.745n 1.1v 234.755n 1.1v 239.745n 1.1v 239.755n 1.1v 244.745n 1.1v 244.755n 1.1v 249.745n 1.1v 249.755n 0.0v 254.745n 0.0v 254.755n 1.1v 259.745n 1.1v 259.755n 1.1v 264.745n 1.1v 264.755n 1.1v 269.745n 1.1v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 1.1v 289.745n 1.1v 289.755n 1.1v 294.745n 1.1v 294.755n 1.1v 299.745n 1.1v 299.755n 1.1v 304.745n 1.1v 304.755n 1.1v 309.745n 1.1v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 1.1v 324.745n 1.1v 324.755n 1.1v 329.745n 1.1v 329.755n 1.1v 334.745n 1.1v 334.755n 1.1v 339.745n 1.1v 339.755n 1.1v 344.745n 1.1v 344.755n 1.1v 349.745n 1.1v 349.755n 1.1v 354.745n 1.1v 354.755n 1.1v 359.745n 1.1v 359.755n 1.1v 364.745n 1.1v 364.755n 1.1v 369.745n 1.1v 369.755n 1.1v 374.745n 1.1v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 1.1v 409.745n 1.1v 409.755n 1.1v 414.745n 1.1v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.1v 474.745n 1.1v 474.755n 1.1v 479.745n 1.1v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.1v 584.745n 1.1v 584.755n 1.1v 589.745n 1.1v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.1v 604.745n 1.1v 604.755n 1.1v 609.745n 1.1v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 1.1v 649.745n 1.1v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 1.1v 674.745n 1.1v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.1v 699.745n 1.1v 699.755n 1.1v 704.745n 1.1v 704.755n 0.0v 709.745n 0.0v 709.755n 1.1v 714.745n 1.1v 714.755n 1.1v 719.745n 1.1v 719.755n 1.1v 724.745n 1.1v 724.755n 1.1v 729.745n 1.1v 729.755n 1.1v 734.745n 1.1v 734.755n 1.1v 739.745n 1.1v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 1.1v 764.745n 1.1v 764.755n 1.1v 769.745n 1.1v 769.755n 1.1v 774.745n 1.1v 774.755n 1.1v 779.745n 1.1v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 1.1v 794.745n 1.1v 794.755n 1.1v 799.745n 1.1v 799.755n 1.1v 804.745n 1.1v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 1.1v 844.745n 1.1v 844.755n 1.1v 849.745n 1.1v 849.755n 1.1v 854.745n 1.1v 854.755n 1.1v 859.745n 1.1v 859.755n 1.1v 864.745n 1.1v 864.755n 1.1v 869.745n 1.1v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 1.1v 894.745n 1.1v 894.755n 1.1v 899.745n 1.1v 899.755n 1.1v 904.745n 1.1v 904.755n 1.1v 909.745n 1.1v 909.755n 1.1v 914.745n 1.1v 914.755n 1.1v 919.745n 1.1v 919.755n 1.1v 924.745n 1.1v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 1.1v 969.745n 1.1v 969.755n 1.1v 974.745n 1.1v 974.755n 1.1v 979.745n 1.1v 979.755n 1.1v 984.745n 1.1v 984.755n 1.1v 989.745n 1.1v 989.755n 1.1v 994.745n 1.1v 994.755n 1.1v 999.745n 1.1v 999.755n 1.1v 1004.745n 1.1v 1004.755n 1.1v 1009.745n 1.1v 1009.755n 1.1v 1014.745n 1.1v 1014.755n 1.1v 1019.745n 1.1v 1019.755n 1.1v 1024.745n 1.1v 1024.755n 1.1v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 0), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 0), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 1), (255, 0), (260, 0), (265, 0), (270, 1), (275, 1), (280, 1), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 1), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 0), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 1), (640, 0), (645, 1), (650, 0), (655, 0), (660, 1), (665, 0), (670, 0), (675, 1), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 1), (710, 1), (715, 1), (720, 0), (725, 0), (730, 0), (735, 0), (740, 1), (745, 1), (750, 1), (755, 1), (760, 0), (765, 0), (770, 0), (775, 0), (780, 1), (785, 1), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 1), (880, 1), (885, 1), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 1), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 1), (960, 1), (965, 0), (970, 0), (975, 0), (980, 0), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Va1_2  a1_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 1.1v 109.745n 1.1v 109.755n 1.1v 114.745n 1.1v 114.755n 1.1v 119.745n 1.1v 119.755n 1.1v 124.745n 1.1v 124.755n 1.1v 129.745n 1.1v 129.755n 1.1v 134.745n 1.1v 134.755n 1.1v 139.745n 1.1v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.1v 154.745n 1.1v 154.755n 1.1v 159.745n 1.1v 159.755n 1.1v 164.745n 1.1v 164.755n 1.1v 169.745n 1.1v 169.755n 1.1v 174.745n 1.1v 174.755n 1.1v 179.745n 1.1v 179.755n 1.1v 184.745n 1.1v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.1v 254.745n 1.1v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.1v 274.745n 1.1v 274.755n 1.1v 279.745n 1.1v 279.755n 1.1v 284.745n 1.1v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 1.1v 314.745n 1.1v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 1.1v 379.745n 1.1v 379.755n 1.1v 384.745n 1.1v 384.755n 1.1v 389.745n 1.1v 389.755n 1.1v 394.745n 1.1v 394.755n 1.1v 399.745n 1.1v 399.755n 1.1v 404.745n 1.1v 404.755n 1.1v 409.745n 1.1v 409.755n 1.1v 414.745n 1.1v 414.755n 0.0v 419.745n 0.0v 419.755n 1.1v 424.745n 1.1v 424.755n 1.1v 429.745n 1.1v 429.755n 1.1v 434.745n 1.1v 434.755n 1.1v 439.745n 1.1v 439.755n 1.1v 444.745n 1.1v 444.755n 1.1v 449.745n 1.1v 449.755n 1.1v 454.745n 1.1v 454.755n 1.1v 459.745n 1.1v 459.755n 1.1v 464.745n 1.1v 464.755n 1.1v 469.745n 1.1v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 1.1v 504.745n 1.1v 504.755n 1.1v 509.745n 1.1v 509.755n 1.1v 514.745n 1.1v 514.755n 1.1v 519.745n 1.1v 519.755n 1.1v 524.745n 1.1v 524.755n 1.1v 529.745n 1.1v 529.755n 1.1v 534.745n 1.1v 534.755n 1.1v 539.745n 1.1v 539.755n 1.1v 544.745n 1.1v 544.755n 1.1v 549.745n 1.1v 549.755n 1.1v 554.745n 1.1v 554.755n 1.1v 559.745n 1.1v 559.755n 1.1v 564.745n 1.1v 564.755n 1.1v 569.745n 1.1v 569.755n 1.1v 574.745n 1.1v 574.755n 1.1v 579.745n 1.1v 579.755n 1.1v 584.745n 1.1v 584.755n 1.1v 589.745n 1.1v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 1.1v 639.745n 1.1v 639.755n 0.0v 644.745n 0.0v 644.755n 1.1v 649.745n 1.1v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.1v 664.745n 1.1v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 1.1v 679.745n 1.1v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 1.1v 709.745n 1.1v 709.755n 1.1v 714.745n 1.1v 714.755n 1.1v 719.745n 1.1v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 1.1v 744.745n 1.1v 744.755n 1.1v 749.745n 1.1v 749.755n 1.1v 754.745n 1.1v 754.755n 1.1v 759.745n 1.1v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 1.1v 784.745n 1.1v 784.755n 1.1v 789.745n 1.1v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 1.1v 879.745n 1.1v 879.755n 1.1v 884.745n 1.1v 884.755n 1.1v 889.745n 1.1v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 1.1v 919.745n 1.1v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.1v 959.745n 1.1v 959.755n 1.1v 964.745n 1.1v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.1v 989.745n 1.1v 989.755n 1.1v 994.745n 1.1v 994.755n 1.1v 999.745n 1.1v 999.755n 1.1v 1004.745n 1.1v 1004.755n 1.1v 1009.745n 1.1v 1009.755n 1.1v 1014.745n 1.1v 1014.755n 1.1v 1019.745n 1.1v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 0), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 1), (255, 0), (260, 0), (265, 0), (270, 1), (275, 1), (280, 1), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 1), (315, 0), (320, 0), (325, 0), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 0), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 0), (485, 0), (490, 0), (495, 0), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 1), (640, 0), (645, 1), (650, 0), (655, 0), (660, 1), (665, 0), (670, 1), (675, 1), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 0), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 0), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 0), (795, 0), (800, 1), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 0), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 1), (960, 1), (965, 0), (970, 0), (975, 0), (980, 0), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Va1_3  a1_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 1.1v 109.745n 1.1v 109.755n 1.1v 114.745n 1.1v 114.755n 1.1v 119.745n 1.1v 119.755n 1.1v 124.745n 1.1v 124.755n 1.1v 129.745n 1.1v 129.755n 1.1v 134.745n 1.1v 134.755n 1.1v 139.745n 1.1v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.1v 154.745n 1.1v 154.755n 1.1v 159.745n 1.1v 159.755n 1.1v 164.745n 1.1v 164.755n 1.1v 169.745n 1.1v 169.755n 1.1v 174.745n 1.1v 174.755n 1.1v 179.745n 1.1v 179.755n 1.1v 184.745n 1.1v 184.755n 1.1v 189.745n 1.1v 189.755n 1.1v 194.745n 1.1v 194.755n 1.1v 199.745n 1.1v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.1v 254.745n 1.1v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.1v 274.745n 1.1v 274.755n 1.1v 279.745n 1.1v 279.755n 1.1v 284.745n 1.1v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 1.1v 314.745n 1.1v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.1v 334.745n 1.1v 334.755n 1.1v 339.745n 1.1v 339.755n 1.1v 344.745n 1.1v 344.755n 1.1v 349.745n 1.1v 349.755n 1.1v 354.745n 1.1v 354.755n 1.1v 359.745n 1.1v 359.755n 1.1v 364.745n 1.1v 364.755n 1.1v 369.745n 1.1v 369.755n 1.1v 374.745n 1.1v 374.755n 1.1v 379.745n 1.1v 379.755n 1.1v 384.745n 1.1v 384.755n 1.1v 389.745n 1.1v 389.755n 1.1v 394.745n 1.1v 394.755n 1.1v 399.745n 1.1v 399.755n 1.1v 404.745n 1.1v 404.755n 1.1v 409.745n 1.1v 409.755n 1.1v 414.745n 1.1v 414.755n 0.0v 419.745n 0.0v 419.755n 1.1v 424.745n 1.1v 424.755n 1.1v 429.745n 1.1v 429.755n 1.1v 434.745n 1.1v 434.755n 1.1v 439.745n 1.1v 439.755n 1.1v 444.745n 1.1v 444.755n 1.1v 449.745n 1.1v 449.755n 1.1v 454.745n 1.1v 454.755n 1.1v 459.745n 1.1v 459.755n 1.1v 464.745n 1.1v 464.755n 1.1v 469.745n 1.1v 469.755n 1.1v 474.745n 1.1v 474.755n 1.1v 479.745n 1.1v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 1.1v 504.745n 1.1v 504.755n 1.1v 509.745n 1.1v 509.755n 1.1v 514.745n 1.1v 514.755n 1.1v 519.745n 1.1v 519.755n 1.1v 524.745n 1.1v 524.755n 1.1v 529.745n 1.1v 529.755n 1.1v 534.745n 1.1v 534.755n 1.1v 539.745n 1.1v 539.755n 1.1v 544.745n 1.1v 544.755n 1.1v 549.745n 1.1v 549.755n 1.1v 554.745n 1.1v 554.755n 1.1v 559.745n 1.1v 559.755n 1.1v 564.745n 1.1v 564.755n 1.1v 569.745n 1.1v 569.755n 1.1v 574.745n 1.1v 574.755n 1.1v 579.745n 1.1v 579.755n 1.1v 584.745n 1.1v 584.755n 1.1v 589.745n 1.1v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 1.1v 639.745n 1.1v 639.755n 0.0v 644.745n 0.0v 644.755n 1.1v 649.745n 1.1v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.1v 664.745n 1.1v 664.755n 0.0v 669.745n 0.0v 669.755n 1.1v 674.745n 1.1v 674.755n 1.1v 679.745n 1.1v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 1.1v 709.745n 1.1v 709.755n 1.1v 714.745n 1.1v 714.755n 1.1v 719.745n 1.1v 719.755n 1.1v 724.745n 1.1v 724.755n 1.1v 729.745n 1.1v 729.755n 0.0v 734.745n 0.0v 734.755n 1.1v 739.745n 1.1v 739.755n 1.1v 744.745n 1.1v 744.755n 1.1v 749.745n 1.1v 749.755n 1.1v 754.745n 1.1v 754.755n 1.1v 759.745n 1.1v 759.755n 0.0v 764.745n 0.0v 764.755n 1.1v 769.745n 1.1v 769.755n 1.1v 774.745n 1.1v 774.755n 1.1v 779.745n 1.1v 779.755n 1.1v 784.745n 1.1v 784.755n 1.1v 789.745n 1.1v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.1v 804.745n 1.1v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 1.1v 844.745n 1.1v 844.755n 1.1v 849.745n 1.1v 849.755n 1.1v 854.745n 1.1v 854.755n 1.1v 859.745n 1.1v 859.755n 1.1v 864.745n 1.1v 864.755n 1.1v 869.745n 1.1v 869.755n 0.0v 874.745n 0.0v 874.755n 1.1v 879.745n 1.1v 879.755n 1.1v 884.745n 1.1v 884.755n 1.1v 889.745n 1.1v 889.755n 1.1v 894.745n 1.1v 894.755n 1.1v 899.745n 1.1v 899.755n 1.1v 904.745n 1.1v 904.755n 1.1v 909.745n 1.1v 909.755n 1.1v 914.745n 1.1v 914.755n 1.1v 919.745n 1.1v 919.755n 1.1v 924.745n 1.1v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.1v 959.745n 1.1v 959.755n 1.1v 964.745n 1.1v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.1v 989.745n 1.1v 989.755n 1.1v 994.745n 1.1v 994.755n 1.1v 999.745n 1.1v 999.755n 1.1v 1004.745n 1.1v 1004.755n 1.1v 1009.745n 1.1v 1009.755n 1.1v 1014.745n 1.1v 1014.755n 1.1v 1019.745n 1.1v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 0), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 1), (255, 0), (260, 0), (265, 0), (270, 1), (275, 1), (280, 1), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 1), (315, 0), (320, 0), (325, 0), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 0), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 0), (485, 0), (490, 0), (495, 0), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 1), (640, 0), (645, 1), (650, 0), (655, 0), (660, 1), (665, 0), (670, 1), (675, 1), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 0), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 0), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 0), (795, 0), (800, 1), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 0), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 1), (960, 1), (965, 0), (970, 0), (975, 0), (980, 0), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Va1_4  a1_4  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 1.1v 109.745n 1.1v 109.755n 1.1v 114.745n 1.1v 114.755n 1.1v 119.745n 1.1v 119.755n 1.1v 124.745n 1.1v 124.755n 1.1v 129.745n 1.1v 129.755n 1.1v 134.745n 1.1v 134.755n 1.1v 139.745n 1.1v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.1v 154.745n 1.1v 154.755n 1.1v 159.745n 1.1v 159.755n 1.1v 164.745n 1.1v 164.755n 1.1v 169.745n 1.1v 169.755n 1.1v 174.745n 1.1v 174.755n 1.1v 179.745n 1.1v 179.755n 1.1v 184.745n 1.1v 184.755n 1.1v 189.745n 1.1v 189.755n 1.1v 194.745n 1.1v 194.755n 1.1v 199.745n 1.1v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.1v 254.745n 1.1v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.1v 274.745n 1.1v 274.755n 1.1v 279.745n 1.1v 279.755n 1.1v 284.745n 1.1v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 1.1v 314.745n 1.1v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.1v 334.745n 1.1v 334.755n 1.1v 339.745n 1.1v 339.755n 1.1v 344.745n 1.1v 344.755n 1.1v 349.745n 1.1v 349.755n 1.1v 354.745n 1.1v 354.755n 1.1v 359.745n 1.1v 359.755n 1.1v 364.745n 1.1v 364.755n 1.1v 369.745n 1.1v 369.755n 1.1v 374.745n 1.1v 374.755n 1.1v 379.745n 1.1v 379.755n 1.1v 384.745n 1.1v 384.755n 1.1v 389.745n 1.1v 389.755n 1.1v 394.745n 1.1v 394.755n 1.1v 399.745n 1.1v 399.755n 1.1v 404.745n 1.1v 404.755n 1.1v 409.745n 1.1v 409.755n 1.1v 414.745n 1.1v 414.755n 0.0v 419.745n 0.0v 419.755n 1.1v 424.745n 1.1v 424.755n 1.1v 429.745n 1.1v 429.755n 1.1v 434.745n 1.1v 434.755n 1.1v 439.745n 1.1v 439.755n 1.1v 444.745n 1.1v 444.755n 1.1v 449.745n 1.1v 449.755n 1.1v 454.745n 1.1v 454.755n 1.1v 459.745n 1.1v 459.755n 1.1v 464.745n 1.1v 464.755n 1.1v 469.745n 1.1v 469.755n 1.1v 474.745n 1.1v 474.755n 1.1v 479.745n 1.1v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 1.1v 504.745n 1.1v 504.755n 1.1v 509.745n 1.1v 509.755n 1.1v 514.745n 1.1v 514.755n 1.1v 519.745n 1.1v 519.755n 1.1v 524.745n 1.1v 524.755n 1.1v 529.745n 1.1v 529.755n 1.1v 534.745n 1.1v 534.755n 1.1v 539.745n 1.1v 539.755n 1.1v 544.745n 1.1v 544.755n 1.1v 549.745n 1.1v 549.755n 1.1v 554.745n 1.1v 554.755n 1.1v 559.745n 1.1v 559.755n 1.1v 564.745n 1.1v 564.755n 1.1v 569.745n 1.1v 569.755n 1.1v 574.745n 1.1v 574.755n 1.1v 579.745n 1.1v 579.755n 1.1v 584.745n 1.1v 584.755n 1.1v 589.745n 1.1v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 1.1v 639.745n 1.1v 639.755n 0.0v 644.745n 0.0v 644.755n 1.1v 649.745n 1.1v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.1v 664.745n 1.1v 664.755n 0.0v 669.745n 0.0v 669.755n 1.1v 674.745n 1.1v 674.755n 1.1v 679.745n 1.1v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 1.1v 709.745n 1.1v 709.755n 1.1v 714.745n 1.1v 714.755n 1.1v 719.745n 1.1v 719.755n 1.1v 724.745n 1.1v 724.755n 1.1v 729.745n 1.1v 729.755n 0.0v 734.745n 0.0v 734.755n 1.1v 739.745n 1.1v 739.755n 1.1v 744.745n 1.1v 744.755n 1.1v 749.745n 1.1v 749.755n 1.1v 754.745n 1.1v 754.755n 1.1v 759.745n 1.1v 759.755n 0.0v 764.745n 0.0v 764.755n 1.1v 769.745n 1.1v 769.755n 1.1v 774.745n 1.1v 774.755n 1.1v 779.745n 1.1v 779.755n 1.1v 784.745n 1.1v 784.755n 1.1v 789.745n 1.1v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.1v 804.745n 1.1v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 1.1v 844.745n 1.1v 844.755n 1.1v 849.745n 1.1v 849.755n 1.1v 854.745n 1.1v 854.755n 1.1v 859.745n 1.1v 859.755n 1.1v 864.745n 1.1v 864.755n 1.1v 869.745n 1.1v 869.755n 0.0v 874.745n 0.0v 874.755n 1.1v 879.745n 1.1v 879.755n 1.1v 884.745n 1.1v 884.755n 1.1v 889.745n 1.1v 889.755n 1.1v 894.745n 1.1v 894.755n 1.1v 899.745n 1.1v 899.755n 1.1v 904.745n 1.1v 904.755n 1.1v 909.745n 1.1v 909.755n 1.1v 914.745n 1.1v 914.755n 1.1v 919.745n 1.1v 919.755n 1.1v 924.745n 1.1v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.1v 959.745n 1.1v 959.755n 1.1v 964.745n 1.1v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.1v 989.745n 1.1v 989.755n 1.1v 994.745n 1.1v 994.755n 1.1v 999.745n 1.1v 999.755n 1.1v 1004.745n 1.1v 1004.755n 1.1v 1009.745n 1.1v 1009.755n 1.1v 1014.745n 1.1v 1014.755n 1.1v 1019.745n 1.1v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 0), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 1), (255, 0), (260, 0), (265, 0), (270, 1), (275, 1), (280, 1), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 1), (315, 0), (320, 0), (325, 0), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 0), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 0), (485, 0), (490, 0), (495, 0), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 1), (640, 0), (645, 1), (650, 0), (655, 0), (660, 1), (665, 0), (670, 1), (675, 1), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 0), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 0), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 0), (795, 0), (800, 1), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 0), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 1), (960, 1), (965, 0), (970, 0), (975, 0), (980, 0), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Va1_5  a1_5  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 1.1v 109.745n 1.1v 109.755n 1.1v 114.745n 1.1v 114.755n 1.1v 119.745n 1.1v 119.755n 1.1v 124.745n 1.1v 124.755n 1.1v 129.745n 1.1v 129.755n 1.1v 134.745n 1.1v 134.755n 1.1v 139.745n 1.1v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.1v 154.745n 1.1v 154.755n 1.1v 159.745n 1.1v 159.755n 1.1v 164.745n 1.1v 164.755n 1.1v 169.745n 1.1v 169.755n 1.1v 174.745n 1.1v 174.755n 1.1v 179.745n 1.1v 179.755n 1.1v 184.745n 1.1v 184.755n 1.1v 189.745n 1.1v 189.755n 1.1v 194.745n 1.1v 194.755n 1.1v 199.745n 1.1v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.1v 254.745n 1.1v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.1v 274.745n 1.1v 274.755n 1.1v 279.745n 1.1v 279.755n 1.1v 284.745n 1.1v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 1.1v 314.745n 1.1v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.1v 334.745n 1.1v 334.755n 1.1v 339.745n 1.1v 339.755n 1.1v 344.745n 1.1v 344.755n 1.1v 349.745n 1.1v 349.755n 1.1v 354.745n 1.1v 354.755n 1.1v 359.745n 1.1v 359.755n 1.1v 364.745n 1.1v 364.755n 1.1v 369.745n 1.1v 369.755n 1.1v 374.745n 1.1v 374.755n 1.1v 379.745n 1.1v 379.755n 1.1v 384.745n 1.1v 384.755n 1.1v 389.745n 1.1v 389.755n 1.1v 394.745n 1.1v 394.755n 1.1v 399.745n 1.1v 399.755n 1.1v 404.745n 1.1v 404.755n 1.1v 409.745n 1.1v 409.755n 1.1v 414.745n 1.1v 414.755n 0.0v 419.745n 0.0v 419.755n 1.1v 424.745n 1.1v 424.755n 1.1v 429.745n 1.1v 429.755n 1.1v 434.745n 1.1v 434.755n 1.1v 439.745n 1.1v 439.755n 1.1v 444.745n 1.1v 444.755n 1.1v 449.745n 1.1v 449.755n 1.1v 454.745n 1.1v 454.755n 1.1v 459.745n 1.1v 459.755n 1.1v 464.745n 1.1v 464.755n 1.1v 469.745n 1.1v 469.755n 1.1v 474.745n 1.1v 474.755n 1.1v 479.745n 1.1v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 1.1v 504.745n 1.1v 504.755n 1.1v 509.745n 1.1v 509.755n 1.1v 514.745n 1.1v 514.755n 1.1v 519.745n 1.1v 519.755n 1.1v 524.745n 1.1v 524.755n 1.1v 529.745n 1.1v 529.755n 1.1v 534.745n 1.1v 534.755n 1.1v 539.745n 1.1v 539.755n 1.1v 544.745n 1.1v 544.755n 1.1v 549.745n 1.1v 549.755n 1.1v 554.745n 1.1v 554.755n 1.1v 559.745n 1.1v 559.755n 1.1v 564.745n 1.1v 564.755n 1.1v 569.745n 1.1v 569.755n 1.1v 574.745n 1.1v 574.755n 1.1v 579.745n 1.1v 579.755n 1.1v 584.745n 1.1v 584.755n 1.1v 589.745n 1.1v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 1.1v 639.745n 1.1v 639.755n 0.0v 644.745n 0.0v 644.755n 1.1v 649.745n 1.1v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.1v 664.745n 1.1v 664.755n 0.0v 669.745n 0.0v 669.755n 1.1v 674.745n 1.1v 674.755n 1.1v 679.745n 1.1v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 1.1v 709.745n 1.1v 709.755n 1.1v 714.745n 1.1v 714.755n 1.1v 719.745n 1.1v 719.755n 1.1v 724.745n 1.1v 724.755n 1.1v 729.745n 1.1v 729.755n 0.0v 734.745n 0.0v 734.755n 1.1v 739.745n 1.1v 739.755n 1.1v 744.745n 1.1v 744.755n 1.1v 749.745n 1.1v 749.755n 1.1v 754.745n 1.1v 754.755n 1.1v 759.745n 1.1v 759.755n 0.0v 764.745n 0.0v 764.755n 1.1v 769.745n 1.1v 769.755n 1.1v 774.745n 1.1v 774.755n 1.1v 779.745n 1.1v 779.755n 1.1v 784.745n 1.1v 784.755n 1.1v 789.745n 1.1v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.1v 804.745n 1.1v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 1.1v 844.745n 1.1v 844.755n 1.1v 849.745n 1.1v 849.755n 1.1v 854.745n 1.1v 854.755n 1.1v 859.745n 1.1v 859.755n 1.1v 864.745n 1.1v 864.755n 1.1v 869.745n 1.1v 869.755n 0.0v 874.745n 0.0v 874.755n 1.1v 879.745n 1.1v 879.755n 1.1v 884.745n 1.1v 884.755n 1.1v 889.745n 1.1v 889.755n 1.1v 894.745n 1.1v 894.755n 1.1v 899.745n 1.1v 899.755n 1.1v 904.745n 1.1v 904.755n 1.1v 909.745n 1.1v 909.755n 1.1v 914.745n 1.1v 914.755n 1.1v 919.745n 1.1v 919.755n 1.1v 924.745n 1.1v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.1v 959.745n 1.1v 959.755n 1.1v 964.745n 1.1v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.1v 989.745n 1.1v 989.755n 1.1v 994.745n 1.1v 994.755n 1.1v 999.745n 1.1v 999.755n 1.1v 1004.745n 1.1v 1004.755n 1.1v 1009.745n 1.1v 1009.755n 1.1v 1014.745n 1.1v 1014.755n 1.1v 1019.745n 1.1v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 0), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 1), (255, 0), (260, 0), (265, 0), (270, 1), (275, 1), (280, 1), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 1), (315, 0), (320, 0), (325, 0), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 0), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 0), (485, 0), (490, 0), (495, 0), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 1), (640, 0), (645, 1), (650, 0), (655, 0), (660, 1), (665, 0), (670, 1), (675, 1), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 0), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 0), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 0), (795, 0), (800, 1), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 0), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 1), (960, 1), (965, 0), (970, 0), (975, 0), (980, 0), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Va1_6  a1_6  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 1.1v 109.745n 1.1v 109.755n 1.1v 114.745n 1.1v 114.755n 1.1v 119.745n 1.1v 119.755n 1.1v 124.745n 1.1v 124.755n 1.1v 129.745n 1.1v 129.755n 1.1v 134.745n 1.1v 134.755n 1.1v 139.745n 1.1v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.1v 154.745n 1.1v 154.755n 1.1v 159.745n 1.1v 159.755n 1.1v 164.745n 1.1v 164.755n 1.1v 169.745n 1.1v 169.755n 1.1v 174.745n 1.1v 174.755n 1.1v 179.745n 1.1v 179.755n 1.1v 184.745n 1.1v 184.755n 1.1v 189.745n 1.1v 189.755n 1.1v 194.745n 1.1v 194.755n 1.1v 199.745n 1.1v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.1v 254.745n 1.1v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.1v 274.745n 1.1v 274.755n 1.1v 279.745n 1.1v 279.755n 1.1v 284.745n 1.1v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 1.1v 314.745n 1.1v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.1v 334.745n 1.1v 334.755n 1.1v 339.745n 1.1v 339.755n 1.1v 344.745n 1.1v 344.755n 1.1v 349.745n 1.1v 349.755n 1.1v 354.745n 1.1v 354.755n 1.1v 359.745n 1.1v 359.755n 1.1v 364.745n 1.1v 364.755n 1.1v 369.745n 1.1v 369.755n 1.1v 374.745n 1.1v 374.755n 1.1v 379.745n 1.1v 379.755n 1.1v 384.745n 1.1v 384.755n 1.1v 389.745n 1.1v 389.755n 1.1v 394.745n 1.1v 394.755n 1.1v 399.745n 1.1v 399.755n 1.1v 404.745n 1.1v 404.755n 1.1v 409.745n 1.1v 409.755n 1.1v 414.745n 1.1v 414.755n 0.0v 419.745n 0.0v 419.755n 1.1v 424.745n 1.1v 424.755n 1.1v 429.745n 1.1v 429.755n 1.1v 434.745n 1.1v 434.755n 1.1v 439.745n 1.1v 439.755n 1.1v 444.745n 1.1v 444.755n 1.1v 449.745n 1.1v 449.755n 1.1v 454.745n 1.1v 454.755n 1.1v 459.745n 1.1v 459.755n 1.1v 464.745n 1.1v 464.755n 1.1v 469.745n 1.1v 469.755n 1.1v 474.745n 1.1v 474.755n 1.1v 479.745n 1.1v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 1.1v 504.745n 1.1v 504.755n 1.1v 509.745n 1.1v 509.755n 1.1v 514.745n 1.1v 514.755n 1.1v 519.745n 1.1v 519.755n 1.1v 524.745n 1.1v 524.755n 1.1v 529.745n 1.1v 529.755n 1.1v 534.745n 1.1v 534.755n 1.1v 539.745n 1.1v 539.755n 1.1v 544.745n 1.1v 544.755n 1.1v 549.745n 1.1v 549.755n 1.1v 554.745n 1.1v 554.755n 1.1v 559.745n 1.1v 559.755n 1.1v 564.745n 1.1v 564.755n 1.1v 569.745n 1.1v 569.755n 1.1v 574.745n 1.1v 574.755n 1.1v 579.745n 1.1v 579.755n 1.1v 584.745n 1.1v 584.755n 1.1v 589.745n 1.1v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 1.1v 639.745n 1.1v 639.755n 0.0v 644.745n 0.0v 644.755n 1.1v 649.745n 1.1v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.1v 664.745n 1.1v 664.755n 0.0v 669.745n 0.0v 669.755n 1.1v 674.745n 1.1v 674.755n 1.1v 679.745n 1.1v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 1.1v 709.745n 1.1v 709.755n 1.1v 714.745n 1.1v 714.755n 1.1v 719.745n 1.1v 719.755n 1.1v 724.745n 1.1v 724.755n 1.1v 729.745n 1.1v 729.755n 0.0v 734.745n 0.0v 734.755n 1.1v 739.745n 1.1v 739.755n 1.1v 744.745n 1.1v 744.755n 1.1v 749.745n 1.1v 749.755n 1.1v 754.745n 1.1v 754.755n 1.1v 759.745n 1.1v 759.755n 0.0v 764.745n 0.0v 764.755n 1.1v 769.745n 1.1v 769.755n 1.1v 774.745n 1.1v 774.755n 1.1v 779.745n 1.1v 779.755n 1.1v 784.745n 1.1v 784.755n 1.1v 789.745n 1.1v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.1v 804.745n 1.1v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 1.1v 844.745n 1.1v 844.755n 1.1v 849.745n 1.1v 849.755n 1.1v 854.745n 1.1v 854.755n 1.1v 859.745n 1.1v 859.755n 1.1v 864.745n 1.1v 864.755n 1.1v 869.745n 1.1v 869.755n 0.0v 874.745n 0.0v 874.755n 1.1v 879.745n 1.1v 879.755n 1.1v 884.745n 1.1v 884.755n 1.1v 889.745n 1.1v 889.755n 1.1v 894.745n 1.1v 894.755n 1.1v 899.745n 1.1v 899.755n 1.1v 904.745n 1.1v 904.755n 1.1v 909.745n 1.1v 909.755n 1.1v 914.745n 1.1v 914.755n 1.1v 919.745n 1.1v 919.755n 1.1v 924.745n 1.1v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.1v 959.745n 1.1v 959.755n 1.1v 964.745n 1.1v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.1v 989.745n 1.1v 989.755n 1.1v 994.745n 1.1v 994.755n 1.1v 999.745n 1.1v 999.755n 1.1v 1004.745n 1.1v 1004.755n 1.1v 1009.745n 1.1v 1009.755n 1.1v 1014.745n 1.1v 1014.755n 1.1v 1019.745n 1.1v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 0), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 1), (255, 0), (260, 0), (265, 0), (270, 1), (275, 1), (280, 1), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 1), (315, 0), (320, 0), (325, 0), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 0), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 0), (485, 0), (490, 0), (495, 0), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 1), (640, 0), (645, 1), (650, 0), (655, 0), (660, 1), (665, 0), (670, 1), (675, 1), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 0), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 0), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 0), (795, 0), (800, 1), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 0), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 1), (960, 1), (965, 0), (970, 0), (975, 0), (980, 0), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Va1_7  a1_7  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 1.1v 109.745n 1.1v 109.755n 1.1v 114.745n 1.1v 114.755n 1.1v 119.745n 1.1v 119.755n 1.1v 124.745n 1.1v 124.755n 1.1v 129.745n 1.1v 129.755n 1.1v 134.745n 1.1v 134.755n 1.1v 139.745n 1.1v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.1v 154.745n 1.1v 154.755n 1.1v 159.745n 1.1v 159.755n 1.1v 164.745n 1.1v 164.755n 1.1v 169.745n 1.1v 169.755n 1.1v 174.745n 1.1v 174.755n 1.1v 179.745n 1.1v 179.755n 1.1v 184.745n 1.1v 184.755n 1.1v 189.745n 1.1v 189.755n 1.1v 194.745n 1.1v 194.755n 1.1v 199.745n 1.1v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.1v 254.745n 1.1v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.1v 274.745n 1.1v 274.755n 1.1v 279.745n 1.1v 279.755n 1.1v 284.745n 1.1v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 1.1v 314.745n 1.1v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.1v 334.745n 1.1v 334.755n 1.1v 339.745n 1.1v 339.755n 1.1v 344.745n 1.1v 344.755n 1.1v 349.745n 1.1v 349.755n 1.1v 354.745n 1.1v 354.755n 1.1v 359.745n 1.1v 359.755n 1.1v 364.745n 1.1v 364.755n 1.1v 369.745n 1.1v 369.755n 1.1v 374.745n 1.1v 374.755n 1.1v 379.745n 1.1v 379.755n 1.1v 384.745n 1.1v 384.755n 1.1v 389.745n 1.1v 389.755n 1.1v 394.745n 1.1v 394.755n 1.1v 399.745n 1.1v 399.755n 1.1v 404.745n 1.1v 404.755n 1.1v 409.745n 1.1v 409.755n 1.1v 414.745n 1.1v 414.755n 0.0v 419.745n 0.0v 419.755n 1.1v 424.745n 1.1v 424.755n 1.1v 429.745n 1.1v 429.755n 1.1v 434.745n 1.1v 434.755n 1.1v 439.745n 1.1v 439.755n 1.1v 444.745n 1.1v 444.755n 1.1v 449.745n 1.1v 449.755n 1.1v 454.745n 1.1v 454.755n 1.1v 459.745n 1.1v 459.755n 1.1v 464.745n 1.1v 464.755n 1.1v 469.745n 1.1v 469.755n 1.1v 474.745n 1.1v 474.755n 1.1v 479.745n 1.1v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 1.1v 504.745n 1.1v 504.755n 1.1v 509.745n 1.1v 509.755n 1.1v 514.745n 1.1v 514.755n 1.1v 519.745n 1.1v 519.755n 1.1v 524.745n 1.1v 524.755n 1.1v 529.745n 1.1v 529.755n 1.1v 534.745n 1.1v 534.755n 1.1v 539.745n 1.1v 539.755n 1.1v 544.745n 1.1v 544.755n 1.1v 549.745n 1.1v 549.755n 1.1v 554.745n 1.1v 554.755n 1.1v 559.745n 1.1v 559.755n 1.1v 564.745n 1.1v 564.755n 1.1v 569.745n 1.1v 569.755n 1.1v 574.745n 1.1v 574.755n 1.1v 579.745n 1.1v 579.755n 1.1v 584.745n 1.1v 584.755n 1.1v 589.745n 1.1v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 1.1v 639.745n 1.1v 639.755n 0.0v 644.745n 0.0v 644.755n 1.1v 649.745n 1.1v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.1v 664.745n 1.1v 664.755n 0.0v 669.745n 0.0v 669.755n 1.1v 674.745n 1.1v 674.755n 1.1v 679.745n 1.1v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 1.1v 709.745n 1.1v 709.755n 1.1v 714.745n 1.1v 714.755n 1.1v 719.745n 1.1v 719.755n 1.1v 724.745n 1.1v 724.755n 1.1v 729.745n 1.1v 729.755n 0.0v 734.745n 0.0v 734.755n 1.1v 739.745n 1.1v 739.755n 1.1v 744.745n 1.1v 744.755n 1.1v 749.745n 1.1v 749.755n 1.1v 754.745n 1.1v 754.755n 1.1v 759.745n 1.1v 759.755n 0.0v 764.745n 0.0v 764.755n 1.1v 769.745n 1.1v 769.755n 1.1v 774.745n 1.1v 774.755n 1.1v 779.745n 1.1v 779.755n 1.1v 784.745n 1.1v 784.755n 1.1v 789.745n 1.1v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.1v 804.745n 1.1v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 1.1v 844.745n 1.1v 844.755n 1.1v 849.745n 1.1v 849.755n 1.1v 854.745n 1.1v 854.755n 1.1v 859.745n 1.1v 859.755n 1.1v 864.745n 1.1v 864.755n 1.1v 869.745n 1.1v 869.755n 0.0v 874.745n 0.0v 874.755n 1.1v 879.745n 1.1v 879.755n 1.1v 884.745n 1.1v 884.755n 1.1v 889.745n 1.1v 889.755n 1.1v 894.745n 1.1v 894.755n 1.1v 899.745n 1.1v 899.755n 1.1v 904.745n 1.1v 904.755n 1.1v 909.745n 1.1v 909.755n 1.1v 914.745n 1.1v 914.755n 1.1v 919.745n 1.1v 919.755n 1.1v 924.745n 1.1v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.1v 959.745n 1.1v 959.755n 1.1v 964.745n 1.1v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.1v 989.745n 1.1v 989.755n 1.1v 994.745n 1.1v 994.755n 1.1v 999.745n 1.1v 999.755n 1.1v 1004.745n 1.1v 1004.755n 1.1v 1009.745n 1.1v 1009.755n 1.1v 1014.745n 1.1v 1014.755n 1.1v 1019.745n 1.1v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )

 * Generation of control signals
* (time, data): [(0, 1), (5, 0), (10, 0), (15, 0), (20, 1), (25, 0), (30, 1), (35, 1), (40, 1), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 1), (85, 0), (90, 1), (95, 0), (100, 1), (105, 0), (110, 1), (115, 0), (120, 0), (125, 1), (130, 0), (135, 0), (140, 0), (145, 1), (150, 0), (155, 1), (160, 1), (165, 1), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 1), (210, 0), (215, 1), (220, 0), (225, 0), (230, 0), (235, 1), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 1), (280, 0), (285, 1), (290, 1), (295, 0), (300, 0), (305, 1), (310, 1), (315, 0), (320, 1), (325, 1), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 1), (370, 0), (375, 1), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 1), (425, 0), (430, 0), (435, 0), (440, 0), (445, 1), (450, 0), (455, 0), (460, 1), (465, 1), (470, 0), (475, 1), (480, 0), (485, 1), (490, 0), (495, 0), (500, 0), (505, 1), (510, 1), (515, 1), (520, 0), (525, 1), (530, 1), (535, 1), (540, 0), (545, 0), (550, 1), (555, 0), (560, 1), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 1), (595, 0), (600, 0), (605, 1), (610, 0), (615, 0), (620, 0), (625, 1), (630, 0), (635, 0), (640, 0), (645, 1), (650, 0), (655, 0), (660, 0), (665, 0), (670, 0), (675, 1), (680, 0), (685, 1), (690, 1), (695, 0), (700, 0), (705, 0), (710, 1), (715, 0), (720, 1), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 1), (795, 0), (800, 0), (805, 1), (810, 1), (815, 0), (820, 0), (825, 0), (830, 0), (835, 1), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 1), (890, 1), (895, 1), (900, 0), (905, 0), (910, 0), (915, 1), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 1), (955, 0), (960, 0), (965, 0), (970, 0), (975, 1), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 1), (1005, 0), (1010, 0), (1015, 1), (1020, 0), (1025, 1)]
VCSB0 CSB0 0 PWL (0n 1.1v 4.745n 1.1v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 1.1v 24.745n 1.1v 24.755n 0.0v 29.745n 0.0v 29.755n 1.1v 34.745n 1.1v 34.755n 1.1v 39.745n 1.1v 39.755n 1.1v 44.745n 1.1v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 1.1v 84.745n 1.1v 84.755n 0.0v 89.745n 0.0v 89.755n 1.1v 94.745n 1.1v 94.755n 0.0v 99.745n 0.0v 99.755n 1.1v 104.745n 1.1v 104.755n 0.0v 109.745n 0.0v 109.755n 1.1v 114.745n 1.1v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 1.1v 129.745n 1.1v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 1.1v 149.745n 1.1v 149.755n 0.0v 154.745n 0.0v 154.755n 1.1v 159.745n 1.1v 159.755n 1.1v 164.745n 1.1v 164.755n 1.1v 169.745n 1.1v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 1.1v 209.745n 1.1v 209.755n 0.0v 214.745n 0.0v 214.755n 1.1v 219.745n 1.1v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 1.1v 239.745n 1.1v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 1.1v 279.745n 1.1v 279.755n 0.0v 284.745n 0.0v 284.755n 1.1v 289.745n 1.1v 289.755n 1.1v 294.745n 1.1v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 1.1v 309.745n 1.1v 309.755n 1.1v 314.745n 1.1v 314.755n 0.0v 319.745n 0.0v 319.755n 1.1v 324.745n 1.1v 324.755n 1.1v 329.745n 1.1v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 1.1v 369.745n 1.1v 369.755n 0.0v 374.745n 0.0v 374.755n 1.1v 379.745n 1.1v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 1.1v 424.745n 1.1v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 1.1v 449.745n 1.1v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 1.1v 464.745n 1.1v 464.755n 1.1v 469.745n 1.1v 469.755n 0.0v 474.745n 0.0v 474.755n 1.1v 479.745n 1.1v 479.755n 0.0v 484.745n 0.0v 484.755n 1.1v 489.745n 1.1v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 1.1v 509.745n 1.1v 509.755n 1.1v 514.745n 1.1v 514.755n 1.1v 519.745n 1.1v 519.755n 0.0v 524.745n 0.0v 524.755n 1.1v 529.745n 1.1v 529.755n 1.1v 534.745n 1.1v 534.755n 1.1v 539.745n 1.1v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 1.1v 554.745n 1.1v 554.755n 0.0v 559.745n 0.0v 559.755n 1.1v 564.745n 1.1v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 1.1v 594.745n 1.1v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 1.1v 609.745n 1.1v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 1.1v 629.745n 1.1v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 1.1v 649.745n 1.1v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 1.1v 679.745n 1.1v 679.755n 0.0v 684.745n 0.0v 684.755n 1.1v 689.745n 1.1v 689.755n 1.1v 694.745n 1.1v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 1.1v 714.745n 1.1v 714.755n 0.0v 719.745n 0.0v 719.755n 1.1v 724.745n 1.1v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 1.1v 794.745n 1.1v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 1.1v 809.745n 1.1v 809.755n 1.1v 814.745n 1.1v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 1.1v 839.745n 1.1v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 1.1v 889.745n 1.1v 889.755n 1.1v 894.745n 1.1v 894.755n 1.1v 899.745n 1.1v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 1.1v 919.745n 1.1v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 1.1v 954.745n 1.1v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 1.1v 979.745n 1.1v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 1.1v 1004.745n 1.1v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 1.1v 1019.745n 1.1v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 1.1v )
* (time, data): [(0, 1), (5, 1), (10, 1), (15, 1), (20, 0), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 0), (70, 1), (75, 1), (80, 1), (85, 0), (90, 0), (95, 1), (100, 0), (105, 0), (110, 1), (115, 0), (120, 1), (125, 1), (130, 0), (135, 1), (140, 0), (145, 1), (150, 0), (155, 0), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 0), (190, 1), (195, 1), (200, 0), (205, 1), (210, 1), (215, 0), (220, 1), (225, 0), (230, 1), (235, 1), (240, 1), (245, 1), (250, 0), (255, 0), (260, 1), (265, 1), (270, 0), (275, 0), (280, 1), (285, 0), (290, 1), (295, 1), (300, 1), (305, 1), (310, 0), (315, 0), (320, 0), (325, 1), (330, 0), (335, 1), (340, 1), (345, 1), (350, 0), (355, 1), (360, 1), (365, 0), (370, 1), (375, 0), (380, 1), (385, 0), (390, 1), (395, 1), (400, 1), (405, 0), (410, 1), (415, 0), (420, 0), (425, 1), (430, 1), (435, 0), (440, 1), (445, 0), (450, 1), (455, 1), (460, 1), (465, 1), (470, 0), (475, 1), (480, 0), (485, 1), (490, 1), (495, 1), (500, 0), (505, 0), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 0), (545, 1), (550, 1), (555, 0), (560, 1), (565, 1), (570, 1), (575, 0), (580, 0), (585, 1), (590, 0), (595, 1), (600, 0), (605, 1), (610, 0), (615, 1), (620, 1), (625, 1), (630, 1), (635, 0), (640, 0), (645, 0), (650, 0), (655, 1), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 1), (690, 1), (695, 0), (700, 1), (705, 0), (710, 0), (715, 1), (720, 0), (725, 1), (730, 0), (735, 0), (740, 0), (745, 1), (750, 1), (755, 1), (760, 0), (765, 0), (770, 1), (775, 1), (780, 0), (785, 0), (790, 0), (795, 1), (800, 0), (805, 0), (810, 0), (815, 1), (820, 1), (825, 0), (830, 1), (835, 1), (840, 0), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 0), (875, 0), (880, 1), (885, 1), (890, 0), (895, 1), (900, 0), (905, 1), (910, 1), (915, 0), (920, 0), (925, 0), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 0), (960, 1), (965, 0), (970, 1), (975, 1), (980, 1), (985, 0), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 0), (1020, 0), (1025, 1)]
VCSB1 CSB1 0 PWL (0n 1.1v 4.745n 1.1v 4.755n 1.1v 9.745n 1.1v 9.755n 1.1v 14.745n 1.1v 14.755n 1.1v 19.745n 1.1v 19.755n 0.0v 24.745n 0.0v 24.755n 1.1v 29.745n 1.1v 29.755n 1.1v 34.745n 1.1v 34.755n 1.1v 39.745n 1.1v 39.755n 1.1v 44.745n 1.1v 44.755n 1.1v 49.745n 1.1v 49.755n 1.1v 54.745n 1.1v 54.755n 1.1v 59.745n 1.1v 59.755n 1.1v 64.745n 1.1v 64.755n 0.0v 69.745n 0.0v 69.755n 1.1v 74.745n 1.1v 74.755n 1.1v 79.745n 1.1v 79.755n 1.1v 84.745n 1.1v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.1v 99.745n 1.1v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 1.1v 114.745n 1.1v 114.755n 0.0v 119.745n 0.0v 119.755n 1.1v 124.745n 1.1v 124.755n 1.1v 129.745n 1.1v 129.755n 0.0v 134.745n 0.0v 134.755n 1.1v 139.745n 1.1v 139.755n 0.0v 144.745n 0.0v 144.755n 1.1v 149.745n 1.1v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 1.1v 164.745n 1.1v 164.755n 1.1v 169.745n 1.1v 169.755n 1.1v 174.745n 1.1v 174.755n 1.1v 179.745n 1.1v 179.755n 1.1v 184.745n 1.1v 184.755n 0.0v 189.745n 0.0v 189.755n 1.1v 194.745n 1.1v 194.755n 1.1v 199.745n 1.1v 199.755n 0.0v 204.745n 0.0v 204.755n 1.1v 209.745n 1.1v 209.755n 1.1v 214.745n 1.1v 214.755n 0.0v 219.745n 0.0v 219.755n 1.1v 224.745n 1.1v 224.755n 0.0v 229.745n 0.0v 229.755n 1.1v 234.745n 1.1v 234.755n 1.1v 239.745n 1.1v 239.755n 1.1v 244.745n 1.1v 244.755n 1.1v 249.745n 1.1v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 1.1v 264.745n 1.1v 264.755n 1.1v 269.745n 1.1v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 1.1v 284.745n 1.1v 284.755n 0.0v 289.745n 0.0v 289.755n 1.1v 294.745n 1.1v 294.755n 1.1v 299.745n 1.1v 299.755n 1.1v 304.745n 1.1v 304.755n 1.1v 309.745n 1.1v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 1.1v 329.745n 1.1v 329.755n 0.0v 334.745n 0.0v 334.755n 1.1v 339.745n 1.1v 339.755n 1.1v 344.745n 1.1v 344.755n 1.1v 349.745n 1.1v 349.755n 0.0v 354.745n 0.0v 354.755n 1.1v 359.745n 1.1v 359.755n 1.1v 364.745n 1.1v 364.755n 0.0v 369.745n 0.0v 369.755n 1.1v 374.745n 1.1v 374.755n 0.0v 379.745n 0.0v 379.755n 1.1v 384.745n 1.1v 384.755n 0.0v 389.745n 0.0v 389.755n 1.1v 394.745n 1.1v 394.755n 1.1v 399.745n 1.1v 399.755n 1.1v 404.745n 1.1v 404.755n 0.0v 409.745n 0.0v 409.755n 1.1v 414.745n 1.1v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 1.1v 429.745n 1.1v 429.755n 1.1v 434.745n 1.1v 434.755n 0.0v 439.745n 0.0v 439.755n 1.1v 444.745n 1.1v 444.755n 0.0v 449.745n 0.0v 449.755n 1.1v 454.745n 1.1v 454.755n 1.1v 459.745n 1.1v 459.755n 1.1v 464.745n 1.1v 464.755n 1.1v 469.745n 1.1v 469.755n 0.0v 474.745n 0.0v 474.755n 1.1v 479.745n 1.1v 479.755n 0.0v 484.745n 0.0v 484.755n 1.1v 489.745n 1.1v 489.755n 1.1v 494.745n 1.1v 494.755n 1.1v 499.745n 1.1v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 1.1v 514.745n 1.1v 514.755n 1.1v 519.745n 1.1v 519.755n 1.1v 524.745n 1.1v 524.755n 1.1v 529.745n 1.1v 529.755n 1.1v 534.745n 1.1v 534.755n 1.1v 539.745n 1.1v 539.755n 0.0v 544.745n 0.0v 544.755n 1.1v 549.745n 1.1v 549.755n 1.1v 554.745n 1.1v 554.755n 0.0v 559.745n 0.0v 559.755n 1.1v 564.745n 1.1v 564.755n 1.1v 569.745n 1.1v 569.755n 1.1v 574.745n 1.1v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 1.1v 589.745n 1.1v 589.755n 0.0v 594.745n 0.0v 594.755n 1.1v 599.745n 1.1v 599.755n 0.0v 604.745n 0.0v 604.755n 1.1v 609.745n 1.1v 609.755n 0.0v 614.745n 0.0v 614.755n 1.1v 619.745n 1.1v 619.755n 1.1v 624.745n 1.1v 624.755n 1.1v 629.745n 1.1v 629.755n 1.1v 634.745n 1.1v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.1v 659.745n 1.1v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 1.1v 689.745n 1.1v 689.755n 1.1v 694.745n 1.1v 694.755n 0.0v 699.745n 0.0v 699.755n 1.1v 704.745n 1.1v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 1.1v 719.745n 1.1v 719.755n 0.0v 724.745n 0.0v 724.755n 1.1v 729.745n 1.1v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 1.1v 749.745n 1.1v 749.755n 1.1v 754.745n 1.1v 754.755n 1.1v 759.745n 1.1v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.1v 774.745n 1.1v 774.755n 1.1v 779.745n 1.1v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.1v 799.745n 1.1v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 1.1v 819.745n 1.1v 819.755n 1.1v 824.745n 1.1v 824.755n 0.0v 829.745n 0.0v 829.755n 1.1v 834.745n 1.1v 834.755n 1.1v 839.745n 1.1v 839.755n 0.0v 844.745n 0.0v 844.755n 1.1v 849.745n 1.1v 849.755n 1.1v 854.745n 1.1v 854.755n 1.1v 859.745n 1.1v 859.755n 1.1v 864.745n 1.1v 864.755n 1.1v 869.745n 1.1v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 1.1v 884.745n 1.1v 884.755n 1.1v 889.745n 1.1v 889.755n 0.0v 894.745n 0.0v 894.755n 1.1v 899.745n 1.1v 899.755n 0.0v 904.745n 0.0v 904.755n 1.1v 909.745n 1.1v 909.755n 1.1v 914.745n 1.1v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 1.1v 934.745n 1.1v 934.755n 1.1v 939.745n 1.1v 939.755n 1.1v 944.745n 1.1v 944.755n 1.1v 949.745n 1.1v 949.755n 1.1v 954.745n 1.1v 954.755n 0.0v 959.745n 0.0v 959.755n 1.1v 964.745n 1.1v 964.755n 0.0v 969.745n 0.0v 969.755n 1.1v 974.745n 1.1v 974.755n 1.1v 979.745n 1.1v 979.755n 1.1v 984.745n 1.1v 984.755n 0.0v 989.745n 0.0v 989.755n 1.1v 994.745n 1.1v 994.755n 1.1v 999.745n 1.1v 999.755n 1.1v 1004.745n 1.1v 1004.755n 1.1v 1009.745n 1.1v 1009.755n 1.1v 1014.745n 1.1v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 1.1v )

* Generation of wmask signals
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 0), (50, 1), (55, 0), (60, 1), (65, 1), (70, 1), (75, 0), (80, 0), (85, 0), (90, 0), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 0), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 0), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 0), (225, 1), (230, 0), (235, 0), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 0), (275, 0), (280, 1), (285, 1), (290, 1), (295, 0), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 0), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 1), (420, 1), (425, 0), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 0), (550, 0), (555, 1), (560, 1), (565, 0), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 0), (605, 0), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 0), (640, 1), (645, 1), (650, 0), (655, 0), (660, 1), (665, 0), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 0), (700, 0), (705, 1), (710, 1), (715, 1), (720, 1), (725, 0), (730, 1), (735, 1), (740, 0), (745, 0), (750, 0), (755, 1), (760, 1), (765, 1), (770, 1), (775, 1), (780, 0), (785, 1), (790, 1), (795, 0), (800, 0), (805, 0), (810, 0), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 0), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 0), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 0), (910, 0), (915, 0), (920, 1), (925, 1), (930, 1), (935, 1), (940, 0), (945, 0), (950, 0), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 0), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
VWMASK0_0  WMASK0_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.1v 9.745n 1.1v 9.755n 1.1v 14.745n 1.1v 14.755n 1.1v 19.745n 1.1v 19.755n 1.1v 24.745n 1.1v 24.755n 1.1v 29.745n 1.1v 29.755n 1.1v 34.745n 1.1v 34.755n 1.1v 39.745n 1.1v 39.755n 1.1v 44.745n 1.1v 44.755n 0.0v 49.745n 0.0v 49.755n 1.1v 54.745n 1.1v 54.755n 0.0v 59.745n 0.0v 59.755n 1.1v 64.745n 1.1v 64.755n 1.1v 69.745n 1.1v 69.755n 1.1v 74.745n 1.1v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.1v 99.745n 1.1v 99.755n 1.1v 104.745n 1.1v 104.755n 1.1v 109.745n 1.1v 109.755n 1.1v 114.745n 1.1v 114.755n 1.1v 119.745n 1.1v 119.755n 1.1v 124.745n 1.1v 124.755n 1.1v 129.745n 1.1v 129.755n 1.1v 134.745n 1.1v 134.755n 0.0v 139.745n 0.0v 139.755n 1.1v 144.745n 1.1v 144.755n 1.1v 149.745n 1.1v 149.755n 1.1v 154.745n 1.1v 154.755n 1.1v 159.745n 1.1v 159.755n 1.1v 164.745n 1.1v 164.755n 1.1v 169.745n 1.1v 169.755n 1.1v 174.745n 1.1v 174.755n 1.1v 179.745n 1.1v 179.755n 1.1v 184.745n 1.1v 184.755n 0.0v 189.745n 0.0v 189.755n 1.1v 194.745n 1.1v 194.755n 1.1v 199.745n 1.1v 199.755n 1.1v 204.745n 1.1v 204.755n 1.1v 209.745n 1.1v 209.755n 1.1v 214.745n 1.1v 214.755n 1.1v 219.745n 1.1v 219.755n 0.0v 224.745n 0.0v 224.755n 1.1v 229.745n 1.1v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 1.1v 244.745n 1.1v 244.755n 1.1v 249.745n 1.1v 249.755n 1.1v 254.745n 1.1v 254.755n 1.1v 259.745n 1.1v 259.755n 1.1v 264.745n 1.1v 264.755n 1.1v 269.745n 1.1v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 1.1v 284.745n 1.1v 284.755n 1.1v 289.745n 1.1v 289.755n 1.1v 294.745n 1.1v 294.755n 0.0v 299.745n 0.0v 299.755n 1.1v 304.745n 1.1v 304.755n 1.1v 309.745n 1.1v 309.755n 1.1v 314.745n 1.1v 314.755n 1.1v 319.745n 1.1v 319.755n 1.1v 324.745n 1.1v 324.755n 1.1v 329.745n 1.1v 329.755n 1.1v 334.745n 1.1v 334.755n 1.1v 339.745n 1.1v 339.755n 1.1v 344.745n 1.1v 344.755n 0.0v 349.745n 0.0v 349.755n 1.1v 354.745n 1.1v 354.755n 1.1v 359.745n 1.1v 359.755n 1.1v 364.745n 1.1v 364.755n 1.1v 369.745n 1.1v 369.755n 1.1v 374.745n 1.1v 374.755n 1.1v 379.745n 1.1v 379.755n 1.1v 384.745n 1.1v 384.755n 1.1v 389.745n 1.1v 389.755n 1.1v 394.745n 1.1v 394.755n 1.1v 399.745n 1.1v 399.755n 1.1v 404.745n 1.1v 404.755n 1.1v 409.745n 1.1v 409.755n 1.1v 414.745n 1.1v 414.755n 1.1v 419.745n 1.1v 419.755n 1.1v 424.745n 1.1v 424.755n 0.0v 429.745n 0.0v 429.755n 1.1v 434.745n 1.1v 434.755n 1.1v 439.745n 1.1v 439.755n 1.1v 444.745n 1.1v 444.755n 1.1v 449.745n 1.1v 449.755n 1.1v 454.745n 1.1v 454.755n 1.1v 459.745n 1.1v 459.755n 1.1v 464.745n 1.1v 464.755n 1.1v 469.745n 1.1v 469.755n 1.1v 474.745n 1.1v 474.755n 1.1v 479.745n 1.1v 479.755n 1.1v 484.745n 1.1v 484.755n 1.1v 489.745n 1.1v 489.755n 1.1v 494.745n 1.1v 494.755n 1.1v 499.745n 1.1v 499.755n 1.1v 504.745n 1.1v 504.755n 1.1v 509.745n 1.1v 509.755n 1.1v 514.745n 1.1v 514.755n 1.1v 519.745n 1.1v 519.755n 1.1v 524.745n 1.1v 524.755n 1.1v 529.745n 1.1v 529.755n 1.1v 534.745n 1.1v 534.755n 1.1v 539.745n 1.1v 539.755n 1.1v 544.745n 1.1v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.1v 559.745n 1.1v 559.755n 1.1v 564.745n 1.1v 564.755n 0.0v 569.745n 0.0v 569.755n 1.1v 574.745n 1.1v 574.755n 1.1v 579.745n 1.1v 579.755n 1.1v 584.745n 1.1v 584.755n 1.1v 589.745n 1.1v 589.755n 1.1v 594.745n 1.1v 594.755n 1.1v 599.745n 1.1v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 1.1v 614.745n 1.1v 614.755n 1.1v 619.745n 1.1v 619.755n 1.1v 624.745n 1.1v 624.755n 1.1v 629.745n 1.1v 629.755n 1.1v 634.745n 1.1v 634.755n 0.0v 639.745n 0.0v 639.755n 1.1v 644.745n 1.1v 644.755n 1.1v 649.745n 1.1v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.1v 664.745n 1.1v 664.755n 0.0v 669.745n 0.0v 669.755n 1.1v 674.745n 1.1v 674.755n 1.1v 679.745n 1.1v 679.755n 1.1v 684.745n 1.1v 684.755n 1.1v 689.745n 1.1v 689.755n 1.1v 694.745n 1.1v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 1.1v 709.745n 1.1v 709.755n 1.1v 714.745n 1.1v 714.755n 1.1v 719.745n 1.1v 719.755n 1.1v 724.745n 1.1v 724.755n 0.0v 729.745n 0.0v 729.755n 1.1v 734.745n 1.1v 734.755n 1.1v 739.745n 1.1v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 1.1v 759.745n 1.1v 759.755n 1.1v 764.745n 1.1v 764.755n 1.1v 769.745n 1.1v 769.755n 1.1v 774.745n 1.1v 774.755n 1.1v 779.745n 1.1v 779.755n 0.0v 784.745n 0.0v 784.755n 1.1v 789.745n 1.1v 789.755n 1.1v 794.745n 1.1v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 1.1v 819.745n 1.1v 819.755n 1.1v 824.745n 1.1v 824.755n 1.1v 829.745n 1.1v 829.755n 1.1v 834.745n 1.1v 834.755n 1.1v 839.745n 1.1v 839.755n 0.0v 844.745n 0.0v 844.755n 1.1v 849.745n 1.1v 849.755n 1.1v 854.745n 1.1v 854.755n 1.1v 859.745n 1.1v 859.755n 1.1v 864.745n 1.1v 864.755n 1.1v 869.745n 1.1v 869.755n 0.0v 874.745n 0.0v 874.755n 1.1v 879.745n 1.1v 879.755n 1.1v 884.745n 1.1v 884.755n 1.1v 889.745n 1.1v 889.755n 1.1v 894.745n 1.1v 894.755n 1.1v 899.745n 1.1v 899.755n 1.1v 904.745n 1.1v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 1.1v 924.745n 1.1v 924.755n 1.1v 929.745n 1.1v 929.755n 1.1v 934.745n 1.1v 934.755n 1.1v 939.745n 1.1v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.1v 959.745n 1.1v 959.755n 1.1v 964.745n 1.1v 964.755n 1.1v 969.745n 1.1v 969.755n 1.1v 974.745n 1.1v 974.755n 1.1v 979.745n 1.1v 979.755n 1.1v 984.745n 1.1v 984.755n 0.0v 989.745n 0.0v 989.755n 1.1v 994.745n 1.1v 994.755n 1.1v 999.745n 1.1v 999.755n 1.1v 1004.745n 1.1v 1004.755n 1.1v 1009.745n 1.1v 1009.755n 1.1v 1014.745n 1.1v 1014.755n 1.1v 1019.745n 1.1v 1019.755n 1.1v 1024.745n 1.1v 1024.755n 1.1v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 0), (80, 0), (85, 0), (90, 0), (95, 1), (100, 1), (105, 0), (110, 0), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 0), (175, 1), (180, 1), (185, 1), (190, 1), (195, 0), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 0), (275, 0), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 0), (320, 0), (325, 0), (330, 1), (335, 0), (340, 0), (345, 1), (350, 0), (355, 1), (360, 0), (365, 0), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 0), (400, 1), (405, 1), (410, 0), (415, 1), (420, 1), (425, 1), (430, 1), (435, 0), (440, 0), (445, 0), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 0), (550, 0), (555, 1), (560, 1), (565, 1), (570, 0), (575, 1), (580, 1), (585, 1), (590, 1), (595, 0), (600, 0), (605, 0), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 0), (655, 0), (660, 1), (665, 0), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 0), (705, 1), (710, 1), (715, 0), (720, 0), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 0), (760, 0), (765, 1), (770, 1), (775, 1), (780, 0), (785, 1), (790, 1), (795, 0), (800, 0), (805, 0), (810, 0), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 0), (845, 1), (850, 0), (855, 1), (860, 1), (865, 1), (870, 0), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 0), (905, 1), (910, 1), (915, 1), (920, 0), (925, 1), (930, 1), (935, 1), (940, 1), (945, 0), (950, 0), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
VWMASK0_1  WMASK0_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.1v 9.745n 1.1v 9.755n 1.1v 14.745n 1.1v 14.755n 1.1v 19.745n 1.1v 19.755n 1.1v 24.745n 1.1v 24.755n 1.1v 29.745n 1.1v 29.755n 1.1v 34.745n 1.1v 34.755n 1.1v 39.745n 1.1v 39.755n 1.1v 44.745n 1.1v 44.755n 1.1v 49.745n 1.1v 49.755n 1.1v 54.745n 1.1v 54.755n 1.1v 59.745n 1.1v 59.755n 1.1v 64.745n 1.1v 64.755n 1.1v 69.745n 1.1v 69.755n 1.1v 74.745n 1.1v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.1v 99.745n 1.1v 99.755n 1.1v 104.745n 1.1v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.1v 119.745n 1.1v 119.755n 1.1v 124.745n 1.1v 124.755n 1.1v 129.745n 1.1v 129.755n 1.1v 134.745n 1.1v 134.755n 1.1v 139.745n 1.1v 139.755n 1.1v 144.745n 1.1v 144.755n 1.1v 149.745n 1.1v 149.755n 1.1v 154.745n 1.1v 154.755n 1.1v 159.745n 1.1v 159.755n 1.1v 164.745n 1.1v 164.755n 1.1v 169.745n 1.1v 169.755n 0.0v 174.745n 0.0v 174.755n 1.1v 179.745n 1.1v 179.755n 1.1v 184.745n 1.1v 184.755n 1.1v 189.745n 1.1v 189.755n 1.1v 194.745n 1.1v 194.755n 0.0v 199.745n 0.0v 199.755n 1.1v 204.745n 1.1v 204.755n 1.1v 209.745n 1.1v 209.755n 1.1v 214.745n 1.1v 214.755n 1.1v 219.745n 1.1v 219.755n 1.1v 224.745n 1.1v 224.755n 1.1v 229.745n 1.1v 229.755n 1.1v 234.745n 1.1v 234.755n 1.1v 239.745n 1.1v 239.755n 1.1v 244.745n 1.1v 244.755n 1.1v 249.745n 1.1v 249.755n 1.1v 254.745n 1.1v 254.755n 1.1v 259.745n 1.1v 259.755n 1.1v 264.745n 1.1v 264.755n 1.1v 269.745n 1.1v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 1.1v 284.745n 1.1v 284.755n 1.1v 289.745n 1.1v 289.755n 1.1v 294.745n 1.1v 294.755n 1.1v 299.745n 1.1v 299.755n 1.1v 304.745n 1.1v 304.755n 1.1v 309.745n 1.1v 309.755n 1.1v 314.745n 1.1v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.1v 334.745n 1.1v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 1.1v 349.745n 1.1v 349.755n 0.0v 354.745n 0.0v 354.755n 1.1v 359.745n 1.1v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 1.1v 374.745n 1.1v 374.755n 1.1v 379.745n 1.1v 379.755n 1.1v 384.745n 1.1v 384.755n 1.1v 389.745n 1.1v 389.755n 1.1v 394.745n 1.1v 394.755n 0.0v 399.745n 0.0v 399.755n 1.1v 404.745n 1.1v 404.755n 1.1v 409.745n 1.1v 409.755n 0.0v 414.745n 0.0v 414.755n 1.1v 419.745n 1.1v 419.755n 1.1v 424.745n 1.1v 424.755n 1.1v 429.745n 1.1v 429.755n 1.1v 434.745n 1.1v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.1v 454.745n 1.1v 454.755n 1.1v 459.745n 1.1v 459.755n 1.1v 464.745n 1.1v 464.755n 1.1v 469.745n 1.1v 469.755n 1.1v 474.745n 1.1v 474.755n 1.1v 479.745n 1.1v 479.755n 1.1v 484.745n 1.1v 484.755n 1.1v 489.745n 1.1v 489.755n 1.1v 494.745n 1.1v 494.755n 1.1v 499.745n 1.1v 499.755n 1.1v 504.745n 1.1v 504.755n 1.1v 509.745n 1.1v 509.755n 1.1v 514.745n 1.1v 514.755n 1.1v 519.745n 1.1v 519.755n 1.1v 524.745n 1.1v 524.755n 1.1v 529.745n 1.1v 529.755n 1.1v 534.745n 1.1v 534.755n 1.1v 539.745n 1.1v 539.755n 1.1v 544.745n 1.1v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.1v 559.745n 1.1v 559.755n 1.1v 564.745n 1.1v 564.755n 1.1v 569.745n 1.1v 569.755n 0.0v 574.745n 0.0v 574.755n 1.1v 579.745n 1.1v 579.755n 1.1v 584.745n 1.1v 584.755n 1.1v 589.745n 1.1v 589.755n 1.1v 594.745n 1.1v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 1.1v 614.745n 1.1v 614.755n 1.1v 619.745n 1.1v 619.755n 1.1v 624.745n 1.1v 624.755n 1.1v 629.745n 1.1v 629.755n 1.1v 634.745n 1.1v 634.755n 1.1v 639.745n 1.1v 639.755n 1.1v 644.745n 1.1v 644.755n 1.1v 649.745n 1.1v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.1v 664.745n 1.1v 664.755n 0.0v 669.745n 0.0v 669.755n 1.1v 674.745n 1.1v 674.755n 1.1v 679.745n 1.1v 679.755n 1.1v 684.745n 1.1v 684.755n 1.1v 689.745n 1.1v 689.755n 1.1v 694.745n 1.1v 694.755n 1.1v 699.745n 1.1v 699.755n 0.0v 704.745n 0.0v 704.755n 1.1v 709.745n 1.1v 709.755n 1.1v 714.745n 1.1v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.1v 729.745n 1.1v 729.755n 1.1v 734.745n 1.1v 734.755n 1.1v 739.745n 1.1v 739.755n 1.1v 744.745n 1.1v 744.755n 1.1v 749.745n 1.1v 749.755n 1.1v 754.745n 1.1v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 1.1v 769.745n 1.1v 769.755n 1.1v 774.745n 1.1v 774.755n 1.1v 779.745n 1.1v 779.755n 0.0v 784.745n 0.0v 784.755n 1.1v 789.745n 1.1v 789.755n 1.1v 794.745n 1.1v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 1.1v 819.745n 1.1v 819.755n 1.1v 824.745n 1.1v 824.755n 1.1v 829.745n 1.1v 829.755n 1.1v 834.745n 1.1v 834.755n 1.1v 839.745n 1.1v 839.755n 0.0v 844.745n 0.0v 844.755n 1.1v 849.745n 1.1v 849.755n 0.0v 854.745n 0.0v 854.755n 1.1v 859.745n 1.1v 859.755n 1.1v 864.745n 1.1v 864.755n 1.1v 869.745n 1.1v 869.755n 0.0v 874.745n 0.0v 874.755n 1.1v 879.745n 1.1v 879.755n 1.1v 884.745n 1.1v 884.755n 1.1v 889.745n 1.1v 889.755n 1.1v 894.745n 1.1v 894.755n 1.1v 899.745n 1.1v 899.755n 0.0v 904.745n 0.0v 904.755n 1.1v 909.745n 1.1v 909.755n 1.1v 914.745n 1.1v 914.755n 1.1v 919.745n 1.1v 919.755n 0.0v 924.745n 0.0v 924.755n 1.1v 929.745n 1.1v 929.755n 1.1v 934.745n 1.1v 934.755n 1.1v 939.745n 1.1v 939.755n 1.1v 944.745n 1.1v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.1v 959.745n 1.1v 959.755n 1.1v 964.745n 1.1v 964.755n 1.1v 969.745n 1.1v 969.755n 1.1v 974.745n 1.1v 974.755n 1.1v 979.745n 1.1v 979.755n 1.1v 984.745n 1.1v 984.755n 1.1v 989.745n 1.1v 989.755n 1.1v 994.745n 1.1v 994.755n 1.1v 999.745n 1.1v 999.755n 1.1v 1004.745n 1.1v 1004.755n 1.1v 1009.745n 1.1v 1009.755n 1.1v 1014.745n 1.1v 1014.755n 1.1v 1019.745n 1.1v 1019.755n 1.1v 1024.745n 1.1v 1024.755n 1.1v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 0), (50, 1), (55, 0), (60, 1), (65, 1), (70, 1), (75, 0), (80, 0), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 0), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 0), (175, 1), (180, 1), (185, 0), (190, 0), (195, 0), (200, 1), (205, 1), (210, 1), (215, 1), (220, 0), (225, 0), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 0), (300, 1), (305, 1), (310, 1), (315, 0), (320, 0), (325, 0), (330, 1), (335, 0), (340, 1), (345, 1), (350, 0), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 0), (400, 0), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 0), (440, 1), (445, 1), (450, 1), (455, 0), (460, 0), (465, 0), (470, 1), (475, 1), (480, 0), (485, 0), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 0), (525, 0), (530, 0), (535, 0), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 0), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 0), (640, 1), (645, 1), (650, 0), (655, 1), (660, 0), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 0), (730, 1), (735, 1), (740, 1), (745, 0), (750, 0), (755, 1), (760, 1), (765, 1), (770, 1), (775, 1), (780, 0), (785, 1), (790, 1), (795, 0), (800, 0), (805, 0), (810, 0), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 0), (850, 0), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 0), (915, 0), (920, 0), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
VWMASK0_2  WMASK0_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.1v 9.745n 1.1v 9.755n 1.1v 14.745n 1.1v 14.755n 1.1v 19.745n 1.1v 19.755n 1.1v 24.745n 1.1v 24.755n 1.1v 29.745n 1.1v 29.755n 1.1v 34.745n 1.1v 34.755n 1.1v 39.745n 1.1v 39.755n 1.1v 44.745n 1.1v 44.755n 0.0v 49.745n 0.0v 49.755n 1.1v 54.745n 1.1v 54.755n 0.0v 59.745n 0.0v 59.755n 1.1v 64.745n 1.1v 64.755n 1.1v 69.745n 1.1v 69.755n 1.1v 74.745n 1.1v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 1.1v 89.745n 1.1v 89.755n 1.1v 94.745n 1.1v 94.755n 1.1v 99.745n 1.1v 99.755n 1.1v 104.745n 1.1v 104.755n 1.1v 109.745n 1.1v 109.755n 1.1v 114.745n 1.1v 114.755n 1.1v 119.745n 1.1v 119.755n 1.1v 124.745n 1.1v 124.755n 1.1v 129.745n 1.1v 129.755n 1.1v 134.745n 1.1v 134.755n 0.0v 139.745n 0.0v 139.755n 1.1v 144.745n 1.1v 144.755n 1.1v 149.745n 1.1v 149.755n 1.1v 154.745n 1.1v 154.755n 1.1v 159.745n 1.1v 159.755n 1.1v 164.745n 1.1v 164.755n 1.1v 169.745n 1.1v 169.755n 0.0v 174.745n 0.0v 174.755n 1.1v 179.745n 1.1v 179.755n 1.1v 184.745n 1.1v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 1.1v 204.745n 1.1v 204.755n 1.1v 209.745n 1.1v 209.755n 1.1v 214.745n 1.1v 214.755n 1.1v 219.745n 1.1v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 1.1v 234.745n 1.1v 234.755n 1.1v 239.745n 1.1v 239.755n 1.1v 244.745n 1.1v 244.755n 1.1v 249.745n 1.1v 249.755n 1.1v 254.745n 1.1v 254.755n 1.1v 259.745n 1.1v 259.755n 1.1v 264.745n 1.1v 264.755n 1.1v 269.745n 1.1v 269.755n 1.1v 274.745n 1.1v 274.755n 1.1v 279.745n 1.1v 279.755n 1.1v 284.745n 1.1v 284.755n 1.1v 289.745n 1.1v 289.755n 1.1v 294.745n 1.1v 294.755n 0.0v 299.745n 0.0v 299.755n 1.1v 304.745n 1.1v 304.755n 1.1v 309.745n 1.1v 309.755n 1.1v 314.745n 1.1v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.1v 334.745n 1.1v 334.755n 0.0v 339.745n 0.0v 339.755n 1.1v 344.745n 1.1v 344.755n 1.1v 349.745n 1.1v 349.755n 0.0v 354.745n 0.0v 354.755n 1.1v 359.745n 1.1v 359.755n 1.1v 364.745n 1.1v 364.755n 1.1v 369.745n 1.1v 369.755n 1.1v 374.745n 1.1v 374.755n 1.1v 379.745n 1.1v 379.755n 1.1v 384.745n 1.1v 384.755n 1.1v 389.745n 1.1v 389.755n 1.1v 394.745n 1.1v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 1.1v 409.745n 1.1v 409.755n 1.1v 414.745n 1.1v 414.755n 1.1v 419.745n 1.1v 419.755n 1.1v 424.745n 1.1v 424.755n 1.1v 429.745n 1.1v 429.755n 1.1v 434.745n 1.1v 434.755n 0.0v 439.745n 0.0v 439.755n 1.1v 444.745n 1.1v 444.755n 1.1v 449.745n 1.1v 449.755n 1.1v 454.745n 1.1v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.1v 474.745n 1.1v 474.755n 1.1v 479.745n 1.1v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.1v 494.745n 1.1v 494.755n 1.1v 499.745n 1.1v 499.755n 1.1v 504.745n 1.1v 504.755n 1.1v 509.745n 1.1v 509.755n 1.1v 514.745n 1.1v 514.755n 1.1v 519.745n 1.1v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.1v 544.745n 1.1v 544.755n 1.1v 549.745n 1.1v 549.755n 1.1v 554.745n 1.1v 554.755n 1.1v 559.745n 1.1v 559.755n 1.1v 564.745n 1.1v 564.755n 1.1v 569.745n 1.1v 569.755n 1.1v 574.745n 1.1v 574.755n 1.1v 579.745n 1.1v 579.755n 1.1v 584.745n 1.1v 584.755n 1.1v 589.745n 1.1v 589.755n 1.1v 594.745n 1.1v 594.755n 0.0v 599.745n 0.0v 599.755n 1.1v 604.745n 1.1v 604.755n 1.1v 609.745n 1.1v 609.755n 1.1v 614.745n 1.1v 614.755n 1.1v 619.745n 1.1v 619.755n 1.1v 624.745n 1.1v 624.755n 1.1v 629.745n 1.1v 629.755n 1.1v 634.745n 1.1v 634.755n 0.0v 639.745n 0.0v 639.755n 1.1v 644.745n 1.1v 644.755n 1.1v 649.745n 1.1v 649.755n 0.0v 654.745n 0.0v 654.755n 1.1v 659.745n 1.1v 659.755n 0.0v 664.745n 0.0v 664.755n 1.1v 669.745n 1.1v 669.755n 1.1v 674.745n 1.1v 674.755n 1.1v 679.745n 1.1v 679.755n 1.1v 684.745n 1.1v 684.755n 1.1v 689.745n 1.1v 689.755n 1.1v 694.745n 1.1v 694.755n 1.1v 699.745n 1.1v 699.755n 1.1v 704.745n 1.1v 704.755n 1.1v 709.745n 1.1v 709.755n 1.1v 714.745n 1.1v 714.755n 1.1v 719.745n 1.1v 719.755n 1.1v 724.745n 1.1v 724.755n 0.0v 729.745n 0.0v 729.755n 1.1v 734.745n 1.1v 734.755n 1.1v 739.745n 1.1v 739.755n 1.1v 744.745n 1.1v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 1.1v 759.745n 1.1v 759.755n 1.1v 764.745n 1.1v 764.755n 1.1v 769.745n 1.1v 769.755n 1.1v 774.745n 1.1v 774.755n 1.1v 779.745n 1.1v 779.755n 0.0v 784.745n 0.0v 784.755n 1.1v 789.745n 1.1v 789.755n 1.1v 794.745n 1.1v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 1.1v 819.745n 1.1v 819.755n 1.1v 824.745n 1.1v 824.755n 1.1v 829.745n 1.1v 829.755n 1.1v 834.745n 1.1v 834.755n 1.1v 839.745n 1.1v 839.755n 1.1v 844.745n 1.1v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 1.1v 859.745n 1.1v 859.755n 1.1v 864.745n 1.1v 864.755n 1.1v 869.745n 1.1v 869.755n 1.1v 874.745n 1.1v 874.755n 1.1v 879.745n 1.1v 879.755n 1.1v 884.745n 1.1v 884.755n 1.1v 889.745n 1.1v 889.755n 1.1v 894.745n 1.1v 894.755n 1.1v 899.745n 1.1v 899.755n 1.1v 904.745n 1.1v 904.755n 1.1v 909.745n 1.1v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 1.1v 929.745n 1.1v 929.755n 1.1v 934.745n 1.1v 934.755n 1.1v 939.745n 1.1v 939.755n 1.1v 944.745n 1.1v 944.755n 1.1v 949.745n 1.1v 949.755n 1.1v 954.745n 1.1v 954.755n 1.1v 959.745n 1.1v 959.755n 1.1v 964.745n 1.1v 964.755n 1.1v 969.745n 1.1v 969.755n 1.1v 974.745n 1.1v 974.755n 1.1v 979.745n 1.1v 979.755n 1.1v 984.745n 1.1v 984.755n 1.1v 989.745n 1.1v 989.755n 1.1v 994.745n 1.1v 994.755n 1.1v 999.745n 1.1v 999.755n 1.1v 1004.745n 1.1v 1004.755n 1.1v 1009.745n 1.1v 1009.755n 1.1v 1014.745n 1.1v 1014.755n 1.1v 1019.745n 1.1v 1019.755n 1.1v 1024.745n 1.1v 1024.755n 1.1v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 0), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 0), (90, 0), (95, 1), (100, 1), (105, 0), (110, 0), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 0), (185, 0), (190, 0), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 1), (230, 0), (235, 0), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 0), (275, 0), (280, 1), (285, 1), (290, 1), (295, 0), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 0), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 0), (405, 1), (410, 0), (415, 0), (420, 0), (425, 1), (430, 1), (435, 0), (440, 0), (445, 0), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 0), (485, 0), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 0), (550, 0), (555, 1), (560, 1), (565, 1), (570, 0), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 0), (605, 0), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 0), (645, 0), (650, 1), (655, 0), (660, 0), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 0), (705, 1), (710, 1), (715, 0), (720, 0), (725, 1), (730, 0), (735, 1), (740, 1), (745, 0), (750, 1), (755, 1), (760, 1), (765, 1), (770, 0), (775, 1), (780, 1), (785, 0), (790, 0), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 0), (845, 1), (850, 1), (855, 1), (860, 1), (865, 0), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 0), (930, 1), (935, 1), (940, 0), (945, 1), (950, 1), (955, 1), (960, 1), (965, 1), (970, 0), (975, 0), (980, 1), (985, 0), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
VWMASK0_3  WMASK0_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.1v 9.745n 1.1v 9.755n 1.1v 14.745n 1.1v 14.755n 1.1v 19.745n 1.1v 19.755n 1.1v 24.745n 1.1v 24.755n 1.1v 29.745n 1.1v 29.755n 1.1v 34.745n 1.1v 34.755n 1.1v 39.745n 1.1v 39.755n 1.1v 44.745n 1.1v 44.755n 1.1v 49.745n 1.1v 49.755n 0.0v 54.745n 0.0v 54.755n 1.1v 59.745n 1.1v 59.755n 1.1v 64.745n 1.1v 64.755n 1.1v 69.745n 1.1v 69.755n 1.1v 74.745n 1.1v 74.755n 1.1v 79.745n 1.1v 79.755n 1.1v 84.745n 1.1v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.1v 99.745n 1.1v 99.755n 1.1v 104.745n 1.1v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.1v 119.745n 1.1v 119.755n 1.1v 124.745n 1.1v 124.755n 1.1v 129.745n 1.1v 129.755n 1.1v 134.745n 1.1v 134.755n 1.1v 139.745n 1.1v 139.755n 1.1v 144.745n 1.1v 144.755n 1.1v 149.745n 1.1v 149.755n 1.1v 154.745n 1.1v 154.755n 1.1v 159.745n 1.1v 159.755n 1.1v 164.745n 1.1v 164.755n 1.1v 169.745n 1.1v 169.755n 1.1v 174.745n 1.1v 174.755n 1.1v 179.745n 1.1v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 1.1v 199.745n 1.1v 199.755n 1.1v 204.745n 1.1v 204.755n 1.1v 209.745n 1.1v 209.755n 1.1v 214.745n 1.1v 214.755n 1.1v 219.745n 1.1v 219.755n 1.1v 224.745n 1.1v 224.755n 1.1v 229.745n 1.1v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 1.1v 244.745n 1.1v 244.755n 1.1v 249.745n 1.1v 249.755n 1.1v 254.745n 1.1v 254.755n 1.1v 259.745n 1.1v 259.755n 1.1v 264.745n 1.1v 264.755n 1.1v 269.745n 1.1v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 1.1v 284.745n 1.1v 284.755n 1.1v 289.745n 1.1v 289.755n 1.1v 294.745n 1.1v 294.755n 0.0v 299.745n 0.0v 299.755n 1.1v 304.745n 1.1v 304.755n 1.1v 309.745n 1.1v 309.755n 1.1v 314.745n 1.1v 314.755n 1.1v 319.745n 1.1v 319.755n 1.1v 324.745n 1.1v 324.755n 1.1v 329.745n 1.1v 329.755n 1.1v 334.745n 1.1v 334.755n 1.1v 339.745n 1.1v 339.755n 0.0v 344.745n 0.0v 344.755n 1.1v 349.745n 1.1v 349.755n 1.1v 354.745n 1.1v 354.755n 1.1v 359.745n 1.1v 359.755n 1.1v 364.745n 1.1v 364.755n 1.1v 369.745n 1.1v 369.755n 1.1v 374.745n 1.1v 374.755n 1.1v 379.745n 1.1v 379.755n 1.1v 384.745n 1.1v 384.755n 1.1v 389.745n 1.1v 389.755n 1.1v 394.745n 1.1v 394.755n 1.1v 399.745n 1.1v 399.755n 0.0v 404.745n 0.0v 404.755n 1.1v 409.745n 1.1v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 1.1v 429.745n 1.1v 429.755n 1.1v 434.745n 1.1v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.1v 454.745n 1.1v 454.755n 1.1v 459.745n 1.1v 459.755n 1.1v 464.745n 1.1v 464.755n 1.1v 469.745n 1.1v 469.755n 1.1v 474.745n 1.1v 474.755n 1.1v 479.745n 1.1v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.1v 494.745n 1.1v 494.755n 1.1v 499.745n 1.1v 499.755n 1.1v 504.745n 1.1v 504.755n 1.1v 509.745n 1.1v 509.755n 1.1v 514.745n 1.1v 514.755n 1.1v 519.745n 1.1v 519.755n 1.1v 524.745n 1.1v 524.755n 1.1v 529.745n 1.1v 529.755n 1.1v 534.745n 1.1v 534.755n 1.1v 539.745n 1.1v 539.755n 1.1v 544.745n 1.1v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.1v 559.745n 1.1v 559.755n 1.1v 564.745n 1.1v 564.755n 1.1v 569.745n 1.1v 569.755n 0.0v 574.745n 0.0v 574.755n 1.1v 579.745n 1.1v 579.755n 1.1v 584.745n 1.1v 584.755n 1.1v 589.745n 1.1v 589.755n 1.1v 594.745n 1.1v 594.755n 1.1v 599.745n 1.1v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 1.1v 614.745n 1.1v 614.755n 1.1v 619.745n 1.1v 619.755n 1.1v 624.745n 1.1v 624.755n 1.1v 629.745n 1.1v 629.755n 1.1v 634.745n 1.1v 634.755n 1.1v 639.745n 1.1v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 1.1v 654.745n 1.1v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 1.1v 669.745n 1.1v 669.755n 1.1v 674.745n 1.1v 674.755n 1.1v 679.745n 1.1v 679.755n 1.1v 684.745n 1.1v 684.755n 1.1v 689.745n 1.1v 689.755n 1.1v 694.745n 1.1v 694.755n 1.1v 699.745n 1.1v 699.755n 0.0v 704.745n 0.0v 704.755n 1.1v 709.745n 1.1v 709.755n 1.1v 714.745n 1.1v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.1v 729.745n 1.1v 729.755n 0.0v 734.745n 0.0v 734.755n 1.1v 739.745n 1.1v 739.755n 1.1v 744.745n 1.1v 744.755n 0.0v 749.745n 0.0v 749.755n 1.1v 754.745n 1.1v 754.755n 1.1v 759.745n 1.1v 759.755n 1.1v 764.745n 1.1v 764.755n 1.1v 769.745n 1.1v 769.755n 0.0v 774.745n 0.0v 774.755n 1.1v 779.745n 1.1v 779.755n 1.1v 784.745n 1.1v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.1v 799.745n 1.1v 799.755n 1.1v 804.745n 1.1v 804.755n 1.1v 809.745n 1.1v 809.755n 1.1v 814.745n 1.1v 814.755n 1.1v 819.745n 1.1v 819.755n 1.1v 824.745n 1.1v 824.755n 1.1v 829.745n 1.1v 829.755n 1.1v 834.745n 1.1v 834.755n 1.1v 839.745n 1.1v 839.755n 0.0v 844.745n 0.0v 844.755n 1.1v 849.745n 1.1v 849.755n 1.1v 854.745n 1.1v 854.755n 1.1v 859.745n 1.1v 859.755n 1.1v 864.745n 1.1v 864.755n 0.0v 869.745n 0.0v 869.755n 1.1v 874.745n 1.1v 874.755n 1.1v 879.745n 1.1v 879.755n 1.1v 884.745n 1.1v 884.755n 1.1v 889.745n 1.1v 889.755n 1.1v 894.745n 1.1v 894.755n 1.1v 899.745n 1.1v 899.755n 1.1v 904.745n 1.1v 904.755n 1.1v 909.745n 1.1v 909.755n 1.1v 914.745n 1.1v 914.755n 1.1v 919.745n 1.1v 919.755n 1.1v 924.745n 1.1v 924.755n 0.0v 929.745n 0.0v 929.755n 1.1v 934.745n 1.1v 934.755n 1.1v 939.745n 1.1v 939.755n 0.0v 944.745n 0.0v 944.755n 1.1v 949.745n 1.1v 949.755n 1.1v 954.745n 1.1v 954.755n 1.1v 959.745n 1.1v 959.755n 1.1v 964.745n 1.1v 964.755n 1.1v 969.745n 1.1v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.1v 984.745n 1.1v 984.755n 0.0v 989.745n 0.0v 989.755n 1.1v 994.745n 1.1v 994.755n 1.1v 999.745n 1.1v 999.755n 1.1v 1004.745n 1.1v 1004.755n 1.1v 1009.745n 1.1v 1009.755n 1.1v 1014.745n 1.1v 1014.755n 1.1v 1019.745n 1.1v 1019.755n 1.1v 1024.745n 1.1v 1024.755n 1.1v )
* PULSE: period=5
Vclk0 clk0 0 PULSE (0 1.1 4.995n 0.01n 0.01n 2.49n 5n)
* PULSE: period=5
Vclk1 clk1 0 PULSE (0 1.1 4.995n 0.01n 0.01n 2.49n 5n)

 * Generation of dout measurements
* CHECK dout1_0 Vdout1_0ck4 = 0 time = 25
.meas tran vdout1_0ck4 FIND v(dout1_0) AT=25.025n

* CHECK dout1_1 Vdout1_1ck4 = 0 time = 25
.meas tran vdout1_1ck4 FIND v(dout1_1) AT=25.025n

* CHECK dout1_2 Vdout1_2ck4 = 0 time = 25
.meas tran vdout1_2ck4 FIND v(dout1_2) AT=25.025n

* CHECK dout1_3 Vdout1_3ck4 = 1.1 time = 25
.meas tran vdout1_3ck4 FIND v(dout1_3) AT=25.025n

* CHECK dout1_4 Vdout1_4ck4 = 1.1 time = 25
.meas tran vdout1_4ck4 FIND v(dout1_4) AT=25.025n

* CHECK dout1_5 Vdout1_5ck4 = 0 time = 25
.meas tran vdout1_5ck4 FIND v(dout1_5) AT=25.025n

* CHECK dout1_6 Vdout1_6ck4 = 0 time = 25
.meas tran vdout1_6ck4 FIND v(dout1_6) AT=25.025n

* CHECK dout1_7 Vdout1_7ck4 = 0 time = 25
.meas tran vdout1_7ck4 FIND v(dout1_7) AT=25.025n

* CHECK dout1_8 Vdout1_8ck4 = 1.1 time = 25
.meas tran vdout1_8ck4 FIND v(dout1_8) AT=25.025n

* CHECK dout1_9 Vdout1_9ck4 = 0 time = 25
.meas tran vdout1_9ck4 FIND v(dout1_9) AT=25.025n

* CHECK dout1_10 Vdout1_10ck4 = 0 time = 25
.meas tran vdout1_10ck4 FIND v(dout1_10) AT=25.025n

* CHECK dout1_11 Vdout1_11ck4 = 0 time = 25
.meas tran vdout1_11ck4 FIND v(dout1_11) AT=25.025n

* CHECK dout1_12 Vdout1_12ck4 = 0 time = 25
.meas tran vdout1_12ck4 FIND v(dout1_12) AT=25.025n

* CHECK dout1_13 Vdout1_13ck4 = 1.1 time = 25
.meas tran vdout1_13ck4 FIND v(dout1_13) AT=25.025n

* CHECK dout1_14 Vdout1_14ck4 = 1.1 time = 25
.meas tran vdout1_14ck4 FIND v(dout1_14) AT=25.025n

* CHECK dout1_15 Vdout1_15ck4 = 1.1 time = 25
.meas tran vdout1_15ck4 FIND v(dout1_15) AT=25.025n

* CHECK dout1_16 Vdout1_16ck4 = 1.1 time = 25
.meas tran vdout1_16ck4 FIND v(dout1_16) AT=25.025n

* CHECK dout1_17 Vdout1_17ck4 = 1.1 time = 25
.meas tran vdout1_17ck4 FIND v(dout1_17) AT=25.025n

* CHECK dout1_18 Vdout1_18ck4 = 1.1 time = 25
.meas tran vdout1_18ck4 FIND v(dout1_18) AT=25.025n

* CHECK dout1_19 Vdout1_19ck4 = 1.1 time = 25
.meas tran vdout1_19ck4 FIND v(dout1_19) AT=25.025n

* CHECK dout1_20 Vdout1_20ck4 = 1.1 time = 25
.meas tran vdout1_20ck4 FIND v(dout1_20) AT=25.025n

* CHECK dout1_21 Vdout1_21ck4 = 0 time = 25
.meas tran vdout1_21ck4 FIND v(dout1_21) AT=25.025n

* CHECK dout1_22 Vdout1_22ck4 = 0 time = 25
.meas tran vdout1_22ck4 FIND v(dout1_22) AT=25.025n

* CHECK dout1_23 Vdout1_23ck4 = 0 time = 25
.meas tran vdout1_23ck4 FIND v(dout1_23) AT=25.025n

* CHECK dout1_24 Vdout1_24ck4 = 0 time = 25
.meas tran vdout1_24ck4 FIND v(dout1_24) AT=25.025n

* CHECK dout1_25 Vdout1_25ck4 = 1.1 time = 25
.meas tran vdout1_25ck4 FIND v(dout1_25) AT=25.025n

* CHECK dout1_26 Vdout1_26ck4 = 0 time = 25
.meas tran vdout1_26ck4 FIND v(dout1_26) AT=25.025n

* CHECK dout1_27 Vdout1_27ck4 = 1.1 time = 25
.meas tran vdout1_27ck4 FIND v(dout1_27) AT=25.025n

* CHECK dout1_28 Vdout1_28ck4 = 1.1 time = 25
.meas tran vdout1_28ck4 FIND v(dout1_28) AT=25.025n

* CHECK dout1_29 Vdout1_29ck4 = 0 time = 25
.meas tran vdout1_29ck4 FIND v(dout1_29) AT=25.025n

* CHECK dout1_30 Vdout1_30ck4 = 1.1 time = 25
.meas tran vdout1_30ck4 FIND v(dout1_30) AT=25.025n

* CHECK dout1_31 Vdout1_31ck4 = 1.1 time = 25
.meas tran vdout1_31ck4 FIND v(dout1_31) AT=25.025n

* CHECK dout1_0 Vdout1_0ck13 = 0 time = 70
.meas tran vdout1_0ck13 FIND v(dout1_0) AT=70.025n

* CHECK dout1_1 Vdout1_1ck13 = 1.1 time = 70
.meas tran vdout1_1ck13 FIND v(dout1_1) AT=70.025n

* CHECK dout1_2 Vdout1_2ck13 = 0 time = 70
.meas tran vdout1_2ck13 FIND v(dout1_2) AT=70.025n

* CHECK dout1_3 Vdout1_3ck13 = 0 time = 70
.meas tran vdout1_3ck13 FIND v(dout1_3) AT=70.025n

* CHECK dout1_4 Vdout1_4ck13 = 1.1 time = 70
.meas tran vdout1_4ck13 FIND v(dout1_4) AT=70.025n

* CHECK dout1_5 Vdout1_5ck13 = 1.1 time = 70
.meas tran vdout1_5ck13 FIND v(dout1_5) AT=70.025n

* CHECK dout1_6 Vdout1_6ck13 = 0 time = 70
.meas tran vdout1_6ck13 FIND v(dout1_6) AT=70.025n

* CHECK dout1_7 Vdout1_7ck13 = 1.1 time = 70
.meas tran vdout1_7ck13 FIND v(dout1_7) AT=70.025n

* CHECK dout1_8 Vdout1_8ck13 = 1.1 time = 70
.meas tran vdout1_8ck13 FIND v(dout1_8) AT=70.025n

* CHECK dout1_9 Vdout1_9ck13 = 0 time = 70
.meas tran vdout1_9ck13 FIND v(dout1_9) AT=70.025n

* CHECK dout1_10 Vdout1_10ck13 = 0 time = 70
.meas tran vdout1_10ck13 FIND v(dout1_10) AT=70.025n

* CHECK dout1_11 Vdout1_11ck13 = 0 time = 70
.meas tran vdout1_11ck13 FIND v(dout1_11) AT=70.025n

* CHECK dout1_12 Vdout1_12ck13 = 0 time = 70
.meas tran vdout1_12ck13 FIND v(dout1_12) AT=70.025n

* CHECK dout1_13 Vdout1_13ck13 = 0 time = 70
.meas tran vdout1_13ck13 FIND v(dout1_13) AT=70.025n

* CHECK dout1_14 Vdout1_14ck13 = 1.1 time = 70
.meas tran vdout1_14ck13 FIND v(dout1_14) AT=70.025n

* CHECK dout1_15 Vdout1_15ck13 = 0 time = 70
.meas tran vdout1_15ck13 FIND v(dout1_15) AT=70.025n

* CHECK dout1_16 Vdout1_16ck13 = 1.1 time = 70
.meas tran vdout1_16ck13 FIND v(dout1_16) AT=70.025n

* CHECK dout1_17 Vdout1_17ck13 = 0 time = 70
.meas tran vdout1_17ck13 FIND v(dout1_17) AT=70.025n

* CHECK dout1_18 Vdout1_18ck13 = 1.1 time = 70
.meas tran vdout1_18ck13 FIND v(dout1_18) AT=70.025n

* CHECK dout1_19 Vdout1_19ck13 = 0 time = 70
.meas tran vdout1_19ck13 FIND v(dout1_19) AT=70.025n

* CHECK dout1_20 Vdout1_20ck13 = 0 time = 70
.meas tran vdout1_20ck13 FIND v(dout1_20) AT=70.025n

* CHECK dout1_21 Vdout1_21ck13 = 1.1 time = 70
.meas tran vdout1_21ck13 FIND v(dout1_21) AT=70.025n

* CHECK dout1_22 Vdout1_22ck13 = 0 time = 70
.meas tran vdout1_22ck13 FIND v(dout1_22) AT=70.025n

* CHECK dout1_23 Vdout1_23ck13 = 0 time = 70
.meas tran vdout1_23ck13 FIND v(dout1_23) AT=70.025n

* CHECK dout1_24 Vdout1_24ck13 = 0 time = 70
.meas tran vdout1_24ck13 FIND v(dout1_24) AT=70.025n

* CHECK dout1_25 Vdout1_25ck13 = 1.1 time = 70
.meas tran vdout1_25ck13 FIND v(dout1_25) AT=70.025n

* CHECK dout1_26 Vdout1_26ck13 = 1.1 time = 70
.meas tran vdout1_26ck13 FIND v(dout1_26) AT=70.025n

* CHECK dout1_27 Vdout1_27ck13 = 1.1 time = 70
.meas tran vdout1_27ck13 FIND v(dout1_27) AT=70.025n

* CHECK dout1_28 Vdout1_28ck13 = 0 time = 70
.meas tran vdout1_28ck13 FIND v(dout1_28) AT=70.025n

* CHECK dout1_29 Vdout1_29ck13 = 0 time = 70
.meas tran vdout1_29ck13 FIND v(dout1_29) AT=70.025n

* CHECK dout1_30 Vdout1_30ck13 = 1.1 time = 70
.meas tran vdout1_30ck13 FIND v(dout1_30) AT=70.025n

* CHECK dout1_31 Vdout1_31ck13 = 1.1 time = 70
.meas tran vdout1_31ck13 FIND v(dout1_31) AT=70.025n

* CHECK dout1_0 Vdout1_0ck17 = 0 time = 90
.meas tran vdout1_0ck17 FIND v(dout1_0) AT=90.025n

* CHECK dout1_1 Vdout1_1ck17 = 1.1 time = 90
.meas tran vdout1_1ck17 FIND v(dout1_1) AT=90.025n

* CHECK dout1_2 Vdout1_2ck17 = 0 time = 90
.meas tran vdout1_2ck17 FIND v(dout1_2) AT=90.025n

* CHECK dout1_3 Vdout1_3ck17 = 0 time = 90
.meas tran vdout1_3ck17 FIND v(dout1_3) AT=90.025n

* CHECK dout1_4 Vdout1_4ck17 = 1.1 time = 90
.meas tran vdout1_4ck17 FIND v(dout1_4) AT=90.025n

* CHECK dout1_5 Vdout1_5ck17 = 1.1 time = 90
.meas tran vdout1_5ck17 FIND v(dout1_5) AT=90.025n

* CHECK dout1_6 Vdout1_6ck17 = 0 time = 90
.meas tran vdout1_6ck17 FIND v(dout1_6) AT=90.025n

* CHECK dout1_7 Vdout1_7ck17 = 1.1 time = 90
.meas tran vdout1_7ck17 FIND v(dout1_7) AT=90.025n

* CHECK dout1_8 Vdout1_8ck17 = 1.1 time = 90
.meas tran vdout1_8ck17 FIND v(dout1_8) AT=90.025n

* CHECK dout1_9 Vdout1_9ck17 = 0 time = 90
.meas tran vdout1_9ck17 FIND v(dout1_9) AT=90.025n

* CHECK dout1_10 Vdout1_10ck17 = 0 time = 90
.meas tran vdout1_10ck17 FIND v(dout1_10) AT=90.025n

* CHECK dout1_11 Vdout1_11ck17 = 0 time = 90
.meas tran vdout1_11ck17 FIND v(dout1_11) AT=90.025n

* CHECK dout1_12 Vdout1_12ck17 = 0 time = 90
.meas tran vdout1_12ck17 FIND v(dout1_12) AT=90.025n

* CHECK dout1_13 Vdout1_13ck17 = 0 time = 90
.meas tran vdout1_13ck17 FIND v(dout1_13) AT=90.025n

* CHECK dout1_14 Vdout1_14ck17 = 1.1 time = 90
.meas tran vdout1_14ck17 FIND v(dout1_14) AT=90.025n

* CHECK dout1_15 Vdout1_15ck17 = 0 time = 90
.meas tran vdout1_15ck17 FIND v(dout1_15) AT=90.025n

* CHECK dout1_16 Vdout1_16ck17 = 1.1 time = 90
.meas tran vdout1_16ck17 FIND v(dout1_16) AT=90.025n

* CHECK dout1_17 Vdout1_17ck17 = 0 time = 90
.meas tran vdout1_17ck17 FIND v(dout1_17) AT=90.025n

* CHECK dout1_18 Vdout1_18ck17 = 1.1 time = 90
.meas tran vdout1_18ck17 FIND v(dout1_18) AT=90.025n

* CHECK dout1_19 Vdout1_19ck17 = 0 time = 90
.meas tran vdout1_19ck17 FIND v(dout1_19) AT=90.025n

* CHECK dout1_20 Vdout1_20ck17 = 0 time = 90
.meas tran vdout1_20ck17 FIND v(dout1_20) AT=90.025n

* CHECK dout1_21 Vdout1_21ck17 = 1.1 time = 90
.meas tran vdout1_21ck17 FIND v(dout1_21) AT=90.025n

* CHECK dout1_22 Vdout1_22ck17 = 0 time = 90
.meas tran vdout1_22ck17 FIND v(dout1_22) AT=90.025n

* CHECK dout1_23 Vdout1_23ck17 = 0 time = 90
.meas tran vdout1_23ck17 FIND v(dout1_23) AT=90.025n

* CHECK dout1_24 Vdout1_24ck17 = 0 time = 90
.meas tran vdout1_24ck17 FIND v(dout1_24) AT=90.025n

* CHECK dout1_25 Vdout1_25ck17 = 1.1 time = 90
.meas tran vdout1_25ck17 FIND v(dout1_25) AT=90.025n

* CHECK dout1_26 Vdout1_26ck17 = 1.1 time = 90
.meas tran vdout1_26ck17 FIND v(dout1_26) AT=90.025n

* CHECK dout1_27 Vdout1_27ck17 = 1.1 time = 90
.meas tran vdout1_27ck17 FIND v(dout1_27) AT=90.025n

* CHECK dout1_28 Vdout1_28ck17 = 0 time = 90
.meas tran vdout1_28ck17 FIND v(dout1_28) AT=90.025n

* CHECK dout1_29 Vdout1_29ck17 = 0 time = 90
.meas tran vdout1_29ck17 FIND v(dout1_29) AT=90.025n

* CHECK dout1_30 Vdout1_30ck17 = 1.1 time = 90
.meas tran vdout1_30ck17 FIND v(dout1_30) AT=90.025n

* CHECK dout1_31 Vdout1_31ck17 = 1.1 time = 90
.meas tran vdout1_31ck17 FIND v(dout1_31) AT=90.025n

* CHECK dout1_0 Vdout1_0ck18 = 0 time = 95
.meas tran vdout1_0ck18 FIND v(dout1_0) AT=95.025n

* CHECK dout1_1 Vdout1_1ck18 = 1.1 time = 95
.meas tran vdout1_1ck18 FIND v(dout1_1) AT=95.025n

* CHECK dout1_2 Vdout1_2ck18 = 0 time = 95
.meas tran vdout1_2ck18 FIND v(dout1_2) AT=95.025n

* CHECK dout1_3 Vdout1_3ck18 = 0 time = 95
.meas tran vdout1_3ck18 FIND v(dout1_3) AT=95.025n

* CHECK dout1_4 Vdout1_4ck18 = 1.1 time = 95
.meas tran vdout1_4ck18 FIND v(dout1_4) AT=95.025n

* CHECK dout1_5 Vdout1_5ck18 = 1.1 time = 95
.meas tran vdout1_5ck18 FIND v(dout1_5) AT=95.025n

* CHECK dout1_6 Vdout1_6ck18 = 0 time = 95
.meas tran vdout1_6ck18 FIND v(dout1_6) AT=95.025n

* CHECK dout1_7 Vdout1_7ck18 = 1.1 time = 95
.meas tran vdout1_7ck18 FIND v(dout1_7) AT=95.025n

* CHECK dout1_8 Vdout1_8ck18 = 1.1 time = 95
.meas tran vdout1_8ck18 FIND v(dout1_8) AT=95.025n

* CHECK dout1_9 Vdout1_9ck18 = 0 time = 95
.meas tran vdout1_9ck18 FIND v(dout1_9) AT=95.025n

* CHECK dout1_10 Vdout1_10ck18 = 0 time = 95
.meas tran vdout1_10ck18 FIND v(dout1_10) AT=95.025n

* CHECK dout1_11 Vdout1_11ck18 = 0 time = 95
.meas tran vdout1_11ck18 FIND v(dout1_11) AT=95.025n

* CHECK dout1_12 Vdout1_12ck18 = 0 time = 95
.meas tran vdout1_12ck18 FIND v(dout1_12) AT=95.025n

* CHECK dout1_13 Vdout1_13ck18 = 0 time = 95
.meas tran vdout1_13ck18 FIND v(dout1_13) AT=95.025n

* CHECK dout1_14 Vdout1_14ck18 = 1.1 time = 95
.meas tran vdout1_14ck18 FIND v(dout1_14) AT=95.025n

* CHECK dout1_15 Vdout1_15ck18 = 0 time = 95
.meas tran vdout1_15ck18 FIND v(dout1_15) AT=95.025n

* CHECK dout1_16 Vdout1_16ck18 = 1.1 time = 95
.meas tran vdout1_16ck18 FIND v(dout1_16) AT=95.025n

* CHECK dout1_17 Vdout1_17ck18 = 0 time = 95
.meas tran vdout1_17ck18 FIND v(dout1_17) AT=95.025n

* CHECK dout1_18 Vdout1_18ck18 = 1.1 time = 95
.meas tran vdout1_18ck18 FIND v(dout1_18) AT=95.025n

* CHECK dout1_19 Vdout1_19ck18 = 0 time = 95
.meas tran vdout1_19ck18 FIND v(dout1_19) AT=95.025n

* CHECK dout1_20 Vdout1_20ck18 = 0 time = 95
.meas tran vdout1_20ck18 FIND v(dout1_20) AT=95.025n

* CHECK dout1_21 Vdout1_21ck18 = 1.1 time = 95
.meas tran vdout1_21ck18 FIND v(dout1_21) AT=95.025n

* CHECK dout1_22 Vdout1_22ck18 = 0 time = 95
.meas tran vdout1_22ck18 FIND v(dout1_22) AT=95.025n

* CHECK dout1_23 Vdout1_23ck18 = 0 time = 95
.meas tran vdout1_23ck18 FIND v(dout1_23) AT=95.025n

* CHECK dout1_24 Vdout1_24ck18 = 0 time = 95
.meas tran vdout1_24ck18 FIND v(dout1_24) AT=95.025n

* CHECK dout1_25 Vdout1_25ck18 = 1.1 time = 95
.meas tran vdout1_25ck18 FIND v(dout1_25) AT=95.025n

* CHECK dout1_26 Vdout1_26ck18 = 1.1 time = 95
.meas tran vdout1_26ck18 FIND v(dout1_26) AT=95.025n

* CHECK dout1_27 Vdout1_27ck18 = 1.1 time = 95
.meas tran vdout1_27ck18 FIND v(dout1_27) AT=95.025n

* CHECK dout1_28 Vdout1_28ck18 = 0 time = 95
.meas tran vdout1_28ck18 FIND v(dout1_28) AT=95.025n

* CHECK dout1_29 Vdout1_29ck18 = 0 time = 95
.meas tran vdout1_29ck18 FIND v(dout1_29) AT=95.025n

* CHECK dout1_30 Vdout1_30ck18 = 1.1 time = 95
.meas tran vdout1_30ck18 FIND v(dout1_30) AT=95.025n

* CHECK dout1_31 Vdout1_31ck18 = 1.1 time = 95
.meas tran vdout1_31ck18 FIND v(dout1_31) AT=95.025n

* CHECK dout1_0 Vdout1_0ck20 = 0 time = 105
.meas tran vdout1_0ck20 FIND v(dout1_0) AT=105.025n

* CHECK dout1_1 Vdout1_1ck20 = 1.1 time = 105
.meas tran vdout1_1ck20 FIND v(dout1_1) AT=105.025n

* CHECK dout1_2 Vdout1_2ck20 = 0 time = 105
.meas tran vdout1_2ck20 FIND v(dout1_2) AT=105.025n

* CHECK dout1_3 Vdout1_3ck20 = 0 time = 105
.meas tran vdout1_3ck20 FIND v(dout1_3) AT=105.025n

* CHECK dout1_4 Vdout1_4ck20 = 1.1 time = 105
.meas tran vdout1_4ck20 FIND v(dout1_4) AT=105.025n

* CHECK dout1_5 Vdout1_5ck20 = 1.1 time = 105
.meas tran vdout1_5ck20 FIND v(dout1_5) AT=105.025n

* CHECK dout1_6 Vdout1_6ck20 = 0 time = 105
.meas tran vdout1_6ck20 FIND v(dout1_6) AT=105.025n

* CHECK dout1_7 Vdout1_7ck20 = 1.1 time = 105
.meas tran vdout1_7ck20 FIND v(dout1_7) AT=105.025n

* CHECK dout1_8 Vdout1_8ck20 = 1.1 time = 105
.meas tran vdout1_8ck20 FIND v(dout1_8) AT=105.025n

* CHECK dout1_9 Vdout1_9ck20 = 0 time = 105
.meas tran vdout1_9ck20 FIND v(dout1_9) AT=105.025n

* CHECK dout1_10 Vdout1_10ck20 = 0 time = 105
.meas tran vdout1_10ck20 FIND v(dout1_10) AT=105.025n

* CHECK dout1_11 Vdout1_11ck20 = 0 time = 105
.meas tran vdout1_11ck20 FIND v(dout1_11) AT=105.025n

* CHECK dout1_12 Vdout1_12ck20 = 0 time = 105
.meas tran vdout1_12ck20 FIND v(dout1_12) AT=105.025n

* CHECK dout1_13 Vdout1_13ck20 = 0 time = 105
.meas tran vdout1_13ck20 FIND v(dout1_13) AT=105.025n

* CHECK dout1_14 Vdout1_14ck20 = 1.1 time = 105
.meas tran vdout1_14ck20 FIND v(dout1_14) AT=105.025n

* CHECK dout1_15 Vdout1_15ck20 = 0 time = 105
.meas tran vdout1_15ck20 FIND v(dout1_15) AT=105.025n

* CHECK dout1_16 Vdout1_16ck20 = 1.1 time = 105
.meas tran vdout1_16ck20 FIND v(dout1_16) AT=105.025n

* CHECK dout1_17 Vdout1_17ck20 = 0 time = 105
.meas tran vdout1_17ck20 FIND v(dout1_17) AT=105.025n

* CHECK dout1_18 Vdout1_18ck20 = 1.1 time = 105
.meas tran vdout1_18ck20 FIND v(dout1_18) AT=105.025n

* CHECK dout1_19 Vdout1_19ck20 = 0 time = 105
.meas tran vdout1_19ck20 FIND v(dout1_19) AT=105.025n

* CHECK dout1_20 Vdout1_20ck20 = 0 time = 105
.meas tran vdout1_20ck20 FIND v(dout1_20) AT=105.025n

* CHECK dout1_21 Vdout1_21ck20 = 1.1 time = 105
.meas tran vdout1_21ck20 FIND v(dout1_21) AT=105.025n

* CHECK dout1_22 Vdout1_22ck20 = 0 time = 105
.meas tran vdout1_22ck20 FIND v(dout1_22) AT=105.025n

* CHECK dout1_23 Vdout1_23ck20 = 0 time = 105
.meas tran vdout1_23ck20 FIND v(dout1_23) AT=105.025n

* CHECK dout1_24 Vdout1_24ck20 = 0 time = 105
.meas tran vdout1_24ck20 FIND v(dout1_24) AT=105.025n

* CHECK dout1_25 Vdout1_25ck20 = 1.1 time = 105
.meas tran vdout1_25ck20 FIND v(dout1_25) AT=105.025n

* CHECK dout1_26 Vdout1_26ck20 = 1.1 time = 105
.meas tran vdout1_26ck20 FIND v(dout1_26) AT=105.025n

* CHECK dout1_27 Vdout1_27ck20 = 1.1 time = 105
.meas tran vdout1_27ck20 FIND v(dout1_27) AT=105.025n

* CHECK dout1_28 Vdout1_28ck20 = 0 time = 105
.meas tran vdout1_28ck20 FIND v(dout1_28) AT=105.025n

* CHECK dout1_29 Vdout1_29ck20 = 0 time = 105
.meas tran vdout1_29ck20 FIND v(dout1_29) AT=105.025n

* CHECK dout1_30 Vdout1_30ck20 = 1.1 time = 105
.meas tran vdout1_30ck20 FIND v(dout1_30) AT=105.025n

* CHECK dout1_31 Vdout1_31ck20 = 1.1 time = 105
.meas tran vdout1_31ck20 FIND v(dout1_31) AT=105.025n

* CHECK dout1_0 Vdout1_0ck21 = 0 time = 110
.meas tran vdout1_0ck21 FIND v(dout1_0) AT=110.025n

* CHECK dout1_1 Vdout1_1ck21 = 1.1 time = 110
.meas tran vdout1_1ck21 FIND v(dout1_1) AT=110.025n

* CHECK dout1_2 Vdout1_2ck21 = 1.1 time = 110
.meas tran vdout1_2ck21 FIND v(dout1_2) AT=110.025n

* CHECK dout1_3 Vdout1_3ck21 = 0 time = 110
.meas tran vdout1_3ck21 FIND v(dout1_3) AT=110.025n

* CHECK dout1_4 Vdout1_4ck21 = 0 time = 110
.meas tran vdout1_4ck21 FIND v(dout1_4) AT=110.025n

* CHECK dout1_5 Vdout1_5ck21 = 0 time = 110
.meas tran vdout1_5ck21 FIND v(dout1_5) AT=110.025n

* CHECK dout1_6 Vdout1_6ck21 = 0 time = 110
.meas tran vdout1_6ck21 FIND v(dout1_6) AT=110.025n

* CHECK dout1_7 Vdout1_7ck21 = 1.1 time = 110
.meas tran vdout1_7ck21 FIND v(dout1_7) AT=110.025n

* CHECK dout1_8 Vdout1_8ck21 = 0 time = 110
.meas tran vdout1_8ck21 FIND v(dout1_8) AT=110.025n

* CHECK dout1_9 Vdout1_9ck21 = 1.1 time = 110
.meas tran vdout1_9ck21 FIND v(dout1_9) AT=110.025n

* CHECK dout1_10 Vdout1_10ck21 = 1.1 time = 110
.meas tran vdout1_10ck21 FIND v(dout1_10) AT=110.025n

* CHECK dout1_11 Vdout1_11ck21 = 0 time = 110
.meas tran vdout1_11ck21 FIND v(dout1_11) AT=110.025n

* CHECK dout1_12 Vdout1_12ck21 = 1.1 time = 110
.meas tran vdout1_12ck21 FIND v(dout1_12) AT=110.025n

* CHECK dout1_13 Vdout1_13ck21 = 0 time = 110
.meas tran vdout1_13ck21 FIND v(dout1_13) AT=110.025n

* CHECK dout1_14 Vdout1_14ck21 = 0 time = 110
.meas tran vdout1_14ck21 FIND v(dout1_14) AT=110.025n

* CHECK dout1_15 Vdout1_15ck21 = 1.1 time = 110
.meas tran vdout1_15ck21 FIND v(dout1_15) AT=110.025n

* CHECK dout1_16 Vdout1_16ck21 = 0 time = 110
.meas tran vdout1_16ck21 FIND v(dout1_16) AT=110.025n

* CHECK dout1_17 Vdout1_17ck21 = 0 time = 110
.meas tran vdout1_17ck21 FIND v(dout1_17) AT=110.025n

* CHECK dout1_18 Vdout1_18ck21 = 0 time = 110
.meas tran vdout1_18ck21 FIND v(dout1_18) AT=110.025n

* CHECK dout1_19 Vdout1_19ck21 = 1.1 time = 110
.meas tran vdout1_19ck21 FIND v(dout1_19) AT=110.025n

* CHECK dout1_20 Vdout1_20ck21 = 1.1 time = 110
.meas tran vdout1_20ck21 FIND v(dout1_20) AT=110.025n

* CHECK dout1_21 Vdout1_21ck21 = 0 time = 110
.meas tran vdout1_21ck21 FIND v(dout1_21) AT=110.025n

* CHECK dout1_22 Vdout1_22ck21 = 0 time = 110
.meas tran vdout1_22ck21 FIND v(dout1_22) AT=110.025n

* CHECK dout1_23 Vdout1_23ck21 = 1.1 time = 110
.meas tran vdout1_23ck21 FIND v(dout1_23) AT=110.025n

* CHECK dout1_24 Vdout1_24ck21 = 1.1 time = 110
.meas tran vdout1_24ck21 FIND v(dout1_24) AT=110.025n

* CHECK dout1_25 Vdout1_25ck21 = 0 time = 110
.meas tran vdout1_25ck21 FIND v(dout1_25) AT=110.025n

* CHECK dout1_26 Vdout1_26ck21 = 0 time = 110
.meas tran vdout1_26ck21 FIND v(dout1_26) AT=110.025n

* CHECK dout1_27 Vdout1_27ck21 = 1.1 time = 110
.meas tran vdout1_27ck21 FIND v(dout1_27) AT=110.025n

* CHECK dout1_28 Vdout1_28ck21 = 1.1 time = 110
.meas tran vdout1_28ck21 FIND v(dout1_28) AT=110.025n

* CHECK dout1_29 Vdout1_29ck21 = 1.1 time = 110
.meas tran vdout1_29ck21 FIND v(dout1_29) AT=110.025n

* CHECK dout1_30 Vdout1_30ck21 = 1.1 time = 110
.meas tran vdout1_30ck21 FIND v(dout1_30) AT=110.025n

* CHECK dout1_31 Vdout1_31ck21 = 1.1 time = 110
.meas tran vdout1_31ck21 FIND v(dout1_31) AT=110.025n

* CHECK dout1_0 Vdout1_0ck23 = 0 time = 120
.meas tran vdout1_0ck23 FIND v(dout1_0) AT=120.025n

* CHECK dout1_1 Vdout1_1ck23 = 1.1 time = 120
.meas tran vdout1_1ck23 FIND v(dout1_1) AT=120.025n

* CHECK dout1_2 Vdout1_2ck23 = 1.1 time = 120
.meas tran vdout1_2ck23 FIND v(dout1_2) AT=120.025n

* CHECK dout1_3 Vdout1_3ck23 = 0 time = 120
.meas tran vdout1_3ck23 FIND v(dout1_3) AT=120.025n

* CHECK dout1_4 Vdout1_4ck23 = 0 time = 120
.meas tran vdout1_4ck23 FIND v(dout1_4) AT=120.025n

* CHECK dout1_5 Vdout1_5ck23 = 0 time = 120
.meas tran vdout1_5ck23 FIND v(dout1_5) AT=120.025n

* CHECK dout1_6 Vdout1_6ck23 = 0 time = 120
.meas tran vdout1_6ck23 FIND v(dout1_6) AT=120.025n

* CHECK dout1_7 Vdout1_7ck23 = 1.1 time = 120
.meas tran vdout1_7ck23 FIND v(dout1_7) AT=120.025n

* CHECK dout1_8 Vdout1_8ck23 = 0 time = 120
.meas tran vdout1_8ck23 FIND v(dout1_8) AT=120.025n

* CHECK dout1_9 Vdout1_9ck23 = 1.1 time = 120
.meas tran vdout1_9ck23 FIND v(dout1_9) AT=120.025n

* CHECK dout1_10 Vdout1_10ck23 = 1.1 time = 120
.meas tran vdout1_10ck23 FIND v(dout1_10) AT=120.025n

* CHECK dout1_11 Vdout1_11ck23 = 0 time = 120
.meas tran vdout1_11ck23 FIND v(dout1_11) AT=120.025n

* CHECK dout1_12 Vdout1_12ck23 = 1.1 time = 120
.meas tran vdout1_12ck23 FIND v(dout1_12) AT=120.025n

* CHECK dout1_13 Vdout1_13ck23 = 0 time = 120
.meas tran vdout1_13ck23 FIND v(dout1_13) AT=120.025n

* CHECK dout1_14 Vdout1_14ck23 = 0 time = 120
.meas tran vdout1_14ck23 FIND v(dout1_14) AT=120.025n

* CHECK dout1_15 Vdout1_15ck23 = 1.1 time = 120
.meas tran vdout1_15ck23 FIND v(dout1_15) AT=120.025n

* CHECK dout1_16 Vdout1_16ck23 = 0 time = 120
.meas tran vdout1_16ck23 FIND v(dout1_16) AT=120.025n

* CHECK dout1_17 Vdout1_17ck23 = 0 time = 120
.meas tran vdout1_17ck23 FIND v(dout1_17) AT=120.025n

* CHECK dout1_18 Vdout1_18ck23 = 0 time = 120
.meas tran vdout1_18ck23 FIND v(dout1_18) AT=120.025n

* CHECK dout1_19 Vdout1_19ck23 = 1.1 time = 120
.meas tran vdout1_19ck23 FIND v(dout1_19) AT=120.025n

* CHECK dout1_20 Vdout1_20ck23 = 1.1 time = 120
.meas tran vdout1_20ck23 FIND v(dout1_20) AT=120.025n

* CHECK dout1_21 Vdout1_21ck23 = 0 time = 120
.meas tran vdout1_21ck23 FIND v(dout1_21) AT=120.025n

* CHECK dout1_22 Vdout1_22ck23 = 0 time = 120
.meas tran vdout1_22ck23 FIND v(dout1_22) AT=120.025n

* CHECK dout1_23 Vdout1_23ck23 = 1.1 time = 120
.meas tran vdout1_23ck23 FIND v(dout1_23) AT=120.025n

* CHECK dout1_24 Vdout1_24ck23 = 1.1 time = 120
.meas tran vdout1_24ck23 FIND v(dout1_24) AT=120.025n

* CHECK dout1_25 Vdout1_25ck23 = 0 time = 120
.meas tran vdout1_25ck23 FIND v(dout1_25) AT=120.025n

* CHECK dout1_26 Vdout1_26ck23 = 0 time = 120
.meas tran vdout1_26ck23 FIND v(dout1_26) AT=120.025n

* CHECK dout1_27 Vdout1_27ck23 = 1.1 time = 120
.meas tran vdout1_27ck23 FIND v(dout1_27) AT=120.025n

* CHECK dout1_28 Vdout1_28ck23 = 1.1 time = 120
.meas tran vdout1_28ck23 FIND v(dout1_28) AT=120.025n

* CHECK dout1_29 Vdout1_29ck23 = 1.1 time = 120
.meas tran vdout1_29ck23 FIND v(dout1_29) AT=120.025n

* CHECK dout1_30 Vdout1_30ck23 = 1.1 time = 120
.meas tran vdout1_30ck23 FIND v(dout1_30) AT=120.025n

* CHECK dout1_31 Vdout1_31ck23 = 1.1 time = 120
.meas tran vdout1_31ck23 FIND v(dout1_31) AT=120.025n

* CHECK dout1_0 Vdout1_0ck26 = 0 time = 135
.meas tran vdout1_0ck26 FIND v(dout1_0) AT=135.025n

* CHECK dout1_1 Vdout1_1ck26 = 1.1 time = 135
.meas tran vdout1_1ck26 FIND v(dout1_1) AT=135.025n

* CHECK dout1_2 Vdout1_2ck26 = 1.1 time = 135
.meas tran vdout1_2ck26 FIND v(dout1_2) AT=135.025n

* CHECK dout1_3 Vdout1_3ck26 = 0 time = 135
.meas tran vdout1_3ck26 FIND v(dout1_3) AT=135.025n

* CHECK dout1_4 Vdout1_4ck26 = 0 time = 135
.meas tran vdout1_4ck26 FIND v(dout1_4) AT=135.025n

* CHECK dout1_5 Vdout1_5ck26 = 0 time = 135
.meas tran vdout1_5ck26 FIND v(dout1_5) AT=135.025n

* CHECK dout1_6 Vdout1_6ck26 = 0 time = 135
.meas tran vdout1_6ck26 FIND v(dout1_6) AT=135.025n

* CHECK dout1_7 Vdout1_7ck26 = 1.1 time = 135
.meas tran vdout1_7ck26 FIND v(dout1_7) AT=135.025n

* CHECK dout1_8 Vdout1_8ck26 = 0 time = 135
.meas tran vdout1_8ck26 FIND v(dout1_8) AT=135.025n

* CHECK dout1_9 Vdout1_9ck26 = 1.1 time = 135
.meas tran vdout1_9ck26 FIND v(dout1_9) AT=135.025n

* CHECK dout1_10 Vdout1_10ck26 = 1.1 time = 135
.meas tran vdout1_10ck26 FIND v(dout1_10) AT=135.025n

* CHECK dout1_11 Vdout1_11ck26 = 0 time = 135
.meas tran vdout1_11ck26 FIND v(dout1_11) AT=135.025n

* CHECK dout1_12 Vdout1_12ck26 = 1.1 time = 135
.meas tran vdout1_12ck26 FIND v(dout1_12) AT=135.025n

* CHECK dout1_13 Vdout1_13ck26 = 0 time = 135
.meas tran vdout1_13ck26 FIND v(dout1_13) AT=135.025n

* CHECK dout1_14 Vdout1_14ck26 = 0 time = 135
.meas tran vdout1_14ck26 FIND v(dout1_14) AT=135.025n

* CHECK dout1_15 Vdout1_15ck26 = 1.1 time = 135
.meas tran vdout1_15ck26 FIND v(dout1_15) AT=135.025n

* CHECK dout1_16 Vdout1_16ck26 = 0 time = 135
.meas tran vdout1_16ck26 FIND v(dout1_16) AT=135.025n

* CHECK dout1_17 Vdout1_17ck26 = 0 time = 135
.meas tran vdout1_17ck26 FIND v(dout1_17) AT=135.025n

* CHECK dout1_18 Vdout1_18ck26 = 0 time = 135
.meas tran vdout1_18ck26 FIND v(dout1_18) AT=135.025n

* CHECK dout1_19 Vdout1_19ck26 = 1.1 time = 135
.meas tran vdout1_19ck26 FIND v(dout1_19) AT=135.025n

* CHECK dout1_20 Vdout1_20ck26 = 1.1 time = 135
.meas tran vdout1_20ck26 FIND v(dout1_20) AT=135.025n

* CHECK dout1_21 Vdout1_21ck26 = 0 time = 135
.meas tran vdout1_21ck26 FIND v(dout1_21) AT=135.025n

* CHECK dout1_22 Vdout1_22ck26 = 0 time = 135
.meas tran vdout1_22ck26 FIND v(dout1_22) AT=135.025n

* CHECK dout1_23 Vdout1_23ck26 = 1.1 time = 135
.meas tran vdout1_23ck26 FIND v(dout1_23) AT=135.025n

* CHECK dout1_24 Vdout1_24ck26 = 1.1 time = 135
.meas tran vdout1_24ck26 FIND v(dout1_24) AT=135.025n

* CHECK dout1_25 Vdout1_25ck26 = 0 time = 135
.meas tran vdout1_25ck26 FIND v(dout1_25) AT=135.025n

* CHECK dout1_26 Vdout1_26ck26 = 0 time = 135
.meas tran vdout1_26ck26 FIND v(dout1_26) AT=135.025n

* CHECK dout1_27 Vdout1_27ck26 = 1.1 time = 135
.meas tran vdout1_27ck26 FIND v(dout1_27) AT=135.025n

* CHECK dout1_28 Vdout1_28ck26 = 1.1 time = 135
.meas tran vdout1_28ck26 FIND v(dout1_28) AT=135.025n

* CHECK dout1_29 Vdout1_29ck26 = 1.1 time = 135
.meas tran vdout1_29ck26 FIND v(dout1_29) AT=135.025n

* CHECK dout1_30 Vdout1_30ck26 = 1.1 time = 135
.meas tran vdout1_30ck26 FIND v(dout1_30) AT=135.025n

* CHECK dout1_31 Vdout1_31ck26 = 1.1 time = 135
.meas tran vdout1_31ck26 FIND v(dout1_31) AT=135.025n

* CHECK dout1_0 Vdout1_0ck28 = 0 time = 145
.meas tran vdout1_0ck28 FIND v(dout1_0) AT=145.025n

* CHECK dout1_1 Vdout1_1ck28 = 0 time = 145
.meas tran vdout1_1ck28 FIND v(dout1_1) AT=145.025n

* CHECK dout1_2 Vdout1_2ck28 = 1.1 time = 145
.meas tran vdout1_2ck28 FIND v(dout1_2) AT=145.025n

* CHECK dout1_3 Vdout1_3ck28 = 1.1 time = 145
.meas tran vdout1_3ck28 FIND v(dout1_3) AT=145.025n

* CHECK dout1_4 Vdout1_4ck28 = 0 time = 145
.meas tran vdout1_4ck28 FIND v(dout1_4) AT=145.025n

* CHECK dout1_5 Vdout1_5ck28 = 0 time = 145
.meas tran vdout1_5ck28 FIND v(dout1_5) AT=145.025n

* CHECK dout1_6 Vdout1_6ck28 = 0 time = 145
.meas tran vdout1_6ck28 FIND v(dout1_6) AT=145.025n

* CHECK dout1_7 Vdout1_7ck28 = 1.1 time = 145
.meas tran vdout1_7ck28 FIND v(dout1_7) AT=145.025n

* CHECK dout1_8 Vdout1_8ck28 = 0 time = 145
.meas tran vdout1_8ck28 FIND v(dout1_8) AT=145.025n

* CHECK dout1_9 Vdout1_9ck28 = 0 time = 145
.meas tran vdout1_9ck28 FIND v(dout1_9) AT=145.025n

* CHECK dout1_10 Vdout1_10ck28 = 1.1 time = 145
.meas tran vdout1_10ck28 FIND v(dout1_10) AT=145.025n

* CHECK dout1_11 Vdout1_11ck28 = 1.1 time = 145
.meas tran vdout1_11ck28 FIND v(dout1_11) AT=145.025n

* CHECK dout1_12 Vdout1_12ck28 = 1.1 time = 145
.meas tran vdout1_12ck28 FIND v(dout1_12) AT=145.025n

* CHECK dout1_13 Vdout1_13ck28 = 1.1 time = 145
.meas tran vdout1_13ck28 FIND v(dout1_13) AT=145.025n

* CHECK dout1_14 Vdout1_14ck28 = 1.1 time = 145
.meas tran vdout1_14ck28 FIND v(dout1_14) AT=145.025n

* CHECK dout1_15 Vdout1_15ck28 = 0 time = 145
.meas tran vdout1_15ck28 FIND v(dout1_15) AT=145.025n

* CHECK dout1_16 Vdout1_16ck28 = 1.1 time = 145
.meas tran vdout1_16ck28 FIND v(dout1_16) AT=145.025n

* CHECK dout1_17 Vdout1_17ck28 = 0 time = 145
.meas tran vdout1_17ck28 FIND v(dout1_17) AT=145.025n

* CHECK dout1_18 Vdout1_18ck28 = 0 time = 145
.meas tran vdout1_18ck28 FIND v(dout1_18) AT=145.025n

* CHECK dout1_19 Vdout1_19ck28 = 1.1 time = 145
.meas tran vdout1_19ck28 FIND v(dout1_19) AT=145.025n

* CHECK dout1_20 Vdout1_20ck28 = 1.1 time = 145
.meas tran vdout1_20ck28 FIND v(dout1_20) AT=145.025n

* CHECK dout1_21 Vdout1_21ck28 = 1.1 time = 145
.meas tran vdout1_21ck28 FIND v(dout1_21) AT=145.025n

* CHECK dout1_22 Vdout1_22ck28 = 0 time = 145
.meas tran vdout1_22ck28 FIND v(dout1_22) AT=145.025n

* CHECK dout1_23 Vdout1_23ck28 = 1.1 time = 145
.meas tran vdout1_23ck28 FIND v(dout1_23) AT=145.025n

* CHECK dout1_24 Vdout1_24ck28 = 1.1 time = 145
.meas tran vdout1_24ck28 FIND v(dout1_24) AT=145.025n

* CHECK dout1_25 Vdout1_25ck28 = 1.1 time = 145
.meas tran vdout1_25ck28 FIND v(dout1_25) AT=145.025n

* CHECK dout1_26 Vdout1_26ck28 = 1.1 time = 145
.meas tran vdout1_26ck28 FIND v(dout1_26) AT=145.025n

* CHECK dout1_27 Vdout1_27ck28 = 0 time = 145
.meas tran vdout1_27ck28 FIND v(dout1_27) AT=145.025n

* CHECK dout1_28 Vdout1_28ck28 = 0 time = 145
.meas tran vdout1_28ck28 FIND v(dout1_28) AT=145.025n

* CHECK dout1_29 Vdout1_29ck28 = 0 time = 145
.meas tran vdout1_29ck28 FIND v(dout1_29) AT=145.025n

* CHECK dout1_30 Vdout1_30ck28 = 0 time = 145
.meas tran vdout1_30ck28 FIND v(dout1_30) AT=145.025n

* CHECK dout1_31 Vdout1_31ck28 = 1.1 time = 145
.meas tran vdout1_31ck28 FIND v(dout1_31) AT=145.025n

* CHECK dout1_0 Vdout1_0ck30 = 0 time = 155
.meas tran vdout1_0ck30 FIND v(dout1_0) AT=155.025n

* CHECK dout1_1 Vdout1_1ck30 = 1.1 time = 155
.meas tran vdout1_1ck30 FIND v(dout1_1) AT=155.025n

* CHECK dout1_2 Vdout1_2ck30 = 1.1 time = 155
.meas tran vdout1_2ck30 FIND v(dout1_2) AT=155.025n

* CHECK dout1_3 Vdout1_3ck30 = 0 time = 155
.meas tran vdout1_3ck30 FIND v(dout1_3) AT=155.025n

* CHECK dout1_4 Vdout1_4ck30 = 0 time = 155
.meas tran vdout1_4ck30 FIND v(dout1_4) AT=155.025n

* CHECK dout1_5 Vdout1_5ck30 = 0 time = 155
.meas tran vdout1_5ck30 FIND v(dout1_5) AT=155.025n

* CHECK dout1_6 Vdout1_6ck30 = 0 time = 155
.meas tran vdout1_6ck30 FIND v(dout1_6) AT=155.025n

* CHECK dout1_7 Vdout1_7ck30 = 1.1 time = 155
.meas tran vdout1_7ck30 FIND v(dout1_7) AT=155.025n

* CHECK dout1_8 Vdout1_8ck30 = 1.1 time = 155
.meas tran vdout1_8ck30 FIND v(dout1_8) AT=155.025n

* CHECK dout1_9 Vdout1_9ck30 = 0 time = 155
.meas tran vdout1_9ck30 FIND v(dout1_9) AT=155.025n

* CHECK dout1_10 Vdout1_10ck30 = 1.1 time = 155
.meas tran vdout1_10ck30 FIND v(dout1_10) AT=155.025n

* CHECK dout1_11 Vdout1_11ck30 = 0 time = 155
.meas tran vdout1_11ck30 FIND v(dout1_11) AT=155.025n

* CHECK dout1_12 Vdout1_12ck30 = 1.1 time = 155
.meas tran vdout1_12ck30 FIND v(dout1_12) AT=155.025n

* CHECK dout1_13 Vdout1_13ck30 = 1.1 time = 155
.meas tran vdout1_13ck30 FIND v(dout1_13) AT=155.025n

* CHECK dout1_14 Vdout1_14ck30 = 0 time = 155
.meas tran vdout1_14ck30 FIND v(dout1_14) AT=155.025n

* CHECK dout1_15 Vdout1_15ck30 = 1.1 time = 155
.meas tran vdout1_15ck30 FIND v(dout1_15) AT=155.025n

* CHECK dout1_16 Vdout1_16ck30 = 0 time = 155
.meas tran vdout1_16ck30 FIND v(dout1_16) AT=155.025n

* CHECK dout1_17 Vdout1_17ck30 = 0 time = 155
.meas tran vdout1_17ck30 FIND v(dout1_17) AT=155.025n

* CHECK dout1_18 Vdout1_18ck30 = 0 time = 155
.meas tran vdout1_18ck30 FIND v(dout1_18) AT=155.025n

* CHECK dout1_19 Vdout1_19ck30 = 1.1 time = 155
.meas tran vdout1_19ck30 FIND v(dout1_19) AT=155.025n

* CHECK dout1_20 Vdout1_20ck30 = 1.1 time = 155
.meas tran vdout1_20ck30 FIND v(dout1_20) AT=155.025n

* CHECK dout1_21 Vdout1_21ck30 = 0 time = 155
.meas tran vdout1_21ck30 FIND v(dout1_21) AT=155.025n

* CHECK dout1_22 Vdout1_22ck30 = 0 time = 155
.meas tran vdout1_22ck30 FIND v(dout1_22) AT=155.025n

* CHECK dout1_23 Vdout1_23ck30 = 1.1 time = 155
.meas tran vdout1_23ck30 FIND v(dout1_23) AT=155.025n

* CHECK dout1_24 Vdout1_24ck30 = 0 time = 155
.meas tran vdout1_24ck30 FIND v(dout1_24) AT=155.025n

* CHECK dout1_25 Vdout1_25ck30 = 1.1 time = 155
.meas tran vdout1_25ck30 FIND v(dout1_25) AT=155.025n

* CHECK dout1_26 Vdout1_26ck30 = 0 time = 155
.meas tran vdout1_26ck30 FIND v(dout1_26) AT=155.025n

* CHECK dout1_27 Vdout1_27ck30 = 1.1 time = 155
.meas tran vdout1_27ck30 FIND v(dout1_27) AT=155.025n

* CHECK dout1_28 Vdout1_28ck30 = 1.1 time = 155
.meas tran vdout1_28ck30 FIND v(dout1_28) AT=155.025n

* CHECK dout1_29 Vdout1_29ck30 = 0 time = 155
.meas tran vdout1_29ck30 FIND v(dout1_29) AT=155.025n

* CHECK dout1_30 Vdout1_30ck30 = 0 time = 155
.meas tran vdout1_30ck30 FIND v(dout1_30) AT=155.025n

* CHECK dout1_31 Vdout1_31ck30 = 0 time = 155
.meas tran vdout1_31ck30 FIND v(dout1_31) AT=155.025n

* CHECK dout1_0 Vdout1_0ck31 = 0 time = 160
.meas tran vdout1_0ck31 FIND v(dout1_0) AT=160.025n

* CHECK dout1_1 Vdout1_1ck31 = 1.1 time = 160
.meas tran vdout1_1ck31 FIND v(dout1_1) AT=160.025n

* CHECK dout1_2 Vdout1_2ck31 = 1.1 time = 160
.meas tran vdout1_2ck31 FIND v(dout1_2) AT=160.025n

* CHECK dout1_3 Vdout1_3ck31 = 0 time = 160
.meas tran vdout1_3ck31 FIND v(dout1_3) AT=160.025n

* CHECK dout1_4 Vdout1_4ck31 = 0 time = 160
.meas tran vdout1_4ck31 FIND v(dout1_4) AT=160.025n

* CHECK dout1_5 Vdout1_5ck31 = 0 time = 160
.meas tran vdout1_5ck31 FIND v(dout1_5) AT=160.025n

* CHECK dout1_6 Vdout1_6ck31 = 0 time = 160
.meas tran vdout1_6ck31 FIND v(dout1_6) AT=160.025n

* CHECK dout1_7 Vdout1_7ck31 = 1.1 time = 160
.meas tran vdout1_7ck31 FIND v(dout1_7) AT=160.025n

* CHECK dout1_8 Vdout1_8ck31 = 1.1 time = 160
.meas tran vdout1_8ck31 FIND v(dout1_8) AT=160.025n

* CHECK dout1_9 Vdout1_9ck31 = 0 time = 160
.meas tran vdout1_9ck31 FIND v(dout1_9) AT=160.025n

* CHECK dout1_10 Vdout1_10ck31 = 1.1 time = 160
.meas tran vdout1_10ck31 FIND v(dout1_10) AT=160.025n

* CHECK dout1_11 Vdout1_11ck31 = 0 time = 160
.meas tran vdout1_11ck31 FIND v(dout1_11) AT=160.025n

* CHECK dout1_12 Vdout1_12ck31 = 1.1 time = 160
.meas tran vdout1_12ck31 FIND v(dout1_12) AT=160.025n

* CHECK dout1_13 Vdout1_13ck31 = 1.1 time = 160
.meas tran vdout1_13ck31 FIND v(dout1_13) AT=160.025n

* CHECK dout1_14 Vdout1_14ck31 = 0 time = 160
.meas tran vdout1_14ck31 FIND v(dout1_14) AT=160.025n

* CHECK dout1_15 Vdout1_15ck31 = 1.1 time = 160
.meas tran vdout1_15ck31 FIND v(dout1_15) AT=160.025n

* CHECK dout1_16 Vdout1_16ck31 = 0 time = 160
.meas tran vdout1_16ck31 FIND v(dout1_16) AT=160.025n

* CHECK dout1_17 Vdout1_17ck31 = 0 time = 160
.meas tran vdout1_17ck31 FIND v(dout1_17) AT=160.025n

* CHECK dout1_18 Vdout1_18ck31 = 0 time = 160
.meas tran vdout1_18ck31 FIND v(dout1_18) AT=160.025n

* CHECK dout1_19 Vdout1_19ck31 = 1.1 time = 160
.meas tran vdout1_19ck31 FIND v(dout1_19) AT=160.025n

* CHECK dout1_20 Vdout1_20ck31 = 1.1 time = 160
.meas tran vdout1_20ck31 FIND v(dout1_20) AT=160.025n

* CHECK dout1_21 Vdout1_21ck31 = 0 time = 160
.meas tran vdout1_21ck31 FIND v(dout1_21) AT=160.025n

* CHECK dout1_22 Vdout1_22ck31 = 0 time = 160
.meas tran vdout1_22ck31 FIND v(dout1_22) AT=160.025n

* CHECK dout1_23 Vdout1_23ck31 = 1.1 time = 160
.meas tran vdout1_23ck31 FIND v(dout1_23) AT=160.025n

* CHECK dout1_24 Vdout1_24ck31 = 0 time = 160
.meas tran vdout1_24ck31 FIND v(dout1_24) AT=160.025n

* CHECK dout1_25 Vdout1_25ck31 = 1.1 time = 160
.meas tran vdout1_25ck31 FIND v(dout1_25) AT=160.025n

* CHECK dout1_26 Vdout1_26ck31 = 0 time = 160
.meas tran vdout1_26ck31 FIND v(dout1_26) AT=160.025n

* CHECK dout1_27 Vdout1_27ck31 = 1.1 time = 160
.meas tran vdout1_27ck31 FIND v(dout1_27) AT=160.025n

* CHECK dout1_28 Vdout1_28ck31 = 1.1 time = 160
.meas tran vdout1_28ck31 FIND v(dout1_28) AT=160.025n

* CHECK dout1_29 Vdout1_29ck31 = 0 time = 160
.meas tran vdout1_29ck31 FIND v(dout1_29) AT=160.025n

* CHECK dout1_30 Vdout1_30ck31 = 0 time = 160
.meas tran vdout1_30ck31 FIND v(dout1_30) AT=160.025n

* CHECK dout1_31 Vdout1_31ck31 = 0 time = 160
.meas tran vdout1_31ck31 FIND v(dout1_31) AT=160.025n

* CHECK dout1_0 Vdout1_0ck37 = 0 time = 190
.meas tran vdout1_0ck37 FIND v(dout1_0) AT=190.025n

* CHECK dout1_1 Vdout1_1ck37 = 0 time = 190
.meas tran vdout1_1ck37 FIND v(dout1_1) AT=190.025n

* CHECK dout1_2 Vdout1_2ck37 = 0 time = 190
.meas tran vdout1_2ck37 FIND v(dout1_2) AT=190.025n

* CHECK dout1_3 Vdout1_3ck37 = 1.1 time = 190
.meas tran vdout1_3ck37 FIND v(dout1_3) AT=190.025n

* CHECK dout1_4 Vdout1_4ck37 = 1.1 time = 190
.meas tran vdout1_4ck37 FIND v(dout1_4) AT=190.025n

* CHECK dout1_5 Vdout1_5ck37 = 0 time = 190
.meas tran vdout1_5ck37 FIND v(dout1_5) AT=190.025n

* CHECK dout1_6 Vdout1_6ck37 = 1.1 time = 190
.meas tran vdout1_6ck37 FIND v(dout1_6) AT=190.025n

* CHECK dout1_7 Vdout1_7ck37 = 0 time = 190
.meas tran vdout1_7ck37 FIND v(dout1_7) AT=190.025n

* CHECK dout1_8 Vdout1_8ck37 = 1.1 time = 190
.meas tran vdout1_8ck37 FIND v(dout1_8) AT=190.025n

* CHECK dout1_9 Vdout1_9ck37 = 0 time = 190
.meas tran vdout1_9ck37 FIND v(dout1_9) AT=190.025n

* CHECK dout1_10 Vdout1_10ck37 = 1.1 time = 190
.meas tran vdout1_10ck37 FIND v(dout1_10) AT=190.025n

* CHECK dout1_11 Vdout1_11ck37 = 0 time = 190
.meas tran vdout1_11ck37 FIND v(dout1_11) AT=190.025n

* CHECK dout1_12 Vdout1_12ck37 = 1.1 time = 190
.meas tran vdout1_12ck37 FIND v(dout1_12) AT=190.025n

* CHECK dout1_13 Vdout1_13ck37 = 1.1 time = 190
.meas tran vdout1_13ck37 FIND v(dout1_13) AT=190.025n

* CHECK dout1_14 Vdout1_14ck37 = 1.1 time = 190
.meas tran vdout1_14ck37 FIND v(dout1_14) AT=190.025n

* CHECK dout1_15 Vdout1_15ck37 = 0 time = 190
.meas tran vdout1_15ck37 FIND v(dout1_15) AT=190.025n

* CHECK dout1_16 Vdout1_16ck37 = 0 time = 190
.meas tran vdout1_16ck37 FIND v(dout1_16) AT=190.025n

* CHECK dout1_17 Vdout1_17ck37 = 1.1 time = 190
.meas tran vdout1_17ck37 FIND v(dout1_17) AT=190.025n

* CHECK dout1_18 Vdout1_18ck37 = 1.1 time = 190
.meas tran vdout1_18ck37 FIND v(dout1_18) AT=190.025n

* CHECK dout1_19 Vdout1_19ck37 = 0 time = 190
.meas tran vdout1_19ck37 FIND v(dout1_19) AT=190.025n

* CHECK dout1_20 Vdout1_20ck37 = 0 time = 190
.meas tran vdout1_20ck37 FIND v(dout1_20) AT=190.025n

* CHECK dout1_21 Vdout1_21ck37 = 1.1 time = 190
.meas tran vdout1_21ck37 FIND v(dout1_21) AT=190.025n

* CHECK dout1_22 Vdout1_22ck37 = 0 time = 190
.meas tran vdout1_22ck37 FIND v(dout1_22) AT=190.025n

* CHECK dout1_23 Vdout1_23ck37 = 1.1 time = 190
.meas tran vdout1_23ck37 FIND v(dout1_23) AT=190.025n

* CHECK dout1_24 Vdout1_24ck37 = 1.1 time = 190
.meas tran vdout1_24ck37 FIND v(dout1_24) AT=190.025n

* CHECK dout1_25 Vdout1_25ck37 = 1.1 time = 190
.meas tran vdout1_25ck37 FIND v(dout1_25) AT=190.025n

* CHECK dout1_26 Vdout1_26ck37 = 1.1 time = 190
.meas tran vdout1_26ck37 FIND v(dout1_26) AT=190.025n

* CHECK dout1_27 Vdout1_27ck37 = 1.1 time = 190
.meas tran vdout1_27ck37 FIND v(dout1_27) AT=190.025n

* CHECK dout1_28 Vdout1_28ck37 = 1.1 time = 190
.meas tran vdout1_28ck37 FIND v(dout1_28) AT=190.025n

* CHECK dout1_29 Vdout1_29ck37 = 1.1 time = 190
.meas tran vdout1_29ck37 FIND v(dout1_29) AT=190.025n

* CHECK dout1_30 Vdout1_30ck37 = 0 time = 190
.meas tran vdout1_30ck37 FIND v(dout1_30) AT=190.025n

* CHECK dout1_31 Vdout1_31ck37 = 0 time = 190
.meas tran vdout1_31ck37 FIND v(dout1_31) AT=190.025n

* CHECK dout1_0 Vdout1_0ck40 = 1.1 time = 205
.meas tran vdout1_0ck40 FIND v(dout1_0) AT=205.025n

* CHECK dout1_1 Vdout1_1ck40 = 0 time = 205
.meas tran vdout1_1ck40 FIND v(dout1_1) AT=205.025n

* CHECK dout1_2 Vdout1_2ck40 = 0 time = 205
.meas tran vdout1_2ck40 FIND v(dout1_2) AT=205.025n

* CHECK dout1_3 Vdout1_3ck40 = 1.1 time = 205
.meas tran vdout1_3ck40 FIND v(dout1_3) AT=205.025n

* CHECK dout1_4 Vdout1_4ck40 = 0 time = 205
.meas tran vdout1_4ck40 FIND v(dout1_4) AT=205.025n

* CHECK dout1_5 Vdout1_5ck40 = 0 time = 205
.meas tran vdout1_5ck40 FIND v(dout1_5) AT=205.025n

* CHECK dout1_6 Vdout1_6ck40 = 1.1 time = 205
.meas tran vdout1_6ck40 FIND v(dout1_6) AT=205.025n

* CHECK dout1_7 Vdout1_7ck40 = 0 time = 205
.meas tran vdout1_7ck40 FIND v(dout1_7) AT=205.025n

* CHECK dout1_8 Vdout1_8ck40 = 0 time = 205
.meas tran vdout1_8ck40 FIND v(dout1_8) AT=205.025n

* CHECK dout1_9 Vdout1_9ck40 = 0 time = 205
.meas tran vdout1_9ck40 FIND v(dout1_9) AT=205.025n

* CHECK dout1_10 Vdout1_10ck40 = 0 time = 205
.meas tran vdout1_10ck40 FIND v(dout1_10) AT=205.025n

* CHECK dout1_11 Vdout1_11ck40 = 1.1 time = 205
.meas tran vdout1_11ck40 FIND v(dout1_11) AT=205.025n

* CHECK dout1_12 Vdout1_12ck40 = 0 time = 205
.meas tran vdout1_12ck40 FIND v(dout1_12) AT=205.025n

* CHECK dout1_13 Vdout1_13ck40 = 0 time = 205
.meas tran vdout1_13ck40 FIND v(dout1_13) AT=205.025n

* CHECK dout1_14 Vdout1_14ck40 = 1.1 time = 205
.meas tran vdout1_14ck40 FIND v(dout1_14) AT=205.025n

* CHECK dout1_15 Vdout1_15ck40 = 1.1 time = 205
.meas tran vdout1_15ck40 FIND v(dout1_15) AT=205.025n

* CHECK dout1_16 Vdout1_16ck40 = 1.1 time = 205
.meas tran vdout1_16ck40 FIND v(dout1_16) AT=205.025n

* CHECK dout1_17 Vdout1_17ck40 = 1.1 time = 205
.meas tran vdout1_17ck40 FIND v(dout1_17) AT=205.025n

* CHECK dout1_18 Vdout1_18ck40 = 1.1 time = 205
.meas tran vdout1_18ck40 FIND v(dout1_18) AT=205.025n

* CHECK dout1_19 Vdout1_19ck40 = 0 time = 205
.meas tran vdout1_19ck40 FIND v(dout1_19) AT=205.025n

* CHECK dout1_20 Vdout1_20ck40 = 0 time = 205
.meas tran vdout1_20ck40 FIND v(dout1_20) AT=205.025n

* CHECK dout1_21 Vdout1_21ck40 = 1.1 time = 205
.meas tran vdout1_21ck40 FIND v(dout1_21) AT=205.025n

* CHECK dout1_22 Vdout1_22ck40 = 1.1 time = 205
.meas tran vdout1_22ck40 FIND v(dout1_22) AT=205.025n

* CHECK dout1_23 Vdout1_23ck40 = 0 time = 205
.meas tran vdout1_23ck40 FIND v(dout1_23) AT=205.025n

* CHECK dout1_24 Vdout1_24ck40 = 0 time = 205
.meas tran vdout1_24ck40 FIND v(dout1_24) AT=205.025n

* CHECK dout1_25 Vdout1_25ck40 = 1.1 time = 205
.meas tran vdout1_25ck40 FIND v(dout1_25) AT=205.025n

* CHECK dout1_26 Vdout1_26ck40 = 0 time = 205
.meas tran vdout1_26ck40 FIND v(dout1_26) AT=205.025n

* CHECK dout1_27 Vdout1_27ck40 = 0 time = 205
.meas tran vdout1_27ck40 FIND v(dout1_27) AT=205.025n

* CHECK dout1_28 Vdout1_28ck40 = 1.1 time = 205
.meas tran vdout1_28ck40 FIND v(dout1_28) AT=205.025n

* CHECK dout1_29 Vdout1_29ck40 = 0 time = 205
.meas tran vdout1_29ck40 FIND v(dout1_29) AT=205.025n

* CHECK dout1_30 Vdout1_30ck40 = 1.1 time = 205
.meas tran vdout1_30ck40 FIND v(dout1_30) AT=205.025n

* CHECK dout1_31 Vdout1_31ck40 = 0 time = 205
.meas tran vdout1_31ck40 FIND v(dout1_31) AT=205.025n

* CHECK dout1_0 Vdout1_0ck43 = 1.1 time = 220
.meas tran vdout1_0ck43 FIND v(dout1_0) AT=220.025n

* CHECK dout1_1 Vdout1_1ck43 = 0 time = 220
.meas tran vdout1_1ck43 FIND v(dout1_1) AT=220.025n

* CHECK dout1_2 Vdout1_2ck43 = 1.1 time = 220
.meas tran vdout1_2ck43 FIND v(dout1_2) AT=220.025n

* CHECK dout1_3 Vdout1_3ck43 = 0 time = 220
.meas tran vdout1_3ck43 FIND v(dout1_3) AT=220.025n

* CHECK dout1_4 Vdout1_4ck43 = 0 time = 220
.meas tran vdout1_4ck43 FIND v(dout1_4) AT=220.025n

* CHECK dout1_5 Vdout1_5ck43 = 0 time = 220
.meas tran vdout1_5ck43 FIND v(dout1_5) AT=220.025n

* CHECK dout1_6 Vdout1_6ck43 = 1.1 time = 220
.meas tran vdout1_6ck43 FIND v(dout1_6) AT=220.025n

* CHECK dout1_7 Vdout1_7ck43 = 1.1 time = 220
.meas tran vdout1_7ck43 FIND v(dout1_7) AT=220.025n

* CHECK dout1_8 Vdout1_8ck43 = 1.1 time = 220
.meas tran vdout1_8ck43 FIND v(dout1_8) AT=220.025n

* CHECK dout1_9 Vdout1_9ck43 = 0 time = 220
.meas tran vdout1_9ck43 FIND v(dout1_9) AT=220.025n

* CHECK dout1_10 Vdout1_10ck43 = 0 time = 220
.meas tran vdout1_10ck43 FIND v(dout1_10) AT=220.025n

* CHECK dout1_11 Vdout1_11ck43 = 0 time = 220
.meas tran vdout1_11ck43 FIND v(dout1_11) AT=220.025n

* CHECK dout1_12 Vdout1_12ck43 = 1.1 time = 220
.meas tran vdout1_12ck43 FIND v(dout1_12) AT=220.025n

* CHECK dout1_13 Vdout1_13ck43 = 1.1 time = 220
.meas tran vdout1_13ck43 FIND v(dout1_13) AT=220.025n

* CHECK dout1_14 Vdout1_14ck43 = 0 time = 220
.meas tran vdout1_14ck43 FIND v(dout1_14) AT=220.025n

* CHECK dout1_15 Vdout1_15ck43 = 0 time = 220
.meas tran vdout1_15ck43 FIND v(dout1_15) AT=220.025n

* CHECK dout1_16 Vdout1_16ck43 = 0 time = 220
.meas tran vdout1_16ck43 FIND v(dout1_16) AT=220.025n

* CHECK dout1_17 Vdout1_17ck43 = 1.1 time = 220
.meas tran vdout1_17ck43 FIND v(dout1_17) AT=220.025n

* CHECK dout1_18 Vdout1_18ck43 = 0 time = 220
.meas tran vdout1_18ck43 FIND v(dout1_18) AT=220.025n

* CHECK dout1_19 Vdout1_19ck43 = 0 time = 220
.meas tran vdout1_19ck43 FIND v(dout1_19) AT=220.025n

* CHECK dout1_20 Vdout1_20ck43 = 0 time = 220
.meas tran vdout1_20ck43 FIND v(dout1_20) AT=220.025n

* CHECK dout1_21 Vdout1_21ck43 = 0 time = 220
.meas tran vdout1_21ck43 FIND v(dout1_21) AT=220.025n

* CHECK dout1_22 Vdout1_22ck43 = 0 time = 220
.meas tran vdout1_22ck43 FIND v(dout1_22) AT=220.025n

* CHECK dout1_23 Vdout1_23ck43 = 1.1 time = 220
.meas tran vdout1_23ck43 FIND v(dout1_23) AT=220.025n

* CHECK dout1_24 Vdout1_24ck43 = 0 time = 220
.meas tran vdout1_24ck43 FIND v(dout1_24) AT=220.025n

* CHECK dout1_25 Vdout1_25ck43 = 1.1 time = 220
.meas tran vdout1_25ck43 FIND v(dout1_25) AT=220.025n

* CHECK dout1_26 Vdout1_26ck43 = 1.1 time = 220
.meas tran vdout1_26ck43 FIND v(dout1_26) AT=220.025n

* CHECK dout1_27 Vdout1_27ck43 = 1.1 time = 220
.meas tran vdout1_27ck43 FIND v(dout1_27) AT=220.025n

* CHECK dout1_28 Vdout1_28ck43 = 1.1 time = 220
.meas tran vdout1_28ck43 FIND v(dout1_28) AT=220.025n

* CHECK dout1_29 Vdout1_29ck43 = 0 time = 220
.meas tran vdout1_29ck43 FIND v(dout1_29) AT=220.025n

* CHECK dout1_30 Vdout1_30ck43 = 1.1 time = 220
.meas tran vdout1_30ck43 FIND v(dout1_30) AT=220.025n

* CHECK dout1_31 Vdout1_31ck43 = 0 time = 220
.meas tran vdout1_31ck43 FIND v(dout1_31) AT=220.025n

* CHECK dout1_0 Vdout1_0ck45 = 1.1 time = 230
.meas tran vdout1_0ck45 FIND v(dout1_0) AT=230.025n

* CHECK dout1_1 Vdout1_1ck45 = 0 time = 230
.meas tran vdout1_1ck45 FIND v(dout1_1) AT=230.025n

* CHECK dout1_2 Vdout1_2ck45 = 1.1 time = 230
.meas tran vdout1_2ck45 FIND v(dout1_2) AT=230.025n

* CHECK dout1_3 Vdout1_3ck45 = 0 time = 230
.meas tran vdout1_3ck45 FIND v(dout1_3) AT=230.025n

* CHECK dout1_4 Vdout1_4ck45 = 0 time = 230
.meas tran vdout1_4ck45 FIND v(dout1_4) AT=230.025n

* CHECK dout1_5 Vdout1_5ck45 = 0 time = 230
.meas tran vdout1_5ck45 FIND v(dout1_5) AT=230.025n

* CHECK dout1_6 Vdout1_6ck45 = 1.1 time = 230
.meas tran vdout1_6ck45 FIND v(dout1_6) AT=230.025n

* CHECK dout1_7 Vdout1_7ck45 = 1.1 time = 230
.meas tran vdout1_7ck45 FIND v(dout1_7) AT=230.025n

* CHECK dout1_8 Vdout1_8ck45 = 1.1 time = 230
.meas tran vdout1_8ck45 FIND v(dout1_8) AT=230.025n

* CHECK dout1_9 Vdout1_9ck45 = 0 time = 230
.meas tran vdout1_9ck45 FIND v(dout1_9) AT=230.025n

* CHECK dout1_10 Vdout1_10ck45 = 0 time = 230
.meas tran vdout1_10ck45 FIND v(dout1_10) AT=230.025n

* CHECK dout1_11 Vdout1_11ck45 = 0 time = 230
.meas tran vdout1_11ck45 FIND v(dout1_11) AT=230.025n

* CHECK dout1_12 Vdout1_12ck45 = 1.1 time = 230
.meas tran vdout1_12ck45 FIND v(dout1_12) AT=230.025n

* CHECK dout1_13 Vdout1_13ck45 = 1.1 time = 230
.meas tran vdout1_13ck45 FIND v(dout1_13) AT=230.025n

* CHECK dout1_14 Vdout1_14ck45 = 0 time = 230
.meas tran vdout1_14ck45 FIND v(dout1_14) AT=230.025n

* CHECK dout1_15 Vdout1_15ck45 = 0 time = 230
.meas tran vdout1_15ck45 FIND v(dout1_15) AT=230.025n

* CHECK dout1_16 Vdout1_16ck45 = 0 time = 230
.meas tran vdout1_16ck45 FIND v(dout1_16) AT=230.025n

* CHECK dout1_17 Vdout1_17ck45 = 1.1 time = 230
.meas tran vdout1_17ck45 FIND v(dout1_17) AT=230.025n

* CHECK dout1_18 Vdout1_18ck45 = 0 time = 230
.meas tran vdout1_18ck45 FIND v(dout1_18) AT=230.025n

* CHECK dout1_19 Vdout1_19ck45 = 0 time = 230
.meas tran vdout1_19ck45 FIND v(dout1_19) AT=230.025n

* CHECK dout1_20 Vdout1_20ck45 = 0 time = 230
.meas tran vdout1_20ck45 FIND v(dout1_20) AT=230.025n

* CHECK dout1_21 Vdout1_21ck45 = 0 time = 230
.meas tran vdout1_21ck45 FIND v(dout1_21) AT=230.025n

* CHECK dout1_22 Vdout1_22ck45 = 0 time = 230
.meas tran vdout1_22ck45 FIND v(dout1_22) AT=230.025n

* CHECK dout1_23 Vdout1_23ck45 = 1.1 time = 230
.meas tran vdout1_23ck45 FIND v(dout1_23) AT=230.025n

* CHECK dout1_24 Vdout1_24ck45 = 0 time = 230
.meas tran vdout1_24ck45 FIND v(dout1_24) AT=230.025n

* CHECK dout1_25 Vdout1_25ck45 = 1.1 time = 230
.meas tran vdout1_25ck45 FIND v(dout1_25) AT=230.025n

* CHECK dout1_26 Vdout1_26ck45 = 1.1 time = 230
.meas tran vdout1_26ck45 FIND v(dout1_26) AT=230.025n

* CHECK dout1_27 Vdout1_27ck45 = 1.1 time = 230
.meas tran vdout1_27ck45 FIND v(dout1_27) AT=230.025n

* CHECK dout1_28 Vdout1_28ck45 = 1.1 time = 230
.meas tran vdout1_28ck45 FIND v(dout1_28) AT=230.025n

* CHECK dout1_29 Vdout1_29ck45 = 0 time = 230
.meas tran vdout1_29ck45 FIND v(dout1_29) AT=230.025n

* CHECK dout1_30 Vdout1_30ck45 = 1.1 time = 230
.meas tran vdout1_30ck45 FIND v(dout1_30) AT=230.025n

* CHECK dout1_31 Vdout1_31ck45 = 0 time = 230
.meas tran vdout1_31ck45 FIND v(dout1_31) AT=230.025n

* CHECK dout1_0 Vdout1_0ck50 = 1.1 time = 255
.meas tran vdout1_0ck50 FIND v(dout1_0) AT=255.025n

* CHECK dout1_1 Vdout1_1ck50 = 0 time = 255
.meas tran vdout1_1ck50 FIND v(dout1_1) AT=255.025n

* CHECK dout1_2 Vdout1_2ck50 = 0 time = 255
.meas tran vdout1_2ck50 FIND v(dout1_2) AT=255.025n

* CHECK dout1_3 Vdout1_3ck50 = 1.1 time = 255
.meas tran vdout1_3ck50 FIND v(dout1_3) AT=255.025n

* CHECK dout1_4 Vdout1_4ck50 = 1.1 time = 255
.meas tran vdout1_4ck50 FIND v(dout1_4) AT=255.025n

* CHECK dout1_5 Vdout1_5ck50 = 0 time = 255
.meas tran vdout1_5ck50 FIND v(dout1_5) AT=255.025n

* CHECK dout1_6 Vdout1_6ck50 = 1.1 time = 255
.meas tran vdout1_6ck50 FIND v(dout1_6) AT=255.025n

* CHECK dout1_7 Vdout1_7ck50 = 1.1 time = 255
.meas tran vdout1_7ck50 FIND v(dout1_7) AT=255.025n

* CHECK dout1_8 Vdout1_8ck50 = 0 time = 255
.meas tran vdout1_8ck50 FIND v(dout1_8) AT=255.025n

* CHECK dout1_9 Vdout1_9ck50 = 0 time = 255
.meas tran vdout1_9ck50 FIND v(dout1_9) AT=255.025n

* CHECK dout1_10 Vdout1_10ck50 = 1.1 time = 255
.meas tran vdout1_10ck50 FIND v(dout1_10) AT=255.025n

* CHECK dout1_11 Vdout1_11ck50 = 1.1 time = 255
.meas tran vdout1_11ck50 FIND v(dout1_11) AT=255.025n

* CHECK dout1_12 Vdout1_12ck50 = 0 time = 255
.meas tran vdout1_12ck50 FIND v(dout1_12) AT=255.025n

* CHECK dout1_13 Vdout1_13ck50 = 0 time = 255
.meas tran vdout1_13ck50 FIND v(dout1_13) AT=255.025n

* CHECK dout1_14 Vdout1_14ck50 = 0 time = 255
.meas tran vdout1_14ck50 FIND v(dout1_14) AT=255.025n

* CHECK dout1_15 Vdout1_15ck50 = 0 time = 255
.meas tran vdout1_15ck50 FIND v(dout1_15) AT=255.025n

* CHECK dout1_16 Vdout1_16ck50 = 0 time = 255
.meas tran vdout1_16ck50 FIND v(dout1_16) AT=255.025n

* CHECK dout1_17 Vdout1_17ck50 = 0 time = 255
.meas tran vdout1_17ck50 FIND v(dout1_17) AT=255.025n

* CHECK dout1_18 Vdout1_18ck50 = 1.1 time = 255
.meas tran vdout1_18ck50 FIND v(dout1_18) AT=255.025n

* CHECK dout1_19 Vdout1_19ck50 = 1.1 time = 255
.meas tran vdout1_19ck50 FIND v(dout1_19) AT=255.025n

* CHECK dout1_20 Vdout1_20ck50 = 1.1 time = 255
.meas tran vdout1_20ck50 FIND v(dout1_20) AT=255.025n

* CHECK dout1_21 Vdout1_21ck50 = 1.1 time = 255
.meas tran vdout1_21ck50 FIND v(dout1_21) AT=255.025n

* CHECK dout1_22 Vdout1_22ck50 = 0 time = 255
.meas tran vdout1_22ck50 FIND v(dout1_22) AT=255.025n

* CHECK dout1_23 Vdout1_23ck50 = 0 time = 255
.meas tran vdout1_23ck50 FIND v(dout1_23) AT=255.025n

* CHECK dout1_24 Vdout1_24ck50 = 0 time = 255
.meas tran vdout1_24ck50 FIND v(dout1_24) AT=255.025n

* CHECK dout1_25 Vdout1_25ck50 = 1.1 time = 255
.meas tran vdout1_25ck50 FIND v(dout1_25) AT=255.025n

* CHECK dout1_26 Vdout1_26ck50 = 0 time = 255
.meas tran vdout1_26ck50 FIND v(dout1_26) AT=255.025n

* CHECK dout1_27 Vdout1_27ck50 = 1.1 time = 255
.meas tran vdout1_27ck50 FIND v(dout1_27) AT=255.025n

* CHECK dout1_28 Vdout1_28ck50 = 1.1 time = 255
.meas tran vdout1_28ck50 FIND v(dout1_28) AT=255.025n

* CHECK dout1_29 Vdout1_29ck50 = 0 time = 255
.meas tran vdout1_29ck50 FIND v(dout1_29) AT=255.025n

* CHECK dout1_30 Vdout1_30ck50 = 0 time = 255
.meas tran vdout1_30ck50 FIND v(dout1_30) AT=255.025n

* CHECK dout1_31 Vdout1_31ck50 = 0 time = 255
.meas tran vdout1_31ck50 FIND v(dout1_31) AT=255.025n

* CHECK dout1_0 Vdout1_0ck51 = 0 time = 260
.meas tran vdout1_0ck51 FIND v(dout1_0) AT=260.025n

* CHECK dout1_1 Vdout1_1ck51 = 1.1 time = 260
.meas tran vdout1_1ck51 FIND v(dout1_1) AT=260.025n

* CHECK dout1_2 Vdout1_2ck51 = 0 time = 260
.meas tran vdout1_2ck51 FIND v(dout1_2) AT=260.025n

* CHECK dout1_3 Vdout1_3ck51 = 1.1 time = 260
.meas tran vdout1_3ck51 FIND v(dout1_3) AT=260.025n

* CHECK dout1_4 Vdout1_4ck51 = 0 time = 260
.meas tran vdout1_4ck51 FIND v(dout1_4) AT=260.025n

* CHECK dout1_5 Vdout1_5ck51 = 0 time = 260
.meas tran vdout1_5ck51 FIND v(dout1_5) AT=260.025n

* CHECK dout1_6 Vdout1_6ck51 = 1.1 time = 260
.meas tran vdout1_6ck51 FIND v(dout1_6) AT=260.025n

* CHECK dout1_7 Vdout1_7ck51 = 0 time = 260
.meas tran vdout1_7ck51 FIND v(dout1_7) AT=260.025n

* CHECK dout1_8 Vdout1_8ck51 = 1.1 time = 260
.meas tran vdout1_8ck51 FIND v(dout1_8) AT=260.025n

* CHECK dout1_9 Vdout1_9ck51 = 0 time = 260
.meas tran vdout1_9ck51 FIND v(dout1_9) AT=260.025n

* CHECK dout1_10 Vdout1_10ck51 = 0 time = 260
.meas tran vdout1_10ck51 FIND v(dout1_10) AT=260.025n

* CHECK dout1_11 Vdout1_11ck51 = 1.1 time = 260
.meas tran vdout1_11ck51 FIND v(dout1_11) AT=260.025n

* CHECK dout1_12 Vdout1_12ck51 = 0 time = 260
.meas tran vdout1_12ck51 FIND v(dout1_12) AT=260.025n

* CHECK dout1_13 Vdout1_13ck51 = 0 time = 260
.meas tran vdout1_13ck51 FIND v(dout1_13) AT=260.025n

* CHECK dout1_14 Vdout1_14ck51 = 1.1 time = 260
.meas tran vdout1_14ck51 FIND v(dout1_14) AT=260.025n

* CHECK dout1_15 Vdout1_15ck51 = 1.1 time = 260
.meas tran vdout1_15ck51 FIND v(dout1_15) AT=260.025n

* CHECK dout1_16 Vdout1_16ck51 = 0 time = 260
.meas tran vdout1_16ck51 FIND v(dout1_16) AT=260.025n

* CHECK dout1_17 Vdout1_17ck51 = 1.1 time = 260
.meas tran vdout1_17ck51 FIND v(dout1_17) AT=260.025n

* CHECK dout1_18 Vdout1_18ck51 = 1.1 time = 260
.meas tran vdout1_18ck51 FIND v(dout1_18) AT=260.025n

* CHECK dout1_19 Vdout1_19ck51 = 0 time = 260
.meas tran vdout1_19ck51 FIND v(dout1_19) AT=260.025n

* CHECK dout1_20 Vdout1_20ck51 = 0 time = 260
.meas tran vdout1_20ck51 FIND v(dout1_20) AT=260.025n

* CHECK dout1_21 Vdout1_21ck51 = 0 time = 260
.meas tran vdout1_21ck51 FIND v(dout1_21) AT=260.025n

* CHECK dout1_22 Vdout1_22ck51 = 0 time = 260
.meas tran vdout1_22ck51 FIND v(dout1_22) AT=260.025n

* CHECK dout1_23 Vdout1_23ck51 = 0 time = 260
.meas tran vdout1_23ck51 FIND v(dout1_23) AT=260.025n

* CHECK dout1_24 Vdout1_24ck51 = 0 time = 260
.meas tran vdout1_24ck51 FIND v(dout1_24) AT=260.025n

* CHECK dout1_25 Vdout1_25ck51 = 1.1 time = 260
.meas tran vdout1_25ck51 FIND v(dout1_25) AT=260.025n

* CHECK dout1_26 Vdout1_26ck51 = 1.1 time = 260
.meas tran vdout1_26ck51 FIND v(dout1_26) AT=260.025n

* CHECK dout1_27 Vdout1_27ck51 = 1.1 time = 260
.meas tran vdout1_27ck51 FIND v(dout1_27) AT=260.025n

* CHECK dout1_28 Vdout1_28ck51 = 0 time = 260
.meas tran vdout1_28ck51 FIND v(dout1_28) AT=260.025n

* CHECK dout1_29 Vdout1_29ck51 = 0 time = 260
.meas tran vdout1_29ck51 FIND v(dout1_29) AT=260.025n

* CHECK dout1_30 Vdout1_30ck51 = 0 time = 260
.meas tran vdout1_30ck51 FIND v(dout1_30) AT=260.025n

* CHECK dout1_31 Vdout1_31ck51 = 1.1 time = 260
.meas tran vdout1_31ck51 FIND v(dout1_31) AT=260.025n

* CHECK dout1_0 Vdout1_0ck54 = 0 time = 275
.meas tran vdout1_0ck54 FIND v(dout1_0) AT=275.025n

* CHECK dout1_1 Vdout1_1ck54 = 0 time = 275
.meas tran vdout1_1ck54 FIND v(dout1_1) AT=275.025n

* CHECK dout1_2 Vdout1_2ck54 = 1.1 time = 275
.meas tran vdout1_2ck54 FIND v(dout1_2) AT=275.025n

* CHECK dout1_3 Vdout1_3ck54 = 1.1 time = 275
.meas tran vdout1_3ck54 FIND v(dout1_3) AT=275.025n

* CHECK dout1_4 Vdout1_4ck54 = 0 time = 275
.meas tran vdout1_4ck54 FIND v(dout1_4) AT=275.025n

* CHECK dout1_5 Vdout1_5ck54 = 0 time = 275
.meas tran vdout1_5ck54 FIND v(dout1_5) AT=275.025n

* CHECK dout1_6 Vdout1_6ck54 = 0 time = 275
.meas tran vdout1_6ck54 FIND v(dout1_6) AT=275.025n

* CHECK dout1_7 Vdout1_7ck54 = 0 time = 275
.meas tran vdout1_7ck54 FIND v(dout1_7) AT=275.025n

* CHECK dout1_8 Vdout1_8ck54 = 0 time = 275
.meas tran vdout1_8ck54 FIND v(dout1_8) AT=275.025n

* CHECK dout1_9 Vdout1_9ck54 = 1.1 time = 275
.meas tran vdout1_9ck54 FIND v(dout1_9) AT=275.025n

* CHECK dout1_10 Vdout1_10ck54 = 1.1 time = 275
.meas tran vdout1_10ck54 FIND v(dout1_10) AT=275.025n

* CHECK dout1_11 Vdout1_11ck54 = 0 time = 275
.meas tran vdout1_11ck54 FIND v(dout1_11) AT=275.025n

* CHECK dout1_12 Vdout1_12ck54 = 0 time = 275
.meas tran vdout1_12ck54 FIND v(dout1_12) AT=275.025n

* CHECK dout1_13 Vdout1_13ck54 = 0 time = 275
.meas tran vdout1_13ck54 FIND v(dout1_13) AT=275.025n

* CHECK dout1_14 Vdout1_14ck54 = 1.1 time = 275
.meas tran vdout1_14ck54 FIND v(dout1_14) AT=275.025n

* CHECK dout1_15 Vdout1_15ck54 = 0 time = 275
.meas tran vdout1_15ck54 FIND v(dout1_15) AT=275.025n

* CHECK dout1_16 Vdout1_16ck54 = 1.1 time = 275
.meas tran vdout1_16ck54 FIND v(dout1_16) AT=275.025n

* CHECK dout1_17 Vdout1_17ck54 = 0 time = 275
.meas tran vdout1_17ck54 FIND v(dout1_17) AT=275.025n

* CHECK dout1_18 Vdout1_18ck54 = 0 time = 275
.meas tran vdout1_18ck54 FIND v(dout1_18) AT=275.025n

* CHECK dout1_19 Vdout1_19ck54 = 1.1 time = 275
.meas tran vdout1_19ck54 FIND v(dout1_19) AT=275.025n

* CHECK dout1_20 Vdout1_20ck54 = 1.1 time = 275
.meas tran vdout1_20ck54 FIND v(dout1_20) AT=275.025n

* CHECK dout1_21 Vdout1_21ck54 = 0 time = 275
.meas tran vdout1_21ck54 FIND v(dout1_21) AT=275.025n

* CHECK dout1_22 Vdout1_22ck54 = 0 time = 275
.meas tran vdout1_22ck54 FIND v(dout1_22) AT=275.025n

* CHECK dout1_23 Vdout1_23ck54 = 1.1 time = 275
.meas tran vdout1_23ck54 FIND v(dout1_23) AT=275.025n

* CHECK dout1_24 Vdout1_24ck54 = 1.1 time = 275
.meas tran vdout1_24ck54 FIND v(dout1_24) AT=275.025n

* CHECK dout1_25 Vdout1_25ck54 = 1.1 time = 275
.meas tran vdout1_25ck54 FIND v(dout1_25) AT=275.025n

* CHECK dout1_26 Vdout1_26ck54 = 1.1 time = 275
.meas tran vdout1_26ck54 FIND v(dout1_26) AT=275.025n

* CHECK dout1_27 Vdout1_27ck54 = 1.1 time = 275
.meas tran vdout1_27ck54 FIND v(dout1_27) AT=275.025n

* CHECK dout1_28 Vdout1_28ck54 = 1.1 time = 275
.meas tran vdout1_28ck54 FIND v(dout1_28) AT=275.025n

* CHECK dout1_29 Vdout1_29ck54 = 0 time = 275
.meas tran vdout1_29ck54 FIND v(dout1_29) AT=275.025n

* CHECK dout1_30 Vdout1_30ck54 = 1.1 time = 275
.meas tran vdout1_30ck54 FIND v(dout1_30) AT=275.025n

* CHECK dout1_31 Vdout1_31ck54 = 1.1 time = 275
.meas tran vdout1_31ck54 FIND v(dout1_31) AT=275.025n

* CHECK dout1_0 Vdout1_0ck55 = 0 time = 280
.meas tran vdout1_0ck55 FIND v(dout1_0) AT=280.025n

* CHECK dout1_1 Vdout1_1ck55 = 0 time = 280
.meas tran vdout1_1ck55 FIND v(dout1_1) AT=280.025n

* CHECK dout1_2 Vdout1_2ck55 = 0 time = 280
.meas tran vdout1_2ck55 FIND v(dout1_2) AT=280.025n

* CHECK dout1_3 Vdout1_3ck55 = 1.1 time = 280
.meas tran vdout1_3ck55 FIND v(dout1_3) AT=280.025n

* CHECK dout1_4 Vdout1_4ck55 = 1.1 time = 280
.meas tran vdout1_4ck55 FIND v(dout1_4) AT=280.025n

* CHECK dout1_5 Vdout1_5ck55 = 0 time = 280
.meas tran vdout1_5ck55 FIND v(dout1_5) AT=280.025n

* CHECK dout1_6 Vdout1_6ck55 = 0 time = 280
.meas tran vdout1_6ck55 FIND v(dout1_6) AT=280.025n

* CHECK dout1_7 Vdout1_7ck55 = 1.1 time = 280
.meas tran vdout1_7ck55 FIND v(dout1_7) AT=280.025n

* CHECK dout1_8 Vdout1_8ck55 = 0 time = 280
.meas tran vdout1_8ck55 FIND v(dout1_8) AT=280.025n

* CHECK dout1_9 Vdout1_9ck55 = 0 time = 280
.meas tran vdout1_9ck55 FIND v(dout1_9) AT=280.025n

* CHECK dout1_10 Vdout1_10ck55 = 1.1 time = 280
.meas tran vdout1_10ck55 FIND v(dout1_10) AT=280.025n

* CHECK dout1_11 Vdout1_11ck55 = 0 time = 280
.meas tran vdout1_11ck55 FIND v(dout1_11) AT=280.025n

* CHECK dout1_12 Vdout1_12ck55 = 1.1 time = 280
.meas tran vdout1_12ck55 FIND v(dout1_12) AT=280.025n

* CHECK dout1_13 Vdout1_13ck55 = 1.1 time = 280
.meas tran vdout1_13ck55 FIND v(dout1_13) AT=280.025n

* CHECK dout1_14 Vdout1_14ck55 = 0 time = 280
.meas tran vdout1_14ck55 FIND v(dout1_14) AT=280.025n

* CHECK dout1_15 Vdout1_15ck55 = 1.1 time = 280
.meas tran vdout1_15ck55 FIND v(dout1_15) AT=280.025n

* CHECK dout1_16 Vdout1_16ck55 = 0 time = 280
.meas tran vdout1_16ck55 FIND v(dout1_16) AT=280.025n

* CHECK dout1_17 Vdout1_17ck55 = 0 time = 280
.meas tran vdout1_17ck55 FIND v(dout1_17) AT=280.025n

* CHECK dout1_18 Vdout1_18ck55 = 0 time = 280
.meas tran vdout1_18ck55 FIND v(dout1_18) AT=280.025n

* CHECK dout1_19 Vdout1_19ck55 = 0 time = 280
.meas tran vdout1_19ck55 FIND v(dout1_19) AT=280.025n

* CHECK dout1_20 Vdout1_20ck55 = 0 time = 280
.meas tran vdout1_20ck55 FIND v(dout1_20) AT=280.025n

* CHECK dout1_21 Vdout1_21ck55 = 1.1 time = 280
.meas tran vdout1_21ck55 FIND v(dout1_21) AT=280.025n

* CHECK dout1_22 Vdout1_22ck55 = 0 time = 280
.meas tran vdout1_22ck55 FIND v(dout1_22) AT=280.025n

* CHECK dout1_23 Vdout1_23ck55 = 0 time = 280
.meas tran vdout1_23ck55 FIND v(dout1_23) AT=280.025n

* CHECK dout1_24 Vdout1_24ck55 = 0 time = 280
.meas tran vdout1_24ck55 FIND v(dout1_24) AT=280.025n

* CHECK dout1_25 Vdout1_25ck55 = 1.1 time = 280
.meas tran vdout1_25ck55 FIND v(dout1_25) AT=280.025n

* CHECK dout1_26 Vdout1_26ck55 = 1.1 time = 280
.meas tran vdout1_26ck55 FIND v(dout1_26) AT=280.025n

* CHECK dout1_27 Vdout1_27ck55 = 1.1 time = 280
.meas tran vdout1_27ck55 FIND v(dout1_27) AT=280.025n

* CHECK dout1_28 Vdout1_28ck55 = 1.1 time = 280
.meas tran vdout1_28ck55 FIND v(dout1_28) AT=280.025n

* CHECK dout1_29 Vdout1_29ck55 = 1.1 time = 280
.meas tran vdout1_29ck55 FIND v(dout1_29) AT=280.025n

* CHECK dout1_30 Vdout1_30ck55 = 1.1 time = 280
.meas tran vdout1_30ck55 FIND v(dout1_30) AT=280.025n

* CHECK dout1_31 Vdout1_31ck55 = 0 time = 280
.meas tran vdout1_31ck55 FIND v(dout1_31) AT=280.025n

* CHECK dout1_0 Vdout1_0ck57 = 0 time = 290
.meas tran vdout1_0ck57 FIND v(dout1_0) AT=290.025n

* CHECK dout1_1 Vdout1_1ck57 = 1.1 time = 290
.meas tran vdout1_1ck57 FIND v(dout1_1) AT=290.025n

* CHECK dout1_2 Vdout1_2ck57 = 0 time = 290
.meas tran vdout1_2ck57 FIND v(dout1_2) AT=290.025n

* CHECK dout1_3 Vdout1_3ck57 = 1.1 time = 290
.meas tran vdout1_3ck57 FIND v(dout1_3) AT=290.025n

* CHECK dout1_4 Vdout1_4ck57 = 0 time = 290
.meas tran vdout1_4ck57 FIND v(dout1_4) AT=290.025n

* CHECK dout1_5 Vdout1_5ck57 = 0 time = 290
.meas tran vdout1_5ck57 FIND v(dout1_5) AT=290.025n

* CHECK dout1_6 Vdout1_6ck57 = 1.1 time = 290
.meas tran vdout1_6ck57 FIND v(dout1_6) AT=290.025n

* CHECK dout1_7 Vdout1_7ck57 = 0 time = 290
.meas tran vdout1_7ck57 FIND v(dout1_7) AT=290.025n

* CHECK dout1_8 Vdout1_8ck57 = 1.1 time = 290
.meas tran vdout1_8ck57 FIND v(dout1_8) AT=290.025n

* CHECK dout1_9 Vdout1_9ck57 = 0 time = 290
.meas tran vdout1_9ck57 FIND v(dout1_9) AT=290.025n

* CHECK dout1_10 Vdout1_10ck57 = 0 time = 290
.meas tran vdout1_10ck57 FIND v(dout1_10) AT=290.025n

* CHECK dout1_11 Vdout1_11ck57 = 1.1 time = 290
.meas tran vdout1_11ck57 FIND v(dout1_11) AT=290.025n

* CHECK dout1_12 Vdout1_12ck57 = 0 time = 290
.meas tran vdout1_12ck57 FIND v(dout1_12) AT=290.025n

* CHECK dout1_13 Vdout1_13ck57 = 0 time = 290
.meas tran vdout1_13ck57 FIND v(dout1_13) AT=290.025n

* CHECK dout1_14 Vdout1_14ck57 = 1.1 time = 290
.meas tran vdout1_14ck57 FIND v(dout1_14) AT=290.025n

* CHECK dout1_15 Vdout1_15ck57 = 1.1 time = 290
.meas tran vdout1_15ck57 FIND v(dout1_15) AT=290.025n

* CHECK dout1_16 Vdout1_16ck57 = 0 time = 290
.meas tran vdout1_16ck57 FIND v(dout1_16) AT=290.025n

* CHECK dout1_17 Vdout1_17ck57 = 0 time = 290
.meas tran vdout1_17ck57 FIND v(dout1_17) AT=290.025n

* CHECK dout1_18 Vdout1_18ck57 = 1.1 time = 290
.meas tran vdout1_18ck57 FIND v(dout1_18) AT=290.025n

* CHECK dout1_19 Vdout1_19ck57 = 1.1 time = 290
.meas tran vdout1_19ck57 FIND v(dout1_19) AT=290.025n

* CHECK dout1_20 Vdout1_20ck57 = 1.1 time = 290
.meas tran vdout1_20ck57 FIND v(dout1_20) AT=290.025n

* CHECK dout1_21 Vdout1_21ck57 = 1.1 time = 290
.meas tran vdout1_21ck57 FIND v(dout1_21) AT=290.025n

* CHECK dout1_22 Vdout1_22ck57 = 1.1 time = 290
.meas tran vdout1_22ck57 FIND v(dout1_22) AT=290.025n

* CHECK dout1_23 Vdout1_23ck57 = 0 time = 290
.meas tran vdout1_23ck57 FIND v(dout1_23) AT=290.025n

* CHECK dout1_24 Vdout1_24ck57 = 0 time = 290
.meas tran vdout1_24ck57 FIND v(dout1_24) AT=290.025n

* CHECK dout1_25 Vdout1_25ck57 = 1.1 time = 290
.meas tran vdout1_25ck57 FIND v(dout1_25) AT=290.025n

* CHECK dout1_26 Vdout1_26ck57 = 1.1 time = 290
.meas tran vdout1_26ck57 FIND v(dout1_26) AT=290.025n

* CHECK dout1_27 Vdout1_27ck57 = 1.1 time = 290
.meas tran vdout1_27ck57 FIND v(dout1_27) AT=290.025n

* CHECK dout1_28 Vdout1_28ck57 = 0 time = 290
.meas tran vdout1_28ck57 FIND v(dout1_28) AT=290.025n

* CHECK dout1_29 Vdout1_29ck57 = 0 time = 290
.meas tran vdout1_29ck57 FIND v(dout1_29) AT=290.025n

* CHECK dout1_30 Vdout1_30ck57 = 0 time = 290
.meas tran vdout1_30ck57 FIND v(dout1_30) AT=290.025n

* CHECK dout1_31 Vdout1_31ck57 = 1.1 time = 290
.meas tran vdout1_31ck57 FIND v(dout1_31) AT=290.025n

* CHECK dout1_0 Vdout1_0ck62 = 1.1 time = 315
.meas tran vdout1_0ck62 FIND v(dout1_0) AT=315.025n

* CHECK dout1_1 Vdout1_1ck62 = 0 time = 315
.meas tran vdout1_1ck62 FIND v(dout1_1) AT=315.025n

* CHECK dout1_2 Vdout1_2ck62 = 1.1 time = 315
.meas tran vdout1_2ck62 FIND v(dout1_2) AT=315.025n

* CHECK dout1_3 Vdout1_3ck62 = 1.1 time = 315
.meas tran vdout1_3ck62 FIND v(dout1_3) AT=315.025n

* CHECK dout1_4 Vdout1_4ck62 = 1.1 time = 315
.meas tran vdout1_4ck62 FIND v(dout1_4) AT=315.025n

* CHECK dout1_5 Vdout1_5ck62 = 0 time = 315
.meas tran vdout1_5ck62 FIND v(dout1_5) AT=315.025n

* CHECK dout1_6 Vdout1_6ck62 = 0 time = 315
.meas tran vdout1_6ck62 FIND v(dout1_6) AT=315.025n

* CHECK dout1_7 Vdout1_7ck62 = 0 time = 315
.meas tran vdout1_7ck62 FIND v(dout1_7) AT=315.025n

* CHECK dout1_8 Vdout1_8ck62 = 0 time = 315
.meas tran vdout1_8ck62 FIND v(dout1_8) AT=315.025n

* CHECK dout1_9 Vdout1_9ck62 = 1.1 time = 315
.meas tran vdout1_9ck62 FIND v(dout1_9) AT=315.025n

* CHECK dout1_10 Vdout1_10ck62 = 0 time = 315
.meas tran vdout1_10ck62 FIND v(dout1_10) AT=315.025n

* CHECK dout1_11 Vdout1_11ck62 = 1.1 time = 315
.meas tran vdout1_11ck62 FIND v(dout1_11) AT=315.025n

* CHECK dout1_12 Vdout1_12ck62 = 1.1 time = 315
.meas tran vdout1_12ck62 FIND v(dout1_12) AT=315.025n

* CHECK dout1_13 Vdout1_13ck62 = 0 time = 315
.meas tran vdout1_13ck62 FIND v(dout1_13) AT=315.025n

* CHECK dout1_14 Vdout1_14ck62 = 0 time = 315
.meas tran vdout1_14ck62 FIND v(dout1_14) AT=315.025n

* CHECK dout1_15 Vdout1_15ck62 = 0 time = 315
.meas tran vdout1_15ck62 FIND v(dout1_15) AT=315.025n

* CHECK dout1_16 Vdout1_16ck62 = 1.1 time = 315
.meas tran vdout1_16ck62 FIND v(dout1_16) AT=315.025n

* CHECK dout1_17 Vdout1_17ck62 = 1.1 time = 315
.meas tran vdout1_17ck62 FIND v(dout1_17) AT=315.025n

* CHECK dout1_18 Vdout1_18ck62 = 1.1 time = 315
.meas tran vdout1_18ck62 FIND v(dout1_18) AT=315.025n

* CHECK dout1_19 Vdout1_19ck62 = 0 time = 315
.meas tran vdout1_19ck62 FIND v(dout1_19) AT=315.025n

* CHECK dout1_20 Vdout1_20ck62 = 0 time = 315
.meas tran vdout1_20ck62 FIND v(dout1_20) AT=315.025n

* CHECK dout1_21 Vdout1_21ck62 = 1.1 time = 315
.meas tran vdout1_21ck62 FIND v(dout1_21) AT=315.025n

* CHECK dout1_22 Vdout1_22ck62 = 0 time = 315
.meas tran vdout1_22ck62 FIND v(dout1_22) AT=315.025n

* CHECK dout1_23 Vdout1_23ck62 = 1.1 time = 315
.meas tran vdout1_23ck62 FIND v(dout1_23) AT=315.025n

* CHECK dout1_24 Vdout1_24ck62 = 0 time = 315
.meas tran vdout1_24ck62 FIND v(dout1_24) AT=315.025n

* CHECK dout1_25 Vdout1_25ck62 = 1.1 time = 315
.meas tran vdout1_25ck62 FIND v(dout1_25) AT=315.025n

* CHECK dout1_26 Vdout1_26ck62 = 0 time = 315
.meas tran vdout1_26ck62 FIND v(dout1_26) AT=315.025n

* CHECK dout1_27 Vdout1_27ck62 = 0 time = 315
.meas tran vdout1_27ck62 FIND v(dout1_27) AT=315.025n

* CHECK dout1_28 Vdout1_28ck62 = 1.1 time = 315
.meas tran vdout1_28ck62 FIND v(dout1_28) AT=315.025n

* CHECK dout1_29 Vdout1_29ck62 = 0 time = 315
.meas tran vdout1_29ck62 FIND v(dout1_29) AT=315.025n

* CHECK dout1_30 Vdout1_30ck62 = 1.1 time = 315
.meas tran vdout1_30ck62 FIND v(dout1_30) AT=315.025n

* CHECK dout1_31 Vdout1_31ck62 = 0 time = 315
.meas tran vdout1_31ck62 FIND v(dout1_31) AT=315.025n

* CHECK dout1_0 Vdout1_0ck63 = 1.1 time = 320
.meas tran vdout1_0ck63 FIND v(dout1_0) AT=320.025n

* CHECK dout1_1 Vdout1_1ck63 = 1.1 time = 320
.meas tran vdout1_1ck63 FIND v(dout1_1) AT=320.025n

* CHECK dout1_2 Vdout1_2ck63 = 0 time = 320
.meas tran vdout1_2ck63 FIND v(dout1_2) AT=320.025n

* CHECK dout1_3 Vdout1_3ck63 = 0 time = 320
.meas tran vdout1_3ck63 FIND v(dout1_3) AT=320.025n

* CHECK dout1_4 Vdout1_4ck63 = 1.1 time = 320
.meas tran vdout1_4ck63 FIND v(dout1_4) AT=320.025n

* CHECK dout1_5 Vdout1_5ck63 = 0 time = 320
.meas tran vdout1_5ck63 FIND v(dout1_5) AT=320.025n

* CHECK dout1_6 Vdout1_6ck63 = 1.1 time = 320
.meas tran vdout1_6ck63 FIND v(dout1_6) AT=320.025n

* CHECK dout1_7 Vdout1_7ck63 = 0 time = 320
.meas tran vdout1_7ck63 FIND v(dout1_7) AT=320.025n

* CHECK dout1_8 Vdout1_8ck63 = 1.1 time = 320
.meas tran vdout1_8ck63 FIND v(dout1_8) AT=320.025n

* CHECK dout1_9 Vdout1_9ck63 = 1.1 time = 320
.meas tran vdout1_9ck63 FIND v(dout1_9) AT=320.025n

* CHECK dout1_10 Vdout1_10ck63 = 0 time = 320
.meas tran vdout1_10ck63 FIND v(dout1_10) AT=320.025n

* CHECK dout1_11 Vdout1_11ck63 = 0 time = 320
.meas tran vdout1_11ck63 FIND v(dout1_11) AT=320.025n

* CHECK dout1_12 Vdout1_12ck63 = 0 time = 320
.meas tran vdout1_12ck63 FIND v(dout1_12) AT=320.025n

* CHECK dout1_13 Vdout1_13ck63 = 1.1 time = 320
.meas tran vdout1_13ck63 FIND v(dout1_13) AT=320.025n

* CHECK dout1_14 Vdout1_14ck63 = 0 time = 320
.meas tran vdout1_14ck63 FIND v(dout1_14) AT=320.025n

* CHECK dout1_15 Vdout1_15ck63 = 0 time = 320
.meas tran vdout1_15ck63 FIND v(dout1_15) AT=320.025n

* CHECK dout1_16 Vdout1_16ck63 = 0 time = 320
.meas tran vdout1_16ck63 FIND v(dout1_16) AT=320.025n

* CHECK dout1_17 Vdout1_17ck63 = 1.1 time = 320
.meas tran vdout1_17ck63 FIND v(dout1_17) AT=320.025n

* CHECK dout1_18 Vdout1_18ck63 = 1.1 time = 320
.meas tran vdout1_18ck63 FIND v(dout1_18) AT=320.025n

* CHECK dout1_19 Vdout1_19ck63 = 0 time = 320
.meas tran vdout1_19ck63 FIND v(dout1_19) AT=320.025n

* CHECK dout1_20 Vdout1_20ck63 = 1.1 time = 320
.meas tran vdout1_20ck63 FIND v(dout1_20) AT=320.025n

* CHECK dout1_21 Vdout1_21ck63 = 1.1 time = 320
.meas tran vdout1_21ck63 FIND v(dout1_21) AT=320.025n

* CHECK dout1_22 Vdout1_22ck63 = 1.1 time = 320
.meas tran vdout1_22ck63 FIND v(dout1_22) AT=320.025n

* CHECK dout1_23 Vdout1_23ck63 = 1.1 time = 320
.meas tran vdout1_23ck63 FIND v(dout1_23) AT=320.025n

* CHECK dout1_24 Vdout1_24ck63 = 0 time = 320
.meas tran vdout1_24ck63 FIND v(dout1_24) AT=320.025n

* CHECK dout1_25 Vdout1_25ck63 = 1.1 time = 320
.meas tran vdout1_25ck63 FIND v(dout1_25) AT=320.025n

* CHECK dout1_26 Vdout1_26ck63 = 0 time = 320
.meas tran vdout1_26ck63 FIND v(dout1_26) AT=320.025n

* CHECK dout1_27 Vdout1_27ck63 = 1.1 time = 320
.meas tran vdout1_27ck63 FIND v(dout1_27) AT=320.025n

* CHECK dout1_28 Vdout1_28ck63 = 1.1 time = 320
.meas tran vdout1_28ck63 FIND v(dout1_28) AT=320.025n

* CHECK dout1_29 Vdout1_29ck63 = 1.1 time = 320
.meas tran vdout1_29ck63 FIND v(dout1_29) AT=320.025n

* CHECK dout1_30 Vdout1_30ck63 = 1.1 time = 320
.meas tran vdout1_30ck63 FIND v(dout1_30) AT=320.025n

* CHECK dout1_31 Vdout1_31ck63 = 1.1 time = 320
.meas tran vdout1_31ck63 FIND v(dout1_31) AT=320.025n

* CHECK dout1_0 Vdout1_0ck64 = 1.1 time = 325
.meas tran vdout1_0ck64 FIND v(dout1_0) AT=325.025n

* CHECK dout1_1 Vdout1_1ck64 = 1.1 time = 325
.meas tran vdout1_1ck64 FIND v(dout1_1) AT=325.025n

* CHECK dout1_2 Vdout1_2ck64 = 0 time = 325
.meas tran vdout1_2ck64 FIND v(dout1_2) AT=325.025n

* CHECK dout1_3 Vdout1_3ck64 = 1.1 time = 325
.meas tran vdout1_3ck64 FIND v(dout1_3) AT=325.025n

* CHECK dout1_4 Vdout1_4ck64 = 0 time = 325
.meas tran vdout1_4ck64 FIND v(dout1_4) AT=325.025n

* CHECK dout1_5 Vdout1_5ck64 = 1.1 time = 325
.meas tran vdout1_5ck64 FIND v(dout1_5) AT=325.025n

* CHECK dout1_6 Vdout1_6ck64 = 1.1 time = 325
.meas tran vdout1_6ck64 FIND v(dout1_6) AT=325.025n

* CHECK dout1_7 Vdout1_7ck64 = 0 time = 325
.meas tran vdout1_7ck64 FIND v(dout1_7) AT=325.025n

* CHECK dout1_8 Vdout1_8ck64 = 1.1 time = 325
.meas tran vdout1_8ck64 FIND v(dout1_8) AT=325.025n

* CHECK dout1_9 Vdout1_9ck64 = 1.1 time = 325
.meas tran vdout1_9ck64 FIND v(dout1_9) AT=325.025n

* CHECK dout1_10 Vdout1_10ck64 = 0 time = 325
.meas tran vdout1_10ck64 FIND v(dout1_10) AT=325.025n

* CHECK dout1_11 Vdout1_11ck64 = 0 time = 325
.meas tran vdout1_11ck64 FIND v(dout1_11) AT=325.025n

* CHECK dout1_12 Vdout1_12ck64 = 0 time = 325
.meas tran vdout1_12ck64 FIND v(dout1_12) AT=325.025n

* CHECK dout1_13 Vdout1_13ck64 = 0 time = 325
.meas tran vdout1_13ck64 FIND v(dout1_13) AT=325.025n

* CHECK dout1_14 Vdout1_14ck64 = 0 time = 325
.meas tran vdout1_14ck64 FIND v(dout1_14) AT=325.025n

* CHECK dout1_15 Vdout1_15ck64 = 1.1 time = 325
.meas tran vdout1_15ck64 FIND v(dout1_15) AT=325.025n

* CHECK dout1_16 Vdout1_16ck64 = 1.1 time = 325
.meas tran vdout1_16ck64 FIND v(dout1_16) AT=325.025n

* CHECK dout1_17 Vdout1_17ck64 = 0 time = 325
.meas tran vdout1_17ck64 FIND v(dout1_17) AT=325.025n

* CHECK dout1_18 Vdout1_18ck64 = 0 time = 325
.meas tran vdout1_18ck64 FIND v(dout1_18) AT=325.025n

* CHECK dout1_19 Vdout1_19ck64 = 1.1 time = 325
.meas tran vdout1_19ck64 FIND v(dout1_19) AT=325.025n

* CHECK dout1_20 Vdout1_20ck64 = 0 time = 325
.meas tran vdout1_20ck64 FIND v(dout1_20) AT=325.025n

* CHECK dout1_21 Vdout1_21ck64 = 1.1 time = 325
.meas tran vdout1_21ck64 FIND v(dout1_21) AT=325.025n

* CHECK dout1_22 Vdout1_22ck64 = 1.1 time = 325
.meas tran vdout1_22ck64 FIND v(dout1_22) AT=325.025n

* CHECK dout1_23 Vdout1_23ck64 = 1.1 time = 325
.meas tran vdout1_23ck64 FIND v(dout1_23) AT=325.025n

* CHECK dout1_24 Vdout1_24ck64 = 1.1 time = 325
.meas tran vdout1_24ck64 FIND v(dout1_24) AT=325.025n

* CHECK dout1_25 Vdout1_25ck64 = 0 time = 325
.meas tran vdout1_25ck64 FIND v(dout1_25) AT=325.025n

* CHECK dout1_26 Vdout1_26ck64 = 0 time = 325
.meas tran vdout1_26ck64 FIND v(dout1_26) AT=325.025n

* CHECK dout1_27 Vdout1_27ck64 = 0 time = 325
.meas tran vdout1_27ck64 FIND v(dout1_27) AT=325.025n

* CHECK dout1_28 Vdout1_28ck64 = 0 time = 325
.meas tran vdout1_28ck64 FIND v(dout1_28) AT=325.025n

* CHECK dout1_29 Vdout1_29ck64 = 0 time = 325
.meas tran vdout1_29ck64 FIND v(dout1_29) AT=325.025n

* CHECK dout1_30 Vdout1_30ck64 = 1.1 time = 325
.meas tran vdout1_30ck64 FIND v(dout1_30) AT=325.025n

* CHECK dout1_31 Vdout1_31ck64 = 0 time = 325
.meas tran vdout1_31ck64 FIND v(dout1_31) AT=325.025n

* CHECK dout1_0 Vdout1_0ck66 = 1.1 time = 335
.meas tran vdout1_0ck66 FIND v(dout1_0) AT=335.025n

* CHECK dout1_1 Vdout1_1ck66 = 1.1 time = 335
.meas tran vdout1_1ck66 FIND v(dout1_1) AT=335.025n

* CHECK dout1_2 Vdout1_2ck66 = 1.1 time = 335
.meas tran vdout1_2ck66 FIND v(dout1_2) AT=335.025n

* CHECK dout1_3 Vdout1_3ck66 = 0 time = 335
.meas tran vdout1_3ck66 FIND v(dout1_3) AT=335.025n

* CHECK dout1_4 Vdout1_4ck66 = 0 time = 335
.meas tran vdout1_4ck66 FIND v(dout1_4) AT=335.025n

* CHECK dout1_5 Vdout1_5ck66 = 1.1 time = 335
.meas tran vdout1_5ck66 FIND v(dout1_5) AT=335.025n

* CHECK dout1_6 Vdout1_6ck66 = 1.1 time = 335
.meas tran vdout1_6ck66 FIND v(dout1_6) AT=335.025n

* CHECK dout1_7 Vdout1_7ck66 = 1.1 time = 335
.meas tran vdout1_7ck66 FIND v(dout1_7) AT=335.025n

* CHECK dout1_8 Vdout1_8ck66 = 1.1 time = 335
.meas tran vdout1_8ck66 FIND v(dout1_8) AT=335.025n

* CHECK dout1_9 Vdout1_9ck66 = 0 time = 335
.meas tran vdout1_9ck66 FIND v(dout1_9) AT=335.025n

* CHECK dout1_10 Vdout1_10ck66 = 0 time = 335
.meas tran vdout1_10ck66 FIND v(dout1_10) AT=335.025n

* CHECK dout1_11 Vdout1_11ck66 = 0 time = 335
.meas tran vdout1_11ck66 FIND v(dout1_11) AT=335.025n

* CHECK dout1_12 Vdout1_12ck66 = 0 time = 335
.meas tran vdout1_12ck66 FIND v(dout1_12) AT=335.025n

* CHECK dout1_13 Vdout1_13ck66 = 1.1 time = 335
.meas tran vdout1_13ck66 FIND v(dout1_13) AT=335.025n

* CHECK dout1_14 Vdout1_14ck66 = 0 time = 335
.meas tran vdout1_14ck66 FIND v(dout1_14) AT=335.025n

* CHECK dout1_15 Vdout1_15ck66 = 0 time = 335
.meas tran vdout1_15ck66 FIND v(dout1_15) AT=335.025n

* CHECK dout1_16 Vdout1_16ck66 = 1.1 time = 335
.meas tran vdout1_16ck66 FIND v(dout1_16) AT=335.025n

* CHECK dout1_17 Vdout1_17ck66 = 0 time = 335
.meas tran vdout1_17ck66 FIND v(dout1_17) AT=335.025n

* CHECK dout1_18 Vdout1_18ck66 = 0 time = 335
.meas tran vdout1_18ck66 FIND v(dout1_18) AT=335.025n

* CHECK dout1_19 Vdout1_19ck66 = 1.1 time = 335
.meas tran vdout1_19ck66 FIND v(dout1_19) AT=335.025n

* CHECK dout1_20 Vdout1_20ck66 = 0 time = 335
.meas tran vdout1_20ck66 FIND v(dout1_20) AT=335.025n

* CHECK dout1_21 Vdout1_21ck66 = 1.1 time = 335
.meas tran vdout1_21ck66 FIND v(dout1_21) AT=335.025n

* CHECK dout1_22 Vdout1_22ck66 = 1.1 time = 335
.meas tran vdout1_22ck66 FIND v(dout1_22) AT=335.025n

* CHECK dout1_23 Vdout1_23ck66 = 0 time = 335
.meas tran vdout1_23ck66 FIND v(dout1_23) AT=335.025n

* CHECK dout1_24 Vdout1_24ck66 = 1.1 time = 335
.meas tran vdout1_24ck66 FIND v(dout1_24) AT=335.025n

* CHECK dout1_25 Vdout1_25ck66 = 0 time = 335
.meas tran vdout1_25ck66 FIND v(dout1_25) AT=335.025n

* CHECK dout1_26 Vdout1_26ck66 = 0 time = 335
.meas tran vdout1_26ck66 FIND v(dout1_26) AT=335.025n

* CHECK dout1_27 Vdout1_27ck66 = 1.1 time = 335
.meas tran vdout1_27ck66 FIND v(dout1_27) AT=335.025n

* CHECK dout1_28 Vdout1_28ck66 = 1.1 time = 335
.meas tran vdout1_28ck66 FIND v(dout1_28) AT=335.025n

* CHECK dout1_29 Vdout1_29ck66 = 1.1 time = 335
.meas tran vdout1_29ck66 FIND v(dout1_29) AT=335.025n

* CHECK dout1_30 Vdout1_30ck66 = 1.1 time = 335
.meas tran vdout1_30ck66 FIND v(dout1_30) AT=335.025n

* CHECK dout1_31 Vdout1_31ck66 = 0 time = 335
.meas tran vdout1_31ck66 FIND v(dout1_31) AT=335.025n

* CHECK dout1_0 Vdout1_0ck70 = 1.1 time = 355
.meas tran vdout1_0ck70 FIND v(dout1_0) AT=355.025n

* CHECK dout1_1 Vdout1_1ck70 = 1.1 time = 355
.meas tran vdout1_1ck70 FIND v(dout1_1) AT=355.025n

* CHECK dout1_2 Vdout1_2ck70 = 1.1 time = 355
.meas tran vdout1_2ck70 FIND v(dout1_2) AT=355.025n

* CHECK dout1_3 Vdout1_3ck70 = 0 time = 355
.meas tran vdout1_3ck70 FIND v(dout1_3) AT=355.025n

* CHECK dout1_4 Vdout1_4ck70 = 0 time = 355
.meas tran vdout1_4ck70 FIND v(dout1_4) AT=355.025n

* CHECK dout1_5 Vdout1_5ck70 = 1.1 time = 355
.meas tran vdout1_5ck70 FIND v(dout1_5) AT=355.025n

* CHECK dout1_6 Vdout1_6ck70 = 1.1 time = 355
.meas tran vdout1_6ck70 FIND v(dout1_6) AT=355.025n

* CHECK dout1_7 Vdout1_7ck70 = 1.1 time = 355
.meas tran vdout1_7ck70 FIND v(dout1_7) AT=355.025n

* CHECK dout1_8 Vdout1_8ck70 = 1.1 time = 355
.meas tran vdout1_8ck70 FIND v(dout1_8) AT=355.025n

* CHECK dout1_9 Vdout1_9ck70 = 0 time = 355
.meas tran vdout1_9ck70 FIND v(dout1_9) AT=355.025n

* CHECK dout1_10 Vdout1_10ck70 = 0 time = 355
.meas tran vdout1_10ck70 FIND v(dout1_10) AT=355.025n

* CHECK dout1_11 Vdout1_11ck70 = 0 time = 355
.meas tran vdout1_11ck70 FIND v(dout1_11) AT=355.025n

* CHECK dout1_12 Vdout1_12ck70 = 0 time = 355
.meas tran vdout1_12ck70 FIND v(dout1_12) AT=355.025n

* CHECK dout1_13 Vdout1_13ck70 = 1.1 time = 355
.meas tran vdout1_13ck70 FIND v(dout1_13) AT=355.025n

* CHECK dout1_14 Vdout1_14ck70 = 0 time = 355
.meas tran vdout1_14ck70 FIND v(dout1_14) AT=355.025n

* CHECK dout1_15 Vdout1_15ck70 = 0 time = 355
.meas tran vdout1_15ck70 FIND v(dout1_15) AT=355.025n

* CHECK dout1_16 Vdout1_16ck70 = 1.1 time = 355
.meas tran vdout1_16ck70 FIND v(dout1_16) AT=355.025n

* CHECK dout1_17 Vdout1_17ck70 = 0 time = 355
.meas tran vdout1_17ck70 FIND v(dout1_17) AT=355.025n

* CHECK dout1_18 Vdout1_18ck70 = 0 time = 355
.meas tran vdout1_18ck70 FIND v(dout1_18) AT=355.025n

* CHECK dout1_19 Vdout1_19ck70 = 1.1 time = 355
.meas tran vdout1_19ck70 FIND v(dout1_19) AT=355.025n

* CHECK dout1_20 Vdout1_20ck70 = 0 time = 355
.meas tran vdout1_20ck70 FIND v(dout1_20) AT=355.025n

* CHECK dout1_21 Vdout1_21ck70 = 1.1 time = 355
.meas tran vdout1_21ck70 FIND v(dout1_21) AT=355.025n

* CHECK dout1_22 Vdout1_22ck70 = 1.1 time = 355
.meas tran vdout1_22ck70 FIND v(dout1_22) AT=355.025n

* CHECK dout1_23 Vdout1_23ck70 = 0 time = 355
.meas tran vdout1_23ck70 FIND v(dout1_23) AT=355.025n

* CHECK dout1_24 Vdout1_24ck70 = 1.1 time = 355
.meas tran vdout1_24ck70 FIND v(dout1_24) AT=355.025n

* CHECK dout1_25 Vdout1_25ck70 = 0 time = 355
.meas tran vdout1_25ck70 FIND v(dout1_25) AT=355.025n

* CHECK dout1_26 Vdout1_26ck70 = 0 time = 355
.meas tran vdout1_26ck70 FIND v(dout1_26) AT=355.025n

* CHECK dout1_27 Vdout1_27ck70 = 1.1 time = 355
.meas tran vdout1_27ck70 FIND v(dout1_27) AT=355.025n

* CHECK dout1_28 Vdout1_28ck70 = 1.1 time = 355
.meas tran vdout1_28ck70 FIND v(dout1_28) AT=355.025n

* CHECK dout1_29 Vdout1_29ck70 = 1.1 time = 355
.meas tran vdout1_29ck70 FIND v(dout1_29) AT=355.025n

* CHECK dout1_30 Vdout1_30ck70 = 1.1 time = 355
.meas tran vdout1_30ck70 FIND v(dout1_30) AT=355.025n

* CHECK dout1_31 Vdout1_31ck70 = 0 time = 355
.meas tran vdout1_31ck70 FIND v(dout1_31) AT=355.025n

* CHECK dout1_0 Vdout1_0ck73 = 1.1 time = 370
.meas tran vdout1_0ck73 FIND v(dout1_0) AT=370.025n

* CHECK dout1_1 Vdout1_1ck73 = 1.1 time = 370
.meas tran vdout1_1ck73 FIND v(dout1_1) AT=370.025n

* CHECK dout1_2 Vdout1_2ck73 = 1.1 time = 370
.meas tran vdout1_2ck73 FIND v(dout1_2) AT=370.025n

* CHECK dout1_3 Vdout1_3ck73 = 0 time = 370
.meas tran vdout1_3ck73 FIND v(dout1_3) AT=370.025n

* CHECK dout1_4 Vdout1_4ck73 = 0 time = 370
.meas tran vdout1_4ck73 FIND v(dout1_4) AT=370.025n

* CHECK dout1_5 Vdout1_5ck73 = 1.1 time = 370
.meas tran vdout1_5ck73 FIND v(dout1_5) AT=370.025n

* CHECK dout1_6 Vdout1_6ck73 = 1.1 time = 370
.meas tran vdout1_6ck73 FIND v(dout1_6) AT=370.025n

* CHECK dout1_7 Vdout1_7ck73 = 1.1 time = 370
.meas tran vdout1_7ck73 FIND v(dout1_7) AT=370.025n

* CHECK dout1_8 Vdout1_8ck73 = 1.1 time = 370
.meas tran vdout1_8ck73 FIND v(dout1_8) AT=370.025n

* CHECK dout1_9 Vdout1_9ck73 = 0 time = 370
.meas tran vdout1_9ck73 FIND v(dout1_9) AT=370.025n

* CHECK dout1_10 Vdout1_10ck73 = 0 time = 370
.meas tran vdout1_10ck73 FIND v(dout1_10) AT=370.025n

* CHECK dout1_11 Vdout1_11ck73 = 0 time = 370
.meas tran vdout1_11ck73 FIND v(dout1_11) AT=370.025n

* CHECK dout1_12 Vdout1_12ck73 = 0 time = 370
.meas tran vdout1_12ck73 FIND v(dout1_12) AT=370.025n

* CHECK dout1_13 Vdout1_13ck73 = 1.1 time = 370
.meas tran vdout1_13ck73 FIND v(dout1_13) AT=370.025n

* CHECK dout1_14 Vdout1_14ck73 = 0 time = 370
.meas tran vdout1_14ck73 FIND v(dout1_14) AT=370.025n

* CHECK dout1_15 Vdout1_15ck73 = 0 time = 370
.meas tran vdout1_15ck73 FIND v(dout1_15) AT=370.025n

* CHECK dout1_16 Vdout1_16ck73 = 1.1 time = 370
.meas tran vdout1_16ck73 FIND v(dout1_16) AT=370.025n

* CHECK dout1_17 Vdout1_17ck73 = 0 time = 370
.meas tran vdout1_17ck73 FIND v(dout1_17) AT=370.025n

* CHECK dout1_18 Vdout1_18ck73 = 0 time = 370
.meas tran vdout1_18ck73 FIND v(dout1_18) AT=370.025n

* CHECK dout1_19 Vdout1_19ck73 = 1.1 time = 370
.meas tran vdout1_19ck73 FIND v(dout1_19) AT=370.025n

* CHECK dout1_20 Vdout1_20ck73 = 0 time = 370
.meas tran vdout1_20ck73 FIND v(dout1_20) AT=370.025n

* CHECK dout1_21 Vdout1_21ck73 = 1.1 time = 370
.meas tran vdout1_21ck73 FIND v(dout1_21) AT=370.025n

* CHECK dout1_22 Vdout1_22ck73 = 1.1 time = 370
.meas tran vdout1_22ck73 FIND v(dout1_22) AT=370.025n

* CHECK dout1_23 Vdout1_23ck73 = 0 time = 370
.meas tran vdout1_23ck73 FIND v(dout1_23) AT=370.025n

* CHECK dout1_24 Vdout1_24ck73 = 1.1 time = 370
.meas tran vdout1_24ck73 FIND v(dout1_24) AT=370.025n

* CHECK dout1_25 Vdout1_25ck73 = 0 time = 370
.meas tran vdout1_25ck73 FIND v(dout1_25) AT=370.025n

* CHECK dout1_26 Vdout1_26ck73 = 0 time = 370
.meas tran vdout1_26ck73 FIND v(dout1_26) AT=370.025n

* CHECK dout1_27 Vdout1_27ck73 = 1.1 time = 370
.meas tran vdout1_27ck73 FIND v(dout1_27) AT=370.025n

* CHECK dout1_28 Vdout1_28ck73 = 1.1 time = 370
.meas tran vdout1_28ck73 FIND v(dout1_28) AT=370.025n

* CHECK dout1_29 Vdout1_29ck73 = 1.1 time = 370
.meas tran vdout1_29ck73 FIND v(dout1_29) AT=370.025n

* CHECK dout1_30 Vdout1_30ck73 = 1.1 time = 370
.meas tran vdout1_30ck73 FIND v(dout1_30) AT=370.025n

* CHECK dout1_31 Vdout1_31ck73 = 0 time = 370
.meas tran vdout1_31ck73 FIND v(dout1_31) AT=370.025n

* CHECK dout1_0 Vdout1_0ck75 = 0 time = 380
.meas tran vdout1_0ck75 FIND v(dout1_0) AT=380.025n

* CHECK dout1_1 Vdout1_1ck75 = 0 time = 380
.meas tran vdout1_1ck75 FIND v(dout1_1) AT=380.025n

* CHECK dout1_2 Vdout1_2ck75 = 0 time = 380
.meas tran vdout1_2ck75 FIND v(dout1_2) AT=380.025n

* CHECK dout1_3 Vdout1_3ck75 = 1.1 time = 380
.meas tran vdout1_3ck75 FIND v(dout1_3) AT=380.025n

* CHECK dout1_4 Vdout1_4ck75 = 1.1 time = 380
.meas tran vdout1_4ck75 FIND v(dout1_4) AT=380.025n

* CHECK dout1_5 Vdout1_5ck75 = 0 time = 380
.meas tran vdout1_5ck75 FIND v(dout1_5) AT=380.025n

* CHECK dout1_6 Vdout1_6ck75 = 0 time = 380
.meas tran vdout1_6ck75 FIND v(dout1_6) AT=380.025n

* CHECK dout1_7 Vdout1_7ck75 = 1.1 time = 380
.meas tran vdout1_7ck75 FIND v(dout1_7) AT=380.025n

* CHECK dout1_8 Vdout1_8ck75 = 0 time = 380
.meas tran vdout1_8ck75 FIND v(dout1_8) AT=380.025n

* CHECK dout1_9 Vdout1_9ck75 = 0 time = 380
.meas tran vdout1_9ck75 FIND v(dout1_9) AT=380.025n

* CHECK dout1_10 Vdout1_10ck75 = 1.1 time = 380
.meas tran vdout1_10ck75 FIND v(dout1_10) AT=380.025n

* CHECK dout1_11 Vdout1_11ck75 = 0 time = 380
.meas tran vdout1_11ck75 FIND v(dout1_11) AT=380.025n

* CHECK dout1_12 Vdout1_12ck75 = 1.1 time = 380
.meas tran vdout1_12ck75 FIND v(dout1_12) AT=380.025n

* CHECK dout1_13 Vdout1_13ck75 = 1.1 time = 380
.meas tran vdout1_13ck75 FIND v(dout1_13) AT=380.025n

* CHECK dout1_14 Vdout1_14ck75 = 0 time = 380
.meas tran vdout1_14ck75 FIND v(dout1_14) AT=380.025n

* CHECK dout1_15 Vdout1_15ck75 = 1.1 time = 380
.meas tran vdout1_15ck75 FIND v(dout1_15) AT=380.025n

* CHECK dout1_16 Vdout1_16ck75 = 0 time = 380
.meas tran vdout1_16ck75 FIND v(dout1_16) AT=380.025n

* CHECK dout1_17 Vdout1_17ck75 = 0 time = 380
.meas tran vdout1_17ck75 FIND v(dout1_17) AT=380.025n

* CHECK dout1_18 Vdout1_18ck75 = 0 time = 380
.meas tran vdout1_18ck75 FIND v(dout1_18) AT=380.025n

* CHECK dout1_19 Vdout1_19ck75 = 0 time = 380
.meas tran vdout1_19ck75 FIND v(dout1_19) AT=380.025n

* CHECK dout1_20 Vdout1_20ck75 = 0 time = 380
.meas tran vdout1_20ck75 FIND v(dout1_20) AT=380.025n

* CHECK dout1_21 Vdout1_21ck75 = 1.1 time = 380
.meas tran vdout1_21ck75 FIND v(dout1_21) AT=380.025n

* CHECK dout1_22 Vdout1_22ck75 = 0 time = 380
.meas tran vdout1_22ck75 FIND v(dout1_22) AT=380.025n

* CHECK dout1_23 Vdout1_23ck75 = 0 time = 380
.meas tran vdout1_23ck75 FIND v(dout1_23) AT=380.025n

* CHECK dout1_24 Vdout1_24ck75 = 0 time = 380
.meas tran vdout1_24ck75 FIND v(dout1_24) AT=380.025n

* CHECK dout1_25 Vdout1_25ck75 = 1.1 time = 380
.meas tran vdout1_25ck75 FIND v(dout1_25) AT=380.025n

* CHECK dout1_26 Vdout1_26ck75 = 1.1 time = 380
.meas tran vdout1_26ck75 FIND v(dout1_26) AT=380.025n

* CHECK dout1_27 Vdout1_27ck75 = 1.1 time = 380
.meas tran vdout1_27ck75 FIND v(dout1_27) AT=380.025n

* CHECK dout1_28 Vdout1_28ck75 = 1.1 time = 380
.meas tran vdout1_28ck75 FIND v(dout1_28) AT=380.025n

* CHECK dout1_29 Vdout1_29ck75 = 1.1 time = 380
.meas tran vdout1_29ck75 FIND v(dout1_29) AT=380.025n

* CHECK dout1_30 Vdout1_30ck75 = 1.1 time = 380
.meas tran vdout1_30ck75 FIND v(dout1_30) AT=380.025n

* CHECK dout1_31 Vdout1_31ck75 = 0 time = 380
.meas tran vdout1_31ck75 FIND v(dout1_31) AT=380.025n

* CHECK dout1_0 Vdout1_0ck77 = 1.1 time = 390
.meas tran vdout1_0ck77 FIND v(dout1_0) AT=390.025n

* CHECK dout1_1 Vdout1_1ck77 = 0 time = 390
.meas tran vdout1_1ck77 FIND v(dout1_1) AT=390.025n

* CHECK dout1_2 Vdout1_2ck77 = 1.1 time = 390
.meas tran vdout1_2ck77 FIND v(dout1_2) AT=390.025n

* CHECK dout1_3 Vdout1_3ck77 = 1.1 time = 390
.meas tran vdout1_3ck77 FIND v(dout1_3) AT=390.025n

* CHECK dout1_4 Vdout1_4ck77 = 0 time = 390
.meas tran vdout1_4ck77 FIND v(dout1_4) AT=390.025n

* CHECK dout1_5 Vdout1_5ck77 = 1.1 time = 390
.meas tran vdout1_5ck77 FIND v(dout1_5) AT=390.025n

* CHECK dout1_6 Vdout1_6ck77 = 0 time = 390
.meas tran vdout1_6ck77 FIND v(dout1_6) AT=390.025n

* CHECK dout1_7 Vdout1_7ck77 = 0 time = 390
.meas tran vdout1_7ck77 FIND v(dout1_7) AT=390.025n

* CHECK dout1_8 Vdout1_8ck77 = 0 time = 390
.meas tran vdout1_8ck77 FIND v(dout1_8) AT=390.025n

* CHECK dout1_9 Vdout1_9ck77 = 1.1 time = 390
.meas tran vdout1_9ck77 FIND v(dout1_9) AT=390.025n

* CHECK dout1_10 Vdout1_10ck77 = 0 time = 390
.meas tran vdout1_10ck77 FIND v(dout1_10) AT=390.025n

* CHECK dout1_11 Vdout1_11ck77 = 1.1 time = 390
.meas tran vdout1_11ck77 FIND v(dout1_11) AT=390.025n

* CHECK dout1_12 Vdout1_12ck77 = 1.1 time = 390
.meas tran vdout1_12ck77 FIND v(dout1_12) AT=390.025n

* CHECK dout1_13 Vdout1_13ck77 = 0 time = 390
.meas tran vdout1_13ck77 FIND v(dout1_13) AT=390.025n

* CHECK dout1_14 Vdout1_14ck77 = 0 time = 390
.meas tran vdout1_14ck77 FIND v(dout1_14) AT=390.025n

* CHECK dout1_15 Vdout1_15ck77 = 0 time = 390
.meas tran vdout1_15ck77 FIND v(dout1_15) AT=390.025n

* CHECK dout1_16 Vdout1_16ck77 = 0 time = 390
.meas tran vdout1_16ck77 FIND v(dout1_16) AT=390.025n

* CHECK dout1_17 Vdout1_17ck77 = 1.1 time = 390
.meas tran vdout1_17ck77 FIND v(dout1_17) AT=390.025n

* CHECK dout1_18 Vdout1_18ck77 = 1.1 time = 390
.meas tran vdout1_18ck77 FIND v(dout1_18) AT=390.025n

* CHECK dout1_19 Vdout1_19ck77 = 0 time = 390
.meas tran vdout1_19ck77 FIND v(dout1_19) AT=390.025n

* CHECK dout1_20 Vdout1_20ck77 = 0 time = 390
.meas tran vdout1_20ck77 FIND v(dout1_20) AT=390.025n

* CHECK dout1_21 Vdout1_21ck77 = 0 time = 390
.meas tran vdout1_21ck77 FIND v(dout1_21) AT=390.025n

* CHECK dout1_22 Vdout1_22ck77 = 1.1 time = 390
.meas tran vdout1_22ck77 FIND v(dout1_22) AT=390.025n

* CHECK dout1_23 Vdout1_23ck77 = 0 time = 390
.meas tran vdout1_23ck77 FIND v(dout1_23) AT=390.025n

* CHECK dout1_24 Vdout1_24ck77 = 0 time = 390
.meas tran vdout1_24ck77 FIND v(dout1_24) AT=390.025n

* CHECK dout1_25 Vdout1_25ck77 = 1.1 time = 390
.meas tran vdout1_25ck77 FIND v(dout1_25) AT=390.025n

* CHECK dout1_26 Vdout1_26ck77 = 0 time = 390
.meas tran vdout1_26ck77 FIND v(dout1_26) AT=390.025n

* CHECK dout1_27 Vdout1_27ck77 = 0 time = 390
.meas tran vdout1_27ck77 FIND v(dout1_27) AT=390.025n

* CHECK dout1_28 Vdout1_28ck77 = 1.1 time = 390
.meas tran vdout1_28ck77 FIND v(dout1_28) AT=390.025n

* CHECK dout1_29 Vdout1_29ck77 = 0 time = 390
.meas tran vdout1_29ck77 FIND v(dout1_29) AT=390.025n

* CHECK dout1_30 Vdout1_30ck77 = 1.1 time = 390
.meas tran vdout1_30ck77 FIND v(dout1_30) AT=390.025n

* CHECK dout1_31 Vdout1_31ck77 = 0 time = 390
.meas tran vdout1_31ck77 FIND v(dout1_31) AT=390.025n

* CHECK dout1_0 Vdout1_0ck81 = 1.1 time = 410
.meas tran vdout1_0ck81 FIND v(dout1_0) AT=410.025n

* CHECK dout1_1 Vdout1_1ck81 = 0 time = 410
.meas tran vdout1_1ck81 FIND v(dout1_1) AT=410.025n

* CHECK dout1_2 Vdout1_2ck81 = 0 time = 410
.meas tran vdout1_2ck81 FIND v(dout1_2) AT=410.025n

* CHECK dout1_3 Vdout1_3ck81 = 0 time = 410
.meas tran vdout1_3ck81 FIND v(dout1_3) AT=410.025n

* CHECK dout1_4 Vdout1_4ck81 = 0 time = 410
.meas tran vdout1_4ck81 FIND v(dout1_4) AT=410.025n

* CHECK dout1_5 Vdout1_5ck81 = 1.1 time = 410
.meas tran vdout1_5ck81 FIND v(dout1_5) AT=410.025n

* CHECK dout1_6 Vdout1_6ck81 = 0 time = 410
.meas tran vdout1_6ck81 FIND v(dout1_6) AT=410.025n

* CHECK dout1_7 Vdout1_7ck81 = 1.1 time = 410
.meas tran vdout1_7ck81 FIND v(dout1_7) AT=410.025n

* CHECK dout1_8 Vdout1_8ck81 = 0 time = 410
.meas tran vdout1_8ck81 FIND v(dout1_8) AT=410.025n

* CHECK dout1_9 Vdout1_9ck81 = 1.1 time = 410
.meas tran vdout1_9ck81 FIND v(dout1_9) AT=410.025n

* CHECK dout1_10 Vdout1_10ck81 = 0 time = 410
.meas tran vdout1_10ck81 FIND v(dout1_10) AT=410.025n

* CHECK dout1_11 Vdout1_11ck81 = 0 time = 410
.meas tran vdout1_11ck81 FIND v(dout1_11) AT=410.025n

* CHECK dout1_12 Vdout1_12ck81 = 0 time = 410
.meas tran vdout1_12ck81 FIND v(dout1_12) AT=410.025n

* CHECK dout1_13 Vdout1_13ck81 = 1.1 time = 410
.meas tran vdout1_13ck81 FIND v(dout1_13) AT=410.025n

* CHECK dout1_14 Vdout1_14ck81 = 0 time = 410
.meas tran vdout1_14ck81 FIND v(dout1_14) AT=410.025n

* CHECK dout1_15 Vdout1_15ck81 = 0 time = 410
.meas tran vdout1_15ck81 FIND v(dout1_15) AT=410.025n

* CHECK dout1_16 Vdout1_16ck81 = 0 time = 410
.meas tran vdout1_16ck81 FIND v(dout1_16) AT=410.025n

* CHECK dout1_17 Vdout1_17ck81 = 0 time = 410
.meas tran vdout1_17ck81 FIND v(dout1_17) AT=410.025n

* CHECK dout1_18 Vdout1_18ck81 = 1.1 time = 410
.meas tran vdout1_18ck81 FIND v(dout1_18) AT=410.025n

* CHECK dout1_19 Vdout1_19ck81 = 0 time = 410
.meas tran vdout1_19ck81 FIND v(dout1_19) AT=410.025n

* CHECK dout1_20 Vdout1_20ck81 = 0 time = 410
.meas tran vdout1_20ck81 FIND v(dout1_20) AT=410.025n

* CHECK dout1_21 Vdout1_21ck81 = 1.1 time = 410
.meas tran vdout1_21ck81 FIND v(dout1_21) AT=410.025n

* CHECK dout1_22 Vdout1_22ck81 = 1.1 time = 410
.meas tran vdout1_22ck81 FIND v(dout1_22) AT=410.025n

* CHECK dout1_23 Vdout1_23ck81 = 1.1 time = 410
.meas tran vdout1_23ck81 FIND v(dout1_23) AT=410.025n

* CHECK dout1_24 Vdout1_24ck81 = 0 time = 410
.meas tran vdout1_24ck81 FIND v(dout1_24) AT=410.025n

* CHECK dout1_25 Vdout1_25ck81 = 0 time = 410
.meas tran vdout1_25ck81 FIND v(dout1_25) AT=410.025n

* CHECK dout1_26 Vdout1_26ck81 = 0 time = 410
.meas tran vdout1_26ck81 FIND v(dout1_26) AT=410.025n

* CHECK dout1_27 Vdout1_27ck81 = 1.1 time = 410
.meas tran vdout1_27ck81 FIND v(dout1_27) AT=410.025n

* CHECK dout1_28 Vdout1_28ck81 = 1.1 time = 410
.meas tran vdout1_28ck81 FIND v(dout1_28) AT=410.025n

* CHECK dout1_29 Vdout1_29ck81 = 1.1 time = 410
.meas tran vdout1_29ck81 FIND v(dout1_29) AT=410.025n

* CHECK dout1_30 Vdout1_30ck81 = 0 time = 410
.meas tran vdout1_30ck81 FIND v(dout1_30) AT=410.025n

* CHECK dout1_31 Vdout1_31ck81 = 0 time = 410
.meas tran vdout1_31ck81 FIND v(dout1_31) AT=410.025n

* CHECK dout1_0 Vdout1_0ck83 = 1.1 time = 420
.meas tran vdout1_0ck83 FIND v(dout1_0) AT=420.025n

* CHECK dout1_1 Vdout1_1ck83 = 1.1 time = 420
.meas tran vdout1_1ck83 FIND v(dout1_1) AT=420.025n

* CHECK dout1_2 Vdout1_2ck83 = 1.1 time = 420
.meas tran vdout1_2ck83 FIND v(dout1_2) AT=420.025n

* CHECK dout1_3 Vdout1_3ck83 = 0 time = 420
.meas tran vdout1_3ck83 FIND v(dout1_3) AT=420.025n

* CHECK dout1_4 Vdout1_4ck83 = 1.1 time = 420
.meas tran vdout1_4ck83 FIND v(dout1_4) AT=420.025n

* CHECK dout1_5 Vdout1_5ck83 = 0 time = 420
.meas tran vdout1_5ck83 FIND v(dout1_5) AT=420.025n

* CHECK dout1_6 Vdout1_6ck83 = 0 time = 420
.meas tran vdout1_6ck83 FIND v(dout1_6) AT=420.025n

* CHECK dout1_7 Vdout1_7ck83 = 1.1 time = 420
.meas tran vdout1_7ck83 FIND v(dout1_7) AT=420.025n

* CHECK dout1_8 Vdout1_8ck83 = 1.1 time = 420
.meas tran vdout1_8ck83 FIND v(dout1_8) AT=420.025n

* CHECK dout1_9 Vdout1_9ck83 = 1.1 time = 420
.meas tran vdout1_9ck83 FIND v(dout1_9) AT=420.025n

* CHECK dout1_10 Vdout1_10ck83 = 1.1 time = 420
.meas tran vdout1_10ck83 FIND v(dout1_10) AT=420.025n

* CHECK dout1_11 Vdout1_11ck83 = 1.1 time = 420
.meas tran vdout1_11ck83 FIND v(dout1_11) AT=420.025n

* CHECK dout1_12 Vdout1_12ck83 = 0 time = 420
.meas tran vdout1_12ck83 FIND v(dout1_12) AT=420.025n

* CHECK dout1_13 Vdout1_13ck83 = 0 time = 420
.meas tran vdout1_13ck83 FIND v(dout1_13) AT=420.025n

* CHECK dout1_14 Vdout1_14ck83 = 1.1 time = 420
.meas tran vdout1_14ck83 FIND v(dout1_14) AT=420.025n

* CHECK dout1_15 Vdout1_15ck83 = 0 time = 420
.meas tran vdout1_15ck83 FIND v(dout1_15) AT=420.025n

* CHECK dout1_16 Vdout1_16ck83 = 1.1 time = 420
.meas tran vdout1_16ck83 FIND v(dout1_16) AT=420.025n

* CHECK dout1_17 Vdout1_17ck83 = 1.1 time = 420
.meas tran vdout1_17ck83 FIND v(dout1_17) AT=420.025n

* CHECK dout1_18 Vdout1_18ck83 = 0 time = 420
.meas tran vdout1_18ck83 FIND v(dout1_18) AT=420.025n

* CHECK dout1_19 Vdout1_19ck83 = 1.1 time = 420
.meas tran vdout1_19ck83 FIND v(dout1_19) AT=420.025n

* CHECK dout1_20 Vdout1_20ck83 = 1.1 time = 420
.meas tran vdout1_20ck83 FIND v(dout1_20) AT=420.025n

* CHECK dout1_21 Vdout1_21ck83 = 0 time = 420
.meas tran vdout1_21ck83 FIND v(dout1_21) AT=420.025n

* CHECK dout1_22 Vdout1_22ck83 = 1.1 time = 420
.meas tran vdout1_22ck83 FIND v(dout1_22) AT=420.025n

* CHECK dout1_23 Vdout1_23ck83 = 1.1 time = 420
.meas tran vdout1_23ck83 FIND v(dout1_23) AT=420.025n

* CHECK dout1_24 Vdout1_24ck83 = 0 time = 420
.meas tran vdout1_24ck83 FIND v(dout1_24) AT=420.025n

* CHECK dout1_25 Vdout1_25ck83 = 1.1 time = 420
.meas tran vdout1_25ck83 FIND v(dout1_25) AT=420.025n

* CHECK dout1_26 Vdout1_26ck83 = 0 time = 420
.meas tran vdout1_26ck83 FIND v(dout1_26) AT=420.025n

* CHECK dout1_27 Vdout1_27ck83 = 1.1 time = 420
.meas tran vdout1_27ck83 FIND v(dout1_27) AT=420.025n

* CHECK dout1_28 Vdout1_28ck83 = 0 time = 420
.meas tran vdout1_28ck83 FIND v(dout1_28) AT=420.025n

* CHECK dout1_29 Vdout1_29ck83 = 0 time = 420
.meas tran vdout1_29ck83 FIND v(dout1_29) AT=420.025n

* CHECK dout1_30 Vdout1_30ck83 = 1.1 time = 420
.meas tran vdout1_30ck83 FIND v(dout1_30) AT=420.025n

* CHECK dout1_31 Vdout1_31ck83 = 1.1 time = 420
.meas tran vdout1_31ck83 FIND v(dout1_31) AT=420.025n

* CHECK dout1_0 Vdout1_0ck84 = 1.1 time = 425
.meas tran vdout1_0ck84 FIND v(dout1_0) AT=425.025n

* CHECK dout1_1 Vdout1_1ck84 = 1.1 time = 425
.meas tran vdout1_1ck84 FIND v(dout1_1) AT=425.025n

* CHECK dout1_2 Vdout1_2ck84 = 0 time = 425
.meas tran vdout1_2ck84 FIND v(dout1_2) AT=425.025n

* CHECK dout1_3 Vdout1_3ck84 = 0 time = 425
.meas tran vdout1_3ck84 FIND v(dout1_3) AT=425.025n

* CHECK dout1_4 Vdout1_4ck84 = 1.1 time = 425
.meas tran vdout1_4ck84 FIND v(dout1_4) AT=425.025n

* CHECK dout1_5 Vdout1_5ck84 = 0 time = 425
.meas tran vdout1_5ck84 FIND v(dout1_5) AT=425.025n

* CHECK dout1_6 Vdout1_6ck84 = 1.1 time = 425
.meas tran vdout1_6ck84 FIND v(dout1_6) AT=425.025n

* CHECK dout1_7 Vdout1_7ck84 = 0 time = 425
.meas tran vdout1_7ck84 FIND v(dout1_7) AT=425.025n

* CHECK dout1_8 Vdout1_8ck84 = 0 time = 425
.meas tran vdout1_8ck84 FIND v(dout1_8) AT=425.025n

* CHECK dout1_9 Vdout1_9ck84 = 1.1 time = 425
.meas tran vdout1_9ck84 FIND v(dout1_9) AT=425.025n

* CHECK dout1_10 Vdout1_10ck84 = 1.1 time = 425
.meas tran vdout1_10ck84 FIND v(dout1_10) AT=425.025n

* CHECK dout1_11 Vdout1_11ck84 = 1.1 time = 425
.meas tran vdout1_11ck84 FIND v(dout1_11) AT=425.025n

* CHECK dout1_12 Vdout1_12ck84 = 1.1 time = 425
.meas tran vdout1_12ck84 FIND v(dout1_12) AT=425.025n

* CHECK dout1_13 Vdout1_13ck84 = 1.1 time = 425
.meas tran vdout1_13ck84 FIND v(dout1_13) AT=425.025n

* CHECK dout1_14 Vdout1_14ck84 = 1.1 time = 425
.meas tran vdout1_14ck84 FIND v(dout1_14) AT=425.025n

* CHECK dout1_15 Vdout1_15ck84 = 1.1 time = 425
.meas tran vdout1_15ck84 FIND v(dout1_15) AT=425.025n

* CHECK dout1_16 Vdout1_16ck84 = 1.1 time = 425
.meas tran vdout1_16ck84 FIND v(dout1_16) AT=425.025n

* CHECK dout1_17 Vdout1_17ck84 = 1.1 time = 425
.meas tran vdout1_17ck84 FIND v(dout1_17) AT=425.025n

* CHECK dout1_18 Vdout1_18ck84 = 0 time = 425
.meas tran vdout1_18ck84 FIND v(dout1_18) AT=425.025n

* CHECK dout1_19 Vdout1_19ck84 = 1.1 time = 425
.meas tran vdout1_19ck84 FIND v(dout1_19) AT=425.025n

* CHECK dout1_20 Vdout1_20ck84 = 0 time = 425
.meas tran vdout1_20ck84 FIND v(dout1_20) AT=425.025n

* CHECK dout1_21 Vdout1_21ck84 = 1.1 time = 425
.meas tran vdout1_21ck84 FIND v(dout1_21) AT=425.025n

* CHECK dout1_22 Vdout1_22ck84 = 1.1 time = 425
.meas tran vdout1_22ck84 FIND v(dout1_22) AT=425.025n

* CHECK dout1_23 Vdout1_23ck84 = 1.1 time = 425
.meas tran vdout1_23ck84 FIND v(dout1_23) AT=425.025n

* CHECK dout1_24 Vdout1_24ck84 = 1.1 time = 425
.meas tran vdout1_24ck84 FIND v(dout1_24) AT=425.025n

* CHECK dout1_25 Vdout1_25ck84 = 1.1 time = 425
.meas tran vdout1_25ck84 FIND v(dout1_25) AT=425.025n

* CHECK dout1_26 Vdout1_26ck84 = 0 time = 425
.meas tran vdout1_26ck84 FIND v(dout1_26) AT=425.025n

* CHECK dout1_27 Vdout1_27ck84 = 0 time = 425
.meas tran vdout1_27ck84 FIND v(dout1_27) AT=425.025n

* CHECK dout1_28 Vdout1_28ck84 = 0 time = 425
.meas tran vdout1_28ck84 FIND v(dout1_28) AT=425.025n

* CHECK dout1_29 Vdout1_29ck84 = 1.1 time = 425
.meas tran vdout1_29ck84 FIND v(dout1_29) AT=425.025n

* CHECK dout1_30 Vdout1_30ck84 = 0 time = 425
.meas tran vdout1_30ck84 FIND v(dout1_30) AT=425.025n

* CHECK dout1_31 Vdout1_31ck84 = 0 time = 425
.meas tran vdout1_31ck84 FIND v(dout1_31) AT=425.025n

* CHECK dout1_0 Vdout1_0ck87 = 1.1 time = 440
.meas tran vdout1_0ck87 FIND v(dout1_0) AT=440.025n

* CHECK dout1_1 Vdout1_1ck87 = 0 time = 440
.meas tran vdout1_1ck87 FIND v(dout1_1) AT=440.025n

* CHECK dout1_2 Vdout1_2ck87 = 0 time = 440
.meas tran vdout1_2ck87 FIND v(dout1_2) AT=440.025n

* CHECK dout1_3 Vdout1_3ck87 = 0 time = 440
.meas tran vdout1_3ck87 FIND v(dout1_3) AT=440.025n

* CHECK dout1_4 Vdout1_4ck87 = 1.1 time = 440
.meas tran vdout1_4ck87 FIND v(dout1_4) AT=440.025n

* CHECK dout1_5 Vdout1_5ck87 = 0 time = 440
.meas tran vdout1_5ck87 FIND v(dout1_5) AT=440.025n

* CHECK dout1_6 Vdout1_6ck87 = 1.1 time = 440
.meas tran vdout1_6ck87 FIND v(dout1_6) AT=440.025n

* CHECK dout1_7 Vdout1_7ck87 = 1.1 time = 440
.meas tran vdout1_7ck87 FIND v(dout1_7) AT=440.025n

* CHECK dout1_8 Vdout1_8ck87 = 1.1 time = 440
.meas tran vdout1_8ck87 FIND v(dout1_8) AT=440.025n

* CHECK dout1_9 Vdout1_9ck87 = 1.1 time = 440
.meas tran vdout1_9ck87 FIND v(dout1_9) AT=440.025n

* CHECK dout1_10 Vdout1_10ck87 = 1.1 time = 440
.meas tran vdout1_10ck87 FIND v(dout1_10) AT=440.025n

* CHECK dout1_11 Vdout1_11ck87 = 1.1 time = 440
.meas tran vdout1_11ck87 FIND v(dout1_11) AT=440.025n

* CHECK dout1_12 Vdout1_12ck87 = 0 time = 440
.meas tran vdout1_12ck87 FIND v(dout1_12) AT=440.025n

* CHECK dout1_13 Vdout1_13ck87 = 0 time = 440
.meas tran vdout1_13ck87 FIND v(dout1_13) AT=440.025n

* CHECK dout1_14 Vdout1_14ck87 = 0 time = 440
.meas tran vdout1_14ck87 FIND v(dout1_14) AT=440.025n

* CHECK dout1_15 Vdout1_15ck87 = 0 time = 440
.meas tran vdout1_15ck87 FIND v(dout1_15) AT=440.025n

* CHECK dout1_16 Vdout1_16ck87 = 1.1 time = 440
.meas tran vdout1_16ck87 FIND v(dout1_16) AT=440.025n

* CHECK dout1_17 Vdout1_17ck87 = 1.1 time = 440
.meas tran vdout1_17ck87 FIND v(dout1_17) AT=440.025n

* CHECK dout1_18 Vdout1_18ck87 = 1.1 time = 440
.meas tran vdout1_18ck87 FIND v(dout1_18) AT=440.025n

* CHECK dout1_19 Vdout1_19ck87 = 0 time = 440
.meas tran vdout1_19ck87 FIND v(dout1_19) AT=440.025n

* CHECK dout1_20 Vdout1_20ck87 = 0 time = 440
.meas tran vdout1_20ck87 FIND v(dout1_20) AT=440.025n

* CHECK dout1_21 Vdout1_21ck87 = 0 time = 440
.meas tran vdout1_21ck87 FIND v(dout1_21) AT=440.025n

* CHECK dout1_22 Vdout1_22ck87 = 0 time = 440
.meas tran vdout1_22ck87 FIND v(dout1_22) AT=440.025n

* CHECK dout1_23 Vdout1_23ck87 = 0 time = 440
.meas tran vdout1_23ck87 FIND v(dout1_23) AT=440.025n

* CHECK dout1_24 Vdout1_24ck87 = 0 time = 440
.meas tran vdout1_24ck87 FIND v(dout1_24) AT=440.025n

* CHECK dout1_25 Vdout1_25ck87 = 0 time = 440
.meas tran vdout1_25ck87 FIND v(dout1_25) AT=440.025n

* CHECK dout1_26 Vdout1_26ck87 = 0 time = 440
.meas tran vdout1_26ck87 FIND v(dout1_26) AT=440.025n

* CHECK dout1_27 Vdout1_27ck87 = 0 time = 440
.meas tran vdout1_27ck87 FIND v(dout1_27) AT=440.025n

* CHECK dout1_28 Vdout1_28ck87 = 1.1 time = 440
.meas tran vdout1_28ck87 FIND v(dout1_28) AT=440.025n

* CHECK dout1_29 Vdout1_29ck87 = 1.1 time = 440
.meas tran vdout1_29ck87 FIND v(dout1_29) AT=440.025n

* CHECK dout1_30 Vdout1_30ck87 = 1.1 time = 440
.meas tran vdout1_30ck87 FIND v(dout1_30) AT=440.025n

* CHECK dout1_31 Vdout1_31ck87 = 1.1 time = 440
.meas tran vdout1_31ck87 FIND v(dout1_31) AT=440.025n

* CHECK dout1_0 Vdout1_0ck89 = 1.1 time = 450
.meas tran vdout1_0ck89 FIND v(dout1_0) AT=450.025n

* CHECK dout1_1 Vdout1_1ck89 = 0 time = 450
.meas tran vdout1_1ck89 FIND v(dout1_1) AT=450.025n

* CHECK dout1_2 Vdout1_2ck89 = 0 time = 450
.meas tran vdout1_2ck89 FIND v(dout1_2) AT=450.025n

* CHECK dout1_3 Vdout1_3ck89 = 0 time = 450
.meas tran vdout1_3ck89 FIND v(dout1_3) AT=450.025n

* CHECK dout1_4 Vdout1_4ck89 = 1.1 time = 450
.meas tran vdout1_4ck89 FIND v(dout1_4) AT=450.025n

* CHECK dout1_5 Vdout1_5ck89 = 0 time = 450
.meas tran vdout1_5ck89 FIND v(dout1_5) AT=450.025n

* CHECK dout1_6 Vdout1_6ck89 = 1.1 time = 450
.meas tran vdout1_6ck89 FIND v(dout1_6) AT=450.025n

* CHECK dout1_7 Vdout1_7ck89 = 1.1 time = 450
.meas tran vdout1_7ck89 FIND v(dout1_7) AT=450.025n

* CHECK dout1_8 Vdout1_8ck89 = 1.1 time = 450
.meas tran vdout1_8ck89 FIND v(dout1_8) AT=450.025n

* CHECK dout1_9 Vdout1_9ck89 = 1.1 time = 450
.meas tran vdout1_9ck89 FIND v(dout1_9) AT=450.025n

* CHECK dout1_10 Vdout1_10ck89 = 1.1 time = 450
.meas tran vdout1_10ck89 FIND v(dout1_10) AT=450.025n

* CHECK dout1_11 Vdout1_11ck89 = 1.1 time = 450
.meas tran vdout1_11ck89 FIND v(dout1_11) AT=450.025n

* CHECK dout1_12 Vdout1_12ck89 = 0 time = 450
.meas tran vdout1_12ck89 FIND v(dout1_12) AT=450.025n

* CHECK dout1_13 Vdout1_13ck89 = 0 time = 450
.meas tran vdout1_13ck89 FIND v(dout1_13) AT=450.025n

* CHECK dout1_14 Vdout1_14ck89 = 0 time = 450
.meas tran vdout1_14ck89 FIND v(dout1_14) AT=450.025n

* CHECK dout1_15 Vdout1_15ck89 = 0 time = 450
.meas tran vdout1_15ck89 FIND v(dout1_15) AT=450.025n

* CHECK dout1_16 Vdout1_16ck89 = 1.1 time = 450
.meas tran vdout1_16ck89 FIND v(dout1_16) AT=450.025n

* CHECK dout1_17 Vdout1_17ck89 = 1.1 time = 450
.meas tran vdout1_17ck89 FIND v(dout1_17) AT=450.025n

* CHECK dout1_18 Vdout1_18ck89 = 1.1 time = 450
.meas tran vdout1_18ck89 FIND v(dout1_18) AT=450.025n

* CHECK dout1_19 Vdout1_19ck89 = 0 time = 450
.meas tran vdout1_19ck89 FIND v(dout1_19) AT=450.025n

* CHECK dout1_20 Vdout1_20ck89 = 0 time = 450
.meas tran vdout1_20ck89 FIND v(dout1_20) AT=450.025n

* CHECK dout1_21 Vdout1_21ck89 = 0 time = 450
.meas tran vdout1_21ck89 FIND v(dout1_21) AT=450.025n

* CHECK dout1_22 Vdout1_22ck89 = 0 time = 450
.meas tran vdout1_22ck89 FIND v(dout1_22) AT=450.025n

* CHECK dout1_23 Vdout1_23ck89 = 0 time = 450
.meas tran vdout1_23ck89 FIND v(dout1_23) AT=450.025n

* CHECK dout1_24 Vdout1_24ck89 = 0 time = 450
.meas tran vdout1_24ck89 FIND v(dout1_24) AT=450.025n

* CHECK dout1_25 Vdout1_25ck89 = 0 time = 450
.meas tran vdout1_25ck89 FIND v(dout1_25) AT=450.025n

* CHECK dout1_26 Vdout1_26ck89 = 0 time = 450
.meas tran vdout1_26ck89 FIND v(dout1_26) AT=450.025n

* CHECK dout1_27 Vdout1_27ck89 = 0 time = 450
.meas tran vdout1_27ck89 FIND v(dout1_27) AT=450.025n

* CHECK dout1_28 Vdout1_28ck89 = 1.1 time = 450
.meas tran vdout1_28ck89 FIND v(dout1_28) AT=450.025n

* CHECK dout1_29 Vdout1_29ck89 = 1.1 time = 450
.meas tran vdout1_29ck89 FIND v(dout1_29) AT=450.025n

* CHECK dout1_30 Vdout1_30ck89 = 1.1 time = 450
.meas tran vdout1_30ck89 FIND v(dout1_30) AT=450.025n

* CHECK dout1_31 Vdout1_31ck89 = 1.1 time = 450
.meas tran vdout1_31ck89 FIND v(dout1_31) AT=450.025n

* CHECK dout1_0 Vdout1_0ck94 = 0 time = 475
.meas tran vdout1_0ck94 FIND v(dout1_0) AT=475.025n

* CHECK dout1_1 Vdout1_1ck94 = 1.1 time = 475
.meas tran vdout1_1ck94 FIND v(dout1_1) AT=475.025n

* CHECK dout1_2 Vdout1_2ck94 = 1.1 time = 475
.meas tran vdout1_2ck94 FIND v(dout1_2) AT=475.025n

* CHECK dout1_3 Vdout1_3ck94 = 0 time = 475
.meas tran vdout1_3ck94 FIND v(dout1_3) AT=475.025n

* CHECK dout1_4 Vdout1_4ck94 = 1.1 time = 475
.meas tran vdout1_4ck94 FIND v(dout1_4) AT=475.025n

* CHECK dout1_5 Vdout1_5ck94 = 1.1 time = 475
.meas tran vdout1_5ck94 FIND v(dout1_5) AT=475.025n

* CHECK dout1_6 Vdout1_6ck94 = 1.1 time = 475
.meas tran vdout1_6ck94 FIND v(dout1_6) AT=475.025n

* CHECK dout1_7 Vdout1_7ck94 = 1.1 time = 475
.meas tran vdout1_7ck94 FIND v(dout1_7) AT=475.025n

* CHECK dout1_8 Vdout1_8ck94 = 1.1 time = 475
.meas tran vdout1_8ck94 FIND v(dout1_8) AT=475.025n

* CHECK dout1_9 Vdout1_9ck94 = 0 time = 475
.meas tran vdout1_9ck94 FIND v(dout1_9) AT=475.025n

* CHECK dout1_10 Vdout1_10ck94 = 0 time = 475
.meas tran vdout1_10ck94 FIND v(dout1_10) AT=475.025n

* CHECK dout1_11 Vdout1_11ck94 = 0 time = 475
.meas tran vdout1_11ck94 FIND v(dout1_11) AT=475.025n

* CHECK dout1_12 Vdout1_12ck94 = 0 time = 475
.meas tran vdout1_12ck94 FIND v(dout1_12) AT=475.025n

* CHECK dout1_13 Vdout1_13ck94 = 1.1 time = 475
.meas tran vdout1_13ck94 FIND v(dout1_13) AT=475.025n

* CHECK dout1_14 Vdout1_14ck94 = 0 time = 475
.meas tran vdout1_14ck94 FIND v(dout1_14) AT=475.025n

* CHECK dout1_15 Vdout1_15ck94 = 0 time = 475
.meas tran vdout1_15ck94 FIND v(dout1_15) AT=475.025n

* CHECK dout1_16 Vdout1_16ck94 = 1.1 time = 475
.meas tran vdout1_16ck94 FIND v(dout1_16) AT=475.025n

* CHECK dout1_17 Vdout1_17ck94 = 0 time = 475
.meas tran vdout1_17ck94 FIND v(dout1_17) AT=475.025n

* CHECK dout1_18 Vdout1_18ck94 = 1.1 time = 475
.meas tran vdout1_18ck94 FIND v(dout1_18) AT=475.025n

* CHECK dout1_19 Vdout1_19ck94 = 0 time = 475
.meas tran vdout1_19ck94 FIND v(dout1_19) AT=475.025n

* CHECK dout1_20 Vdout1_20ck94 = 0 time = 475
.meas tran vdout1_20ck94 FIND v(dout1_20) AT=475.025n

* CHECK dout1_21 Vdout1_21ck94 = 1.1 time = 475
.meas tran vdout1_21ck94 FIND v(dout1_21) AT=475.025n

* CHECK dout1_22 Vdout1_22ck94 = 1.1 time = 475
.meas tran vdout1_22ck94 FIND v(dout1_22) AT=475.025n

* CHECK dout1_23 Vdout1_23ck94 = 0 time = 475
.meas tran vdout1_23ck94 FIND v(dout1_23) AT=475.025n

* CHECK dout1_24 Vdout1_24ck94 = 1.1 time = 475
.meas tran vdout1_24ck94 FIND v(dout1_24) AT=475.025n

* CHECK dout1_25 Vdout1_25ck94 = 0 time = 475
.meas tran vdout1_25ck94 FIND v(dout1_25) AT=475.025n

* CHECK dout1_26 Vdout1_26ck94 = 0 time = 475
.meas tran vdout1_26ck94 FIND v(dout1_26) AT=475.025n

* CHECK dout1_27 Vdout1_27ck94 = 1.1 time = 475
.meas tran vdout1_27ck94 FIND v(dout1_27) AT=475.025n

* CHECK dout1_28 Vdout1_28ck94 = 1.1 time = 475
.meas tran vdout1_28ck94 FIND v(dout1_28) AT=475.025n

* CHECK dout1_29 Vdout1_29ck94 = 1.1 time = 475
.meas tran vdout1_29ck94 FIND v(dout1_29) AT=475.025n

* CHECK dout1_30 Vdout1_30ck94 = 1.1 time = 475
.meas tran vdout1_30ck94 FIND v(dout1_30) AT=475.025n

* CHECK dout1_31 Vdout1_31ck94 = 0 time = 475
.meas tran vdout1_31ck94 FIND v(dout1_31) AT=475.025n

* CHECK dout1_0 Vdout1_0ck96 = 1.1 time = 485
.meas tran vdout1_0ck96 FIND v(dout1_0) AT=485.025n

* CHECK dout1_1 Vdout1_1ck96 = 0 time = 485
.meas tran vdout1_1ck96 FIND v(dout1_1) AT=485.025n

* CHECK dout1_2 Vdout1_2ck96 = 1.1 time = 485
.meas tran vdout1_2ck96 FIND v(dout1_2) AT=485.025n

* CHECK dout1_3 Vdout1_3ck96 = 1.1 time = 485
.meas tran vdout1_3ck96 FIND v(dout1_3) AT=485.025n

* CHECK dout1_4 Vdout1_4ck96 = 1.1 time = 485
.meas tran vdout1_4ck96 FIND v(dout1_4) AT=485.025n

* CHECK dout1_5 Vdout1_5ck96 = 1.1 time = 485
.meas tran vdout1_5ck96 FIND v(dout1_5) AT=485.025n

* CHECK dout1_6 Vdout1_6ck96 = 1.1 time = 485
.meas tran vdout1_6ck96 FIND v(dout1_6) AT=485.025n

* CHECK dout1_7 Vdout1_7ck96 = 0 time = 485
.meas tran vdout1_7ck96 FIND v(dout1_7) AT=485.025n

* CHECK dout1_8 Vdout1_8ck96 = 0 time = 485
.meas tran vdout1_8ck96 FIND v(dout1_8) AT=485.025n

* CHECK dout1_9 Vdout1_9ck96 = 0 time = 485
.meas tran vdout1_9ck96 FIND v(dout1_9) AT=485.025n

* CHECK dout1_10 Vdout1_10ck96 = 1.1 time = 485
.meas tran vdout1_10ck96 FIND v(dout1_10) AT=485.025n

* CHECK dout1_11 Vdout1_11ck96 = 0 time = 485
.meas tran vdout1_11ck96 FIND v(dout1_11) AT=485.025n

* CHECK dout1_12 Vdout1_12ck96 = 0 time = 485
.meas tran vdout1_12ck96 FIND v(dout1_12) AT=485.025n

* CHECK dout1_13 Vdout1_13ck96 = 0 time = 485
.meas tran vdout1_13ck96 FIND v(dout1_13) AT=485.025n

* CHECK dout1_14 Vdout1_14ck96 = 0 time = 485
.meas tran vdout1_14ck96 FIND v(dout1_14) AT=485.025n

* CHECK dout1_15 Vdout1_15ck96 = 1.1 time = 485
.meas tran vdout1_15ck96 FIND v(dout1_15) AT=485.025n

* CHECK dout1_16 Vdout1_16ck96 = 1.1 time = 485
.meas tran vdout1_16ck96 FIND v(dout1_16) AT=485.025n

* CHECK dout1_17 Vdout1_17ck96 = 0 time = 485
.meas tran vdout1_17ck96 FIND v(dout1_17) AT=485.025n

* CHECK dout1_18 Vdout1_18ck96 = 0 time = 485
.meas tran vdout1_18ck96 FIND v(dout1_18) AT=485.025n

* CHECK dout1_19 Vdout1_19ck96 = 0 time = 485
.meas tran vdout1_19ck96 FIND v(dout1_19) AT=485.025n

* CHECK dout1_20 Vdout1_20ck96 = 1.1 time = 485
.meas tran vdout1_20ck96 FIND v(dout1_20) AT=485.025n

* CHECK dout1_21 Vdout1_21ck96 = 1.1 time = 485
.meas tran vdout1_21ck96 FIND v(dout1_21) AT=485.025n

* CHECK dout1_22 Vdout1_22ck96 = 0 time = 485
.meas tran vdout1_22ck96 FIND v(dout1_22) AT=485.025n

* CHECK dout1_23 Vdout1_23ck96 = 0 time = 485
.meas tran vdout1_23ck96 FIND v(dout1_23) AT=485.025n

* CHECK dout1_24 Vdout1_24ck96 = 0 time = 485
.meas tran vdout1_24ck96 FIND v(dout1_24) AT=485.025n

* CHECK dout1_25 Vdout1_25ck96 = 1.1 time = 485
.meas tran vdout1_25ck96 FIND v(dout1_25) AT=485.025n

* CHECK dout1_26 Vdout1_26ck96 = 1.1 time = 485
.meas tran vdout1_26ck96 FIND v(dout1_26) AT=485.025n

* CHECK dout1_27 Vdout1_27ck96 = 0 time = 485
.meas tran vdout1_27ck96 FIND v(dout1_27) AT=485.025n

* CHECK dout1_28 Vdout1_28ck96 = 1.1 time = 485
.meas tran vdout1_28ck96 FIND v(dout1_28) AT=485.025n

* CHECK dout1_29 Vdout1_29ck96 = 1.1 time = 485
.meas tran vdout1_29ck96 FIND v(dout1_29) AT=485.025n

* CHECK dout1_30 Vdout1_30ck96 = 0 time = 485
.meas tran vdout1_30ck96 FIND v(dout1_30) AT=485.025n

* CHECK dout1_31 Vdout1_31ck96 = 0 time = 485
.meas tran vdout1_31ck96 FIND v(dout1_31) AT=485.025n

* CHECK dout1_0 Vdout1_0ck100 = 1.1 time = 505
.meas tran vdout1_0ck100 FIND v(dout1_0) AT=505.025n

* CHECK dout1_1 Vdout1_1ck100 = 1.1 time = 505
.meas tran vdout1_1ck100 FIND v(dout1_1) AT=505.025n

* CHECK dout1_2 Vdout1_2ck100 = 0 time = 505
.meas tran vdout1_2ck100 FIND v(dout1_2) AT=505.025n

* CHECK dout1_3 Vdout1_3ck100 = 0 time = 505
.meas tran vdout1_3ck100 FIND v(dout1_3) AT=505.025n

* CHECK dout1_4 Vdout1_4ck100 = 1.1 time = 505
.meas tran vdout1_4ck100 FIND v(dout1_4) AT=505.025n

* CHECK dout1_5 Vdout1_5ck100 = 0 time = 505
.meas tran vdout1_5ck100 FIND v(dout1_5) AT=505.025n

* CHECK dout1_6 Vdout1_6ck100 = 1.1 time = 505
.meas tran vdout1_6ck100 FIND v(dout1_6) AT=505.025n

* CHECK dout1_7 Vdout1_7ck100 = 0 time = 505
.meas tran vdout1_7ck100 FIND v(dout1_7) AT=505.025n

* CHECK dout1_8 Vdout1_8ck100 = 0 time = 505
.meas tran vdout1_8ck100 FIND v(dout1_8) AT=505.025n

* CHECK dout1_9 Vdout1_9ck100 = 1.1 time = 505
.meas tran vdout1_9ck100 FIND v(dout1_9) AT=505.025n

* CHECK dout1_10 Vdout1_10ck100 = 1.1 time = 505
.meas tran vdout1_10ck100 FIND v(dout1_10) AT=505.025n

* CHECK dout1_11 Vdout1_11ck100 = 1.1 time = 505
.meas tran vdout1_11ck100 FIND v(dout1_11) AT=505.025n

* CHECK dout1_12 Vdout1_12ck100 = 1.1 time = 505
.meas tran vdout1_12ck100 FIND v(dout1_12) AT=505.025n

* CHECK dout1_13 Vdout1_13ck100 = 1.1 time = 505
.meas tran vdout1_13ck100 FIND v(dout1_13) AT=505.025n

* CHECK dout1_14 Vdout1_14ck100 = 1.1 time = 505
.meas tran vdout1_14ck100 FIND v(dout1_14) AT=505.025n

* CHECK dout1_15 Vdout1_15ck100 = 1.1 time = 505
.meas tran vdout1_15ck100 FIND v(dout1_15) AT=505.025n

* CHECK dout1_16 Vdout1_16ck100 = 1.1 time = 505
.meas tran vdout1_16ck100 FIND v(dout1_16) AT=505.025n

* CHECK dout1_17 Vdout1_17ck100 = 1.1 time = 505
.meas tran vdout1_17ck100 FIND v(dout1_17) AT=505.025n

* CHECK dout1_18 Vdout1_18ck100 = 0 time = 505
.meas tran vdout1_18ck100 FIND v(dout1_18) AT=505.025n

* CHECK dout1_19 Vdout1_19ck100 = 1.1 time = 505
.meas tran vdout1_19ck100 FIND v(dout1_19) AT=505.025n

* CHECK dout1_20 Vdout1_20ck100 = 0 time = 505
.meas tran vdout1_20ck100 FIND v(dout1_20) AT=505.025n

* CHECK dout1_21 Vdout1_21ck100 = 1.1 time = 505
.meas tran vdout1_21ck100 FIND v(dout1_21) AT=505.025n

* CHECK dout1_22 Vdout1_22ck100 = 1.1 time = 505
.meas tran vdout1_22ck100 FIND v(dout1_22) AT=505.025n

* CHECK dout1_23 Vdout1_23ck100 = 1.1 time = 505
.meas tran vdout1_23ck100 FIND v(dout1_23) AT=505.025n

* CHECK dout1_24 Vdout1_24ck100 = 1.1 time = 505
.meas tran vdout1_24ck100 FIND v(dout1_24) AT=505.025n

* CHECK dout1_25 Vdout1_25ck100 = 1.1 time = 505
.meas tran vdout1_25ck100 FIND v(dout1_25) AT=505.025n

* CHECK dout1_26 Vdout1_26ck100 = 0 time = 505
.meas tran vdout1_26ck100 FIND v(dout1_26) AT=505.025n

* CHECK dout1_27 Vdout1_27ck100 = 0 time = 505
.meas tran vdout1_27ck100 FIND v(dout1_27) AT=505.025n

* CHECK dout1_28 Vdout1_28ck100 = 0 time = 505
.meas tran vdout1_28ck100 FIND v(dout1_28) AT=505.025n

* CHECK dout1_29 Vdout1_29ck100 = 1.1 time = 505
.meas tran vdout1_29ck100 FIND v(dout1_29) AT=505.025n

* CHECK dout1_30 Vdout1_30ck100 = 0 time = 505
.meas tran vdout1_30ck100 FIND v(dout1_30) AT=505.025n

* CHECK dout1_31 Vdout1_31ck100 = 0 time = 505
.meas tran vdout1_31ck100 FIND v(dout1_31) AT=505.025n

* CHECK dout1_0 Vdout1_0ck101 = 1.1 time = 510
.meas tran vdout1_0ck101 FIND v(dout1_0) AT=510.025n

* CHECK dout1_1 Vdout1_1ck101 = 1.1 time = 510
.meas tran vdout1_1ck101 FIND v(dout1_1) AT=510.025n

* CHECK dout1_2 Vdout1_2ck101 = 0 time = 510
.meas tran vdout1_2ck101 FIND v(dout1_2) AT=510.025n

* CHECK dout1_3 Vdout1_3ck101 = 0 time = 510
.meas tran vdout1_3ck101 FIND v(dout1_3) AT=510.025n

* CHECK dout1_4 Vdout1_4ck101 = 1.1 time = 510
.meas tran vdout1_4ck101 FIND v(dout1_4) AT=510.025n

* CHECK dout1_5 Vdout1_5ck101 = 0 time = 510
.meas tran vdout1_5ck101 FIND v(dout1_5) AT=510.025n

* CHECK dout1_6 Vdout1_6ck101 = 1.1 time = 510
.meas tran vdout1_6ck101 FIND v(dout1_6) AT=510.025n

* CHECK dout1_7 Vdout1_7ck101 = 0 time = 510
.meas tran vdout1_7ck101 FIND v(dout1_7) AT=510.025n

* CHECK dout1_8 Vdout1_8ck101 = 0 time = 510
.meas tran vdout1_8ck101 FIND v(dout1_8) AT=510.025n

* CHECK dout1_9 Vdout1_9ck101 = 1.1 time = 510
.meas tran vdout1_9ck101 FIND v(dout1_9) AT=510.025n

* CHECK dout1_10 Vdout1_10ck101 = 1.1 time = 510
.meas tran vdout1_10ck101 FIND v(dout1_10) AT=510.025n

* CHECK dout1_11 Vdout1_11ck101 = 1.1 time = 510
.meas tran vdout1_11ck101 FIND v(dout1_11) AT=510.025n

* CHECK dout1_12 Vdout1_12ck101 = 1.1 time = 510
.meas tran vdout1_12ck101 FIND v(dout1_12) AT=510.025n

* CHECK dout1_13 Vdout1_13ck101 = 1.1 time = 510
.meas tran vdout1_13ck101 FIND v(dout1_13) AT=510.025n

* CHECK dout1_14 Vdout1_14ck101 = 1.1 time = 510
.meas tran vdout1_14ck101 FIND v(dout1_14) AT=510.025n

* CHECK dout1_15 Vdout1_15ck101 = 1.1 time = 510
.meas tran vdout1_15ck101 FIND v(dout1_15) AT=510.025n

* CHECK dout1_16 Vdout1_16ck101 = 1.1 time = 510
.meas tran vdout1_16ck101 FIND v(dout1_16) AT=510.025n

* CHECK dout1_17 Vdout1_17ck101 = 1.1 time = 510
.meas tran vdout1_17ck101 FIND v(dout1_17) AT=510.025n

* CHECK dout1_18 Vdout1_18ck101 = 0 time = 510
.meas tran vdout1_18ck101 FIND v(dout1_18) AT=510.025n

* CHECK dout1_19 Vdout1_19ck101 = 1.1 time = 510
.meas tran vdout1_19ck101 FIND v(dout1_19) AT=510.025n

* CHECK dout1_20 Vdout1_20ck101 = 0 time = 510
.meas tran vdout1_20ck101 FIND v(dout1_20) AT=510.025n

* CHECK dout1_21 Vdout1_21ck101 = 1.1 time = 510
.meas tran vdout1_21ck101 FIND v(dout1_21) AT=510.025n

* CHECK dout1_22 Vdout1_22ck101 = 1.1 time = 510
.meas tran vdout1_22ck101 FIND v(dout1_22) AT=510.025n

* CHECK dout1_23 Vdout1_23ck101 = 1.1 time = 510
.meas tran vdout1_23ck101 FIND v(dout1_23) AT=510.025n

* CHECK dout1_24 Vdout1_24ck101 = 1.1 time = 510
.meas tran vdout1_24ck101 FIND v(dout1_24) AT=510.025n

* CHECK dout1_25 Vdout1_25ck101 = 1.1 time = 510
.meas tran vdout1_25ck101 FIND v(dout1_25) AT=510.025n

* CHECK dout1_26 Vdout1_26ck101 = 0 time = 510
.meas tran vdout1_26ck101 FIND v(dout1_26) AT=510.025n

* CHECK dout1_27 Vdout1_27ck101 = 0 time = 510
.meas tran vdout1_27ck101 FIND v(dout1_27) AT=510.025n

* CHECK dout1_28 Vdout1_28ck101 = 0 time = 510
.meas tran vdout1_28ck101 FIND v(dout1_28) AT=510.025n

* CHECK dout1_29 Vdout1_29ck101 = 1.1 time = 510
.meas tran vdout1_29ck101 FIND v(dout1_29) AT=510.025n

* CHECK dout1_30 Vdout1_30ck101 = 0 time = 510
.meas tran vdout1_30ck101 FIND v(dout1_30) AT=510.025n

* CHECK dout1_31 Vdout1_31ck101 = 0 time = 510
.meas tran vdout1_31ck101 FIND v(dout1_31) AT=510.025n

* CHECK dout1_0 Vdout1_0ck108 = 1.1 time = 545
.meas tran vdout1_0ck108 FIND v(dout1_0) AT=545.025n

* CHECK dout1_1 Vdout1_1ck108 = 1.1 time = 545
.meas tran vdout1_1ck108 FIND v(dout1_1) AT=545.025n

* CHECK dout1_2 Vdout1_2ck108 = 0 time = 545
.meas tran vdout1_2ck108 FIND v(dout1_2) AT=545.025n

* CHECK dout1_3 Vdout1_3ck108 = 0 time = 545
.meas tran vdout1_3ck108 FIND v(dout1_3) AT=545.025n

* CHECK dout1_4 Vdout1_4ck108 = 1.1 time = 545
.meas tran vdout1_4ck108 FIND v(dout1_4) AT=545.025n

* CHECK dout1_5 Vdout1_5ck108 = 0 time = 545
.meas tran vdout1_5ck108 FIND v(dout1_5) AT=545.025n

* CHECK dout1_6 Vdout1_6ck108 = 1.1 time = 545
.meas tran vdout1_6ck108 FIND v(dout1_6) AT=545.025n

* CHECK dout1_7 Vdout1_7ck108 = 0 time = 545
.meas tran vdout1_7ck108 FIND v(dout1_7) AT=545.025n

* CHECK dout1_8 Vdout1_8ck108 = 0 time = 545
.meas tran vdout1_8ck108 FIND v(dout1_8) AT=545.025n

* CHECK dout1_9 Vdout1_9ck108 = 1.1 time = 545
.meas tran vdout1_9ck108 FIND v(dout1_9) AT=545.025n

* CHECK dout1_10 Vdout1_10ck108 = 1.1 time = 545
.meas tran vdout1_10ck108 FIND v(dout1_10) AT=545.025n

* CHECK dout1_11 Vdout1_11ck108 = 1.1 time = 545
.meas tran vdout1_11ck108 FIND v(dout1_11) AT=545.025n

* CHECK dout1_12 Vdout1_12ck108 = 1.1 time = 545
.meas tran vdout1_12ck108 FIND v(dout1_12) AT=545.025n

* CHECK dout1_13 Vdout1_13ck108 = 1.1 time = 545
.meas tran vdout1_13ck108 FIND v(dout1_13) AT=545.025n

* CHECK dout1_14 Vdout1_14ck108 = 1.1 time = 545
.meas tran vdout1_14ck108 FIND v(dout1_14) AT=545.025n

* CHECK dout1_15 Vdout1_15ck108 = 1.1 time = 545
.meas tran vdout1_15ck108 FIND v(dout1_15) AT=545.025n

* CHECK dout1_16 Vdout1_16ck108 = 1.1 time = 545
.meas tran vdout1_16ck108 FIND v(dout1_16) AT=545.025n

* CHECK dout1_17 Vdout1_17ck108 = 1.1 time = 545
.meas tran vdout1_17ck108 FIND v(dout1_17) AT=545.025n

* CHECK dout1_18 Vdout1_18ck108 = 0 time = 545
.meas tran vdout1_18ck108 FIND v(dout1_18) AT=545.025n

* CHECK dout1_19 Vdout1_19ck108 = 1.1 time = 545
.meas tran vdout1_19ck108 FIND v(dout1_19) AT=545.025n

* CHECK dout1_20 Vdout1_20ck108 = 0 time = 545
.meas tran vdout1_20ck108 FIND v(dout1_20) AT=545.025n

* CHECK dout1_21 Vdout1_21ck108 = 1.1 time = 545
.meas tran vdout1_21ck108 FIND v(dout1_21) AT=545.025n

* CHECK dout1_22 Vdout1_22ck108 = 1.1 time = 545
.meas tran vdout1_22ck108 FIND v(dout1_22) AT=545.025n

* CHECK dout1_23 Vdout1_23ck108 = 1.1 time = 545
.meas tran vdout1_23ck108 FIND v(dout1_23) AT=545.025n

* CHECK dout1_24 Vdout1_24ck108 = 1.1 time = 545
.meas tran vdout1_24ck108 FIND v(dout1_24) AT=545.025n

* CHECK dout1_25 Vdout1_25ck108 = 1.1 time = 545
.meas tran vdout1_25ck108 FIND v(dout1_25) AT=545.025n

* CHECK dout1_26 Vdout1_26ck108 = 0 time = 545
.meas tran vdout1_26ck108 FIND v(dout1_26) AT=545.025n

* CHECK dout1_27 Vdout1_27ck108 = 0 time = 545
.meas tran vdout1_27ck108 FIND v(dout1_27) AT=545.025n

* CHECK dout1_28 Vdout1_28ck108 = 0 time = 545
.meas tran vdout1_28ck108 FIND v(dout1_28) AT=545.025n

* CHECK dout1_29 Vdout1_29ck108 = 1.1 time = 545
.meas tran vdout1_29ck108 FIND v(dout1_29) AT=545.025n

* CHECK dout1_30 Vdout1_30ck108 = 0 time = 545
.meas tran vdout1_30ck108 FIND v(dout1_30) AT=545.025n

* CHECK dout1_31 Vdout1_31ck108 = 0 time = 545
.meas tran vdout1_31ck108 FIND v(dout1_31) AT=545.025n

* CHECK dout1_0 Vdout1_0ck111 = 1.1 time = 560
.meas tran vdout1_0ck111 FIND v(dout1_0) AT=560.025n

* CHECK dout1_1 Vdout1_1ck111 = 0 time = 560
.meas tran vdout1_1ck111 FIND v(dout1_1) AT=560.025n

* CHECK dout1_2 Vdout1_2ck111 = 1.1 time = 560
.meas tran vdout1_2ck111 FIND v(dout1_2) AT=560.025n

* CHECK dout1_3 Vdout1_3ck111 = 0 time = 560
.meas tran vdout1_3ck111 FIND v(dout1_3) AT=560.025n

* CHECK dout1_4 Vdout1_4ck111 = 1.1 time = 560
.meas tran vdout1_4ck111 FIND v(dout1_4) AT=560.025n

* CHECK dout1_5 Vdout1_5ck111 = 0 time = 560
.meas tran vdout1_5ck111 FIND v(dout1_5) AT=560.025n

* CHECK dout1_6 Vdout1_6ck111 = 0 time = 560
.meas tran vdout1_6ck111 FIND v(dout1_6) AT=560.025n

* CHECK dout1_7 Vdout1_7ck111 = 1.1 time = 560
.meas tran vdout1_7ck111 FIND v(dout1_7) AT=560.025n

* CHECK dout1_8 Vdout1_8ck111 = 0 time = 560
.meas tran vdout1_8ck111 FIND v(dout1_8) AT=560.025n

* CHECK dout1_9 Vdout1_9ck111 = 1.1 time = 560
.meas tran vdout1_9ck111 FIND v(dout1_9) AT=560.025n

* CHECK dout1_10 Vdout1_10ck111 = 0 time = 560
.meas tran vdout1_10ck111 FIND v(dout1_10) AT=560.025n

* CHECK dout1_11 Vdout1_11ck111 = 0 time = 560
.meas tran vdout1_11ck111 FIND v(dout1_11) AT=560.025n

* CHECK dout1_12 Vdout1_12ck111 = 0 time = 560
.meas tran vdout1_12ck111 FIND v(dout1_12) AT=560.025n

* CHECK dout1_13 Vdout1_13ck111 = 0 time = 560
.meas tran vdout1_13ck111 FIND v(dout1_13) AT=560.025n

* CHECK dout1_14 Vdout1_14ck111 = 0 time = 560
.meas tran vdout1_14ck111 FIND v(dout1_14) AT=560.025n

* CHECK dout1_15 Vdout1_15ck111 = 0 time = 560
.meas tran vdout1_15ck111 FIND v(dout1_15) AT=560.025n

* CHECK dout1_16 Vdout1_16ck111 = 1.1 time = 560
.meas tran vdout1_16ck111 FIND v(dout1_16) AT=560.025n

* CHECK dout1_17 Vdout1_17ck111 = 1.1 time = 560
.meas tran vdout1_17ck111 FIND v(dout1_17) AT=560.025n

* CHECK dout1_18 Vdout1_18ck111 = 1.1 time = 560
.meas tran vdout1_18ck111 FIND v(dout1_18) AT=560.025n

* CHECK dout1_19 Vdout1_19ck111 = 0 time = 560
.meas tran vdout1_19ck111 FIND v(dout1_19) AT=560.025n

* CHECK dout1_20 Vdout1_20ck111 = 0 time = 560
.meas tran vdout1_20ck111 FIND v(dout1_20) AT=560.025n

* CHECK dout1_21 Vdout1_21ck111 = 0 time = 560
.meas tran vdout1_21ck111 FIND v(dout1_21) AT=560.025n

* CHECK dout1_22 Vdout1_22ck111 = 0 time = 560
.meas tran vdout1_22ck111 FIND v(dout1_22) AT=560.025n

* CHECK dout1_23 Vdout1_23ck111 = 0 time = 560
.meas tran vdout1_23ck111 FIND v(dout1_23) AT=560.025n

* CHECK dout1_24 Vdout1_24ck111 = 1.1 time = 560
.meas tran vdout1_24ck111 FIND v(dout1_24) AT=560.025n

* CHECK dout1_25 Vdout1_25ck111 = 1.1 time = 560
.meas tran vdout1_25ck111 FIND v(dout1_25) AT=560.025n

* CHECK dout1_26 Vdout1_26ck111 = 0 time = 560
.meas tran vdout1_26ck111 FIND v(dout1_26) AT=560.025n

* CHECK dout1_27 Vdout1_27ck111 = 1.1 time = 560
.meas tran vdout1_27ck111 FIND v(dout1_27) AT=560.025n

* CHECK dout1_28 Vdout1_28ck111 = 0 time = 560
.meas tran vdout1_28ck111 FIND v(dout1_28) AT=560.025n

* CHECK dout1_29 Vdout1_29ck111 = 0 time = 560
.meas tran vdout1_29ck111 FIND v(dout1_29) AT=560.025n

* CHECK dout1_30 Vdout1_30ck111 = 1.1 time = 560
.meas tran vdout1_30ck111 FIND v(dout1_30) AT=560.025n

* CHECK dout1_31 Vdout1_31ck111 = 0 time = 560
.meas tran vdout1_31ck111 FIND v(dout1_31) AT=560.025n

* CHECK dout1_0 Vdout1_0ck115 = 1.1 time = 580
.meas tran vdout1_0ck115 FIND v(dout1_0) AT=580.025n

* CHECK dout1_1 Vdout1_1ck115 = 0 time = 580
.meas tran vdout1_1ck115 FIND v(dout1_1) AT=580.025n

* CHECK dout1_2 Vdout1_2ck115 = 1.1 time = 580
.meas tran vdout1_2ck115 FIND v(dout1_2) AT=580.025n

* CHECK dout1_3 Vdout1_3ck115 = 0 time = 580
.meas tran vdout1_3ck115 FIND v(dout1_3) AT=580.025n

* CHECK dout1_4 Vdout1_4ck115 = 1.1 time = 580
.meas tran vdout1_4ck115 FIND v(dout1_4) AT=580.025n

* CHECK dout1_5 Vdout1_5ck115 = 0 time = 580
.meas tran vdout1_5ck115 FIND v(dout1_5) AT=580.025n

* CHECK dout1_6 Vdout1_6ck115 = 0 time = 580
.meas tran vdout1_6ck115 FIND v(dout1_6) AT=580.025n

* CHECK dout1_7 Vdout1_7ck115 = 1.1 time = 580
.meas tran vdout1_7ck115 FIND v(dout1_7) AT=580.025n

* CHECK dout1_8 Vdout1_8ck115 = 0 time = 580
.meas tran vdout1_8ck115 FIND v(dout1_8) AT=580.025n

* CHECK dout1_9 Vdout1_9ck115 = 1.1 time = 580
.meas tran vdout1_9ck115 FIND v(dout1_9) AT=580.025n

* CHECK dout1_10 Vdout1_10ck115 = 0 time = 580
.meas tran vdout1_10ck115 FIND v(dout1_10) AT=580.025n

* CHECK dout1_11 Vdout1_11ck115 = 0 time = 580
.meas tran vdout1_11ck115 FIND v(dout1_11) AT=580.025n

* CHECK dout1_12 Vdout1_12ck115 = 0 time = 580
.meas tran vdout1_12ck115 FIND v(dout1_12) AT=580.025n

* CHECK dout1_13 Vdout1_13ck115 = 0 time = 580
.meas tran vdout1_13ck115 FIND v(dout1_13) AT=580.025n

* CHECK dout1_14 Vdout1_14ck115 = 0 time = 580
.meas tran vdout1_14ck115 FIND v(dout1_14) AT=580.025n

* CHECK dout1_15 Vdout1_15ck115 = 0 time = 580
.meas tran vdout1_15ck115 FIND v(dout1_15) AT=580.025n

* CHECK dout1_16 Vdout1_16ck115 = 1.1 time = 580
.meas tran vdout1_16ck115 FIND v(dout1_16) AT=580.025n

* CHECK dout1_17 Vdout1_17ck115 = 1.1 time = 580
.meas tran vdout1_17ck115 FIND v(dout1_17) AT=580.025n

* CHECK dout1_18 Vdout1_18ck115 = 1.1 time = 580
.meas tran vdout1_18ck115 FIND v(dout1_18) AT=580.025n

* CHECK dout1_19 Vdout1_19ck115 = 0 time = 580
.meas tran vdout1_19ck115 FIND v(dout1_19) AT=580.025n

* CHECK dout1_20 Vdout1_20ck115 = 0 time = 580
.meas tran vdout1_20ck115 FIND v(dout1_20) AT=580.025n

* CHECK dout1_21 Vdout1_21ck115 = 0 time = 580
.meas tran vdout1_21ck115 FIND v(dout1_21) AT=580.025n

* CHECK dout1_22 Vdout1_22ck115 = 0 time = 580
.meas tran vdout1_22ck115 FIND v(dout1_22) AT=580.025n

* CHECK dout1_23 Vdout1_23ck115 = 0 time = 580
.meas tran vdout1_23ck115 FIND v(dout1_23) AT=580.025n

* CHECK dout1_24 Vdout1_24ck115 = 1.1 time = 580
.meas tran vdout1_24ck115 FIND v(dout1_24) AT=580.025n

* CHECK dout1_25 Vdout1_25ck115 = 1.1 time = 580
.meas tran vdout1_25ck115 FIND v(dout1_25) AT=580.025n

* CHECK dout1_26 Vdout1_26ck115 = 0 time = 580
.meas tran vdout1_26ck115 FIND v(dout1_26) AT=580.025n

* CHECK dout1_27 Vdout1_27ck115 = 1.1 time = 580
.meas tran vdout1_27ck115 FIND v(dout1_27) AT=580.025n

* CHECK dout1_28 Vdout1_28ck115 = 0 time = 580
.meas tran vdout1_28ck115 FIND v(dout1_28) AT=580.025n

* CHECK dout1_29 Vdout1_29ck115 = 0 time = 580
.meas tran vdout1_29ck115 FIND v(dout1_29) AT=580.025n

* CHECK dout1_30 Vdout1_30ck115 = 1.1 time = 580
.meas tran vdout1_30ck115 FIND v(dout1_30) AT=580.025n

* CHECK dout1_31 Vdout1_31ck115 = 0 time = 580
.meas tran vdout1_31ck115 FIND v(dout1_31) AT=580.025n

* CHECK dout1_0 Vdout1_0ck116 = 1.1 time = 585
.meas tran vdout1_0ck116 FIND v(dout1_0) AT=585.025n

* CHECK dout1_1 Vdout1_1ck116 = 0 time = 585
.meas tran vdout1_1ck116 FIND v(dout1_1) AT=585.025n

* CHECK dout1_2 Vdout1_2ck116 = 0 time = 585
.meas tran vdout1_2ck116 FIND v(dout1_2) AT=585.025n

* CHECK dout1_3 Vdout1_3ck116 = 0 time = 585
.meas tran vdout1_3ck116 FIND v(dout1_3) AT=585.025n

* CHECK dout1_4 Vdout1_4ck116 = 0 time = 585
.meas tran vdout1_4ck116 FIND v(dout1_4) AT=585.025n

* CHECK dout1_5 Vdout1_5ck116 = 1.1 time = 585
.meas tran vdout1_5ck116 FIND v(dout1_5) AT=585.025n

* CHECK dout1_6 Vdout1_6ck116 = 0 time = 585
.meas tran vdout1_6ck116 FIND v(dout1_6) AT=585.025n

* CHECK dout1_7 Vdout1_7ck116 = 1.1 time = 585
.meas tran vdout1_7ck116 FIND v(dout1_7) AT=585.025n

* CHECK dout1_8 Vdout1_8ck116 = 1.1 time = 585
.meas tran vdout1_8ck116 FIND v(dout1_8) AT=585.025n

* CHECK dout1_9 Vdout1_9ck116 = 0 time = 585
.meas tran vdout1_9ck116 FIND v(dout1_9) AT=585.025n

* CHECK dout1_10 Vdout1_10ck116 = 1.1 time = 585
.meas tran vdout1_10ck116 FIND v(dout1_10) AT=585.025n

* CHECK dout1_11 Vdout1_11ck116 = 1.1 time = 585
.meas tran vdout1_11ck116 FIND v(dout1_11) AT=585.025n

* CHECK dout1_12 Vdout1_12ck116 = 0 time = 585
.meas tran vdout1_12ck116 FIND v(dout1_12) AT=585.025n

* CHECK dout1_13 Vdout1_13ck116 = 1.1 time = 585
.meas tran vdout1_13ck116 FIND v(dout1_13) AT=585.025n

* CHECK dout1_14 Vdout1_14ck116 = 0 time = 585
.meas tran vdout1_14ck116 FIND v(dout1_14) AT=585.025n

* CHECK dout1_15 Vdout1_15ck116 = 1.1 time = 585
.meas tran vdout1_15ck116 FIND v(dout1_15) AT=585.025n

* CHECK dout1_16 Vdout1_16ck116 = 0 time = 585
.meas tran vdout1_16ck116 FIND v(dout1_16) AT=585.025n

* CHECK dout1_17 Vdout1_17ck116 = 0 time = 585
.meas tran vdout1_17ck116 FIND v(dout1_17) AT=585.025n

* CHECK dout1_18 Vdout1_18ck116 = 0 time = 585
.meas tran vdout1_18ck116 FIND v(dout1_18) AT=585.025n

* CHECK dout1_19 Vdout1_19ck116 = 1.1 time = 585
.meas tran vdout1_19ck116 FIND v(dout1_19) AT=585.025n

* CHECK dout1_20 Vdout1_20ck116 = 1.1 time = 585
.meas tran vdout1_20ck116 FIND v(dout1_20) AT=585.025n

* CHECK dout1_21 Vdout1_21ck116 = 0 time = 585
.meas tran vdout1_21ck116 FIND v(dout1_21) AT=585.025n

* CHECK dout1_22 Vdout1_22ck116 = 0 time = 585
.meas tran vdout1_22ck116 FIND v(dout1_22) AT=585.025n

* CHECK dout1_23 Vdout1_23ck116 = 0 time = 585
.meas tran vdout1_23ck116 FIND v(dout1_23) AT=585.025n

* CHECK dout1_24 Vdout1_24ck116 = 1.1 time = 585
.meas tran vdout1_24ck116 FIND v(dout1_24) AT=585.025n

* CHECK dout1_25 Vdout1_25ck116 = 0 time = 585
.meas tran vdout1_25ck116 FIND v(dout1_25) AT=585.025n

* CHECK dout1_26 Vdout1_26ck116 = 0 time = 585
.meas tran vdout1_26ck116 FIND v(dout1_26) AT=585.025n

* CHECK dout1_27 Vdout1_27ck116 = 0 time = 585
.meas tran vdout1_27ck116 FIND v(dout1_27) AT=585.025n

* CHECK dout1_28 Vdout1_28ck116 = 1.1 time = 585
.meas tran vdout1_28ck116 FIND v(dout1_28) AT=585.025n

* CHECK dout1_29 Vdout1_29ck116 = 0 time = 585
.meas tran vdout1_29ck116 FIND v(dout1_29) AT=585.025n

* CHECK dout1_30 Vdout1_30ck116 = 1.1 time = 585
.meas tran vdout1_30ck116 FIND v(dout1_30) AT=585.025n

* CHECK dout1_31 Vdout1_31ck116 = 0 time = 585
.meas tran vdout1_31ck116 FIND v(dout1_31) AT=585.025n

* CHECK dout1_0 Vdout1_0ck118 = 1.1 time = 595
.meas tran vdout1_0ck118 FIND v(dout1_0) AT=595.025n

* CHECK dout1_1 Vdout1_1ck118 = 0 time = 595
.meas tran vdout1_1ck118 FIND v(dout1_1) AT=595.025n

* CHECK dout1_2 Vdout1_2ck118 = 0 time = 595
.meas tran vdout1_2ck118 FIND v(dout1_2) AT=595.025n

* CHECK dout1_3 Vdout1_3ck118 = 1.1 time = 595
.meas tran vdout1_3ck118 FIND v(dout1_3) AT=595.025n

* CHECK dout1_4 Vdout1_4ck118 = 0 time = 595
.meas tran vdout1_4ck118 FIND v(dout1_4) AT=595.025n

* CHECK dout1_5 Vdout1_5ck118 = 0 time = 595
.meas tran vdout1_5ck118 FIND v(dout1_5) AT=595.025n

* CHECK dout1_6 Vdout1_6ck118 = 0 time = 595
.meas tran vdout1_6ck118 FIND v(dout1_6) AT=595.025n

* CHECK dout1_7 Vdout1_7ck118 = 1.1 time = 595
.meas tran vdout1_7ck118 FIND v(dout1_7) AT=595.025n

* CHECK dout1_8 Vdout1_8ck118 = 1.1 time = 595
.meas tran vdout1_8ck118 FIND v(dout1_8) AT=595.025n

* CHECK dout1_9 Vdout1_9ck118 = 0 time = 595
.meas tran vdout1_9ck118 FIND v(dout1_9) AT=595.025n

* CHECK dout1_10 Vdout1_10ck118 = 0 time = 595
.meas tran vdout1_10ck118 FIND v(dout1_10) AT=595.025n

* CHECK dout1_11 Vdout1_11ck118 = 1.1 time = 595
.meas tran vdout1_11ck118 FIND v(dout1_11) AT=595.025n

* CHECK dout1_12 Vdout1_12ck118 = 0 time = 595
.meas tran vdout1_12ck118 FIND v(dout1_12) AT=595.025n

* CHECK dout1_13 Vdout1_13ck118 = 0 time = 595
.meas tran vdout1_13ck118 FIND v(dout1_13) AT=595.025n

* CHECK dout1_14 Vdout1_14ck118 = 1.1 time = 595
.meas tran vdout1_14ck118 FIND v(dout1_14) AT=595.025n

* CHECK dout1_15 Vdout1_15ck118 = 0 time = 595
.meas tran vdout1_15ck118 FIND v(dout1_15) AT=595.025n

* CHECK dout1_16 Vdout1_16ck118 = 1.1 time = 595
.meas tran vdout1_16ck118 FIND v(dout1_16) AT=595.025n

* CHECK dout1_17 Vdout1_17ck118 = 0 time = 595
.meas tran vdout1_17ck118 FIND v(dout1_17) AT=595.025n

* CHECK dout1_18 Vdout1_18ck118 = 1.1 time = 595
.meas tran vdout1_18ck118 FIND v(dout1_18) AT=595.025n

* CHECK dout1_19 Vdout1_19ck118 = 1.1 time = 595
.meas tran vdout1_19ck118 FIND v(dout1_19) AT=595.025n

* CHECK dout1_20 Vdout1_20ck118 = 1.1 time = 595
.meas tran vdout1_20ck118 FIND v(dout1_20) AT=595.025n

* CHECK dout1_21 Vdout1_21ck118 = 1.1 time = 595
.meas tran vdout1_21ck118 FIND v(dout1_21) AT=595.025n

* CHECK dout1_22 Vdout1_22ck118 = 1.1 time = 595
.meas tran vdout1_22ck118 FIND v(dout1_22) AT=595.025n

* CHECK dout1_23 Vdout1_23ck118 = 0 time = 595
.meas tran vdout1_23ck118 FIND v(dout1_23) AT=595.025n

* CHECK dout1_24 Vdout1_24ck118 = 0 time = 595
.meas tran vdout1_24ck118 FIND v(dout1_24) AT=595.025n

* CHECK dout1_25 Vdout1_25ck118 = 1.1 time = 595
.meas tran vdout1_25ck118 FIND v(dout1_25) AT=595.025n

* CHECK dout1_26 Vdout1_26ck118 = 1.1 time = 595
.meas tran vdout1_26ck118 FIND v(dout1_26) AT=595.025n

* CHECK dout1_27 Vdout1_27ck118 = 0 time = 595
.meas tran vdout1_27ck118 FIND v(dout1_27) AT=595.025n

* CHECK dout1_28 Vdout1_28ck118 = 0 time = 595
.meas tran vdout1_28ck118 FIND v(dout1_28) AT=595.025n

* CHECK dout1_29 Vdout1_29ck118 = 0 time = 595
.meas tran vdout1_29ck118 FIND v(dout1_29) AT=595.025n

* CHECK dout1_30 Vdout1_30ck118 = 0 time = 595
.meas tran vdout1_30ck118 FIND v(dout1_30) AT=595.025n

* CHECK dout1_31 Vdout1_31ck118 = 0 time = 595
.meas tran vdout1_31ck118 FIND v(dout1_31) AT=595.025n

* CHECK dout1_0 Vdout1_0ck120 = 1.1 time = 605
.meas tran vdout1_0ck120 FIND v(dout1_0) AT=605.025n

* CHECK dout1_1 Vdout1_1ck120 = 1.1 time = 605
.meas tran vdout1_1ck120 FIND v(dout1_1) AT=605.025n

* CHECK dout1_2 Vdout1_2ck120 = 0 time = 605
.meas tran vdout1_2ck120 FIND v(dout1_2) AT=605.025n

* CHECK dout1_3 Vdout1_3ck120 = 1.1 time = 605
.meas tran vdout1_3ck120 FIND v(dout1_3) AT=605.025n

* CHECK dout1_4 Vdout1_4ck120 = 0 time = 605
.meas tran vdout1_4ck120 FIND v(dout1_4) AT=605.025n

* CHECK dout1_5 Vdout1_5ck120 = 1.1 time = 605
.meas tran vdout1_5ck120 FIND v(dout1_5) AT=605.025n

* CHECK dout1_6 Vdout1_6ck120 = 0 time = 605
.meas tran vdout1_6ck120 FIND v(dout1_6) AT=605.025n

* CHECK dout1_7 Vdout1_7ck120 = 0 time = 605
.meas tran vdout1_7ck120 FIND v(dout1_7) AT=605.025n

* CHECK dout1_8 Vdout1_8ck120 = 0 time = 605
.meas tran vdout1_8ck120 FIND v(dout1_8) AT=605.025n

* CHECK dout1_9 Vdout1_9ck120 = 1.1 time = 605
.meas tran vdout1_9ck120 FIND v(dout1_9) AT=605.025n

* CHECK dout1_10 Vdout1_10ck120 = 1.1 time = 605
.meas tran vdout1_10ck120 FIND v(dout1_10) AT=605.025n

* CHECK dout1_11 Vdout1_11ck120 = 0 time = 605
.meas tran vdout1_11ck120 FIND v(dout1_11) AT=605.025n

* CHECK dout1_12 Vdout1_12ck120 = 1.1 time = 605
.meas tran vdout1_12ck120 FIND v(dout1_12) AT=605.025n

* CHECK dout1_13 Vdout1_13ck120 = 1.1 time = 605
.meas tran vdout1_13ck120 FIND v(dout1_13) AT=605.025n

* CHECK dout1_14 Vdout1_14ck120 = 1.1 time = 605
.meas tran vdout1_14ck120 FIND v(dout1_14) AT=605.025n

* CHECK dout1_15 Vdout1_15ck120 = 0 time = 605
.meas tran vdout1_15ck120 FIND v(dout1_15) AT=605.025n

* CHECK dout1_16 Vdout1_16ck120 = 1.1 time = 605
.meas tran vdout1_16ck120 FIND v(dout1_16) AT=605.025n

* CHECK dout1_17 Vdout1_17ck120 = 1.1 time = 605
.meas tran vdout1_17ck120 FIND v(dout1_17) AT=605.025n

* CHECK dout1_18 Vdout1_18ck120 = 1.1 time = 605
.meas tran vdout1_18ck120 FIND v(dout1_18) AT=605.025n

* CHECK dout1_19 Vdout1_19ck120 = 0 time = 605
.meas tran vdout1_19ck120 FIND v(dout1_19) AT=605.025n

* CHECK dout1_20 Vdout1_20ck120 = 1.1 time = 605
.meas tran vdout1_20ck120 FIND v(dout1_20) AT=605.025n

* CHECK dout1_21 Vdout1_21ck120 = 0 time = 605
.meas tran vdout1_21ck120 FIND v(dout1_21) AT=605.025n

* CHECK dout1_22 Vdout1_22ck120 = 0 time = 605
.meas tran vdout1_22ck120 FIND v(dout1_22) AT=605.025n

* CHECK dout1_23 Vdout1_23ck120 = 1.1 time = 605
.meas tran vdout1_23ck120 FIND v(dout1_23) AT=605.025n

* CHECK dout1_24 Vdout1_24ck120 = 0 time = 605
.meas tran vdout1_24ck120 FIND v(dout1_24) AT=605.025n

* CHECK dout1_25 Vdout1_25ck120 = 1.1 time = 605
.meas tran vdout1_25ck120 FIND v(dout1_25) AT=605.025n

* CHECK dout1_26 Vdout1_26ck120 = 1.1 time = 605
.meas tran vdout1_26ck120 FIND v(dout1_26) AT=605.025n

* CHECK dout1_27 Vdout1_27ck120 = 0 time = 605
.meas tran vdout1_27ck120 FIND v(dout1_27) AT=605.025n

* CHECK dout1_28 Vdout1_28ck120 = 1.1 time = 605
.meas tran vdout1_28ck120 FIND v(dout1_28) AT=605.025n

* CHECK dout1_29 Vdout1_29ck120 = 1.1 time = 605
.meas tran vdout1_29ck120 FIND v(dout1_29) AT=605.025n

* CHECK dout1_30 Vdout1_30ck120 = 0 time = 605
.meas tran vdout1_30ck120 FIND v(dout1_30) AT=605.025n

* CHECK dout1_31 Vdout1_31ck120 = 0 time = 605
.meas tran vdout1_31ck120 FIND v(dout1_31) AT=605.025n

* CHECK dout1_0 Vdout1_0ck122 = 1.1 time = 615
.meas tran vdout1_0ck122 FIND v(dout1_0) AT=615.025n

* CHECK dout1_1 Vdout1_1ck122 = 0 time = 615
.meas tran vdout1_1ck122 FIND v(dout1_1) AT=615.025n

* CHECK dout1_2 Vdout1_2ck122 = 0 time = 615
.meas tran vdout1_2ck122 FIND v(dout1_2) AT=615.025n

* CHECK dout1_3 Vdout1_3ck122 = 1.1 time = 615
.meas tran vdout1_3ck122 FIND v(dout1_3) AT=615.025n

* CHECK dout1_4 Vdout1_4ck122 = 0 time = 615
.meas tran vdout1_4ck122 FIND v(dout1_4) AT=615.025n

* CHECK dout1_5 Vdout1_5ck122 = 0 time = 615
.meas tran vdout1_5ck122 FIND v(dout1_5) AT=615.025n

* CHECK dout1_6 Vdout1_6ck122 = 0 time = 615
.meas tran vdout1_6ck122 FIND v(dout1_6) AT=615.025n

* CHECK dout1_7 Vdout1_7ck122 = 1.1 time = 615
.meas tran vdout1_7ck122 FIND v(dout1_7) AT=615.025n

* CHECK dout1_8 Vdout1_8ck122 = 1.1 time = 615
.meas tran vdout1_8ck122 FIND v(dout1_8) AT=615.025n

* CHECK dout1_9 Vdout1_9ck122 = 0 time = 615
.meas tran vdout1_9ck122 FIND v(dout1_9) AT=615.025n

* CHECK dout1_10 Vdout1_10ck122 = 0 time = 615
.meas tran vdout1_10ck122 FIND v(dout1_10) AT=615.025n

* CHECK dout1_11 Vdout1_11ck122 = 1.1 time = 615
.meas tran vdout1_11ck122 FIND v(dout1_11) AT=615.025n

* CHECK dout1_12 Vdout1_12ck122 = 0 time = 615
.meas tran vdout1_12ck122 FIND v(dout1_12) AT=615.025n

* CHECK dout1_13 Vdout1_13ck122 = 0 time = 615
.meas tran vdout1_13ck122 FIND v(dout1_13) AT=615.025n

* CHECK dout1_14 Vdout1_14ck122 = 1.1 time = 615
.meas tran vdout1_14ck122 FIND v(dout1_14) AT=615.025n

* CHECK dout1_15 Vdout1_15ck122 = 0 time = 615
.meas tran vdout1_15ck122 FIND v(dout1_15) AT=615.025n

* CHECK dout1_16 Vdout1_16ck122 = 1.1 time = 615
.meas tran vdout1_16ck122 FIND v(dout1_16) AT=615.025n

* CHECK dout1_17 Vdout1_17ck122 = 0 time = 615
.meas tran vdout1_17ck122 FIND v(dout1_17) AT=615.025n

* CHECK dout1_18 Vdout1_18ck122 = 1.1 time = 615
.meas tran vdout1_18ck122 FIND v(dout1_18) AT=615.025n

* CHECK dout1_19 Vdout1_19ck122 = 1.1 time = 615
.meas tran vdout1_19ck122 FIND v(dout1_19) AT=615.025n

* CHECK dout1_20 Vdout1_20ck122 = 1.1 time = 615
.meas tran vdout1_20ck122 FIND v(dout1_20) AT=615.025n

* CHECK dout1_21 Vdout1_21ck122 = 1.1 time = 615
.meas tran vdout1_21ck122 FIND v(dout1_21) AT=615.025n

* CHECK dout1_22 Vdout1_22ck122 = 1.1 time = 615
.meas tran vdout1_22ck122 FIND v(dout1_22) AT=615.025n

* CHECK dout1_23 Vdout1_23ck122 = 0 time = 615
.meas tran vdout1_23ck122 FIND v(dout1_23) AT=615.025n

* CHECK dout1_24 Vdout1_24ck122 = 0 time = 615
.meas tran vdout1_24ck122 FIND v(dout1_24) AT=615.025n

* CHECK dout1_25 Vdout1_25ck122 = 1.1 time = 615
.meas tran vdout1_25ck122 FIND v(dout1_25) AT=615.025n

* CHECK dout1_26 Vdout1_26ck122 = 1.1 time = 615
.meas tran vdout1_26ck122 FIND v(dout1_26) AT=615.025n

* CHECK dout1_27 Vdout1_27ck122 = 0 time = 615
.meas tran vdout1_27ck122 FIND v(dout1_27) AT=615.025n

* CHECK dout1_28 Vdout1_28ck122 = 0 time = 615
.meas tran vdout1_28ck122 FIND v(dout1_28) AT=615.025n

* CHECK dout1_29 Vdout1_29ck122 = 0 time = 615
.meas tran vdout1_29ck122 FIND v(dout1_29) AT=615.025n

* CHECK dout1_30 Vdout1_30ck122 = 0 time = 615
.meas tran vdout1_30ck122 FIND v(dout1_30) AT=615.025n

* CHECK dout1_31 Vdout1_31ck122 = 0 time = 615
.meas tran vdout1_31ck122 FIND v(dout1_31) AT=615.025n

* CHECK dout1_0 Vdout1_0ck127 = 1.1 time = 640
.meas tran vdout1_0ck127 FIND v(dout1_0) AT=640.025n

* CHECK dout1_1 Vdout1_1ck127 = 0 time = 640
.meas tran vdout1_1ck127 FIND v(dout1_1) AT=640.025n

* CHECK dout1_2 Vdout1_2ck127 = 1.1 time = 640
.meas tran vdout1_2ck127 FIND v(dout1_2) AT=640.025n

* CHECK dout1_3 Vdout1_3ck127 = 0 time = 640
.meas tran vdout1_3ck127 FIND v(dout1_3) AT=640.025n

* CHECK dout1_4 Vdout1_4ck127 = 1.1 time = 640
.meas tran vdout1_4ck127 FIND v(dout1_4) AT=640.025n

* CHECK dout1_5 Vdout1_5ck127 = 0 time = 640
.meas tran vdout1_5ck127 FIND v(dout1_5) AT=640.025n

* CHECK dout1_6 Vdout1_6ck127 = 0 time = 640
.meas tran vdout1_6ck127 FIND v(dout1_6) AT=640.025n

* CHECK dout1_7 Vdout1_7ck127 = 1.1 time = 640
.meas tran vdout1_7ck127 FIND v(dout1_7) AT=640.025n

* CHECK dout1_8 Vdout1_8ck127 = 0 time = 640
.meas tran vdout1_8ck127 FIND v(dout1_8) AT=640.025n

* CHECK dout1_9 Vdout1_9ck127 = 1.1 time = 640
.meas tran vdout1_9ck127 FIND v(dout1_9) AT=640.025n

* CHECK dout1_10 Vdout1_10ck127 = 0 time = 640
.meas tran vdout1_10ck127 FIND v(dout1_10) AT=640.025n

* CHECK dout1_11 Vdout1_11ck127 = 0 time = 640
.meas tran vdout1_11ck127 FIND v(dout1_11) AT=640.025n

* CHECK dout1_12 Vdout1_12ck127 = 0 time = 640
.meas tran vdout1_12ck127 FIND v(dout1_12) AT=640.025n

* CHECK dout1_13 Vdout1_13ck127 = 0 time = 640
.meas tran vdout1_13ck127 FIND v(dout1_13) AT=640.025n

* CHECK dout1_14 Vdout1_14ck127 = 0 time = 640
.meas tran vdout1_14ck127 FIND v(dout1_14) AT=640.025n

* CHECK dout1_15 Vdout1_15ck127 = 0 time = 640
.meas tran vdout1_15ck127 FIND v(dout1_15) AT=640.025n

* CHECK dout1_16 Vdout1_16ck127 = 1.1 time = 640
.meas tran vdout1_16ck127 FIND v(dout1_16) AT=640.025n

* CHECK dout1_17 Vdout1_17ck127 = 1.1 time = 640
.meas tran vdout1_17ck127 FIND v(dout1_17) AT=640.025n

* CHECK dout1_18 Vdout1_18ck127 = 1.1 time = 640
.meas tran vdout1_18ck127 FIND v(dout1_18) AT=640.025n

* CHECK dout1_19 Vdout1_19ck127 = 0 time = 640
.meas tran vdout1_19ck127 FIND v(dout1_19) AT=640.025n

* CHECK dout1_20 Vdout1_20ck127 = 0 time = 640
.meas tran vdout1_20ck127 FIND v(dout1_20) AT=640.025n

* CHECK dout1_21 Vdout1_21ck127 = 0 time = 640
.meas tran vdout1_21ck127 FIND v(dout1_21) AT=640.025n

* CHECK dout1_22 Vdout1_22ck127 = 0 time = 640
.meas tran vdout1_22ck127 FIND v(dout1_22) AT=640.025n

* CHECK dout1_23 Vdout1_23ck127 = 0 time = 640
.meas tran vdout1_23ck127 FIND v(dout1_23) AT=640.025n

* CHECK dout1_24 Vdout1_24ck127 = 1.1 time = 640
.meas tran vdout1_24ck127 FIND v(dout1_24) AT=640.025n

* CHECK dout1_25 Vdout1_25ck127 = 1.1 time = 640
.meas tran vdout1_25ck127 FIND v(dout1_25) AT=640.025n

* CHECK dout1_26 Vdout1_26ck127 = 0 time = 640
.meas tran vdout1_26ck127 FIND v(dout1_26) AT=640.025n

* CHECK dout1_27 Vdout1_27ck127 = 1.1 time = 640
.meas tran vdout1_27ck127 FIND v(dout1_27) AT=640.025n

* CHECK dout1_28 Vdout1_28ck127 = 0 time = 640
.meas tran vdout1_28ck127 FIND v(dout1_28) AT=640.025n

* CHECK dout1_29 Vdout1_29ck127 = 0 time = 640
.meas tran vdout1_29ck127 FIND v(dout1_29) AT=640.025n

* CHECK dout1_30 Vdout1_30ck127 = 1.1 time = 640
.meas tran vdout1_30ck127 FIND v(dout1_30) AT=640.025n

* CHECK dout1_31 Vdout1_31ck127 = 0 time = 640
.meas tran vdout1_31ck127 FIND v(dout1_31) AT=640.025n

* CHECK dout1_0 Vdout1_0ck128 = 1.1 time = 645
.meas tran vdout1_0ck128 FIND v(dout1_0) AT=645.025n

* CHECK dout1_1 Vdout1_1ck128 = 0 time = 645
.meas tran vdout1_1ck128 FIND v(dout1_1) AT=645.025n

* CHECK dout1_2 Vdout1_2ck128 = 1.1 time = 645
.meas tran vdout1_2ck128 FIND v(dout1_2) AT=645.025n

* CHECK dout1_3 Vdout1_3ck128 = 1.1 time = 645
.meas tran vdout1_3ck128 FIND v(dout1_3) AT=645.025n

* CHECK dout1_4 Vdout1_4ck128 = 1.1 time = 645
.meas tran vdout1_4ck128 FIND v(dout1_4) AT=645.025n

* CHECK dout1_5 Vdout1_5ck128 = 0 time = 645
.meas tran vdout1_5ck128 FIND v(dout1_5) AT=645.025n

* CHECK dout1_6 Vdout1_6ck128 = 1.1 time = 645
.meas tran vdout1_6ck128 FIND v(dout1_6) AT=645.025n

* CHECK dout1_7 Vdout1_7ck128 = 0 time = 645
.meas tran vdout1_7ck128 FIND v(dout1_7) AT=645.025n

* CHECK dout1_8 Vdout1_8ck128 = 0 time = 645
.meas tran vdout1_8ck128 FIND v(dout1_8) AT=645.025n

* CHECK dout1_9 Vdout1_9ck128 = 0 time = 645
.meas tran vdout1_9ck128 FIND v(dout1_9) AT=645.025n

* CHECK dout1_10 Vdout1_10ck128 = 0 time = 645
.meas tran vdout1_10ck128 FIND v(dout1_10) AT=645.025n

* CHECK dout1_11 Vdout1_11ck128 = 1.1 time = 645
.meas tran vdout1_11ck128 FIND v(dout1_11) AT=645.025n

* CHECK dout1_12 Vdout1_12ck128 = 0 time = 645
.meas tran vdout1_12ck128 FIND v(dout1_12) AT=645.025n

* CHECK dout1_13 Vdout1_13ck128 = 0 time = 645
.meas tran vdout1_13ck128 FIND v(dout1_13) AT=645.025n

* CHECK dout1_14 Vdout1_14ck128 = 0 time = 645
.meas tran vdout1_14ck128 FIND v(dout1_14) AT=645.025n

* CHECK dout1_15 Vdout1_15ck128 = 1.1 time = 645
.meas tran vdout1_15ck128 FIND v(dout1_15) AT=645.025n

* CHECK dout1_16 Vdout1_16ck128 = 1.1 time = 645
.meas tran vdout1_16ck128 FIND v(dout1_16) AT=645.025n

* CHECK dout1_17 Vdout1_17ck128 = 1.1 time = 645
.meas tran vdout1_17ck128 FIND v(dout1_17) AT=645.025n

* CHECK dout1_18 Vdout1_18ck128 = 0 time = 645
.meas tran vdout1_18ck128 FIND v(dout1_18) AT=645.025n

* CHECK dout1_19 Vdout1_19ck128 = 1.1 time = 645
.meas tran vdout1_19ck128 FIND v(dout1_19) AT=645.025n

* CHECK dout1_20 Vdout1_20ck128 = 0 time = 645
.meas tran vdout1_20ck128 FIND v(dout1_20) AT=645.025n

* CHECK dout1_21 Vdout1_21ck128 = 0 time = 645
.meas tran vdout1_21ck128 FIND v(dout1_21) AT=645.025n

* CHECK dout1_22 Vdout1_22ck128 = 0 time = 645
.meas tran vdout1_22ck128 FIND v(dout1_22) AT=645.025n

* CHECK dout1_23 Vdout1_23ck128 = 1.1 time = 645
.meas tran vdout1_23ck128 FIND v(dout1_23) AT=645.025n

* CHECK dout1_24 Vdout1_24ck128 = 1.1 time = 645
.meas tran vdout1_24ck128 FIND v(dout1_24) AT=645.025n

* CHECK dout1_25 Vdout1_25ck128 = 1.1 time = 645
.meas tran vdout1_25ck128 FIND v(dout1_25) AT=645.025n

* CHECK dout1_26 Vdout1_26ck128 = 1.1 time = 645
.meas tran vdout1_26ck128 FIND v(dout1_26) AT=645.025n

* CHECK dout1_27 Vdout1_27ck128 = 0 time = 645
.meas tran vdout1_27ck128 FIND v(dout1_27) AT=645.025n

* CHECK dout1_28 Vdout1_28ck128 = 1.1 time = 645
.meas tran vdout1_28ck128 FIND v(dout1_28) AT=645.025n

* CHECK dout1_29 Vdout1_29ck128 = 1.1 time = 645
.meas tran vdout1_29ck128 FIND v(dout1_29) AT=645.025n

* CHECK dout1_30 Vdout1_30ck128 = 0 time = 645
.meas tran vdout1_30ck128 FIND v(dout1_30) AT=645.025n

* CHECK dout1_31 Vdout1_31ck128 = 0 time = 645
.meas tran vdout1_31ck128 FIND v(dout1_31) AT=645.025n

* CHECK dout1_0 Vdout1_0ck129 = 1.1 time = 650
.meas tran vdout1_0ck129 FIND v(dout1_0) AT=650.025n

* CHECK dout1_1 Vdout1_1ck129 = 1.1 time = 650
.meas tran vdout1_1ck129 FIND v(dout1_1) AT=650.025n

* CHECK dout1_2 Vdout1_2ck129 = 0 time = 650
.meas tran vdout1_2ck129 FIND v(dout1_2) AT=650.025n

* CHECK dout1_3 Vdout1_3ck129 = 1.1 time = 650
.meas tran vdout1_3ck129 FIND v(dout1_3) AT=650.025n

* CHECK dout1_4 Vdout1_4ck129 = 0 time = 650
.meas tran vdout1_4ck129 FIND v(dout1_4) AT=650.025n

* CHECK dout1_5 Vdout1_5ck129 = 1.1 time = 650
.meas tran vdout1_5ck129 FIND v(dout1_5) AT=650.025n

* CHECK dout1_6 Vdout1_6ck129 = 1.1 time = 650
.meas tran vdout1_6ck129 FIND v(dout1_6) AT=650.025n

* CHECK dout1_7 Vdout1_7ck129 = 0 time = 650
.meas tran vdout1_7ck129 FIND v(dout1_7) AT=650.025n

* CHECK dout1_8 Vdout1_8ck129 = 1.1 time = 650
.meas tran vdout1_8ck129 FIND v(dout1_8) AT=650.025n

* CHECK dout1_9 Vdout1_9ck129 = 0 time = 650
.meas tran vdout1_9ck129 FIND v(dout1_9) AT=650.025n

* CHECK dout1_10 Vdout1_10ck129 = 0 time = 650
.meas tran vdout1_10ck129 FIND v(dout1_10) AT=650.025n

* CHECK dout1_11 Vdout1_11ck129 = 1.1 time = 650
.meas tran vdout1_11ck129 FIND v(dout1_11) AT=650.025n

* CHECK dout1_12 Vdout1_12ck129 = 0 time = 650
.meas tran vdout1_12ck129 FIND v(dout1_12) AT=650.025n

* CHECK dout1_13 Vdout1_13ck129 = 0 time = 650
.meas tran vdout1_13ck129 FIND v(dout1_13) AT=650.025n

* CHECK dout1_14 Vdout1_14ck129 = 1.1 time = 650
.meas tran vdout1_14ck129 FIND v(dout1_14) AT=650.025n

* CHECK dout1_15 Vdout1_15ck129 = 0 time = 650
.meas tran vdout1_15ck129 FIND v(dout1_15) AT=650.025n

* CHECK dout1_16 Vdout1_16ck129 = 0 time = 650
.meas tran vdout1_16ck129 FIND v(dout1_16) AT=650.025n

* CHECK dout1_17 Vdout1_17ck129 = 0 time = 650
.meas tran vdout1_17ck129 FIND v(dout1_17) AT=650.025n

* CHECK dout1_18 Vdout1_18ck129 = 1.1 time = 650
.meas tran vdout1_18ck129 FIND v(dout1_18) AT=650.025n

* CHECK dout1_19 Vdout1_19ck129 = 0 time = 650
.meas tran vdout1_19ck129 FIND v(dout1_19) AT=650.025n

* CHECK dout1_20 Vdout1_20ck129 = 0 time = 650
.meas tran vdout1_20ck129 FIND v(dout1_20) AT=650.025n

* CHECK dout1_21 Vdout1_21ck129 = 0 time = 650
.meas tran vdout1_21ck129 FIND v(dout1_21) AT=650.025n

* CHECK dout1_22 Vdout1_22ck129 = 0 time = 650
.meas tran vdout1_22ck129 FIND v(dout1_22) AT=650.025n

* CHECK dout1_23 Vdout1_23ck129 = 0 time = 650
.meas tran vdout1_23ck129 FIND v(dout1_23) AT=650.025n

* CHECK dout1_24 Vdout1_24ck129 = 0 time = 650
.meas tran vdout1_24ck129 FIND v(dout1_24) AT=650.025n

* CHECK dout1_25 Vdout1_25ck129 = 1.1 time = 650
.meas tran vdout1_25ck129 FIND v(dout1_25) AT=650.025n

* CHECK dout1_26 Vdout1_26ck129 = 1.1 time = 650
.meas tran vdout1_26ck129 FIND v(dout1_26) AT=650.025n

* CHECK dout1_27 Vdout1_27ck129 = 0 time = 650
.meas tran vdout1_27ck129 FIND v(dout1_27) AT=650.025n

* CHECK dout1_28 Vdout1_28ck129 = 1.1 time = 650
.meas tran vdout1_28ck129 FIND v(dout1_28) AT=650.025n

* CHECK dout1_29 Vdout1_29ck129 = 0 time = 650
.meas tran vdout1_29ck129 FIND v(dout1_29) AT=650.025n

* CHECK dout1_30 Vdout1_30ck129 = 0 time = 650
.meas tran vdout1_30ck129 FIND v(dout1_30) AT=650.025n

* CHECK dout1_31 Vdout1_31ck129 = 1.1 time = 650
.meas tran vdout1_31ck129 FIND v(dout1_31) AT=650.025n

* CHECK dout1_0 Vdout1_0ck130 = 1.1 time = 655
.meas tran vdout1_0ck130 FIND v(dout1_0) AT=655.025n

* CHECK dout1_1 Vdout1_1ck130 = 0 time = 655
.meas tran vdout1_1ck130 FIND v(dout1_1) AT=655.025n

* CHECK dout1_2 Vdout1_2ck130 = 1.1 time = 655
.meas tran vdout1_2ck130 FIND v(dout1_2) AT=655.025n

* CHECK dout1_3 Vdout1_3ck130 = 1.1 time = 655
.meas tran vdout1_3ck130 FIND v(dout1_3) AT=655.025n

* CHECK dout1_4 Vdout1_4ck130 = 1.1 time = 655
.meas tran vdout1_4ck130 FIND v(dout1_4) AT=655.025n

* CHECK dout1_5 Vdout1_5ck130 = 0 time = 655
.meas tran vdout1_5ck130 FIND v(dout1_5) AT=655.025n

* CHECK dout1_6 Vdout1_6ck130 = 1.1 time = 655
.meas tran vdout1_6ck130 FIND v(dout1_6) AT=655.025n

* CHECK dout1_7 Vdout1_7ck130 = 0 time = 655
.meas tran vdout1_7ck130 FIND v(dout1_7) AT=655.025n

* CHECK dout1_8 Vdout1_8ck130 = 0 time = 655
.meas tran vdout1_8ck130 FIND v(dout1_8) AT=655.025n

* CHECK dout1_9 Vdout1_9ck130 = 0 time = 655
.meas tran vdout1_9ck130 FIND v(dout1_9) AT=655.025n

* CHECK dout1_10 Vdout1_10ck130 = 0 time = 655
.meas tran vdout1_10ck130 FIND v(dout1_10) AT=655.025n

* CHECK dout1_11 Vdout1_11ck130 = 1.1 time = 655
.meas tran vdout1_11ck130 FIND v(dout1_11) AT=655.025n

* CHECK dout1_12 Vdout1_12ck130 = 0 time = 655
.meas tran vdout1_12ck130 FIND v(dout1_12) AT=655.025n

* CHECK dout1_13 Vdout1_13ck130 = 0 time = 655
.meas tran vdout1_13ck130 FIND v(dout1_13) AT=655.025n

* CHECK dout1_14 Vdout1_14ck130 = 0 time = 655
.meas tran vdout1_14ck130 FIND v(dout1_14) AT=655.025n

* CHECK dout1_15 Vdout1_15ck130 = 1.1 time = 655
.meas tran vdout1_15ck130 FIND v(dout1_15) AT=655.025n

* CHECK dout1_16 Vdout1_16ck130 = 1.1 time = 655
.meas tran vdout1_16ck130 FIND v(dout1_16) AT=655.025n

* CHECK dout1_17 Vdout1_17ck130 = 1.1 time = 655
.meas tran vdout1_17ck130 FIND v(dout1_17) AT=655.025n

* CHECK dout1_18 Vdout1_18ck130 = 0 time = 655
.meas tran vdout1_18ck130 FIND v(dout1_18) AT=655.025n

* CHECK dout1_19 Vdout1_19ck130 = 1.1 time = 655
.meas tran vdout1_19ck130 FIND v(dout1_19) AT=655.025n

* CHECK dout1_20 Vdout1_20ck130 = 0 time = 655
.meas tran vdout1_20ck130 FIND v(dout1_20) AT=655.025n

* CHECK dout1_21 Vdout1_21ck130 = 0 time = 655
.meas tran vdout1_21ck130 FIND v(dout1_21) AT=655.025n

* CHECK dout1_22 Vdout1_22ck130 = 0 time = 655
.meas tran vdout1_22ck130 FIND v(dout1_22) AT=655.025n

* CHECK dout1_23 Vdout1_23ck130 = 1.1 time = 655
.meas tran vdout1_23ck130 FIND v(dout1_23) AT=655.025n

* CHECK dout1_24 Vdout1_24ck130 = 1.1 time = 655
.meas tran vdout1_24ck130 FIND v(dout1_24) AT=655.025n

* CHECK dout1_25 Vdout1_25ck130 = 1.1 time = 655
.meas tran vdout1_25ck130 FIND v(dout1_25) AT=655.025n

* CHECK dout1_26 Vdout1_26ck130 = 1.1 time = 655
.meas tran vdout1_26ck130 FIND v(dout1_26) AT=655.025n

* CHECK dout1_27 Vdout1_27ck130 = 0 time = 655
.meas tran vdout1_27ck130 FIND v(dout1_27) AT=655.025n

* CHECK dout1_28 Vdout1_28ck130 = 1.1 time = 655
.meas tran vdout1_28ck130 FIND v(dout1_28) AT=655.025n

* CHECK dout1_29 Vdout1_29ck130 = 1.1 time = 655
.meas tran vdout1_29ck130 FIND v(dout1_29) AT=655.025n

* CHECK dout1_30 Vdout1_30ck130 = 0 time = 655
.meas tran vdout1_30ck130 FIND v(dout1_30) AT=655.025n

* CHECK dout1_31 Vdout1_31ck130 = 0 time = 655
.meas tran vdout1_31ck130 FIND v(dout1_31) AT=655.025n

* CHECK dout1_0 Vdout1_0ck132 = 1.1 time = 665
.meas tran vdout1_0ck132 FIND v(dout1_0) AT=665.025n

* CHECK dout1_1 Vdout1_1ck132 = 0 time = 665
.meas tran vdout1_1ck132 FIND v(dout1_1) AT=665.025n

* CHECK dout1_2 Vdout1_2ck132 = 1.1 time = 665
.meas tran vdout1_2ck132 FIND v(dout1_2) AT=665.025n

* CHECK dout1_3 Vdout1_3ck132 = 0 time = 665
.meas tran vdout1_3ck132 FIND v(dout1_3) AT=665.025n

* CHECK dout1_4 Vdout1_4ck132 = 1.1 time = 665
.meas tran vdout1_4ck132 FIND v(dout1_4) AT=665.025n

* CHECK dout1_5 Vdout1_5ck132 = 0 time = 665
.meas tran vdout1_5ck132 FIND v(dout1_5) AT=665.025n

* CHECK dout1_6 Vdout1_6ck132 = 0 time = 665
.meas tran vdout1_6ck132 FIND v(dout1_6) AT=665.025n

* CHECK dout1_7 Vdout1_7ck132 = 1.1 time = 665
.meas tran vdout1_7ck132 FIND v(dout1_7) AT=665.025n

* CHECK dout1_8 Vdout1_8ck132 = 0 time = 665
.meas tran vdout1_8ck132 FIND v(dout1_8) AT=665.025n

* CHECK dout1_9 Vdout1_9ck132 = 1.1 time = 665
.meas tran vdout1_9ck132 FIND v(dout1_9) AT=665.025n

* CHECK dout1_10 Vdout1_10ck132 = 0 time = 665
.meas tran vdout1_10ck132 FIND v(dout1_10) AT=665.025n

* CHECK dout1_11 Vdout1_11ck132 = 0 time = 665
.meas tran vdout1_11ck132 FIND v(dout1_11) AT=665.025n

* CHECK dout1_12 Vdout1_12ck132 = 0 time = 665
.meas tran vdout1_12ck132 FIND v(dout1_12) AT=665.025n

* CHECK dout1_13 Vdout1_13ck132 = 0 time = 665
.meas tran vdout1_13ck132 FIND v(dout1_13) AT=665.025n

* CHECK dout1_14 Vdout1_14ck132 = 0 time = 665
.meas tran vdout1_14ck132 FIND v(dout1_14) AT=665.025n

* CHECK dout1_15 Vdout1_15ck132 = 0 time = 665
.meas tran vdout1_15ck132 FIND v(dout1_15) AT=665.025n

* CHECK dout1_16 Vdout1_16ck132 = 1.1 time = 665
.meas tran vdout1_16ck132 FIND v(dout1_16) AT=665.025n

* CHECK dout1_17 Vdout1_17ck132 = 1.1 time = 665
.meas tran vdout1_17ck132 FIND v(dout1_17) AT=665.025n

* CHECK dout1_18 Vdout1_18ck132 = 1.1 time = 665
.meas tran vdout1_18ck132 FIND v(dout1_18) AT=665.025n

* CHECK dout1_19 Vdout1_19ck132 = 0 time = 665
.meas tran vdout1_19ck132 FIND v(dout1_19) AT=665.025n

* CHECK dout1_20 Vdout1_20ck132 = 0 time = 665
.meas tran vdout1_20ck132 FIND v(dout1_20) AT=665.025n

* CHECK dout1_21 Vdout1_21ck132 = 0 time = 665
.meas tran vdout1_21ck132 FIND v(dout1_21) AT=665.025n

* CHECK dout1_22 Vdout1_22ck132 = 0 time = 665
.meas tran vdout1_22ck132 FIND v(dout1_22) AT=665.025n

* CHECK dout1_23 Vdout1_23ck132 = 0 time = 665
.meas tran vdout1_23ck132 FIND v(dout1_23) AT=665.025n

* CHECK dout1_24 Vdout1_24ck132 = 1.1 time = 665
.meas tran vdout1_24ck132 FIND v(dout1_24) AT=665.025n

* CHECK dout1_25 Vdout1_25ck132 = 1.1 time = 665
.meas tran vdout1_25ck132 FIND v(dout1_25) AT=665.025n

* CHECK dout1_26 Vdout1_26ck132 = 0 time = 665
.meas tran vdout1_26ck132 FIND v(dout1_26) AT=665.025n

* CHECK dout1_27 Vdout1_27ck132 = 1.1 time = 665
.meas tran vdout1_27ck132 FIND v(dout1_27) AT=665.025n

* CHECK dout1_28 Vdout1_28ck132 = 0 time = 665
.meas tran vdout1_28ck132 FIND v(dout1_28) AT=665.025n

* CHECK dout1_29 Vdout1_29ck132 = 0 time = 665
.meas tran vdout1_29ck132 FIND v(dout1_29) AT=665.025n

* CHECK dout1_30 Vdout1_30ck132 = 1.1 time = 665
.meas tran vdout1_30ck132 FIND v(dout1_30) AT=665.025n

* CHECK dout1_31 Vdout1_31ck132 = 0 time = 665
.meas tran vdout1_31ck132 FIND v(dout1_31) AT=665.025n

* CHECK dout1_0 Vdout1_0ck133 = 1.1 time = 670
.meas tran vdout1_0ck133 FIND v(dout1_0) AT=670.025n

* CHECK dout1_1 Vdout1_1ck133 = 0 time = 670
.meas tran vdout1_1ck133 FIND v(dout1_1) AT=670.025n

* CHECK dout1_2 Vdout1_2ck133 = 1.1 time = 670
.meas tran vdout1_2ck133 FIND v(dout1_2) AT=670.025n

* CHECK dout1_3 Vdout1_3ck133 = 1.1 time = 670
.meas tran vdout1_3ck133 FIND v(dout1_3) AT=670.025n

* CHECK dout1_4 Vdout1_4ck133 = 1.1 time = 670
.meas tran vdout1_4ck133 FIND v(dout1_4) AT=670.025n

* CHECK dout1_5 Vdout1_5ck133 = 0 time = 670
.meas tran vdout1_5ck133 FIND v(dout1_5) AT=670.025n

* CHECK dout1_6 Vdout1_6ck133 = 1.1 time = 670
.meas tran vdout1_6ck133 FIND v(dout1_6) AT=670.025n

* CHECK dout1_7 Vdout1_7ck133 = 0 time = 670
.meas tran vdout1_7ck133 FIND v(dout1_7) AT=670.025n

* CHECK dout1_8 Vdout1_8ck133 = 0 time = 670
.meas tran vdout1_8ck133 FIND v(dout1_8) AT=670.025n

* CHECK dout1_9 Vdout1_9ck133 = 0 time = 670
.meas tran vdout1_9ck133 FIND v(dout1_9) AT=670.025n

* CHECK dout1_10 Vdout1_10ck133 = 0 time = 670
.meas tran vdout1_10ck133 FIND v(dout1_10) AT=670.025n

* CHECK dout1_11 Vdout1_11ck133 = 1.1 time = 670
.meas tran vdout1_11ck133 FIND v(dout1_11) AT=670.025n

* CHECK dout1_12 Vdout1_12ck133 = 0 time = 670
.meas tran vdout1_12ck133 FIND v(dout1_12) AT=670.025n

* CHECK dout1_13 Vdout1_13ck133 = 0 time = 670
.meas tran vdout1_13ck133 FIND v(dout1_13) AT=670.025n

* CHECK dout1_14 Vdout1_14ck133 = 0 time = 670
.meas tran vdout1_14ck133 FIND v(dout1_14) AT=670.025n

* CHECK dout1_15 Vdout1_15ck133 = 1.1 time = 670
.meas tran vdout1_15ck133 FIND v(dout1_15) AT=670.025n

* CHECK dout1_16 Vdout1_16ck133 = 0 time = 670
.meas tran vdout1_16ck133 FIND v(dout1_16) AT=670.025n

* CHECK dout1_17 Vdout1_17ck133 = 1.1 time = 670
.meas tran vdout1_17ck133 FIND v(dout1_17) AT=670.025n

* CHECK dout1_18 Vdout1_18ck133 = 1.1 time = 670
.meas tran vdout1_18ck133 FIND v(dout1_18) AT=670.025n

* CHECK dout1_19 Vdout1_19ck133 = 1.1 time = 670
.meas tran vdout1_19ck133 FIND v(dout1_19) AT=670.025n

* CHECK dout1_20 Vdout1_20ck133 = 1.1 time = 670
.meas tran vdout1_20ck133 FIND v(dout1_20) AT=670.025n

* CHECK dout1_21 Vdout1_21ck133 = 0 time = 670
.meas tran vdout1_21ck133 FIND v(dout1_21) AT=670.025n

* CHECK dout1_22 Vdout1_22ck133 = 0 time = 670
.meas tran vdout1_22ck133 FIND v(dout1_22) AT=670.025n

* CHECK dout1_23 Vdout1_23ck133 = 0 time = 670
.meas tran vdout1_23ck133 FIND v(dout1_23) AT=670.025n

* CHECK dout1_24 Vdout1_24ck133 = 1.1 time = 670
.meas tran vdout1_24ck133 FIND v(dout1_24) AT=670.025n

* CHECK dout1_25 Vdout1_25ck133 = 1.1 time = 670
.meas tran vdout1_25ck133 FIND v(dout1_25) AT=670.025n

* CHECK dout1_26 Vdout1_26ck133 = 1.1 time = 670
.meas tran vdout1_26ck133 FIND v(dout1_26) AT=670.025n

* CHECK dout1_27 Vdout1_27ck133 = 0 time = 670
.meas tran vdout1_27ck133 FIND v(dout1_27) AT=670.025n

* CHECK dout1_28 Vdout1_28ck133 = 1.1 time = 670
.meas tran vdout1_28ck133 FIND v(dout1_28) AT=670.025n

* CHECK dout1_29 Vdout1_29ck133 = 1.1 time = 670
.meas tran vdout1_29ck133 FIND v(dout1_29) AT=670.025n

* CHECK dout1_30 Vdout1_30ck133 = 0 time = 670
.meas tran vdout1_30ck133 FIND v(dout1_30) AT=670.025n

* CHECK dout1_31 Vdout1_31ck133 = 0 time = 670
.meas tran vdout1_31ck133 FIND v(dout1_31) AT=670.025n

* CHECK dout1_0 Vdout1_0ck134 = 1.1 time = 675
.meas tran vdout1_0ck134 FIND v(dout1_0) AT=675.025n

* CHECK dout1_1 Vdout1_1ck134 = 1.1 time = 675
.meas tran vdout1_1ck134 FIND v(dout1_1) AT=675.025n

* CHECK dout1_2 Vdout1_2ck134 = 1.1 time = 675
.meas tran vdout1_2ck134 FIND v(dout1_2) AT=675.025n

* CHECK dout1_3 Vdout1_3ck134 = 1.1 time = 675
.meas tran vdout1_3ck134 FIND v(dout1_3) AT=675.025n

* CHECK dout1_4 Vdout1_4ck134 = 1.1 time = 675
.meas tran vdout1_4ck134 FIND v(dout1_4) AT=675.025n

* CHECK dout1_5 Vdout1_5ck134 = 0 time = 675
.meas tran vdout1_5ck134 FIND v(dout1_5) AT=675.025n

* CHECK dout1_6 Vdout1_6ck134 = 1.1 time = 675
.meas tran vdout1_6ck134 FIND v(dout1_6) AT=675.025n

* CHECK dout1_7 Vdout1_7ck134 = 1.1 time = 675
.meas tran vdout1_7ck134 FIND v(dout1_7) AT=675.025n

* CHECK dout1_8 Vdout1_8ck134 = 1.1 time = 675
.meas tran vdout1_8ck134 FIND v(dout1_8) AT=675.025n

* CHECK dout1_9 Vdout1_9ck134 = 0 time = 675
.meas tran vdout1_9ck134 FIND v(dout1_9) AT=675.025n

* CHECK dout1_10 Vdout1_10ck134 = 0 time = 675
.meas tran vdout1_10ck134 FIND v(dout1_10) AT=675.025n

* CHECK dout1_11 Vdout1_11ck134 = 0 time = 675
.meas tran vdout1_11ck134 FIND v(dout1_11) AT=675.025n

* CHECK dout1_12 Vdout1_12ck134 = 1.1 time = 675
.meas tran vdout1_12ck134 FIND v(dout1_12) AT=675.025n

* CHECK dout1_13 Vdout1_13ck134 = 1.1 time = 675
.meas tran vdout1_13ck134 FIND v(dout1_13) AT=675.025n

* CHECK dout1_14 Vdout1_14ck134 = 0 time = 675
.meas tran vdout1_14ck134 FIND v(dout1_14) AT=675.025n

* CHECK dout1_15 Vdout1_15ck134 = 0 time = 675
.meas tran vdout1_15ck134 FIND v(dout1_15) AT=675.025n

* CHECK dout1_16 Vdout1_16ck134 = 1.1 time = 675
.meas tran vdout1_16ck134 FIND v(dout1_16) AT=675.025n

* CHECK dout1_17 Vdout1_17ck134 = 0 time = 675
.meas tran vdout1_17ck134 FIND v(dout1_17) AT=675.025n

* CHECK dout1_18 Vdout1_18ck134 = 1.1 time = 675
.meas tran vdout1_18ck134 FIND v(dout1_18) AT=675.025n

* CHECK dout1_19 Vdout1_19ck134 = 1.1 time = 675
.meas tran vdout1_19ck134 FIND v(dout1_19) AT=675.025n

* CHECK dout1_20 Vdout1_20ck134 = 0 time = 675
.meas tran vdout1_20ck134 FIND v(dout1_20) AT=675.025n

* CHECK dout1_21 Vdout1_21ck134 = 0 time = 675
.meas tran vdout1_21ck134 FIND v(dout1_21) AT=675.025n

* CHECK dout1_22 Vdout1_22ck134 = 1.1 time = 675
.meas tran vdout1_22ck134 FIND v(dout1_22) AT=675.025n

* CHECK dout1_23 Vdout1_23ck134 = 1.1 time = 675
.meas tran vdout1_23ck134 FIND v(dout1_23) AT=675.025n

* CHECK dout1_24 Vdout1_24ck134 = 0 time = 675
.meas tran vdout1_24ck134 FIND v(dout1_24) AT=675.025n

* CHECK dout1_25 Vdout1_25ck134 = 0 time = 675
.meas tran vdout1_25ck134 FIND v(dout1_25) AT=675.025n

* CHECK dout1_26 Vdout1_26ck134 = 1.1 time = 675
.meas tran vdout1_26ck134 FIND v(dout1_26) AT=675.025n

* CHECK dout1_27 Vdout1_27ck134 = 0 time = 675
.meas tran vdout1_27ck134 FIND v(dout1_27) AT=675.025n

* CHECK dout1_28 Vdout1_28ck134 = 0 time = 675
.meas tran vdout1_28ck134 FIND v(dout1_28) AT=675.025n

* CHECK dout1_29 Vdout1_29ck134 = 1.1 time = 675
.meas tran vdout1_29ck134 FIND v(dout1_29) AT=675.025n

* CHECK dout1_30 Vdout1_30ck134 = 1.1 time = 675
.meas tran vdout1_30ck134 FIND v(dout1_30) AT=675.025n

* CHECK dout1_31 Vdout1_31ck134 = 0 time = 675
.meas tran vdout1_31ck134 FIND v(dout1_31) AT=675.025n

* CHECK dout1_0 Vdout1_0ck135 = 1.1 time = 680
.meas tran vdout1_0ck135 FIND v(dout1_0) AT=680.025n

* CHECK dout1_1 Vdout1_1ck135 = 1.1 time = 680
.meas tran vdout1_1ck135 FIND v(dout1_1) AT=680.025n

* CHECK dout1_2 Vdout1_2ck135 = 0 time = 680
.meas tran vdout1_2ck135 FIND v(dout1_2) AT=680.025n

* CHECK dout1_3 Vdout1_3ck135 = 1.1 time = 680
.meas tran vdout1_3ck135 FIND v(dout1_3) AT=680.025n

* CHECK dout1_4 Vdout1_4ck135 = 1.1 time = 680
.meas tran vdout1_4ck135 FIND v(dout1_4) AT=680.025n

* CHECK dout1_5 Vdout1_5ck135 = 1.1 time = 680
.meas tran vdout1_5ck135 FIND v(dout1_5) AT=680.025n

* CHECK dout1_6 Vdout1_6ck135 = 1.1 time = 680
.meas tran vdout1_6ck135 FIND v(dout1_6) AT=680.025n

* CHECK dout1_7 Vdout1_7ck135 = 1.1 time = 680
.meas tran vdout1_7ck135 FIND v(dout1_7) AT=680.025n

* CHECK dout1_8 Vdout1_8ck135 = 0 time = 680
.meas tran vdout1_8ck135 FIND v(dout1_8) AT=680.025n

* CHECK dout1_9 Vdout1_9ck135 = 0 time = 680
.meas tran vdout1_9ck135 FIND v(dout1_9) AT=680.025n

* CHECK dout1_10 Vdout1_10ck135 = 0 time = 680
.meas tran vdout1_10ck135 FIND v(dout1_10) AT=680.025n

* CHECK dout1_11 Vdout1_11ck135 = 0 time = 680
.meas tran vdout1_11ck135 FIND v(dout1_11) AT=680.025n

* CHECK dout1_12 Vdout1_12ck135 = 1.1 time = 680
.meas tran vdout1_12ck135 FIND v(dout1_12) AT=680.025n

* CHECK dout1_13 Vdout1_13ck135 = 0 time = 680
.meas tran vdout1_13ck135 FIND v(dout1_13) AT=680.025n

* CHECK dout1_14 Vdout1_14ck135 = 0 time = 680
.meas tran vdout1_14ck135 FIND v(dout1_14) AT=680.025n

* CHECK dout1_15 Vdout1_15ck135 = 1.1 time = 680
.meas tran vdout1_15ck135 FIND v(dout1_15) AT=680.025n

* CHECK dout1_16 Vdout1_16ck135 = 0 time = 680
.meas tran vdout1_16ck135 FIND v(dout1_16) AT=680.025n

* CHECK dout1_17 Vdout1_17ck135 = 0 time = 680
.meas tran vdout1_17ck135 FIND v(dout1_17) AT=680.025n

* CHECK dout1_18 Vdout1_18ck135 = 0 time = 680
.meas tran vdout1_18ck135 FIND v(dout1_18) AT=680.025n

* CHECK dout1_19 Vdout1_19ck135 = 1.1 time = 680
.meas tran vdout1_19ck135 FIND v(dout1_19) AT=680.025n

* CHECK dout1_20 Vdout1_20ck135 = 1.1 time = 680
.meas tran vdout1_20ck135 FIND v(dout1_20) AT=680.025n

* CHECK dout1_21 Vdout1_21ck135 = 1.1 time = 680
.meas tran vdout1_21ck135 FIND v(dout1_21) AT=680.025n

* CHECK dout1_22 Vdout1_22ck135 = 1.1 time = 680
.meas tran vdout1_22ck135 FIND v(dout1_22) AT=680.025n

* CHECK dout1_23 Vdout1_23ck135 = 0 time = 680
.meas tran vdout1_23ck135 FIND v(dout1_23) AT=680.025n

* CHECK dout1_24 Vdout1_24ck135 = 0 time = 680
.meas tran vdout1_24ck135 FIND v(dout1_24) AT=680.025n

* CHECK dout1_25 Vdout1_25ck135 = 0 time = 680
.meas tran vdout1_25ck135 FIND v(dout1_25) AT=680.025n

* CHECK dout1_26 Vdout1_26ck135 = 1.1 time = 680
.meas tran vdout1_26ck135 FIND v(dout1_26) AT=680.025n

* CHECK dout1_27 Vdout1_27ck135 = 0 time = 680
.meas tran vdout1_27ck135 FIND v(dout1_27) AT=680.025n

* CHECK dout1_28 Vdout1_28ck135 = 0 time = 680
.meas tran vdout1_28ck135 FIND v(dout1_28) AT=680.025n

* CHECK dout1_29 Vdout1_29ck135 = 1.1 time = 680
.meas tran vdout1_29ck135 FIND v(dout1_29) AT=680.025n

* CHECK dout1_30 Vdout1_30ck135 = 1.1 time = 680
.meas tran vdout1_30ck135 FIND v(dout1_30) AT=680.025n

* CHECK dout1_31 Vdout1_31ck135 = 0 time = 680
.meas tran vdout1_31ck135 FIND v(dout1_31) AT=680.025n

* CHECK dout1_0 Vdout1_0ck136 = 1.1 time = 685
.meas tran vdout1_0ck136 FIND v(dout1_0) AT=685.025n

* CHECK dout1_1 Vdout1_1ck136 = 0 time = 685
.meas tran vdout1_1ck136 FIND v(dout1_1) AT=685.025n

* CHECK dout1_2 Vdout1_2ck136 = 1.1 time = 685
.meas tran vdout1_2ck136 FIND v(dout1_2) AT=685.025n

* CHECK dout1_3 Vdout1_3ck136 = 1.1 time = 685
.meas tran vdout1_3ck136 FIND v(dout1_3) AT=685.025n

* CHECK dout1_4 Vdout1_4ck136 = 1.1 time = 685
.meas tran vdout1_4ck136 FIND v(dout1_4) AT=685.025n

* CHECK dout1_5 Vdout1_5ck136 = 0 time = 685
.meas tran vdout1_5ck136 FIND v(dout1_5) AT=685.025n

* CHECK dout1_6 Vdout1_6ck136 = 1.1 time = 685
.meas tran vdout1_6ck136 FIND v(dout1_6) AT=685.025n

* CHECK dout1_7 Vdout1_7ck136 = 0 time = 685
.meas tran vdout1_7ck136 FIND v(dout1_7) AT=685.025n

* CHECK dout1_8 Vdout1_8ck136 = 0 time = 685
.meas tran vdout1_8ck136 FIND v(dout1_8) AT=685.025n

* CHECK dout1_9 Vdout1_9ck136 = 0 time = 685
.meas tran vdout1_9ck136 FIND v(dout1_9) AT=685.025n

* CHECK dout1_10 Vdout1_10ck136 = 0 time = 685
.meas tran vdout1_10ck136 FIND v(dout1_10) AT=685.025n

* CHECK dout1_11 Vdout1_11ck136 = 1.1 time = 685
.meas tran vdout1_11ck136 FIND v(dout1_11) AT=685.025n

* CHECK dout1_12 Vdout1_12ck136 = 0 time = 685
.meas tran vdout1_12ck136 FIND v(dout1_12) AT=685.025n

* CHECK dout1_13 Vdout1_13ck136 = 0 time = 685
.meas tran vdout1_13ck136 FIND v(dout1_13) AT=685.025n

* CHECK dout1_14 Vdout1_14ck136 = 0 time = 685
.meas tran vdout1_14ck136 FIND v(dout1_14) AT=685.025n

* CHECK dout1_15 Vdout1_15ck136 = 1.1 time = 685
.meas tran vdout1_15ck136 FIND v(dout1_15) AT=685.025n

* CHECK dout1_16 Vdout1_16ck136 = 0 time = 685
.meas tran vdout1_16ck136 FIND v(dout1_16) AT=685.025n

* CHECK dout1_17 Vdout1_17ck136 = 1.1 time = 685
.meas tran vdout1_17ck136 FIND v(dout1_17) AT=685.025n

* CHECK dout1_18 Vdout1_18ck136 = 1.1 time = 685
.meas tran vdout1_18ck136 FIND v(dout1_18) AT=685.025n

* CHECK dout1_19 Vdout1_19ck136 = 1.1 time = 685
.meas tran vdout1_19ck136 FIND v(dout1_19) AT=685.025n

* CHECK dout1_20 Vdout1_20ck136 = 1.1 time = 685
.meas tran vdout1_20ck136 FIND v(dout1_20) AT=685.025n

* CHECK dout1_21 Vdout1_21ck136 = 0 time = 685
.meas tran vdout1_21ck136 FIND v(dout1_21) AT=685.025n

* CHECK dout1_22 Vdout1_22ck136 = 0 time = 685
.meas tran vdout1_22ck136 FIND v(dout1_22) AT=685.025n

* CHECK dout1_23 Vdout1_23ck136 = 0 time = 685
.meas tran vdout1_23ck136 FIND v(dout1_23) AT=685.025n

* CHECK dout1_24 Vdout1_24ck136 = 1.1 time = 685
.meas tran vdout1_24ck136 FIND v(dout1_24) AT=685.025n

* CHECK dout1_25 Vdout1_25ck136 = 1.1 time = 685
.meas tran vdout1_25ck136 FIND v(dout1_25) AT=685.025n

* CHECK dout1_26 Vdout1_26ck136 = 1.1 time = 685
.meas tran vdout1_26ck136 FIND v(dout1_26) AT=685.025n

* CHECK dout1_27 Vdout1_27ck136 = 0 time = 685
.meas tran vdout1_27ck136 FIND v(dout1_27) AT=685.025n

* CHECK dout1_28 Vdout1_28ck136 = 1.1 time = 685
.meas tran vdout1_28ck136 FIND v(dout1_28) AT=685.025n

* CHECK dout1_29 Vdout1_29ck136 = 1.1 time = 685
.meas tran vdout1_29ck136 FIND v(dout1_29) AT=685.025n

* CHECK dout1_30 Vdout1_30ck136 = 0 time = 685
.meas tran vdout1_30ck136 FIND v(dout1_30) AT=685.025n

* CHECK dout1_31 Vdout1_31ck136 = 0 time = 685
.meas tran vdout1_31ck136 FIND v(dout1_31) AT=685.025n

* CHECK dout1_0 Vdout1_0ck139 = 1.1 time = 700
.meas tran vdout1_0ck139 FIND v(dout1_0) AT=700.025n

* CHECK dout1_1 Vdout1_1ck139 = 0 time = 700
.meas tran vdout1_1ck139 FIND v(dout1_1) AT=700.025n

* CHECK dout1_2 Vdout1_2ck139 = 0 time = 700
.meas tran vdout1_2ck139 FIND v(dout1_2) AT=700.025n

* CHECK dout1_3 Vdout1_3ck139 = 1.1 time = 700
.meas tran vdout1_3ck139 FIND v(dout1_3) AT=700.025n

* CHECK dout1_4 Vdout1_4ck139 = 0 time = 700
.meas tran vdout1_4ck139 FIND v(dout1_4) AT=700.025n

* CHECK dout1_5 Vdout1_5ck139 = 0 time = 700
.meas tran vdout1_5ck139 FIND v(dout1_5) AT=700.025n

* CHECK dout1_6 Vdout1_6ck139 = 1.1 time = 700
.meas tran vdout1_6ck139 FIND v(dout1_6) AT=700.025n

* CHECK dout1_7 Vdout1_7ck139 = 0 time = 700
.meas tran vdout1_7ck139 FIND v(dout1_7) AT=700.025n

* CHECK dout1_8 Vdout1_8ck139 = 1.1 time = 700
.meas tran vdout1_8ck139 FIND v(dout1_8) AT=700.025n

* CHECK dout1_9 Vdout1_9ck139 = 1.1 time = 700
.meas tran vdout1_9ck139 FIND v(dout1_9) AT=700.025n

* CHECK dout1_10 Vdout1_10ck139 = 1.1 time = 700
.meas tran vdout1_10ck139 FIND v(dout1_10) AT=700.025n

* CHECK dout1_11 Vdout1_11ck139 = 1.1 time = 700
.meas tran vdout1_11ck139 FIND v(dout1_11) AT=700.025n

* CHECK dout1_12 Vdout1_12ck139 = 0 time = 700
.meas tran vdout1_12ck139 FIND v(dout1_12) AT=700.025n

* CHECK dout1_13 Vdout1_13ck139 = 0 time = 700
.meas tran vdout1_13ck139 FIND v(dout1_13) AT=700.025n

* CHECK dout1_14 Vdout1_14ck139 = 0 time = 700
.meas tran vdout1_14ck139 FIND v(dout1_14) AT=700.025n

* CHECK dout1_15 Vdout1_15ck139 = 1.1 time = 700
.meas tran vdout1_15ck139 FIND v(dout1_15) AT=700.025n

* CHECK dout1_16 Vdout1_16ck139 = 0 time = 700
.meas tran vdout1_16ck139 FIND v(dout1_16) AT=700.025n

* CHECK dout1_17 Vdout1_17ck139 = 0 time = 700
.meas tran vdout1_17ck139 FIND v(dout1_17) AT=700.025n

* CHECK dout1_18 Vdout1_18ck139 = 0 time = 700
.meas tran vdout1_18ck139 FIND v(dout1_18) AT=700.025n

* CHECK dout1_19 Vdout1_19ck139 = 1.1 time = 700
.meas tran vdout1_19ck139 FIND v(dout1_19) AT=700.025n

* CHECK dout1_20 Vdout1_20ck139 = 0 time = 700
.meas tran vdout1_20ck139 FIND v(dout1_20) AT=700.025n

* CHECK dout1_21 Vdout1_21ck139 = 1.1 time = 700
.meas tran vdout1_21ck139 FIND v(dout1_21) AT=700.025n

* CHECK dout1_22 Vdout1_22ck139 = 1.1 time = 700
.meas tran vdout1_22ck139 FIND v(dout1_22) AT=700.025n

* CHECK dout1_23 Vdout1_23ck139 = 0 time = 700
.meas tran vdout1_23ck139 FIND v(dout1_23) AT=700.025n

* CHECK dout1_24 Vdout1_24ck139 = 0 time = 700
.meas tran vdout1_24ck139 FIND v(dout1_24) AT=700.025n

* CHECK dout1_25 Vdout1_25ck139 = 1.1 time = 700
.meas tran vdout1_25ck139 FIND v(dout1_25) AT=700.025n

* CHECK dout1_26 Vdout1_26ck139 = 1.1 time = 700
.meas tran vdout1_26ck139 FIND v(dout1_26) AT=700.025n

* CHECK dout1_27 Vdout1_27ck139 = 0 time = 700
.meas tran vdout1_27ck139 FIND v(dout1_27) AT=700.025n

* CHECK dout1_28 Vdout1_28ck139 = 0 time = 700
.meas tran vdout1_28ck139 FIND v(dout1_28) AT=700.025n

* CHECK dout1_29 Vdout1_29ck139 = 0 time = 700
.meas tran vdout1_29ck139 FIND v(dout1_29) AT=700.025n

* CHECK dout1_30 Vdout1_30ck139 = 1.1 time = 700
.meas tran vdout1_30ck139 FIND v(dout1_30) AT=700.025n

* CHECK dout1_31 Vdout1_31ck139 = 1.1 time = 700
.meas tran vdout1_31ck139 FIND v(dout1_31) AT=700.025n

* CHECK dout1_0 Vdout1_0ck141 = 0 time = 710
.meas tran vdout1_0ck141 FIND v(dout1_0) AT=710.025n

* CHECK dout1_1 Vdout1_1ck141 = 1.1 time = 710
.meas tran vdout1_1ck141 FIND v(dout1_1) AT=710.025n

* CHECK dout1_2 Vdout1_2ck141 = 1.1 time = 710
.meas tran vdout1_2ck141 FIND v(dout1_2) AT=710.025n

* CHECK dout1_3 Vdout1_3ck141 = 0 time = 710
.meas tran vdout1_3ck141 FIND v(dout1_3) AT=710.025n

* CHECK dout1_4 Vdout1_4ck141 = 1.1 time = 710
.meas tran vdout1_4ck141 FIND v(dout1_4) AT=710.025n

* CHECK dout1_5 Vdout1_5ck141 = 1.1 time = 710
.meas tran vdout1_5ck141 FIND v(dout1_5) AT=710.025n

* CHECK dout1_6 Vdout1_6ck141 = 0 time = 710
.meas tran vdout1_6ck141 FIND v(dout1_6) AT=710.025n

* CHECK dout1_7 Vdout1_7ck141 = 1.1 time = 710
.meas tran vdout1_7ck141 FIND v(dout1_7) AT=710.025n

* CHECK dout1_8 Vdout1_8ck141 = 0 time = 710
.meas tran vdout1_8ck141 FIND v(dout1_8) AT=710.025n

* CHECK dout1_9 Vdout1_9ck141 = 0 time = 710
.meas tran vdout1_9ck141 FIND v(dout1_9) AT=710.025n

* CHECK dout1_10 Vdout1_10ck141 = 1.1 time = 710
.meas tran vdout1_10ck141 FIND v(dout1_10) AT=710.025n

* CHECK dout1_11 Vdout1_11ck141 = 0 time = 710
.meas tran vdout1_11ck141 FIND v(dout1_11) AT=710.025n

* CHECK dout1_12 Vdout1_12ck141 = 1.1 time = 710
.meas tran vdout1_12ck141 FIND v(dout1_12) AT=710.025n

* CHECK dout1_13 Vdout1_13ck141 = 1.1 time = 710
.meas tran vdout1_13ck141 FIND v(dout1_13) AT=710.025n

* CHECK dout1_14 Vdout1_14ck141 = 1.1 time = 710
.meas tran vdout1_14ck141 FIND v(dout1_14) AT=710.025n

* CHECK dout1_15 Vdout1_15ck141 = 0 time = 710
.meas tran vdout1_15ck141 FIND v(dout1_15) AT=710.025n

* CHECK dout1_16 Vdout1_16ck141 = 0 time = 710
.meas tran vdout1_16ck141 FIND v(dout1_16) AT=710.025n

* CHECK dout1_17 Vdout1_17ck141 = 1.1 time = 710
.meas tran vdout1_17ck141 FIND v(dout1_17) AT=710.025n

* CHECK dout1_18 Vdout1_18ck141 = 1.1 time = 710
.meas tran vdout1_18ck141 FIND v(dout1_18) AT=710.025n

* CHECK dout1_19 Vdout1_19ck141 = 1.1 time = 710
.meas tran vdout1_19ck141 FIND v(dout1_19) AT=710.025n

* CHECK dout1_20 Vdout1_20ck141 = 0 time = 710
.meas tran vdout1_20ck141 FIND v(dout1_20) AT=710.025n

* CHECK dout1_21 Vdout1_21ck141 = 1.1 time = 710
.meas tran vdout1_21ck141 FIND v(dout1_21) AT=710.025n

* CHECK dout1_22 Vdout1_22ck141 = 0 time = 710
.meas tran vdout1_22ck141 FIND v(dout1_22) AT=710.025n

* CHECK dout1_23 Vdout1_23ck141 = 0 time = 710
.meas tran vdout1_23ck141 FIND v(dout1_23) AT=710.025n

* CHECK dout1_24 Vdout1_24ck141 = 1.1 time = 710
.meas tran vdout1_24ck141 FIND v(dout1_24) AT=710.025n

* CHECK dout1_25 Vdout1_25ck141 = 0 time = 710
.meas tran vdout1_25ck141 FIND v(dout1_25) AT=710.025n

* CHECK dout1_26 Vdout1_26ck141 = 1.1 time = 710
.meas tran vdout1_26ck141 FIND v(dout1_26) AT=710.025n

* CHECK dout1_27 Vdout1_27ck141 = 1.1 time = 710
.meas tran vdout1_27ck141 FIND v(dout1_27) AT=710.025n

* CHECK dout1_28 Vdout1_28ck141 = 0 time = 710
.meas tran vdout1_28ck141 FIND v(dout1_28) AT=710.025n

* CHECK dout1_29 Vdout1_29ck141 = 1.1 time = 710
.meas tran vdout1_29ck141 FIND v(dout1_29) AT=710.025n

* CHECK dout1_30 Vdout1_30ck141 = 0 time = 710
.meas tran vdout1_30ck141 FIND v(dout1_30) AT=710.025n

* CHECK dout1_31 Vdout1_31ck141 = 0 time = 710
.meas tran vdout1_31ck141 FIND v(dout1_31) AT=710.025n

* CHECK dout1_0 Vdout1_0ck142 = 0 time = 715
.meas tran vdout1_0ck142 FIND v(dout1_0) AT=715.025n

* CHECK dout1_1 Vdout1_1ck142 = 1.1 time = 715
.meas tran vdout1_1ck142 FIND v(dout1_1) AT=715.025n

* CHECK dout1_2 Vdout1_2ck142 = 1.1 time = 715
.meas tran vdout1_2ck142 FIND v(dout1_2) AT=715.025n

* CHECK dout1_3 Vdout1_3ck142 = 1.1 time = 715
.meas tran vdout1_3ck142 FIND v(dout1_3) AT=715.025n

* CHECK dout1_4 Vdout1_4ck142 = 0 time = 715
.meas tran vdout1_4ck142 FIND v(dout1_4) AT=715.025n

* CHECK dout1_5 Vdout1_5ck142 = 1.1 time = 715
.meas tran vdout1_5ck142 FIND v(dout1_5) AT=715.025n

* CHECK dout1_6 Vdout1_6ck142 = 1.1 time = 715
.meas tran vdout1_6ck142 FIND v(dout1_6) AT=715.025n

* CHECK dout1_7 Vdout1_7ck142 = 0 time = 715
.meas tran vdout1_7ck142 FIND v(dout1_7) AT=715.025n

* CHECK dout1_8 Vdout1_8ck142 = 1.1 time = 715
.meas tran vdout1_8ck142 FIND v(dout1_8) AT=715.025n

* CHECK dout1_9 Vdout1_9ck142 = 1.1 time = 715
.meas tran vdout1_9ck142 FIND v(dout1_9) AT=715.025n

* CHECK dout1_10 Vdout1_10ck142 = 1.1 time = 715
.meas tran vdout1_10ck142 FIND v(dout1_10) AT=715.025n

* CHECK dout1_11 Vdout1_11ck142 = 0 time = 715
.meas tran vdout1_11ck142 FIND v(dout1_11) AT=715.025n

* CHECK dout1_12 Vdout1_12ck142 = 0 time = 715
.meas tran vdout1_12ck142 FIND v(dout1_12) AT=715.025n

* CHECK dout1_13 Vdout1_13ck142 = 0 time = 715
.meas tran vdout1_13ck142 FIND v(dout1_13) AT=715.025n

* CHECK dout1_14 Vdout1_14ck142 = 1.1 time = 715
.meas tran vdout1_14ck142 FIND v(dout1_14) AT=715.025n

* CHECK dout1_15 Vdout1_15ck142 = 1.1 time = 715
.meas tran vdout1_15ck142 FIND v(dout1_15) AT=715.025n

* CHECK dout1_16 Vdout1_16ck142 = 0 time = 715
.meas tran vdout1_16ck142 FIND v(dout1_16) AT=715.025n

* CHECK dout1_17 Vdout1_17ck142 = 0 time = 715
.meas tran vdout1_17ck142 FIND v(dout1_17) AT=715.025n

* CHECK dout1_18 Vdout1_18ck142 = 1.1 time = 715
.meas tran vdout1_18ck142 FIND v(dout1_18) AT=715.025n

* CHECK dout1_19 Vdout1_19ck142 = 0 time = 715
.meas tran vdout1_19ck142 FIND v(dout1_19) AT=715.025n

* CHECK dout1_20 Vdout1_20ck142 = 0 time = 715
.meas tran vdout1_20ck142 FIND v(dout1_20) AT=715.025n

* CHECK dout1_21 Vdout1_21ck142 = 0 time = 715
.meas tran vdout1_21ck142 FIND v(dout1_21) AT=715.025n

* CHECK dout1_22 Vdout1_22ck142 = 0 time = 715
.meas tran vdout1_22ck142 FIND v(dout1_22) AT=715.025n

* CHECK dout1_23 Vdout1_23ck142 = 0 time = 715
.meas tran vdout1_23ck142 FIND v(dout1_23) AT=715.025n

* CHECK dout1_24 Vdout1_24ck142 = 0 time = 715
.meas tran vdout1_24ck142 FIND v(dout1_24) AT=715.025n

* CHECK dout1_25 Vdout1_25ck142 = 1.1 time = 715
.meas tran vdout1_25ck142 FIND v(dout1_25) AT=715.025n

* CHECK dout1_26 Vdout1_26ck142 = 1.1 time = 715
.meas tran vdout1_26ck142 FIND v(dout1_26) AT=715.025n

* CHECK dout1_27 Vdout1_27ck142 = 0 time = 715
.meas tran vdout1_27ck142 FIND v(dout1_27) AT=715.025n

* CHECK dout1_28 Vdout1_28ck142 = 1.1 time = 715
.meas tran vdout1_28ck142 FIND v(dout1_28) AT=715.025n

* CHECK dout1_29 Vdout1_29ck142 = 0 time = 715
.meas tran vdout1_29ck142 FIND v(dout1_29) AT=715.025n

* CHECK dout1_30 Vdout1_30ck142 = 0 time = 715
.meas tran vdout1_30ck142 FIND v(dout1_30) AT=715.025n

* CHECK dout1_31 Vdout1_31ck142 = 1.1 time = 715
.meas tran vdout1_31ck142 FIND v(dout1_31) AT=715.025n

* CHECK dout1_0 Vdout1_0ck144 = 1.1 time = 725
.meas tran vdout1_0ck144 FIND v(dout1_0) AT=725.025n

* CHECK dout1_1 Vdout1_1ck144 = 1.1 time = 725
.meas tran vdout1_1ck144 FIND v(dout1_1) AT=725.025n

* CHECK dout1_2 Vdout1_2ck144 = 1.1 time = 725
.meas tran vdout1_2ck144 FIND v(dout1_2) AT=725.025n

* CHECK dout1_3 Vdout1_3ck144 = 1.1 time = 725
.meas tran vdout1_3ck144 FIND v(dout1_3) AT=725.025n

* CHECK dout1_4 Vdout1_4ck144 = 1.1 time = 725
.meas tran vdout1_4ck144 FIND v(dout1_4) AT=725.025n

* CHECK dout1_5 Vdout1_5ck144 = 0 time = 725
.meas tran vdout1_5ck144 FIND v(dout1_5) AT=725.025n

* CHECK dout1_6 Vdout1_6ck144 = 1.1 time = 725
.meas tran vdout1_6ck144 FIND v(dout1_6) AT=725.025n

* CHECK dout1_7 Vdout1_7ck144 = 1.1 time = 725
.meas tran vdout1_7ck144 FIND v(dout1_7) AT=725.025n

* CHECK dout1_8 Vdout1_8ck144 = 1.1 time = 725
.meas tran vdout1_8ck144 FIND v(dout1_8) AT=725.025n

* CHECK dout1_9 Vdout1_9ck144 = 0 time = 725
.meas tran vdout1_9ck144 FIND v(dout1_9) AT=725.025n

* CHECK dout1_10 Vdout1_10ck144 = 0 time = 725
.meas tran vdout1_10ck144 FIND v(dout1_10) AT=725.025n

* CHECK dout1_11 Vdout1_11ck144 = 0 time = 725
.meas tran vdout1_11ck144 FIND v(dout1_11) AT=725.025n

* CHECK dout1_12 Vdout1_12ck144 = 1.1 time = 725
.meas tran vdout1_12ck144 FIND v(dout1_12) AT=725.025n

* CHECK dout1_13 Vdout1_13ck144 = 1.1 time = 725
.meas tran vdout1_13ck144 FIND v(dout1_13) AT=725.025n

* CHECK dout1_14 Vdout1_14ck144 = 0 time = 725
.meas tran vdout1_14ck144 FIND v(dout1_14) AT=725.025n

* CHECK dout1_15 Vdout1_15ck144 = 0 time = 725
.meas tran vdout1_15ck144 FIND v(dout1_15) AT=725.025n

* CHECK dout1_16 Vdout1_16ck144 = 1.1 time = 725
.meas tran vdout1_16ck144 FIND v(dout1_16) AT=725.025n

* CHECK dout1_17 Vdout1_17ck144 = 0 time = 725
.meas tran vdout1_17ck144 FIND v(dout1_17) AT=725.025n

* CHECK dout1_18 Vdout1_18ck144 = 1.1 time = 725
.meas tran vdout1_18ck144 FIND v(dout1_18) AT=725.025n

* CHECK dout1_19 Vdout1_19ck144 = 1.1 time = 725
.meas tran vdout1_19ck144 FIND v(dout1_19) AT=725.025n

* CHECK dout1_20 Vdout1_20ck144 = 0 time = 725
.meas tran vdout1_20ck144 FIND v(dout1_20) AT=725.025n

* CHECK dout1_21 Vdout1_21ck144 = 0 time = 725
.meas tran vdout1_21ck144 FIND v(dout1_21) AT=725.025n

* CHECK dout1_22 Vdout1_22ck144 = 1.1 time = 725
.meas tran vdout1_22ck144 FIND v(dout1_22) AT=725.025n

* CHECK dout1_23 Vdout1_23ck144 = 1.1 time = 725
.meas tran vdout1_23ck144 FIND v(dout1_23) AT=725.025n

* CHECK dout1_24 Vdout1_24ck144 = 0 time = 725
.meas tran vdout1_24ck144 FIND v(dout1_24) AT=725.025n

* CHECK dout1_25 Vdout1_25ck144 = 0 time = 725
.meas tran vdout1_25ck144 FIND v(dout1_25) AT=725.025n

* CHECK dout1_26 Vdout1_26ck144 = 1.1 time = 725
.meas tran vdout1_26ck144 FIND v(dout1_26) AT=725.025n

* CHECK dout1_27 Vdout1_27ck144 = 0 time = 725
.meas tran vdout1_27ck144 FIND v(dout1_27) AT=725.025n

* CHECK dout1_28 Vdout1_28ck144 = 0 time = 725
.meas tran vdout1_28ck144 FIND v(dout1_28) AT=725.025n

* CHECK dout1_29 Vdout1_29ck144 = 1.1 time = 725
.meas tran vdout1_29ck144 FIND v(dout1_29) AT=725.025n

* CHECK dout1_30 Vdout1_30ck144 = 1.1 time = 725
.meas tran vdout1_30ck144 FIND v(dout1_30) AT=725.025n

* CHECK dout1_31 Vdout1_31ck144 = 0 time = 725
.meas tran vdout1_31ck144 FIND v(dout1_31) AT=725.025n

* CHECK dout1_0 Vdout1_0ck146 = 1.1 time = 735
.meas tran vdout1_0ck146 FIND v(dout1_0) AT=735.025n

* CHECK dout1_1 Vdout1_1ck146 = 0 time = 735
.meas tran vdout1_1ck146 FIND v(dout1_1) AT=735.025n

* CHECK dout1_2 Vdout1_2ck146 = 1.1 time = 735
.meas tran vdout1_2ck146 FIND v(dout1_2) AT=735.025n

* CHECK dout1_3 Vdout1_3ck146 = 0 time = 735
.meas tran vdout1_3ck146 FIND v(dout1_3) AT=735.025n

* CHECK dout1_4 Vdout1_4ck146 = 1.1 time = 735
.meas tran vdout1_4ck146 FIND v(dout1_4) AT=735.025n

* CHECK dout1_5 Vdout1_5ck146 = 0 time = 735
.meas tran vdout1_5ck146 FIND v(dout1_5) AT=735.025n

* CHECK dout1_6 Vdout1_6ck146 = 1.1 time = 735
.meas tran vdout1_6ck146 FIND v(dout1_6) AT=735.025n

* CHECK dout1_7 Vdout1_7ck146 = 0 time = 735
.meas tran vdout1_7ck146 FIND v(dout1_7) AT=735.025n

* CHECK dout1_8 Vdout1_8ck146 = 0 time = 735
.meas tran vdout1_8ck146 FIND v(dout1_8) AT=735.025n

* CHECK dout1_9 Vdout1_9ck146 = 0 time = 735
.meas tran vdout1_9ck146 FIND v(dout1_9) AT=735.025n

* CHECK dout1_10 Vdout1_10ck146 = 0 time = 735
.meas tran vdout1_10ck146 FIND v(dout1_10) AT=735.025n

* CHECK dout1_11 Vdout1_11ck146 = 0 time = 735
.meas tran vdout1_11ck146 FIND v(dout1_11) AT=735.025n

* CHECK dout1_12 Vdout1_12ck146 = 1.1 time = 735
.meas tran vdout1_12ck146 FIND v(dout1_12) AT=735.025n

* CHECK dout1_13 Vdout1_13ck146 = 0 time = 735
.meas tran vdout1_13ck146 FIND v(dout1_13) AT=735.025n

* CHECK dout1_14 Vdout1_14ck146 = 1.1 time = 735
.meas tran vdout1_14ck146 FIND v(dout1_14) AT=735.025n

* CHECK dout1_15 Vdout1_15ck146 = 1.1 time = 735
.meas tran vdout1_15ck146 FIND v(dout1_15) AT=735.025n

* CHECK dout1_16 Vdout1_16ck146 = 1.1 time = 735
.meas tran vdout1_16ck146 FIND v(dout1_16) AT=735.025n

* CHECK dout1_17 Vdout1_17ck146 = 1.1 time = 735
.meas tran vdout1_17ck146 FIND v(dout1_17) AT=735.025n

* CHECK dout1_18 Vdout1_18ck146 = 0 time = 735
.meas tran vdout1_18ck146 FIND v(dout1_18) AT=735.025n

* CHECK dout1_19 Vdout1_19ck146 = 1.1 time = 735
.meas tran vdout1_19ck146 FIND v(dout1_19) AT=735.025n

* CHECK dout1_20 Vdout1_20ck146 = 1.1 time = 735
.meas tran vdout1_20ck146 FIND v(dout1_20) AT=735.025n

* CHECK dout1_21 Vdout1_21ck146 = 1.1 time = 735
.meas tran vdout1_21ck146 FIND v(dout1_21) AT=735.025n

* CHECK dout1_22 Vdout1_22ck146 = 1.1 time = 735
.meas tran vdout1_22ck146 FIND v(dout1_22) AT=735.025n

* CHECK dout1_23 Vdout1_23ck146 = 0 time = 735
.meas tran vdout1_23ck146 FIND v(dout1_23) AT=735.025n

* CHECK dout1_24 Vdout1_24ck146 = 1.1 time = 735
.meas tran vdout1_24ck146 FIND v(dout1_24) AT=735.025n

* CHECK dout1_25 Vdout1_25ck146 = 0 time = 735
.meas tran vdout1_25ck146 FIND v(dout1_25) AT=735.025n

* CHECK dout1_26 Vdout1_26ck146 = 0 time = 735
.meas tran vdout1_26ck146 FIND v(dout1_26) AT=735.025n

* CHECK dout1_27 Vdout1_27ck146 = 1.1 time = 735
.meas tran vdout1_27ck146 FIND v(dout1_27) AT=735.025n

* CHECK dout1_28 Vdout1_28ck146 = 1.1 time = 735
.meas tran vdout1_28ck146 FIND v(dout1_28) AT=735.025n

* CHECK dout1_29 Vdout1_29ck146 = 0 time = 735
.meas tran vdout1_29ck146 FIND v(dout1_29) AT=735.025n

* CHECK dout1_30 Vdout1_30ck146 = 1.1 time = 735
.meas tran vdout1_30ck146 FIND v(dout1_30) AT=735.025n

* CHECK dout1_31 Vdout1_31ck146 = 0 time = 735
.meas tran vdout1_31ck146 FIND v(dout1_31) AT=735.025n

* CHECK dout1_0 Vdout1_0ck147 = 1.1 time = 740
.meas tran vdout1_0ck147 FIND v(dout1_0) AT=740.025n

* CHECK dout1_1 Vdout1_1ck147 = 1.1 time = 740
.meas tran vdout1_1ck147 FIND v(dout1_1) AT=740.025n

* CHECK dout1_2 Vdout1_2ck147 = 1.1 time = 740
.meas tran vdout1_2ck147 FIND v(dout1_2) AT=740.025n

* CHECK dout1_3 Vdout1_3ck147 = 1.1 time = 740
.meas tran vdout1_3ck147 FIND v(dout1_3) AT=740.025n

* CHECK dout1_4 Vdout1_4ck147 = 1.1 time = 740
.meas tran vdout1_4ck147 FIND v(dout1_4) AT=740.025n

* CHECK dout1_5 Vdout1_5ck147 = 0 time = 740
.meas tran vdout1_5ck147 FIND v(dout1_5) AT=740.025n

* CHECK dout1_6 Vdout1_6ck147 = 1.1 time = 740
.meas tran vdout1_6ck147 FIND v(dout1_6) AT=740.025n

* CHECK dout1_7 Vdout1_7ck147 = 1.1 time = 740
.meas tran vdout1_7ck147 FIND v(dout1_7) AT=740.025n

* CHECK dout1_8 Vdout1_8ck147 = 1.1 time = 740
.meas tran vdout1_8ck147 FIND v(dout1_8) AT=740.025n

* CHECK dout1_9 Vdout1_9ck147 = 1.1 time = 740
.meas tran vdout1_9ck147 FIND v(dout1_9) AT=740.025n

* CHECK dout1_10 Vdout1_10ck147 = 1.1 time = 740
.meas tran vdout1_10ck147 FIND v(dout1_10) AT=740.025n

* CHECK dout1_11 Vdout1_11ck147 = 0 time = 740
.meas tran vdout1_11ck147 FIND v(dout1_11) AT=740.025n

* CHECK dout1_12 Vdout1_12ck147 = 1.1 time = 740
.meas tran vdout1_12ck147 FIND v(dout1_12) AT=740.025n

* CHECK dout1_13 Vdout1_13ck147 = 0 time = 740
.meas tran vdout1_13ck147 FIND v(dout1_13) AT=740.025n

* CHECK dout1_14 Vdout1_14ck147 = 1.1 time = 740
.meas tran vdout1_14ck147 FIND v(dout1_14) AT=740.025n

* CHECK dout1_15 Vdout1_15ck147 = 1.1 time = 740
.meas tran vdout1_15ck147 FIND v(dout1_15) AT=740.025n

* CHECK dout1_16 Vdout1_16ck147 = 1.1 time = 740
.meas tran vdout1_16ck147 FIND v(dout1_16) AT=740.025n

* CHECK dout1_17 Vdout1_17ck147 = 0 time = 740
.meas tran vdout1_17ck147 FIND v(dout1_17) AT=740.025n

* CHECK dout1_18 Vdout1_18ck147 = 1.1 time = 740
.meas tran vdout1_18ck147 FIND v(dout1_18) AT=740.025n

* CHECK dout1_19 Vdout1_19ck147 = 1.1 time = 740
.meas tran vdout1_19ck147 FIND v(dout1_19) AT=740.025n

* CHECK dout1_20 Vdout1_20ck147 = 0 time = 740
.meas tran vdout1_20ck147 FIND v(dout1_20) AT=740.025n

* CHECK dout1_21 Vdout1_21ck147 = 0 time = 740
.meas tran vdout1_21ck147 FIND v(dout1_21) AT=740.025n

* CHECK dout1_22 Vdout1_22ck147 = 1.1 time = 740
.meas tran vdout1_22ck147 FIND v(dout1_22) AT=740.025n

* CHECK dout1_23 Vdout1_23ck147 = 1.1 time = 740
.meas tran vdout1_23ck147 FIND v(dout1_23) AT=740.025n

* CHECK dout1_24 Vdout1_24ck147 = 1.1 time = 740
.meas tran vdout1_24ck147 FIND v(dout1_24) AT=740.025n

* CHECK dout1_25 Vdout1_25ck147 = 0 time = 740
.meas tran vdout1_25ck147 FIND v(dout1_25) AT=740.025n

* CHECK dout1_26 Vdout1_26ck147 = 1.1 time = 740
.meas tran vdout1_26ck147 FIND v(dout1_26) AT=740.025n

* CHECK dout1_27 Vdout1_27ck147 = 1.1 time = 740
.meas tran vdout1_27ck147 FIND v(dout1_27) AT=740.025n

* CHECK dout1_28 Vdout1_28ck147 = 1.1 time = 740
.meas tran vdout1_28ck147 FIND v(dout1_28) AT=740.025n

* CHECK dout1_29 Vdout1_29ck147 = 1.1 time = 740
.meas tran vdout1_29ck147 FIND v(dout1_29) AT=740.025n

* CHECK dout1_30 Vdout1_30ck147 = 1.1 time = 740
.meas tran vdout1_30ck147 FIND v(dout1_30) AT=740.025n

* CHECK dout1_31 Vdout1_31ck147 = 1.1 time = 740
.meas tran vdout1_31ck147 FIND v(dout1_31) AT=740.025n

* CHECK dout1_0 Vdout1_0ck148 = 0 time = 745
.meas tran vdout1_0ck148 FIND v(dout1_0) AT=745.025n

* CHECK dout1_1 Vdout1_1ck148 = 1.1 time = 745
.meas tran vdout1_1ck148 FIND v(dout1_1) AT=745.025n

* CHECK dout1_2 Vdout1_2ck148 = 1.1 time = 745
.meas tran vdout1_2ck148 FIND v(dout1_2) AT=745.025n

* CHECK dout1_3 Vdout1_3ck148 = 0 time = 745
.meas tran vdout1_3ck148 FIND v(dout1_3) AT=745.025n

* CHECK dout1_4 Vdout1_4ck148 = 1.1 time = 745
.meas tran vdout1_4ck148 FIND v(dout1_4) AT=745.025n

* CHECK dout1_5 Vdout1_5ck148 = 1.1 time = 745
.meas tran vdout1_5ck148 FIND v(dout1_5) AT=745.025n

* CHECK dout1_6 Vdout1_6ck148 = 0 time = 745
.meas tran vdout1_6ck148 FIND v(dout1_6) AT=745.025n

* CHECK dout1_7 Vdout1_7ck148 = 1.1 time = 745
.meas tran vdout1_7ck148 FIND v(dout1_7) AT=745.025n

* CHECK dout1_8 Vdout1_8ck148 = 0 time = 745
.meas tran vdout1_8ck148 FIND v(dout1_8) AT=745.025n

* CHECK dout1_9 Vdout1_9ck148 = 0 time = 745
.meas tran vdout1_9ck148 FIND v(dout1_9) AT=745.025n

* CHECK dout1_10 Vdout1_10ck148 = 1.1 time = 745
.meas tran vdout1_10ck148 FIND v(dout1_10) AT=745.025n

* CHECK dout1_11 Vdout1_11ck148 = 0 time = 745
.meas tran vdout1_11ck148 FIND v(dout1_11) AT=745.025n

* CHECK dout1_12 Vdout1_12ck148 = 1.1 time = 745
.meas tran vdout1_12ck148 FIND v(dout1_12) AT=745.025n

* CHECK dout1_13 Vdout1_13ck148 = 1.1 time = 745
.meas tran vdout1_13ck148 FIND v(dout1_13) AT=745.025n

* CHECK dout1_14 Vdout1_14ck148 = 1.1 time = 745
.meas tran vdout1_14ck148 FIND v(dout1_14) AT=745.025n

* CHECK dout1_15 Vdout1_15ck148 = 0 time = 745
.meas tran vdout1_15ck148 FIND v(dout1_15) AT=745.025n

* CHECK dout1_16 Vdout1_16ck148 = 0 time = 745
.meas tran vdout1_16ck148 FIND v(dout1_16) AT=745.025n

* CHECK dout1_17 Vdout1_17ck148 = 1.1 time = 745
.meas tran vdout1_17ck148 FIND v(dout1_17) AT=745.025n

* CHECK dout1_18 Vdout1_18ck148 = 1.1 time = 745
.meas tran vdout1_18ck148 FIND v(dout1_18) AT=745.025n

* CHECK dout1_19 Vdout1_19ck148 = 1.1 time = 745
.meas tran vdout1_19ck148 FIND v(dout1_19) AT=745.025n

* CHECK dout1_20 Vdout1_20ck148 = 0 time = 745
.meas tran vdout1_20ck148 FIND v(dout1_20) AT=745.025n

* CHECK dout1_21 Vdout1_21ck148 = 1.1 time = 745
.meas tran vdout1_21ck148 FIND v(dout1_21) AT=745.025n

* CHECK dout1_22 Vdout1_22ck148 = 0 time = 745
.meas tran vdout1_22ck148 FIND v(dout1_22) AT=745.025n

* CHECK dout1_23 Vdout1_23ck148 = 0 time = 745
.meas tran vdout1_23ck148 FIND v(dout1_23) AT=745.025n

* CHECK dout1_24 Vdout1_24ck148 = 1.1 time = 745
.meas tran vdout1_24ck148 FIND v(dout1_24) AT=745.025n

* CHECK dout1_25 Vdout1_25ck148 = 0 time = 745
.meas tran vdout1_25ck148 FIND v(dout1_25) AT=745.025n

* CHECK dout1_26 Vdout1_26ck148 = 1.1 time = 745
.meas tran vdout1_26ck148 FIND v(dout1_26) AT=745.025n

* CHECK dout1_27 Vdout1_27ck148 = 1.1 time = 745
.meas tran vdout1_27ck148 FIND v(dout1_27) AT=745.025n

* CHECK dout1_28 Vdout1_28ck148 = 0 time = 745
.meas tran vdout1_28ck148 FIND v(dout1_28) AT=745.025n

* CHECK dout1_29 Vdout1_29ck148 = 1.1 time = 745
.meas tran vdout1_29ck148 FIND v(dout1_29) AT=745.025n

* CHECK dout1_30 Vdout1_30ck148 = 0 time = 745
.meas tran vdout1_30ck148 FIND v(dout1_30) AT=745.025n

* CHECK dout1_31 Vdout1_31ck148 = 0 time = 745
.meas tran vdout1_31ck148 FIND v(dout1_31) AT=745.025n

* CHECK dout1_0 Vdout1_0ck152 = 1.1 time = 765
.meas tran vdout1_0ck152 FIND v(dout1_0) AT=765.025n

* CHECK dout1_1 Vdout1_1ck152 = 0 time = 765
.meas tran vdout1_1ck152 FIND v(dout1_1) AT=765.025n

* CHECK dout1_2 Vdout1_2ck152 = 1.1 time = 765
.meas tran vdout1_2ck152 FIND v(dout1_2) AT=765.025n

* CHECK dout1_3 Vdout1_3ck152 = 0 time = 765
.meas tran vdout1_3ck152 FIND v(dout1_3) AT=765.025n

* CHECK dout1_4 Vdout1_4ck152 = 1.1 time = 765
.meas tran vdout1_4ck152 FIND v(dout1_4) AT=765.025n

* CHECK dout1_5 Vdout1_5ck152 = 0 time = 765
.meas tran vdout1_5ck152 FIND v(dout1_5) AT=765.025n

* CHECK dout1_6 Vdout1_6ck152 = 1.1 time = 765
.meas tran vdout1_6ck152 FIND v(dout1_6) AT=765.025n

* CHECK dout1_7 Vdout1_7ck152 = 0 time = 765
.meas tran vdout1_7ck152 FIND v(dout1_7) AT=765.025n

* CHECK dout1_8 Vdout1_8ck152 = 1.1 time = 765
.meas tran vdout1_8ck152 FIND v(dout1_8) AT=765.025n

* CHECK dout1_9 Vdout1_9ck152 = 0 time = 765
.meas tran vdout1_9ck152 FIND v(dout1_9) AT=765.025n

* CHECK dout1_10 Vdout1_10ck152 = 0 time = 765
.meas tran vdout1_10ck152 FIND v(dout1_10) AT=765.025n

* CHECK dout1_11 Vdout1_11ck152 = 0 time = 765
.meas tran vdout1_11ck152 FIND v(dout1_11) AT=765.025n

* CHECK dout1_12 Vdout1_12ck152 = 0 time = 765
.meas tran vdout1_12ck152 FIND v(dout1_12) AT=765.025n

* CHECK dout1_13 Vdout1_13ck152 = 1.1 time = 765
.meas tran vdout1_13ck152 FIND v(dout1_13) AT=765.025n

* CHECK dout1_14 Vdout1_14ck152 = 1.1 time = 765
.meas tran vdout1_14ck152 FIND v(dout1_14) AT=765.025n

* CHECK dout1_15 Vdout1_15ck152 = 1.1 time = 765
.meas tran vdout1_15ck152 FIND v(dout1_15) AT=765.025n

* CHECK dout1_16 Vdout1_16ck152 = 0 time = 765
.meas tran vdout1_16ck152 FIND v(dout1_16) AT=765.025n

* CHECK dout1_17 Vdout1_17ck152 = 0 time = 765
.meas tran vdout1_17ck152 FIND v(dout1_17) AT=765.025n

* CHECK dout1_18 Vdout1_18ck152 = 1.1 time = 765
.meas tran vdout1_18ck152 FIND v(dout1_18) AT=765.025n

* CHECK dout1_19 Vdout1_19ck152 = 0 time = 765
.meas tran vdout1_19ck152 FIND v(dout1_19) AT=765.025n

* CHECK dout1_20 Vdout1_20ck152 = 1.1 time = 765
.meas tran vdout1_20ck152 FIND v(dout1_20) AT=765.025n

* CHECK dout1_21 Vdout1_21ck152 = 0 time = 765
.meas tran vdout1_21ck152 FIND v(dout1_21) AT=765.025n

* CHECK dout1_22 Vdout1_22ck152 = 1.1 time = 765
.meas tran vdout1_22ck152 FIND v(dout1_22) AT=765.025n

* CHECK dout1_23 Vdout1_23ck152 = 1.1 time = 765
.meas tran vdout1_23ck152 FIND v(dout1_23) AT=765.025n

* CHECK dout1_24 Vdout1_24ck152 = 0 time = 765
.meas tran vdout1_24ck152 FIND v(dout1_24) AT=765.025n

* CHECK dout1_25 Vdout1_25ck152 = 1.1 time = 765
.meas tran vdout1_25ck152 FIND v(dout1_25) AT=765.025n

* CHECK dout1_26 Vdout1_26ck152 = 1.1 time = 765
.meas tran vdout1_26ck152 FIND v(dout1_26) AT=765.025n

* CHECK dout1_27 Vdout1_27ck152 = 1.1 time = 765
.meas tran vdout1_27ck152 FIND v(dout1_27) AT=765.025n

* CHECK dout1_28 Vdout1_28ck152 = 0 time = 765
.meas tran vdout1_28ck152 FIND v(dout1_28) AT=765.025n

* CHECK dout1_29 Vdout1_29ck152 = 1.1 time = 765
.meas tran vdout1_29ck152 FIND v(dout1_29) AT=765.025n

* CHECK dout1_30 Vdout1_30ck152 = 1.1 time = 765
.meas tran vdout1_30ck152 FIND v(dout1_30) AT=765.025n

* CHECK dout1_31 Vdout1_31ck152 = 0 time = 765
.meas tran vdout1_31ck152 FIND v(dout1_31) AT=765.025n

* CHECK dout1_0 Vdout1_0ck153 = 1.1 time = 770
.meas tran vdout1_0ck153 FIND v(dout1_0) AT=770.025n

* CHECK dout1_1 Vdout1_1ck153 = 1.1 time = 770
.meas tran vdout1_1ck153 FIND v(dout1_1) AT=770.025n

* CHECK dout1_2 Vdout1_2ck153 = 1.1 time = 770
.meas tran vdout1_2ck153 FIND v(dout1_2) AT=770.025n

* CHECK dout1_3 Vdout1_3ck153 = 1.1 time = 770
.meas tran vdout1_3ck153 FIND v(dout1_3) AT=770.025n

* CHECK dout1_4 Vdout1_4ck153 = 1.1 time = 770
.meas tran vdout1_4ck153 FIND v(dout1_4) AT=770.025n

* CHECK dout1_5 Vdout1_5ck153 = 0 time = 770
.meas tran vdout1_5ck153 FIND v(dout1_5) AT=770.025n

* CHECK dout1_6 Vdout1_6ck153 = 1.1 time = 770
.meas tran vdout1_6ck153 FIND v(dout1_6) AT=770.025n

* CHECK dout1_7 Vdout1_7ck153 = 1.1 time = 770
.meas tran vdout1_7ck153 FIND v(dout1_7) AT=770.025n

* CHECK dout1_8 Vdout1_8ck153 = 1.1 time = 770
.meas tran vdout1_8ck153 FIND v(dout1_8) AT=770.025n

* CHECK dout1_9 Vdout1_9ck153 = 1.1 time = 770
.meas tran vdout1_9ck153 FIND v(dout1_9) AT=770.025n

* CHECK dout1_10 Vdout1_10ck153 = 1.1 time = 770
.meas tran vdout1_10ck153 FIND v(dout1_10) AT=770.025n

* CHECK dout1_11 Vdout1_11ck153 = 0 time = 770
.meas tran vdout1_11ck153 FIND v(dout1_11) AT=770.025n

* CHECK dout1_12 Vdout1_12ck153 = 1.1 time = 770
.meas tran vdout1_12ck153 FIND v(dout1_12) AT=770.025n

* CHECK dout1_13 Vdout1_13ck153 = 0 time = 770
.meas tran vdout1_13ck153 FIND v(dout1_13) AT=770.025n

* CHECK dout1_14 Vdout1_14ck153 = 1.1 time = 770
.meas tran vdout1_14ck153 FIND v(dout1_14) AT=770.025n

* CHECK dout1_15 Vdout1_15ck153 = 1.1 time = 770
.meas tran vdout1_15ck153 FIND v(dout1_15) AT=770.025n

* CHECK dout1_16 Vdout1_16ck153 = 1.1 time = 770
.meas tran vdout1_16ck153 FIND v(dout1_16) AT=770.025n

* CHECK dout1_17 Vdout1_17ck153 = 0 time = 770
.meas tran vdout1_17ck153 FIND v(dout1_17) AT=770.025n

* CHECK dout1_18 Vdout1_18ck153 = 1.1 time = 770
.meas tran vdout1_18ck153 FIND v(dout1_18) AT=770.025n

* CHECK dout1_19 Vdout1_19ck153 = 1.1 time = 770
.meas tran vdout1_19ck153 FIND v(dout1_19) AT=770.025n

* CHECK dout1_20 Vdout1_20ck153 = 0 time = 770
.meas tran vdout1_20ck153 FIND v(dout1_20) AT=770.025n

* CHECK dout1_21 Vdout1_21ck153 = 0 time = 770
.meas tran vdout1_21ck153 FIND v(dout1_21) AT=770.025n

* CHECK dout1_22 Vdout1_22ck153 = 1.1 time = 770
.meas tran vdout1_22ck153 FIND v(dout1_22) AT=770.025n

* CHECK dout1_23 Vdout1_23ck153 = 1.1 time = 770
.meas tran vdout1_23ck153 FIND v(dout1_23) AT=770.025n

* CHECK dout1_24 Vdout1_24ck153 = 1.1 time = 770
.meas tran vdout1_24ck153 FIND v(dout1_24) AT=770.025n

* CHECK dout1_25 Vdout1_25ck153 = 0 time = 770
.meas tran vdout1_25ck153 FIND v(dout1_25) AT=770.025n

* CHECK dout1_26 Vdout1_26ck153 = 1.1 time = 770
.meas tran vdout1_26ck153 FIND v(dout1_26) AT=770.025n

* CHECK dout1_27 Vdout1_27ck153 = 1.1 time = 770
.meas tran vdout1_27ck153 FIND v(dout1_27) AT=770.025n

* CHECK dout1_28 Vdout1_28ck153 = 1.1 time = 770
.meas tran vdout1_28ck153 FIND v(dout1_28) AT=770.025n

* CHECK dout1_29 Vdout1_29ck153 = 1.1 time = 770
.meas tran vdout1_29ck153 FIND v(dout1_29) AT=770.025n

* CHECK dout1_30 Vdout1_30ck153 = 1.1 time = 770
.meas tran vdout1_30ck153 FIND v(dout1_30) AT=770.025n

* CHECK dout1_31 Vdout1_31ck153 = 1.1 time = 770
.meas tran vdout1_31ck153 FIND v(dout1_31) AT=770.025n

* CHECK dout1_0 Vdout1_0ck156 = 1.1 time = 785
.meas tran vdout1_0ck156 FIND v(dout1_0) AT=785.025n

* CHECK dout1_1 Vdout1_1ck156 = 1.1 time = 785
.meas tran vdout1_1ck156 FIND v(dout1_1) AT=785.025n

* CHECK dout1_2 Vdout1_2ck156 = 1.1 time = 785
.meas tran vdout1_2ck156 FIND v(dout1_2) AT=785.025n

* CHECK dout1_3 Vdout1_3ck156 = 1.1 time = 785
.meas tran vdout1_3ck156 FIND v(dout1_3) AT=785.025n

* CHECK dout1_4 Vdout1_4ck156 = 0 time = 785
.meas tran vdout1_4ck156 FIND v(dout1_4) AT=785.025n

* CHECK dout1_5 Vdout1_5ck156 = 0 time = 785
.meas tran vdout1_5ck156 FIND v(dout1_5) AT=785.025n

* CHECK dout1_6 Vdout1_6ck156 = 1.1 time = 785
.meas tran vdout1_6ck156 FIND v(dout1_6) AT=785.025n

* CHECK dout1_7 Vdout1_7ck156 = 1.1 time = 785
.meas tran vdout1_7ck156 FIND v(dout1_7) AT=785.025n

* CHECK dout1_8 Vdout1_8ck156 = 1.1 time = 785
.meas tran vdout1_8ck156 FIND v(dout1_8) AT=785.025n

* CHECK dout1_9 Vdout1_9ck156 = 1.1 time = 785
.meas tran vdout1_9ck156 FIND v(dout1_9) AT=785.025n

* CHECK dout1_10 Vdout1_10ck156 = 0 time = 785
.meas tran vdout1_10ck156 FIND v(dout1_10) AT=785.025n

* CHECK dout1_11 Vdout1_11ck156 = 1.1 time = 785
.meas tran vdout1_11ck156 FIND v(dout1_11) AT=785.025n

* CHECK dout1_12 Vdout1_12ck156 = 1.1 time = 785
.meas tran vdout1_12ck156 FIND v(dout1_12) AT=785.025n

* CHECK dout1_13 Vdout1_13ck156 = 1.1 time = 785
.meas tran vdout1_13ck156 FIND v(dout1_13) AT=785.025n

* CHECK dout1_14 Vdout1_14ck156 = 1.1 time = 785
.meas tran vdout1_14ck156 FIND v(dout1_14) AT=785.025n

* CHECK dout1_15 Vdout1_15ck156 = 1.1 time = 785
.meas tran vdout1_15ck156 FIND v(dout1_15) AT=785.025n

* CHECK dout1_16 Vdout1_16ck156 = 1.1 time = 785
.meas tran vdout1_16ck156 FIND v(dout1_16) AT=785.025n

* CHECK dout1_17 Vdout1_17ck156 = 1.1 time = 785
.meas tran vdout1_17ck156 FIND v(dout1_17) AT=785.025n

* CHECK dout1_18 Vdout1_18ck156 = 1.1 time = 785
.meas tran vdout1_18ck156 FIND v(dout1_18) AT=785.025n

* CHECK dout1_19 Vdout1_19ck156 = 1.1 time = 785
.meas tran vdout1_19ck156 FIND v(dout1_19) AT=785.025n

* CHECK dout1_20 Vdout1_20ck156 = 1.1 time = 785
.meas tran vdout1_20ck156 FIND v(dout1_20) AT=785.025n

* CHECK dout1_21 Vdout1_21ck156 = 0 time = 785
.meas tran vdout1_21ck156 FIND v(dout1_21) AT=785.025n

* CHECK dout1_22 Vdout1_22ck156 = 0 time = 785
.meas tran vdout1_22ck156 FIND v(dout1_22) AT=785.025n

* CHECK dout1_23 Vdout1_23ck156 = 1.1 time = 785
.meas tran vdout1_23ck156 FIND v(dout1_23) AT=785.025n

* CHECK dout1_24 Vdout1_24ck156 = 1.1 time = 785
.meas tran vdout1_24ck156 FIND v(dout1_24) AT=785.025n

* CHECK dout1_25 Vdout1_25ck156 = 0 time = 785
.meas tran vdout1_25ck156 FIND v(dout1_25) AT=785.025n

* CHECK dout1_26 Vdout1_26ck156 = 0 time = 785
.meas tran vdout1_26ck156 FIND v(dout1_26) AT=785.025n

* CHECK dout1_27 Vdout1_27ck156 = 1.1 time = 785
.meas tran vdout1_27ck156 FIND v(dout1_27) AT=785.025n

* CHECK dout1_28 Vdout1_28ck156 = 0 time = 785
.meas tran vdout1_28ck156 FIND v(dout1_28) AT=785.025n

* CHECK dout1_29 Vdout1_29ck156 = 1.1 time = 785
.meas tran vdout1_29ck156 FIND v(dout1_29) AT=785.025n

* CHECK dout1_30 Vdout1_30ck156 = 1.1 time = 785
.meas tran vdout1_30ck156 FIND v(dout1_30) AT=785.025n

* CHECK dout1_31 Vdout1_31ck156 = 0 time = 785
.meas tran vdout1_31ck156 FIND v(dout1_31) AT=785.025n

* CHECK dout1_0 Vdout1_0ck157 = 0 time = 790
.meas tran vdout1_0ck157 FIND v(dout1_0) AT=790.025n

* CHECK dout1_1 Vdout1_1ck157 = 0 time = 790
.meas tran vdout1_1ck157 FIND v(dout1_1) AT=790.025n

* CHECK dout1_2 Vdout1_2ck157 = 1.1 time = 790
.meas tran vdout1_2ck157 FIND v(dout1_2) AT=790.025n

* CHECK dout1_3 Vdout1_3ck157 = 1.1 time = 790
.meas tran vdout1_3ck157 FIND v(dout1_3) AT=790.025n

* CHECK dout1_4 Vdout1_4ck157 = 0 time = 790
.meas tran vdout1_4ck157 FIND v(dout1_4) AT=790.025n

* CHECK dout1_5 Vdout1_5ck157 = 0 time = 790
.meas tran vdout1_5ck157 FIND v(dout1_5) AT=790.025n

* CHECK dout1_6 Vdout1_6ck157 = 0 time = 790
.meas tran vdout1_6ck157 FIND v(dout1_6) AT=790.025n

* CHECK dout1_7 Vdout1_7ck157 = 0 time = 790
.meas tran vdout1_7ck157 FIND v(dout1_7) AT=790.025n

* CHECK dout1_8 Vdout1_8ck157 = 0 time = 790
.meas tran vdout1_8ck157 FIND v(dout1_8) AT=790.025n

* CHECK dout1_9 Vdout1_9ck157 = 0 time = 790
.meas tran vdout1_9ck157 FIND v(dout1_9) AT=790.025n

* CHECK dout1_10 Vdout1_10ck157 = 1.1 time = 790
.meas tran vdout1_10ck157 FIND v(dout1_10) AT=790.025n

* CHECK dout1_11 Vdout1_11ck157 = 1.1 time = 790
.meas tran vdout1_11ck157 FIND v(dout1_11) AT=790.025n

* CHECK dout1_12 Vdout1_12ck157 = 1.1 time = 790
.meas tran vdout1_12ck157 FIND v(dout1_12) AT=790.025n

* CHECK dout1_13 Vdout1_13ck157 = 0 time = 790
.meas tran vdout1_13ck157 FIND v(dout1_13) AT=790.025n

* CHECK dout1_14 Vdout1_14ck157 = 0 time = 790
.meas tran vdout1_14ck157 FIND v(dout1_14) AT=790.025n

* CHECK dout1_15 Vdout1_15ck157 = 0 time = 790
.meas tran vdout1_15ck157 FIND v(dout1_15) AT=790.025n

* CHECK dout1_16 Vdout1_16ck157 = 1.1 time = 790
.meas tran vdout1_16ck157 FIND v(dout1_16) AT=790.025n

* CHECK dout1_17 Vdout1_17ck157 = 1.1 time = 790
.meas tran vdout1_17ck157 FIND v(dout1_17) AT=790.025n

* CHECK dout1_18 Vdout1_18ck157 = 1.1 time = 790
.meas tran vdout1_18ck157 FIND v(dout1_18) AT=790.025n

* CHECK dout1_19 Vdout1_19ck157 = 0 time = 790
.meas tran vdout1_19ck157 FIND v(dout1_19) AT=790.025n

* CHECK dout1_20 Vdout1_20ck157 = 0 time = 790
.meas tran vdout1_20ck157 FIND v(dout1_20) AT=790.025n

* CHECK dout1_21 Vdout1_21ck157 = 0 time = 790
.meas tran vdout1_21ck157 FIND v(dout1_21) AT=790.025n

* CHECK dout1_22 Vdout1_22ck157 = 1.1 time = 790
.meas tran vdout1_22ck157 FIND v(dout1_22) AT=790.025n

* CHECK dout1_23 Vdout1_23ck157 = 0 time = 790
.meas tran vdout1_23ck157 FIND v(dout1_23) AT=790.025n

* CHECK dout1_24 Vdout1_24ck157 = 1.1 time = 790
.meas tran vdout1_24ck157 FIND v(dout1_24) AT=790.025n

* CHECK dout1_25 Vdout1_25ck157 = 1.1 time = 790
.meas tran vdout1_25ck157 FIND v(dout1_25) AT=790.025n

* CHECK dout1_26 Vdout1_26ck157 = 0 time = 790
.meas tran vdout1_26ck157 FIND v(dout1_26) AT=790.025n

* CHECK dout1_27 Vdout1_27ck157 = 0 time = 790
.meas tran vdout1_27ck157 FIND v(dout1_27) AT=790.025n

* CHECK dout1_28 Vdout1_28ck157 = 0 time = 790
.meas tran vdout1_28ck157 FIND v(dout1_28) AT=790.025n

* CHECK dout1_29 Vdout1_29ck157 = 1.1 time = 790
.meas tran vdout1_29ck157 FIND v(dout1_29) AT=790.025n

* CHECK dout1_30 Vdout1_30ck157 = 0 time = 790
.meas tran vdout1_30ck157 FIND v(dout1_30) AT=790.025n

* CHECK dout1_31 Vdout1_31ck157 = 0 time = 790
.meas tran vdout1_31ck157 FIND v(dout1_31) AT=790.025n

* CHECK dout1_0 Vdout1_0ck158 = 1.1 time = 795
.meas tran vdout1_0ck158 FIND v(dout1_0) AT=795.025n

* CHECK dout1_1 Vdout1_1ck158 = 0 time = 795
.meas tran vdout1_1ck158 FIND v(dout1_1) AT=795.025n

* CHECK dout1_2 Vdout1_2ck158 = 1.1 time = 795
.meas tran vdout1_2ck158 FIND v(dout1_2) AT=795.025n

* CHECK dout1_3 Vdout1_3ck158 = 0 time = 795
.meas tran vdout1_3ck158 FIND v(dout1_3) AT=795.025n

* CHECK dout1_4 Vdout1_4ck158 = 1.1 time = 795
.meas tran vdout1_4ck158 FIND v(dout1_4) AT=795.025n

* CHECK dout1_5 Vdout1_5ck158 = 0 time = 795
.meas tran vdout1_5ck158 FIND v(dout1_5) AT=795.025n

* CHECK dout1_6 Vdout1_6ck158 = 1.1 time = 795
.meas tran vdout1_6ck158 FIND v(dout1_6) AT=795.025n

* CHECK dout1_7 Vdout1_7ck158 = 0 time = 795
.meas tran vdout1_7ck158 FIND v(dout1_7) AT=795.025n

* CHECK dout1_8 Vdout1_8ck158 = 1.1 time = 795
.meas tran vdout1_8ck158 FIND v(dout1_8) AT=795.025n

* CHECK dout1_9 Vdout1_9ck158 = 0 time = 795
.meas tran vdout1_9ck158 FIND v(dout1_9) AT=795.025n

* CHECK dout1_10 Vdout1_10ck158 = 0 time = 795
.meas tran vdout1_10ck158 FIND v(dout1_10) AT=795.025n

* CHECK dout1_11 Vdout1_11ck158 = 0 time = 795
.meas tran vdout1_11ck158 FIND v(dout1_11) AT=795.025n

* CHECK dout1_12 Vdout1_12ck158 = 0 time = 795
.meas tran vdout1_12ck158 FIND v(dout1_12) AT=795.025n

* CHECK dout1_13 Vdout1_13ck158 = 1.1 time = 795
.meas tran vdout1_13ck158 FIND v(dout1_13) AT=795.025n

* CHECK dout1_14 Vdout1_14ck158 = 1.1 time = 795
.meas tran vdout1_14ck158 FIND v(dout1_14) AT=795.025n

* CHECK dout1_15 Vdout1_15ck158 = 1.1 time = 795
.meas tran vdout1_15ck158 FIND v(dout1_15) AT=795.025n

* CHECK dout1_16 Vdout1_16ck158 = 0 time = 795
.meas tran vdout1_16ck158 FIND v(dout1_16) AT=795.025n

* CHECK dout1_17 Vdout1_17ck158 = 0 time = 795
.meas tran vdout1_17ck158 FIND v(dout1_17) AT=795.025n

* CHECK dout1_18 Vdout1_18ck158 = 1.1 time = 795
.meas tran vdout1_18ck158 FIND v(dout1_18) AT=795.025n

* CHECK dout1_19 Vdout1_19ck158 = 0 time = 795
.meas tran vdout1_19ck158 FIND v(dout1_19) AT=795.025n

* CHECK dout1_20 Vdout1_20ck158 = 1.1 time = 795
.meas tran vdout1_20ck158 FIND v(dout1_20) AT=795.025n

* CHECK dout1_21 Vdout1_21ck158 = 0 time = 795
.meas tran vdout1_21ck158 FIND v(dout1_21) AT=795.025n

* CHECK dout1_22 Vdout1_22ck158 = 1.1 time = 795
.meas tran vdout1_22ck158 FIND v(dout1_22) AT=795.025n

* CHECK dout1_23 Vdout1_23ck158 = 1.1 time = 795
.meas tran vdout1_23ck158 FIND v(dout1_23) AT=795.025n

* CHECK dout1_24 Vdout1_24ck158 = 0 time = 795
.meas tran vdout1_24ck158 FIND v(dout1_24) AT=795.025n

* CHECK dout1_25 Vdout1_25ck158 = 1.1 time = 795
.meas tran vdout1_25ck158 FIND v(dout1_25) AT=795.025n

* CHECK dout1_26 Vdout1_26ck158 = 1.1 time = 795
.meas tran vdout1_26ck158 FIND v(dout1_26) AT=795.025n

* CHECK dout1_27 Vdout1_27ck158 = 1.1 time = 795
.meas tran vdout1_27ck158 FIND v(dout1_27) AT=795.025n

* CHECK dout1_28 Vdout1_28ck158 = 0 time = 795
.meas tran vdout1_28ck158 FIND v(dout1_28) AT=795.025n

* CHECK dout1_29 Vdout1_29ck158 = 1.1 time = 795
.meas tran vdout1_29ck158 FIND v(dout1_29) AT=795.025n

* CHECK dout1_30 Vdout1_30ck158 = 1.1 time = 795
.meas tran vdout1_30ck158 FIND v(dout1_30) AT=795.025n

* CHECK dout1_31 Vdout1_31ck158 = 0 time = 795
.meas tran vdout1_31ck158 FIND v(dout1_31) AT=795.025n

* CHECK dout1_0 Vdout1_0ck160 = 1.1 time = 805
.meas tran vdout1_0ck160 FIND v(dout1_0) AT=805.025n

* CHECK dout1_1 Vdout1_1ck160 = 1.1 time = 805
.meas tran vdout1_1ck160 FIND v(dout1_1) AT=805.025n

* CHECK dout1_2 Vdout1_2ck160 = 1.1 time = 805
.meas tran vdout1_2ck160 FIND v(dout1_2) AT=805.025n

* CHECK dout1_3 Vdout1_3ck160 = 1.1 time = 805
.meas tran vdout1_3ck160 FIND v(dout1_3) AT=805.025n

* CHECK dout1_4 Vdout1_4ck160 = 1.1 time = 805
.meas tran vdout1_4ck160 FIND v(dout1_4) AT=805.025n

* CHECK dout1_5 Vdout1_5ck160 = 0 time = 805
.meas tran vdout1_5ck160 FIND v(dout1_5) AT=805.025n

* CHECK dout1_6 Vdout1_6ck160 = 1.1 time = 805
.meas tran vdout1_6ck160 FIND v(dout1_6) AT=805.025n

* CHECK dout1_7 Vdout1_7ck160 = 1.1 time = 805
.meas tran vdout1_7ck160 FIND v(dout1_7) AT=805.025n

* CHECK dout1_8 Vdout1_8ck160 = 1.1 time = 805
.meas tran vdout1_8ck160 FIND v(dout1_8) AT=805.025n

* CHECK dout1_9 Vdout1_9ck160 = 1.1 time = 805
.meas tran vdout1_9ck160 FIND v(dout1_9) AT=805.025n

* CHECK dout1_10 Vdout1_10ck160 = 1.1 time = 805
.meas tran vdout1_10ck160 FIND v(dout1_10) AT=805.025n

* CHECK dout1_11 Vdout1_11ck160 = 0 time = 805
.meas tran vdout1_11ck160 FIND v(dout1_11) AT=805.025n

* CHECK dout1_12 Vdout1_12ck160 = 1.1 time = 805
.meas tran vdout1_12ck160 FIND v(dout1_12) AT=805.025n

* CHECK dout1_13 Vdout1_13ck160 = 0 time = 805
.meas tran vdout1_13ck160 FIND v(dout1_13) AT=805.025n

* CHECK dout1_14 Vdout1_14ck160 = 1.1 time = 805
.meas tran vdout1_14ck160 FIND v(dout1_14) AT=805.025n

* CHECK dout1_15 Vdout1_15ck160 = 1.1 time = 805
.meas tran vdout1_15ck160 FIND v(dout1_15) AT=805.025n

* CHECK dout1_16 Vdout1_16ck160 = 1.1 time = 805
.meas tran vdout1_16ck160 FIND v(dout1_16) AT=805.025n

* CHECK dout1_17 Vdout1_17ck160 = 0 time = 805
.meas tran vdout1_17ck160 FIND v(dout1_17) AT=805.025n

* CHECK dout1_18 Vdout1_18ck160 = 1.1 time = 805
.meas tran vdout1_18ck160 FIND v(dout1_18) AT=805.025n

* CHECK dout1_19 Vdout1_19ck160 = 1.1 time = 805
.meas tran vdout1_19ck160 FIND v(dout1_19) AT=805.025n

* CHECK dout1_20 Vdout1_20ck160 = 0 time = 805
.meas tran vdout1_20ck160 FIND v(dout1_20) AT=805.025n

* CHECK dout1_21 Vdout1_21ck160 = 0 time = 805
.meas tran vdout1_21ck160 FIND v(dout1_21) AT=805.025n

* CHECK dout1_22 Vdout1_22ck160 = 1.1 time = 805
.meas tran vdout1_22ck160 FIND v(dout1_22) AT=805.025n

* CHECK dout1_23 Vdout1_23ck160 = 1.1 time = 805
.meas tran vdout1_23ck160 FIND v(dout1_23) AT=805.025n

* CHECK dout1_24 Vdout1_24ck160 = 0 time = 805
.meas tran vdout1_24ck160 FIND v(dout1_24) AT=805.025n

* CHECK dout1_25 Vdout1_25ck160 = 0 time = 805
.meas tran vdout1_25ck160 FIND v(dout1_25) AT=805.025n

* CHECK dout1_26 Vdout1_26ck160 = 0 time = 805
.meas tran vdout1_26ck160 FIND v(dout1_26) AT=805.025n

* CHECK dout1_27 Vdout1_27ck160 = 1.1 time = 805
.meas tran vdout1_27ck160 FIND v(dout1_27) AT=805.025n

* CHECK dout1_28 Vdout1_28ck160 = 0 time = 805
.meas tran vdout1_28ck160 FIND v(dout1_28) AT=805.025n

* CHECK dout1_29 Vdout1_29ck160 = 0 time = 805
.meas tran vdout1_29ck160 FIND v(dout1_29) AT=805.025n

* CHECK dout1_30 Vdout1_30ck160 = 0 time = 805
.meas tran vdout1_30ck160 FIND v(dout1_30) AT=805.025n

* CHECK dout1_31 Vdout1_31ck160 = 1.1 time = 805
.meas tran vdout1_31ck160 FIND v(dout1_31) AT=805.025n

* CHECK dout1_0 Vdout1_0ck161 = 0 time = 810
.meas tran vdout1_0ck161 FIND v(dout1_0) AT=810.025n

* CHECK dout1_1 Vdout1_1ck161 = 1.1 time = 810
.meas tran vdout1_1ck161 FIND v(dout1_1) AT=810.025n

* CHECK dout1_2 Vdout1_2ck161 = 1.1 time = 810
.meas tran vdout1_2ck161 FIND v(dout1_2) AT=810.025n

* CHECK dout1_3 Vdout1_3ck161 = 1.1 time = 810
.meas tran vdout1_3ck161 FIND v(dout1_3) AT=810.025n

* CHECK dout1_4 Vdout1_4ck161 = 1.1 time = 810
.meas tran vdout1_4ck161 FIND v(dout1_4) AT=810.025n

* CHECK dout1_5 Vdout1_5ck161 = 1.1 time = 810
.meas tran vdout1_5ck161 FIND v(dout1_5) AT=810.025n

* CHECK dout1_6 Vdout1_6ck161 = 1.1 time = 810
.meas tran vdout1_6ck161 FIND v(dout1_6) AT=810.025n

* CHECK dout1_7 Vdout1_7ck161 = 1.1 time = 810
.meas tran vdout1_7ck161 FIND v(dout1_7) AT=810.025n

* CHECK dout1_8 Vdout1_8ck161 = 1.1 time = 810
.meas tran vdout1_8ck161 FIND v(dout1_8) AT=810.025n

* CHECK dout1_9 Vdout1_9ck161 = 1.1 time = 810
.meas tran vdout1_9ck161 FIND v(dout1_9) AT=810.025n

* CHECK dout1_10 Vdout1_10ck161 = 1.1 time = 810
.meas tran vdout1_10ck161 FIND v(dout1_10) AT=810.025n

* CHECK dout1_11 Vdout1_11ck161 = 0 time = 810
.meas tran vdout1_11ck161 FIND v(dout1_11) AT=810.025n

* CHECK dout1_12 Vdout1_12ck161 = 0 time = 810
.meas tran vdout1_12ck161 FIND v(dout1_12) AT=810.025n

* CHECK dout1_13 Vdout1_13ck161 = 1.1 time = 810
.meas tran vdout1_13ck161 FIND v(dout1_13) AT=810.025n

* CHECK dout1_14 Vdout1_14ck161 = 1.1 time = 810
.meas tran vdout1_14ck161 FIND v(dout1_14) AT=810.025n

* CHECK dout1_15 Vdout1_15ck161 = 1.1 time = 810
.meas tran vdout1_15ck161 FIND v(dout1_15) AT=810.025n

* CHECK dout1_16 Vdout1_16ck161 = 1.1 time = 810
.meas tran vdout1_16ck161 FIND v(dout1_16) AT=810.025n

* CHECK dout1_17 Vdout1_17ck161 = 1.1 time = 810
.meas tran vdout1_17ck161 FIND v(dout1_17) AT=810.025n

* CHECK dout1_18 Vdout1_18ck161 = 0 time = 810
.meas tran vdout1_18ck161 FIND v(dout1_18) AT=810.025n

* CHECK dout1_19 Vdout1_19ck161 = 0 time = 810
.meas tran vdout1_19ck161 FIND v(dout1_19) AT=810.025n

* CHECK dout1_20 Vdout1_20ck161 = 0 time = 810
.meas tran vdout1_20ck161 FIND v(dout1_20) AT=810.025n

* CHECK dout1_21 Vdout1_21ck161 = 1.1 time = 810
.meas tran vdout1_21ck161 FIND v(dout1_21) AT=810.025n

* CHECK dout1_22 Vdout1_22ck161 = 0 time = 810
.meas tran vdout1_22ck161 FIND v(dout1_22) AT=810.025n

* CHECK dout1_23 Vdout1_23ck161 = 0 time = 810
.meas tran vdout1_23ck161 FIND v(dout1_23) AT=810.025n

* CHECK dout1_24 Vdout1_24ck161 = 0 time = 810
.meas tran vdout1_24ck161 FIND v(dout1_24) AT=810.025n

* CHECK dout1_25 Vdout1_25ck161 = 1.1 time = 810
.meas tran vdout1_25ck161 FIND v(dout1_25) AT=810.025n

* CHECK dout1_26 Vdout1_26ck161 = 1.1 time = 810
.meas tran vdout1_26ck161 FIND v(dout1_26) AT=810.025n

* CHECK dout1_27 Vdout1_27ck161 = 1.1 time = 810
.meas tran vdout1_27ck161 FIND v(dout1_27) AT=810.025n

* CHECK dout1_28 Vdout1_28ck161 = 0 time = 810
.meas tran vdout1_28ck161 FIND v(dout1_28) AT=810.025n

* CHECK dout1_29 Vdout1_29ck161 = 0 time = 810
.meas tran vdout1_29ck161 FIND v(dout1_29) AT=810.025n

* CHECK dout1_30 Vdout1_30ck161 = 0 time = 810
.meas tran vdout1_30ck161 FIND v(dout1_30) AT=810.025n

* CHECK dout1_31 Vdout1_31ck161 = 1.1 time = 810
.meas tran vdout1_31ck161 FIND v(dout1_31) AT=810.025n

* CHECK dout1_0 Vdout1_0ck162 = 0 time = 815
.meas tran vdout1_0ck162 FIND v(dout1_0) AT=815.025n

* CHECK dout1_1 Vdout1_1ck162 = 1.1 time = 815
.meas tran vdout1_1ck162 FIND v(dout1_1) AT=815.025n

* CHECK dout1_2 Vdout1_2ck162 = 1.1 time = 815
.meas tran vdout1_2ck162 FIND v(dout1_2) AT=815.025n

* CHECK dout1_3 Vdout1_3ck162 = 1.1 time = 815
.meas tran vdout1_3ck162 FIND v(dout1_3) AT=815.025n

* CHECK dout1_4 Vdout1_4ck162 = 1.1 time = 815
.meas tran vdout1_4ck162 FIND v(dout1_4) AT=815.025n

* CHECK dout1_5 Vdout1_5ck162 = 1.1 time = 815
.meas tran vdout1_5ck162 FIND v(dout1_5) AT=815.025n

* CHECK dout1_6 Vdout1_6ck162 = 1.1 time = 815
.meas tran vdout1_6ck162 FIND v(dout1_6) AT=815.025n

* CHECK dout1_7 Vdout1_7ck162 = 1.1 time = 815
.meas tran vdout1_7ck162 FIND v(dout1_7) AT=815.025n

* CHECK dout1_8 Vdout1_8ck162 = 1.1 time = 815
.meas tran vdout1_8ck162 FIND v(dout1_8) AT=815.025n

* CHECK dout1_9 Vdout1_9ck162 = 1.1 time = 815
.meas tran vdout1_9ck162 FIND v(dout1_9) AT=815.025n

* CHECK dout1_10 Vdout1_10ck162 = 1.1 time = 815
.meas tran vdout1_10ck162 FIND v(dout1_10) AT=815.025n

* CHECK dout1_11 Vdout1_11ck162 = 0 time = 815
.meas tran vdout1_11ck162 FIND v(dout1_11) AT=815.025n

* CHECK dout1_12 Vdout1_12ck162 = 0 time = 815
.meas tran vdout1_12ck162 FIND v(dout1_12) AT=815.025n

* CHECK dout1_13 Vdout1_13ck162 = 1.1 time = 815
.meas tran vdout1_13ck162 FIND v(dout1_13) AT=815.025n

* CHECK dout1_14 Vdout1_14ck162 = 1.1 time = 815
.meas tran vdout1_14ck162 FIND v(dout1_14) AT=815.025n

* CHECK dout1_15 Vdout1_15ck162 = 1.1 time = 815
.meas tran vdout1_15ck162 FIND v(dout1_15) AT=815.025n

* CHECK dout1_16 Vdout1_16ck162 = 1.1 time = 815
.meas tran vdout1_16ck162 FIND v(dout1_16) AT=815.025n

* CHECK dout1_17 Vdout1_17ck162 = 1.1 time = 815
.meas tran vdout1_17ck162 FIND v(dout1_17) AT=815.025n

* CHECK dout1_18 Vdout1_18ck162 = 0 time = 815
.meas tran vdout1_18ck162 FIND v(dout1_18) AT=815.025n

* CHECK dout1_19 Vdout1_19ck162 = 0 time = 815
.meas tran vdout1_19ck162 FIND v(dout1_19) AT=815.025n

* CHECK dout1_20 Vdout1_20ck162 = 0 time = 815
.meas tran vdout1_20ck162 FIND v(dout1_20) AT=815.025n

* CHECK dout1_21 Vdout1_21ck162 = 1.1 time = 815
.meas tran vdout1_21ck162 FIND v(dout1_21) AT=815.025n

* CHECK dout1_22 Vdout1_22ck162 = 0 time = 815
.meas tran vdout1_22ck162 FIND v(dout1_22) AT=815.025n

* CHECK dout1_23 Vdout1_23ck162 = 0 time = 815
.meas tran vdout1_23ck162 FIND v(dout1_23) AT=815.025n

* CHECK dout1_24 Vdout1_24ck162 = 0 time = 815
.meas tran vdout1_24ck162 FIND v(dout1_24) AT=815.025n

* CHECK dout1_25 Vdout1_25ck162 = 1.1 time = 815
.meas tran vdout1_25ck162 FIND v(dout1_25) AT=815.025n

* CHECK dout1_26 Vdout1_26ck162 = 1.1 time = 815
.meas tran vdout1_26ck162 FIND v(dout1_26) AT=815.025n

* CHECK dout1_27 Vdout1_27ck162 = 1.1 time = 815
.meas tran vdout1_27ck162 FIND v(dout1_27) AT=815.025n

* CHECK dout1_28 Vdout1_28ck162 = 0 time = 815
.meas tran vdout1_28ck162 FIND v(dout1_28) AT=815.025n

* CHECK dout1_29 Vdout1_29ck162 = 0 time = 815
.meas tran vdout1_29ck162 FIND v(dout1_29) AT=815.025n

* CHECK dout1_30 Vdout1_30ck162 = 0 time = 815
.meas tran vdout1_30ck162 FIND v(dout1_30) AT=815.025n

* CHECK dout1_31 Vdout1_31ck162 = 1.1 time = 815
.meas tran vdout1_31ck162 FIND v(dout1_31) AT=815.025n

* CHECK dout1_0 Vdout1_0ck165 = 0 time = 830
.meas tran vdout1_0ck165 FIND v(dout1_0) AT=830.025n

* CHECK dout1_1 Vdout1_1ck165 = 1.1 time = 830
.meas tran vdout1_1ck165 FIND v(dout1_1) AT=830.025n

* CHECK dout1_2 Vdout1_2ck165 = 1.1 time = 830
.meas tran vdout1_2ck165 FIND v(dout1_2) AT=830.025n

* CHECK dout1_3 Vdout1_3ck165 = 1.1 time = 830
.meas tran vdout1_3ck165 FIND v(dout1_3) AT=830.025n

* CHECK dout1_4 Vdout1_4ck165 = 0 time = 830
.meas tran vdout1_4ck165 FIND v(dout1_4) AT=830.025n

* CHECK dout1_5 Vdout1_5ck165 = 1.1 time = 830
.meas tran vdout1_5ck165 FIND v(dout1_5) AT=830.025n

* CHECK dout1_6 Vdout1_6ck165 = 1.1 time = 830
.meas tran vdout1_6ck165 FIND v(dout1_6) AT=830.025n

* CHECK dout1_7 Vdout1_7ck165 = 1.1 time = 830
.meas tran vdout1_7ck165 FIND v(dout1_7) AT=830.025n

* CHECK dout1_8 Vdout1_8ck165 = 0 time = 830
.meas tran vdout1_8ck165 FIND v(dout1_8) AT=830.025n

* CHECK dout1_9 Vdout1_9ck165 = 0 time = 830
.meas tran vdout1_9ck165 FIND v(dout1_9) AT=830.025n

* CHECK dout1_10 Vdout1_10ck165 = 1.1 time = 830
.meas tran vdout1_10ck165 FIND v(dout1_10) AT=830.025n

* CHECK dout1_11 Vdout1_11ck165 = 0 time = 830
.meas tran vdout1_11ck165 FIND v(dout1_11) AT=830.025n

* CHECK dout1_12 Vdout1_12ck165 = 0 time = 830
.meas tran vdout1_12ck165 FIND v(dout1_12) AT=830.025n

* CHECK dout1_13 Vdout1_13ck165 = 1.1 time = 830
.meas tran vdout1_13ck165 FIND v(dout1_13) AT=830.025n

* CHECK dout1_14 Vdout1_14ck165 = 0 time = 830
.meas tran vdout1_14ck165 FIND v(dout1_14) AT=830.025n

* CHECK dout1_15 Vdout1_15ck165 = 1.1 time = 830
.meas tran vdout1_15ck165 FIND v(dout1_15) AT=830.025n

* CHECK dout1_16 Vdout1_16ck165 = 0 time = 830
.meas tran vdout1_16ck165 FIND v(dout1_16) AT=830.025n

* CHECK dout1_17 Vdout1_17ck165 = 0 time = 830
.meas tran vdout1_17ck165 FIND v(dout1_17) AT=830.025n

* CHECK dout1_18 Vdout1_18ck165 = 0 time = 830
.meas tran vdout1_18ck165 FIND v(dout1_18) AT=830.025n

* CHECK dout1_19 Vdout1_19ck165 = 0 time = 830
.meas tran vdout1_19ck165 FIND v(dout1_19) AT=830.025n

* CHECK dout1_20 Vdout1_20ck165 = 1.1 time = 830
.meas tran vdout1_20ck165 FIND v(dout1_20) AT=830.025n

* CHECK dout1_21 Vdout1_21ck165 = 0 time = 830
.meas tran vdout1_21ck165 FIND v(dout1_21) AT=830.025n

* CHECK dout1_22 Vdout1_22ck165 = 1.1 time = 830
.meas tran vdout1_22ck165 FIND v(dout1_22) AT=830.025n

* CHECK dout1_23 Vdout1_23ck165 = 0 time = 830
.meas tran vdout1_23ck165 FIND v(dout1_23) AT=830.025n

* CHECK dout1_24 Vdout1_24ck165 = 1.1 time = 830
.meas tran vdout1_24ck165 FIND v(dout1_24) AT=830.025n

* CHECK dout1_25 Vdout1_25ck165 = 1.1 time = 830
.meas tran vdout1_25ck165 FIND v(dout1_25) AT=830.025n

* CHECK dout1_26 Vdout1_26ck165 = 0 time = 830
.meas tran vdout1_26ck165 FIND v(dout1_26) AT=830.025n

* CHECK dout1_27 Vdout1_27ck165 = 1.1 time = 830
.meas tran vdout1_27ck165 FIND v(dout1_27) AT=830.025n

* CHECK dout1_28 Vdout1_28ck165 = 1.1 time = 830
.meas tran vdout1_28ck165 FIND v(dout1_28) AT=830.025n

* CHECK dout1_29 Vdout1_29ck165 = 1.1 time = 830
.meas tran vdout1_29ck165 FIND v(dout1_29) AT=830.025n

* CHECK dout1_30 Vdout1_30ck165 = 1.1 time = 830
.meas tran vdout1_30ck165 FIND v(dout1_30) AT=830.025n

* CHECK dout1_31 Vdout1_31ck165 = 1.1 time = 830
.meas tran vdout1_31ck165 FIND v(dout1_31) AT=830.025n

* CHECK dout1_0 Vdout1_0ck168 = 1.1 time = 845
.meas tran vdout1_0ck168 FIND v(dout1_0) AT=845.025n

* CHECK dout1_1 Vdout1_1ck168 = 1.1 time = 845
.meas tran vdout1_1ck168 FIND v(dout1_1) AT=845.025n

* CHECK dout1_2 Vdout1_2ck168 = 1.1 time = 845
.meas tran vdout1_2ck168 FIND v(dout1_2) AT=845.025n

* CHECK dout1_3 Vdout1_3ck168 = 1.1 time = 845
.meas tran vdout1_3ck168 FIND v(dout1_3) AT=845.025n

* CHECK dout1_4 Vdout1_4ck168 = 1.1 time = 845
.meas tran vdout1_4ck168 FIND v(dout1_4) AT=845.025n

* CHECK dout1_5 Vdout1_5ck168 = 0 time = 845
.meas tran vdout1_5ck168 FIND v(dout1_5) AT=845.025n

* CHECK dout1_6 Vdout1_6ck168 = 1.1 time = 845
.meas tran vdout1_6ck168 FIND v(dout1_6) AT=845.025n

* CHECK dout1_7 Vdout1_7ck168 = 1.1 time = 845
.meas tran vdout1_7ck168 FIND v(dout1_7) AT=845.025n

* CHECK dout1_8 Vdout1_8ck168 = 1.1 time = 845
.meas tran vdout1_8ck168 FIND v(dout1_8) AT=845.025n

* CHECK dout1_9 Vdout1_9ck168 = 1.1 time = 845
.meas tran vdout1_9ck168 FIND v(dout1_9) AT=845.025n

* CHECK dout1_10 Vdout1_10ck168 = 1.1 time = 845
.meas tran vdout1_10ck168 FIND v(dout1_10) AT=845.025n

* CHECK dout1_11 Vdout1_11ck168 = 0 time = 845
.meas tran vdout1_11ck168 FIND v(dout1_11) AT=845.025n

* CHECK dout1_12 Vdout1_12ck168 = 1.1 time = 845
.meas tran vdout1_12ck168 FIND v(dout1_12) AT=845.025n

* CHECK dout1_13 Vdout1_13ck168 = 0 time = 845
.meas tran vdout1_13ck168 FIND v(dout1_13) AT=845.025n

* CHECK dout1_14 Vdout1_14ck168 = 1.1 time = 845
.meas tran vdout1_14ck168 FIND v(dout1_14) AT=845.025n

* CHECK dout1_15 Vdout1_15ck168 = 1.1 time = 845
.meas tran vdout1_15ck168 FIND v(dout1_15) AT=845.025n

* CHECK dout1_16 Vdout1_16ck168 = 1.1 time = 845
.meas tran vdout1_16ck168 FIND v(dout1_16) AT=845.025n

* CHECK dout1_17 Vdout1_17ck168 = 0 time = 845
.meas tran vdout1_17ck168 FIND v(dout1_17) AT=845.025n

* CHECK dout1_18 Vdout1_18ck168 = 1.1 time = 845
.meas tran vdout1_18ck168 FIND v(dout1_18) AT=845.025n

* CHECK dout1_19 Vdout1_19ck168 = 1.1 time = 845
.meas tran vdout1_19ck168 FIND v(dout1_19) AT=845.025n

* CHECK dout1_20 Vdout1_20ck168 = 0 time = 845
.meas tran vdout1_20ck168 FIND v(dout1_20) AT=845.025n

* CHECK dout1_21 Vdout1_21ck168 = 0 time = 845
.meas tran vdout1_21ck168 FIND v(dout1_21) AT=845.025n

* CHECK dout1_22 Vdout1_22ck168 = 1.1 time = 845
.meas tran vdout1_22ck168 FIND v(dout1_22) AT=845.025n

* CHECK dout1_23 Vdout1_23ck168 = 1.1 time = 845
.meas tran vdout1_23ck168 FIND v(dout1_23) AT=845.025n

* CHECK dout1_24 Vdout1_24ck168 = 0 time = 845
.meas tran vdout1_24ck168 FIND v(dout1_24) AT=845.025n

* CHECK dout1_25 Vdout1_25ck168 = 0 time = 845
.meas tran vdout1_25ck168 FIND v(dout1_25) AT=845.025n

* CHECK dout1_26 Vdout1_26ck168 = 0 time = 845
.meas tran vdout1_26ck168 FIND v(dout1_26) AT=845.025n

* CHECK dout1_27 Vdout1_27ck168 = 1.1 time = 845
.meas tran vdout1_27ck168 FIND v(dout1_27) AT=845.025n

* CHECK dout1_28 Vdout1_28ck168 = 0 time = 845
.meas tran vdout1_28ck168 FIND v(dout1_28) AT=845.025n

* CHECK dout1_29 Vdout1_29ck168 = 0 time = 845
.meas tran vdout1_29ck168 FIND v(dout1_29) AT=845.025n

* CHECK dout1_30 Vdout1_30ck168 = 0 time = 845
.meas tran vdout1_30ck168 FIND v(dout1_30) AT=845.025n

* CHECK dout1_31 Vdout1_31ck168 = 1.1 time = 845
.meas tran vdout1_31ck168 FIND v(dout1_31) AT=845.025n

* CHECK dout1_0 Vdout1_0ck174 = 0 time = 875
.meas tran vdout1_0ck174 FIND v(dout1_0) AT=875.025n

* CHECK dout1_1 Vdout1_1ck174 = 1.1 time = 875
.meas tran vdout1_1ck174 FIND v(dout1_1) AT=875.025n

* CHECK dout1_2 Vdout1_2ck174 = 1.1 time = 875
.meas tran vdout1_2ck174 FIND v(dout1_2) AT=875.025n

* CHECK dout1_3 Vdout1_3ck174 = 1.1 time = 875
.meas tran vdout1_3ck174 FIND v(dout1_3) AT=875.025n

* CHECK dout1_4 Vdout1_4ck174 = 1.1 time = 875
.meas tran vdout1_4ck174 FIND v(dout1_4) AT=875.025n

* CHECK dout1_5 Vdout1_5ck174 = 0 time = 875
.meas tran vdout1_5ck174 FIND v(dout1_5) AT=875.025n

* CHECK dout1_6 Vdout1_6ck174 = 0 time = 875
.meas tran vdout1_6ck174 FIND v(dout1_6) AT=875.025n

* CHECK dout1_7 Vdout1_7ck174 = 0 time = 875
.meas tran vdout1_7ck174 FIND v(dout1_7) AT=875.025n

* CHECK dout1_8 Vdout1_8ck174 = 1.1 time = 875
.meas tran vdout1_8ck174 FIND v(dout1_8) AT=875.025n

* CHECK dout1_9 Vdout1_9ck174 = 0 time = 875
.meas tran vdout1_9ck174 FIND v(dout1_9) AT=875.025n

* CHECK dout1_10 Vdout1_10ck174 = 0 time = 875
.meas tran vdout1_10ck174 FIND v(dout1_10) AT=875.025n

* CHECK dout1_11 Vdout1_11ck174 = 1.1 time = 875
.meas tran vdout1_11ck174 FIND v(dout1_11) AT=875.025n

* CHECK dout1_12 Vdout1_12ck174 = 1.1 time = 875
.meas tran vdout1_12ck174 FIND v(dout1_12) AT=875.025n

* CHECK dout1_13 Vdout1_13ck174 = 1.1 time = 875
.meas tran vdout1_13ck174 FIND v(dout1_13) AT=875.025n

* CHECK dout1_14 Vdout1_14ck174 = 0 time = 875
.meas tran vdout1_14ck174 FIND v(dout1_14) AT=875.025n

* CHECK dout1_15 Vdout1_15ck174 = 0 time = 875
.meas tran vdout1_15ck174 FIND v(dout1_15) AT=875.025n

* CHECK dout1_16 Vdout1_16ck174 = 1.1 time = 875
.meas tran vdout1_16ck174 FIND v(dout1_16) AT=875.025n

* CHECK dout1_17 Vdout1_17ck174 = 1.1 time = 875
.meas tran vdout1_17ck174 FIND v(dout1_17) AT=875.025n

* CHECK dout1_18 Vdout1_18ck174 = 1.1 time = 875
.meas tran vdout1_18ck174 FIND v(dout1_18) AT=875.025n

* CHECK dout1_19 Vdout1_19ck174 = 0 time = 875
.meas tran vdout1_19ck174 FIND v(dout1_19) AT=875.025n

* CHECK dout1_20 Vdout1_20ck174 = 1.1 time = 875
.meas tran vdout1_20ck174 FIND v(dout1_20) AT=875.025n

* CHECK dout1_21 Vdout1_21ck174 = 1.1 time = 875
.meas tran vdout1_21ck174 FIND v(dout1_21) AT=875.025n

* CHECK dout1_22 Vdout1_22ck174 = 0 time = 875
.meas tran vdout1_22ck174 FIND v(dout1_22) AT=875.025n

* CHECK dout1_23 Vdout1_23ck174 = 0 time = 875
.meas tran vdout1_23ck174 FIND v(dout1_23) AT=875.025n

* CHECK dout1_24 Vdout1_24ck174 = 0 time = 875
.meas tran vdout1_24ck174 FIND v(dout1_24) AT=875.025n

* CHECK dout1_25 Vdout1_25ck174 = 1.1 time = 875
.meas tran vdout1_25ck174 FIND v(dout1_25) AT=875.025n

* CHECK dout1_26 Vdout1_26ck174 = 0 time = 875
.meas tran vdout1_26ck174 FIND v(dout1_26) AT=875.025n

* CHECK dout1_27 Vdout1_27ck174 = 0 time = 875
.meas tran vdout1_27ck174 FIND v(dout1_27) AT=875.025n

* CHECK dout1_28 Vdout1_28ck174 = 1.1 time = 875
.meas tran vdout1_28ck174 FIND v(dout1_28) AT=875.025n

* CHECK dout1_29 Vdout1_29ck174 = 0 time = 875
.meas tran vdout1_29ck174 FIND v(dout1_29) AT=875.025n

* CHECK dout1_30 Vdout1_30ck174 = 0 time = 875
.meas tran vdout1_30ck174 FIND v(dout1_30) AT=875.025n

* CHECK dout1_31 Vdout1_31ck174 = 0 time = 875
.meas tran vdout1_31ck174 FIND v(dout1_31) AT=875.025n

* CHECK dout1_0 Vdout1_0ck175 = 1.1 time = 880
.meas tran vdout1_0ck175 FIND v(dout1_0) AT=880.025n

* CHECK dout1_1 Vdout1_1ck175 = 0 time = 880
.meas tran vdout1_1ck175 FIND v(dout1_1) AT=880.025n

* CHECK dout1_2 Vdout1_2ck175 = 0 time = 880
.meas tran vdout1_2ck175 FIND v(dout1_2) AT=880.025n

* CHECK dout1_3 Vdout1_3ck175 = 1.1 time = 880
.meas tran vdout1_3ck175 FIND v(dout1_3) AT=880.025n

* CHECK dout1_4 Vdout1_4ck175 = 1.1 time = 880
.meas tran vdout1_4ck175 FIND v(dout1_4) AT=880.025n

* CHECK dout1_5 Vdout1_5ck175 = 0 time = 880
.meas tran vdout1_5ck175 FIND v(dout1_5) AT=880.025n

* CHECK dout1_6 Vdout1_6ck175 = 1.1 time = 880
.meas tran vdout1_6ck175 FIND v(dout1_6) AT=880.025n

* CHECK dout1_7 Vdout1_7ck175 = 1.1 time = 880
.meas tran vdout1_7ck175 FIND v(dout1_7) AT=880.025n

* CHECK dout1_8 Vdout1_8ck175 = 1.1 time = 880
.meas tran vdout1_8ck175 FIND v(dout1_8) AT=880.025n

* CHECK dout1_9 Vdout1_9ck175 = 1.1 time = 880
.meas tran vdout1_9ck175 FIND v(dout1_9) AT=880.025n

* CHECK dout1_10 Vdout1_10ck175 = 0 time = 880
.meas tran vdout1_10ck175 FIND v(dout1_10) AT=880.025n

* CHECK dout1_11 Vdout1_11ck175 = 1.1 time = 880
.meas tran vdout1_11ck175 FIND v(dout1_11) AT=880.025n

* CHECK dout1_12 Vdout1_12ck175 = 1.1 time = 880
.meas tran vdout1_12ck175 FIND v(dout1_12) AT=880.025n

* CHECK dout1_13 Vdout1_13ck175 = 1.1 time = 880
.meas tran vdout1_13ck175 FIND v(dout1_13) AT=880.025n

* CHECK dout1_14 Vdout1_14ck175 = 0 time = 880
.meas tran vdout1_14ck175 FIND v(dout1_14) AT=880.025n

* CHECK dout1_15 Vdout1_15ck175 = 1.1 time = 880
.meas tran vdout1_15ck175 FIND v(dout1_15) AT=880.025n

* CHECK dout1_16 Vdout1_16ck175 = 1.1 time = 880
.meas tran vdout1_16ck175 FIND v(dout1_16) AT=880.025n

* CHECK dout1_17 Vdout1_17ck175 = 0 time = 880
.meas tran vdout1_17ck175 FIND v(dout1_17) AT=880.025n

* CHECK dout1_18 Vdout1_18ck175 = 1.1 time = 880
.meas tran vdout1_18ck175 FIND v(dout1_18) AT=880.025n

* CHECK dout1_19 Vdout1_19ck175 = 0 time = 880
.meas tran vdout1_19ck175 FIND v(dout1_19) AT=880.025n

* CHECK dout1_20 Vdout1_20ck175 = 1.1 time = 880
.meas tran vdout1_20ck175 FIND v(dout1_20) AT=880.025n

* CHECK dout1_21 Vdout1_21ck175 = 0 time = 880
.meas tran vdout1_21ck175 FIND v(dout1_21) AT=880.025n

* CHECK dout1_22 Vdout1_22ck175 = 1.1 time = 880
.meas tran vdout1_22ck175 FIND v(dout1_22) AT=880.025n

* CHECK dout1_23 Vdout1_23ck175 = 1.1 time = 880
.meas tran vdout1_23ck175 FIND v(dout1_23) AT=880.025n

* CHECK dout1_24 Vdout1_24ck175 = 1.1 time = 880
.meas tran vdout1_24ck175 FIND v(dout1_24) AT=880.025n

* CHECK dout1_25 Vdout1_25ck175 = 1.1 time = 880
.meas tran vdout1_25ck175 FIND v(dout1_25) AT=880.025n

* CHECK dout1_26 Vdout1_26ck175 = 0 time = 880
.meas tran vdout1_26ck175 FIND v(dout1_26) AT=880.025n

* CHECK dout1_27 Vdout1_27ck175 = 1.1 time = 880
.meas tran vdout1_27ck175 FIND v(dout1_27) AT=880.025n

* CHECK dout1_28 Vdout1_28ck175 = 0 time = 880
.meas tran vdout1_28ck175 FIND v(dout1_28) AT=880.025n

* CHECK dout1_29 Vdout1_29ck175 = 1.1 time = 880
.meas tran vdout1_29ck175 FIND v(dout1_29) AT=880.025n

* CHECK dout1_30 Vdout1_30ck175 = 0 time = 880
.meas tran vdout1_30ck175 FIND v(dout1_30) AT=880.025n

* CHECK dout1_31 Vdout1_31ck175 = 0 time = 880
.meas tran vdout1_31ck175 FIND v(dout1_31) AT=880.025n

* CHECK dout1_0 Vdout1_0ck178 = 1.1 time = 895
.meas tran vdout1_0ck178 FIND v(dout1_0) AT=895.025n

* CHECK dout1_1 Vdout1_1ck178 = 1.1 time = 895
.meas tran vdout1_1ck178 FIND v(dout1_1) AT=895.025n

* CHECK dout1_2 Vdout1_2ck178 = 1.1 time = 895
.meas tran vdout1_2ck178 FIND v(dout1_2) AT=895.025n

* CHECK dout1_3 Vdout1_3ck178 = 1.1 time = 895
.meas tran vdout1_3ck178 FIND v(dout1_3) AT=895.025n

* CHECK dout1_4 Vdout1_4ck178 = 1.1 time = 895
.meas tran vdout1_4ck178 FIND v(dout1_4) AT=895.025n

* CHECK dout1_5 Vdout1_5ck178 = 0 time = 895
.meas tran vdout1_5ck178 FIND v(dout1_5) AT=895.025n

* CHECK dout1_6 Vdout1_6ck178 = 1.1 time = 895
.meas tran vdout1_6ck178 FIND v(dout1_6) AT=895.025n

* CHECK dout1_7 Vdout1_7ck178 = 1.1 time = 895
.meas tran vdout1_7ck178 FIND v(dout1_7) AT=895.025n

* CHECK dout1_8 Vdout1_8ck178 = 1.1 time = 895
.meas tran vdout1_8ck178 FIND v(dout1_8) AT=895.025n

* CHECK dout1_9 Vdout1_9ck178 = 1.1 time = 895
.meas tran vdout1_9ck178 FIND v(dout1_9) AT=895.025n

* CHECK dout1_10 Vdout1_10ck178 = 1.1 time = 895
.meas tran vdout1_10ck178 FIND v(dout1_10) AT=895.025n

* CHECK dout1_11 Vdout1_11ck178 = 0 time = 895
.meas tran vdout1_11ck178 FIND v(dout1_11) AT=895.025n

* CHECK dout1_12 Vdout1_12ck178 = 1.1 time = 895
.meas tran vdout1_12ck178 FIND v(dout1_12) AT=895.025n

* CHECK dout1_13 Vdout1_13ck178 = 0 time = 895
.meas tran vdout1_13ck178 FIND v(dout1_13) AT=895.025n

* CHECK dout1_14 Vdout1_14ck178 = 1.1 time = 895
.meas tran vdout1_14ck178 FIND v(dout1_14) AT=895.025n

* CHECK dout1_15 Vdout1_15ck178 = 1.1 time = 895
.meas tran vdout1_15ck178 FIND v(dout1_15) AT=895.025n

* CHECK dout1_16 Vdout1_16ck178 = 1.1 time = 895
.meas tran vdout1_16ck178 FIND v(dout1_16) AT=895.025n

* CHECK dout1_17 Vdout1_17ck178 = 0 time = 895
.meas tran vdout1_17ck178 FIND v(dout1_17) AT=895.025n

* CHECK dout1_18 Vdout1_18ck178 = 1.1 time = 895
.meas tran vdout1_18ck178 FIND v(dout1_18) AT=895.025n

* CHECK dout1_19 Vdout1_19ck178 = 1.1 time = 895
.meas tran vdout1_19ck178 FIND v(dout1_19) AT=895.025n

* CHECK dout1_20 Vdout1_20ck178 = 0 time = 895
.meas tran vdout1_20ck178 FIND v(dout1_20) AT=895.025n

* CHECK dout1_21 Vdout1_21ck178 = 0 time = 895
.meas tran vdout1_21ck178 FIND v(dout1_21) AT=895.025n

* CHECK dout1_22 Vdout1_22ck178 = 1.1 time = 895
.meas tran vdout1_22ck178 FIND v(dout1_22) AT=895.025n

* CHECK dout1_23 Vdout1_23ck178 = 1.1 time = 895
.meas tran vdout1_23ck178 FIND v(dout1_23) AT=895.025n

* CHECK dout1_24 Vdout1_24ck178 = 0 time = 895
.meas tran vdout1_24ck178 FIND v(dout1_24) AT=895.025n

* CHECK dout1_25 Vdout1_25ck178 = 0 time = 895
.meas tran vdout1_25ck178 FIND v(dout1_25) AT=895.025n

* CHECK dout1_26 Vdout1_26ck178 = 0 time = 895
.meas tran vdout1_26ck178 FIND v(dout1_26) AT=895.025n

* CHECK dout1_27 Vdout1_27ck178 = 1.1 time = 895
.meas tran vdout1_27ck178 FIND v(dout1_27) AT=895.025n

* CHECK dout1_28 Vdout1_28ck178 = 0 time = 895
.meas tran vdout1_28ck178 FIND v(dout1_28) AT=895.025n

* CHECK dout1_29 Vdout1_29ck178 = 0 time = 895
.meas tran vdout1_29ck178 FIND v(dout1_29) AT=895.025n

* CHECK dout1_30 Vdout1_30ck178 = 0 time = 895
.meas tran vdout1_30ck178 FIND v(dout1_30) AT=895.025n

* CHECK dout1_31 Vdout1_31ck178 = 1.1 time = 895
.meas tran vdout1_31ck178 FIND v(dout1_31) AT=895.025n

* CHECK dout1_0 Vdout1_0ck180 = 1.1 time = 905
.meas tran vdout1_0ck180 FIND v(dout1_0) AT=905.025n

* CHECK dout1_1 Vdout1_1ck180 = 1.1 time = 905
.meas tran vdout1_1ck180 FIND v(dout1_1) AT=905.025n

* CHECK dout1_2 Vdout1_2ck180 = 1.1 time = 905
.meas tran vdout1_2ck180 FIND v(dout1_2) AT=905.025n

* CHECK dout1_3 Vdout1_3ck180 = 1.1 time = 905
.meas tran vdout1_3ck180 FIND v(dout1_3) AT=905.025n

* CHECK dout1_4 Vdout1_4ck180 = 1.1 time = 905
.meas tran vdout1_4ck180 FIND v(dout1_4) AT=905.025n

* CHECK dout1_5 Vdout1_5ck180 = 0 time = 905
.meas tran vdout1_5ck180 FIND v(dout1_5) AT=905.025n

* CHECK dout1_6 Vdout1_6ck180 = 1.1 time = 905
.meas tran vdout1_6ck180 FIND v(dout1_6) AT=905.025n

* CHECK dout1_7 Vdout1_7ck180 = 1.1 time = 905
.meas tran vdout1_7ck180 FIND v(dout1_7) AT=905.025n

* CHECK dout1_8 Vdout1_8ck180 = 1.1 time = 905
.meas tran vdout1_8ck180 FIND v(dout1_8) AT=905.025n

* CHECK dout1_9 Vdout1_9ck180 = 1.1 time = 905
.meas tran vdout1_9ck180 FIND v(dout1_9) AT=905.025n

* CHECK dout1_10 Vdout1_10ck180 = 1.1 time = 905
.meas tran vdout1_10ck180 FIND v(dout1_10) AT=905.025n

* CHECK dout1_11 Vdout1_11ck180 = 0 time = 905
.meas tran vdout1_11ck180 FIND v(dout1_11) AT=905.025n

* CHECK dout1_12 Vdout1_12ck180 = 1.1 time = 905
.meas tran vdout1_12ck180 FIND v(dout1_12) AT=905.025n

* CHECK dout1_13 Vdout1_13ck180 = 0 time = 905
.meas tran vdout1_13ck180 FIND v(dout1_13) AT=905.025n

* CHECK dout1_14 Vdout1_14ck180 = 1.1 time = 905
.meas tran vdout1_14ck180 FIND v(dout1_14) AT=905.025n

* CHECK dout1_15 Vdout1_15ck180 = 1.1 time = 905
.meas tran vdout1_15ck180 FIND v(dout1_15) AT=905.025n

* CHECK dout1_16 Vdout1_16ck180 = 1.1 time = 905
.meas tran vdout1_16ck180 FIND v(dout1_16) AT=905.025n

* CHECK dout1_17 Vdout1_17ck180 = 0 time = 905
.meas tran vdout1_17ck180 FIND v(dout1_17) AT=905.025n

* CHECK dout1_18 Vdout1_18ck180 = 1.1 time = 905
.meas tran vdout1_18ck180 FIND v(dout1_18) AT=905.025n

* CHECK dout1_19 Vdout1_19ck180 = 1.1 time = 905
.meas tran vdout1_19ck180 FIND v(dout1_19) AT=905.025n

* CHECK dout1_20 Vdout1_20ck180 = 0 time = 905
.meas tran vdout1_20ck180 FIND v(dout1_20) AT=905.025n

* CHECK dout1_21 Vdout1_21ck180 = 0 time = 905
.meas tran vdout1_21ck180 FIND v(dout1_21) AT=905.025n

* CHECK dout1_22 Vdout1_22ck180 = 1.1 time = 905
.meas tran vdout1_22ck180 FIND v(dout1_22) AT=905.025n

* CHECK dout1_23 Vdout1_23ck180 = 1.1 time = 905
.meas tran vdout1_23ck180 FIND v(dout1_23) AT=905.025n

* CHECK dout1_24 Vdout1_24ck180 = 0 time = 905
.meas tran vdout1_24ck180 FIND v(dout1_24) AT=905.025n

* CHECK dout1_25 Vdout1_25ck180 = 0 time = 905
.meas tran vdout1_25ck180 FIND v(dout1_25) AT=905.025n

* CHECK dout1_26 Vdout1_26ck180 = 0 time = 905
.meas tran vdout1_26ck180 FIND v(dout1_26) AT=905.025n

* CHECK dout1_27 Vdout1_27ck180 = 1.1 time = 905
.meas tran vdout1_27ck180 FIND v(dout1_27) AT=905.025n

* CHECK dout1_28 Vdout1_28ck180 = 0 time = 905
.meas tran vdout1_28ck180 FIND v(dout1_28) AT=905.025n

* CHECK dout1_29 Vdout1_29ck180 = 0 time = 905
.meas tran vdout1_29ck180 FIND v(dout1_29) AT=905.025n

* CHECK dout1_30 Vdout1_30ck180 = 0 time = 905
.meas tran vdout1_30ck180 FIND v(dout1_30) AT=905.025n

* CHECK dout1_31 Vdout1_31ck180 = 1.1 time = 905
.meas tran vdout1_31ck180 FIND v(dout1_31) AT=905.025n

* CHECK dout1_0 Vdout1_0ck183 = 1.1 time = 920
.meas tran vdout1_0ck183 FIND v(dout1_0) AT=920.025n

* CHECK dout1_1 Vdout1_1ck183 = 0 time = 920
.meas tran vdout1_1ck183 FIND v(dout1_1) AT=920.025n

* CHECK dout1_2 Vdout1_2ck183 = 1.1 time = 920
.meas tran vdout1_2ck183 FIND v(dout1_2) AT=920.025n

* CHECK dout1_3 Vdout1_3ck183 = 0 time = 920
.meas tran vdout1_3ck183 FIND v(dout1_3) AT=920.025n

* CHECK dout1_4 Vdout1_4ck183 = 1.1 time = 920
.meas tran vdout1_4ck183 FIND v(dout1_4) AT=920.025n

* CHECK dout1_5 Vdout1_5ck183 = 0 time = 920
.meas tran vdout1_5ck183 FIND v(dout1_5) AT=920.025n

* CHECK dout1_6 Vdout1_6ck183 = 1.1 time = 920
.meas tran vdout1_6ck183 FIND v(dout1_6) AT=920.025n

* CHECK dout1_7 Vdout1_7ck183 = 0 time = 920
.meas tran vdout1_7ck183 FIND v(dout1_7) AT=920.025n

* CHECK dout1_8 Vdout1_8ck183 = 1.1 time = 920
.meas tran vdout1_8ck183 FIND v(dout1_8) AT=920.025n

* CHECK dout1_9 Vdout1_9ck183 = 1.1 time = 920
.meas tran vdout1_9ck183 FIND v(dout1_9) AT=920.025n

* CHECK dout1_10 Vdout1_10ck183 = 1.1 time = 920
.meas tran vdout1_10ck183 FIND v(dout1_10) AT=920.025n

* CHECK dout1_11 Vdout1_11ck183 = 1.1 time = 920
.meas tran vdout1_11ck183 FIND v(dout1_11) AT=920.025n

* CHECK dout1_12 Vdout1_12ck183 = 0 time = 920
.meas tran vdout1_12ck183 FIND v(dout1_12) AT=920.025n

* CHECK dout1_13 Vdout1_13ck183 = 0 time = 920
.meas tran vdout1_13ck183 FIND v(dout1_13) AT=920.025n

* CHECK dout1_14 Vdout1_14ck183 = 1.1 time = 920
.meas tran vdout1_14ck183 FIND v(dout1_14) AT=920.025n

* CHECK dout1_15 Vdout1_15ck183 = 0 time = 920
.meas tran vdout1_15ck183 FIND v(dout1_15) AT=920.025n

* CHECK dout1_16 Vdout1_16ck183 = 1.1 time = 920
.meas tran vdout1_16ck183 FIND v(dout1_16) AT=920.025n

* CHECK dout1_17 Vdout1_17ck183 = 0 time = 920
.meas tran vdout1_17ck183 FIND v(dout1_17) AT=920.025n

* CHECK dout1_18 Vdout1_18ck183 = 0 time = 920
.meas tran vdout1_18ck183 FIND v(dout1_18) AT=920.025n

* CHECK dout1_19 Vdout1_19ck183 = 0 time = 920
.meas tran vdout1_19ck183 FIND v(dout1_19) AT=920.025n

* CHECK dout1_20 Vdout1_20ck183 = 0 time = 920
.meas tran vdout1_20ck183 FIND v(dout1_20) AT=920.025n

* CHECK dout1_21 Vdout1_21ck183 = 1.1 time = 920
.meas tran vdout1_21ck183 FIND v(dout1_21) AT=920.025n

* CHECK dout1_22 Vdout1_22ck183 = 0 time = 920
.meas tran vdout1_22ck183 FIND v(dout1_22) AT=920.025n

* CHECK dout1_23 Vdout1_23ck183 = 0 time = 920
.meas tran vdout1_23ck183 FIND v(dout1_23) AT=920.025n

* CHECK dout1_24 Vdout1_24ck183 = 0 time = 920
.meas tran vdout1_24ck183 FIND v(dout1_24) AT=920.025n

* CHECK dout1_25 Vdout1_25ck183 = 1.1 time = 920
.meas tran vdout1_25ck183 FIND v(dout1_25) AT=920.025n

* CHECK dout1_26 Vdout1_26ck183 = 1.1 time = 920
.meas tran vdout1_26ck183 FIND v(dout1_26) AT=920.025n

* CHECK dout1_27 Vdout1_27ck183 = 0 time = 920
.meas tran vdout1_27ck183 FIND v(dout1_27) AT=920.025n

* CHECK dout1_28 Vdout1_28ck183 = 1.1 time = 920
.meas tran vdout1_28ck183 FIND v(dout1_28) AT=920.025n

* CHECK dout1_29 Vdout1_29ck183 = 1.1 time = 920
.meas tran vdout1_29ck183 FIND v(dout1_29) AT=920.025n

* CHECK dout1_30 Vdout1_30ck183 = 0 time = 920
.meas tran vdout1_30ck183 FIND v(dout1_30) AT=920.025n

* CHECK dout1_31 Vdout1_31ck183 = 1.1 time = 920
.meas tran vdout1_31ck183 FIND v(dout1_31) AT=920.025n

* CHECK dout1_0 Vdout1_0ck184 = 1.1 time = 925
.meas tran vdout1_0ck184 FIND v(dout1_0) AT=925.025n

* CHECK dout1_1 Vdout1_1ck184 = 1.1 time = 925
.meas tran vdout1_1ck184 FIND v(dout1_1) AT=925.025n

* CHECK dout1_2 Vdout1_2ck184 = 1.1 time = 925
.meas tran vdout1_2ck184 FIND v(dout1_2) AT=925.025n

* CHECK dout1_3 Vdout1_3ck184 = 1.1 time = 925
.meas tran vdout1_3ck184 FIND v(dout1_3) AT=925.025n

* CHECK dout1_4 Vdout1_4ck184 = 1.1 time = 925
.meas tran vdout1_4ck184 FIND v(dout1_4) AT=925.025n

* CHECK dout1_5 Vdout1_5ck184 = 0 time = 925
.meas tran vdout1_5ck184 FIND v(dout1_5) AT=925.025n

* CHECK dout1_6 Vdout1_6ck184 = 1.1 time = 925
.meas tran vdout1_6ck184 FIND v(dout1_6) AT=925.025n

* CHECK dout1_7 Vdout1_7ck184 = 1.1 time = 925
.meas tran vdout1_7ck184 FIND v(dout1_7) AT=925.025n

* CHECK dout1_8 Vdout1_8ck184 = 1.1 time = 925
.meas tran vdout1_8ck184 FIND v(dout1_8) AT=925.025n

* CHECK dout1_9 Vdout1_9ck184 = 1.1 time = 925
.meas tran vdout1_9ck184 FIND v(dout1_9) AT=925.025n

* CHECK dout1_10 Vdout1_10ck184 = 1.1 time = 925
.meas tran vdout1_10ck184 FIND v(dout1_10) AT=925.025n

* CHECK dout1_11 Vdout1_11ck184 = 0 time = 925
.meas tran vdout1_11ck184 FIND v(dout1_11) AT=925.025n

* CHECK dout1_12 Vdout1_12ck184 = 1.1 time = 925
.meas tran vdout1_12ck184 FIND v(dout1_12) AT=925.025n

* CHECK dout1_13 Vdout1_13ck184 = 0 time = 925
.meas tran vdout1_13ck184 FIND v(dout1_13) AT=925.025n

* CHECK dout1_14 Vdout1_14ck184 = 1.1 time = 925
.meas tran vdout1_14ck184 FIND v(dout1_14) AT=925.025n

* CHECK dout1_15 Vdout1_15ck184 = 1.1 time = 925
.meas tran vdout1_15ck184 FIND v(dout1_15) AT=925.025n

* CHECK dout1_16 Vdout1_16ck184 = 1.1 time = 925
.meas tran vdout1_16ck184 FIND v(dout1_16) AT=925.025n

* CHECK dout1_17 Vdout1_17ck184 = 0 time = 925
.meas tran vdout1_17ck184 FIND v(dout1_17) AT=925.025n

* CHECK dout1_18 Vdout1_18ck184 = 1.1 time = 925
.meas tran vdout1_18ck184 FIND v(dout1_18) AT=925.025n

* CHECK dout1_19 Vdout1_19ck184 = 1.1 time = 925
.meas tran vdout1_19ck184 FIND v(dout1_19) AT=925.025n

* CHECK dout1_20 Vdout1_20ck184 = 0 time = 925
.meas tran vdout1_20ck184 FIND v(dout1_20) AT=925.025n

* CHECK dout1_21 Vdout1_21ck184 = 0 time = 925
.meas tran vdout1_21ck184 FIND v(dout1_21) AT=925.025n

* CHECK dout1_22 Vdout1_22ck184 = 1.1 time = 925
.meas tran vdout1_22ck184 FIND v(dout1_22) AT=925.025n

* CHECK dout1_23 Vdout1_23ck184 = 1.1 time = 925
.meas tran vdout1_23ck184 FIND v(dout1_23) AT=925.025n

* CHECK dout1_24 Vdout1_24ck184 = 0 time = 925
.meas tran vdout1_24ck184 FIND v(dout1_24) AT=925.025n

* CHECK dout1_25 Vdout1_25ck184 = 0 time = 925
.meas tran vdout1_25ck184 FIND v(dout1_25) AT=925.025n

* CHECK dout1_26 Vdout1_26ck184 = 0 time = 925
.meas tran vdout1_26ck184 FIND v(dout1_26) AT=925.025n

* CHECK dout1_27 Vdout1_27ck184 = 1.1 time = 925
.meas tran vdout1_27ck184 FIND v(dout1_27) AT=925.025n

* CHECK dout1_28 Vdout1_28ck184 = 0 time = 925
.meas tran vdout1_28ck184 FIND v(dout1_28) AT=925.025n

* CHECK dout1_29 Vdout1_29ck184 = 0 time = 925
.meas tran vdout1_29ck184 FIND v(dout1_29) AT=925.025n

* CHECK dout1_30 Vdout1_30ck184 = 0 time = 925
.meas tran vdout1_30ck184 FIND v(dout1_30) AT=925.025n

* CHECK dout1_31 Vdout1_31ck184 = 1.1 time = 925
.meas tran vdout1_31ck184 FIND v(dout1_31) AT=925.025n

* CHECK dout1_0 Vdout1_0ck185 = 0 time = 930
.meas tran vdout1_0ck185 FIND v(dout1_0) AT=930.025n

* CHECK dout1_1 Vdout1_1ck185 = 0 time = 930
.meas tran vdout1_1ck185 FIND v(dout1_1) AT=930.025n

* CHECK dout1_2 Vdout1_2ck185 = 1.1 time = 930
.meas tran vdout1_2ck185 FIND v(dout1_2) AT=930.025n

* CHECK dout1_3 Vdout1_3ck185 = 1.1 time = 930
.meas tran vdout1_3ck185 FIND v(dout1_3) AT=930.025n

* CHECK dout1_4 Vdout1_4ck185 = 1.1 time = 930
.meas tran vdout1_4ck185 FIND v(dout1_4) AT=930.025n

* CHECK dout1_5 Vdout1_5ck185 = 0 time = 930
.meas tran vdout1_5ck185 FIND v(dout1_5) AT=930.025n

* CHECK dout1_6 Vdout1_6ck185 = 1.1 time = 930
.meas tran vdout1_6ck185 FIND v(dout1_6) AT=930.025n

* CHECK dout1_7 Vdout1_7ck185 = 1.1 time = 930
.meas tran vdout1_7ck185 FIND v(dout1_7) AT=930.025n

* CHECK dout1_8 Vdout1_8ck185 = 0 time = 930
.meas tran vdout1_8ck185 FIND v(dout1_8) AT=930.025n

* CHECK dout1_9 Vdout1_9ck185 = 0 time = 930
.meas tran vdout1_9ck185 FIND v(dout1_9) AT=930.025n

* CHECK dout1_10 Vdout1_10ck185 = 1.1 time = 930
.meas tran vdout1_10ck185 FIND v(dout1_10) AT=930.025n

* CHECK dout1_11 Vdout1_11ck185 = 0 time = 930
.meas tran vdout1_11ck185 FIND v(dout1_11) AT=930.025n

* CHECK dout1_12 Vdout1_12ck185 = 0 time = 930
.meas tran vdout1_12ck185 FIND v(dout1_12) AT=930.025n

* CHECK dout1_13 Vdout1_13ck185 = 1.1 time = 930
.meas tran vdout1_13ck185 FIND v(dout1_13) AT=930.025n

* CHECK dout1_14 Vdout1_14ck185 = 0 time = 930
.meas tran vdout1_14ck185 FIND v(dout1_14) AT=930.025n

* CHECK dout1_15 Vdout1_15ck185 = 1.1 time = 930
.meas tran vdout1_15ck185 FIND v(dout1_15) AT=930.025n

* CHECK dout1_16 Vdout1_16ck185 = 0 time = 930
.meas tran vdout1_16ck185 FIND v(dout1_16) AT=930.025n

* CHECK dout1_17 Vdout1_17ck185 = 0 time = 930
.meas tran vdout1_17ck185 FIND v(dout1_17) AT=930.025n

* CHECK dout1_18 Vdout1_18ck185 = 0 time = 930
.meas tran vdout1_18ck185 FIND v(dout1_18) AT=930.025n

* CHECK dout1_19 Vdout1_19ck185 = 0 time = 930
.meas tran vdout1_19ck185 FIND v(dout1_19) AT=930.025n

* CHECK dout1_20 Vdout1_20ck185 = 1.1 time = 930
.meas tran vdout1_20ck185 FIND v(dout1_20) AT=930.025n

* CHECK dout1_21 Vdout1_21ck185 = 0 time = 930
.meas tran vdout1_21ck185 FIND v(dout1_21) AT=930.025n

* CHECK dout1_22 Vdout1_22ck185 = 1.1 time = 930
.meas tran vdout1_22ck185 FIND v(dout1_22) AT=930.025n

* CHECK dout1_23 Vdout1_23ck185 = 0 time = 930
.meas tran vdout1_23ck185 FIND v(dout1_23) AT=930.025n

* CHECK dout1_24 Vdout1_24ck185 = 0 time = 930
.meas tran vdout1_24ck185 FIND v(dout1_24) AT=930.025n

* CHECK dout1_25 Vdout1_25ck185 = 0 time = 930
.meas tran vdout1_25ck185 FIND v(dout1_25) AT=930.025n

* CHECK dout1_26 Vdout1_26ck185 = 0 time = 930
.meas tran vdout1_26ck185 FIND v(dout1_26) AT=930.025n

* CHECK dout1_27 Vdout1_27ck185 = 0 time = 930
.meas tran vdout1_27ck185 FIND v(dout1_27) AT=930.025n

* CHECK dout1_28 Vdout1_28ck185 = 1.1 time = 930
.meas tran vdout1_28ck185 FIND v(dout1_28) AT=930.025n

* CHECK dout1_29 Vdout1_29ck185 = 1.1 time = 930
.meas tran vdout1_29ck185 FIND v(dout1_29) AT=930.025n

* CHECK dout1_30 Vdout1_30ck185 = 1.1 time = 930
.meas tran vdout1_30ck185 FIND v(dout1_30) AT=930.025n

* CHECK dout1_31 Vdout1_31ck185 = 0 time = 930
.meas tran vdout1_31ck185 FIND v(dout1_31) AT=930.025n

* CHECK dout1_0 Vdout1_0ck191 = 1.1 time = 960
.meas tran vdout1_0ck191 FIND v(dout1_0) AT=960.025n

* CHECK dout1_1 Vdout1_1ck191 = 0 time = 960
.meas tran vdout1_1ck191 FIND v(dout1_1) AT=960.025n

* CHECK dout1_2 Vdout1_2ck191 = 1.1 time = 960
.meas tran vdout1_2ck191 FIND v(dout1_2) AT=960.025n

* CHECK dout1_3 Vdout1_3ck191 = 0 time = 960
.meas tran vdout1_3ck191 FIND v(dout1_3) AT=960.025n

* CHECK dout1_4 Vdout1_4ck191 = 1.1 time = 960
.meas tran vdout1_4ck191 FIND v(dout1_4) AT=960.025n

* CHECK dout1_5 Vdout1_5ck191 = 0 time = 960
.meas tran vdout1_5ck191 FIND v(dout1_5) AT=960.025n

* CHECK dout1_6 Vdout1_6ck191 = 1.1 time = 960
.meas tran vdout1_6ck191 FIND v(dout1_6) AT=960.025n

* CHECK dout1_7 Vdout1_7ck191 = 1.1 time = 960
.meas tran vdout1_7ck191 FIND v(dout1_7) AT=960.025n

* CHECK dout1_8 Vdout1_8ck191 = 1.1 time = 960
.meas tran vdout1_8ck191 FIND v(dout1_8) AT=960.025n

* CHECK dout1_9 Vdout1_9ck191 = 1.1 time = 960
.meas tran vdout1_9ck191 FIND v(dout1_9) AT=960.025n

* CHECK dout1_10 Vdout1_10ck191 = 0 time = 960
.meas tran vdout1_10ck191 FIND v(dout1_10) AT=960.025n

* CHECK dout1_11 Vdout1_11ck191 = 0 time = 960
.meas tran vdout1_11ck191 FIND v(dout1_11) AT=960.025n

* CHECK dout1_12 Vdout1_12ck191 = 0 time = 960
.meas tran vdout1_12ck191 FIND v(dout1_12) AT=960.025n

* CHECK dout1_13 Vdout1_13ck191 = 0 time = 960
.meas tran vdout1_13ck191 FIND v(dout1_13) AT=960.025n

* CHECK dout1_14 Vdout1_14ck191 = 1.1 time = 960
.meas tran vdout1_14ck191 FIND v(dout1_14) AT=960.025n

* CHECK dout1_15 Vdout1_15ck191 = 1.1 time = 960
.meas tran vdout1_15ck191 FIND v(dout1_15) AT=960.025n

* CHECK dout1_16 Vdout1_16ck191 = 0 time = 960
.meas tran vdout1_16ck191 FIND v(dout1_16) AT=960.025n

* CHECK dout1_17 Vdout1_17ck191 = 0 time = 960
.meas tran vdout1_17ck191 FIND v(dout1_17) AT=960.025n

* CHECK dout1_18 Vdout1_18ck191 = 1.1 time = 960
.meas tran vdout1_18ck191 FIND v(dout1_18) AT=960.025n

* CHECK dout1_19 Vdout1_19ck191 = 0 time = 960
.meas tran vdout1_19ck191 FIND v(dout1_19) AT=960.025n

* CHECK dout1_20 Vdout1_20ck191 = 0 time = 960
.meas tran vdout1_20ck191 FIND v(dout1_20) AT=960.025n

* CHECK dout1_21 Vdout1_21ck191 = 1.1 time = 960
.meas tran vdout1_21ck191 FIND v(dout1_21) AT=960.025n

* CHECK dout1_22 Vdout1_22ck191 = 0 time = 960
.meas tran vdout1_22ck191 FIND v(dout1_22) AT=960.025n

* CHECK dout1_23 Vdout1_23ck191 = 0 time = 960
.meas tran vdout1_23ck191 FIND v(dout1_23) AT=960.025n

* CHECK dout1_24 Vdout1_24ck191 = 0 time = 960
.meas tran vdout1_24ck191 FIND v(dout1_24) AT=960.025n

* CHECK dout1_25 Vdout1_25ck191 = 1.1 time = 960
.meas tran vdout1_25ck191 FIND v(dout1_25) AT=960.025n

* CHECK dout1_26 Vdout1_26ck191 = 1.1 time = 960
.meas tran vdout1_26ck191 FIND v(dout1_26) AT=960.025n

* CHECK dout1_27 Vdout1_27ck191 = 1.1 time = 960
.meas tran vdout1_27ck191 FIND v(dout1_27) AT=960.025n

* CHECK dout1_28 Vdout1_28ck191 = 1.1 time = 960
.meas tran vdout1_28ck191 FIND v(dout1_28) AT=960.025n

* CHECK dout1_29 Vdout1_29ck191 = 1.1 time = 960
.meas tran vdout1_29ck191 FIND v(dout1_29) AT=960.025n

* CHECK dout1_30 Vdout1_30ck191 = 1.1 time = 960
.meas tran vdout1_30ck191 FIND v(dout1_30) AT=960.025n

* CHECK dout1_31 Vdout1_31ck191 = 1.1 time = 960
.meas tran vdout1_31ck191 FIND v(dout1_31) AT=960.025n

* CHECK dout1_0 Vdout1_0ck193 = 0 time = 970
.meas tran vdout1_0ck193 FIND v(dout1_0) AT=970.025n

* CHECK dout1_1 Vdout1_1ck193 = 0 time = 970
.meas tran vdout1_1ck193 FIND v(dout1_1) AT=970.025n

* CHECK dout1_2 Vdout1_2ck193 = 1.1 time = 970
.meas tran vdout1_2ck193 FIND v(dout1_2) AT=970.025n

* CHECK dout1_3 Vdout1_3ck193 = 1.1 time = 970
.meas tran vdout1_3ck193 FIND v(dout1_3) AT=970.025n

* CHECK dout1_4 Vdout1_4ck193 = 1.1 time = 970
.meas tran vdout1_4ck193 FIND v(dout1_4) AT=970.025n

* CHECK dout1_5 Vdout1_5ck193 = 1.1 time = 970
.meas tran vdout1_5ck193 FIND v(dout1_5) AT=970.025n

* CHECK dout1_6 Vdout1_6ck193 = 1.1 time = 970
.meas tran vdout1_6ck193 FIND v(dout1_6) AT=970.025n

* CHECK dout1_7 Vdout1_7ck193 = 0 time = 970
.meas tran vdout1_7ck193 FIND v(dout1_7) AT=970.025n

* CHECK dout1_8 Vdout1_8ck193 = 1.1 time = 970
.meas tran vdout1_8ck193 FIND v(dout1_8) AT=970.025n

* CHECK dout1_9 Vdout1_9ck193 = 1.1 time = 970
.meas tran vdout1_9ck193 FIND v(dout1_9) AT=970.025n

* CHECK dout1_10 Vdout1_10ck193 = 0 time = 970
.meas tran vdout1_10ck193 FIND v(dout1_10) AT=970.025n

* CHECK dout1_11 Vdout1_11ck193 = 0 time = 970
.meas tran vdout1_11ck193 FIND v(dout1_11) AT=970.025n

* CHECK dout1_12 Vdout1_12ck193 = 1.1 time = 970
.meas tran vdout1_12ck193 FIND v(dout1_12) AT=970.025n

* CHECK dout1_13 Vdout1_13ck193 = 1.1 time = 970
.meas tran vdout1_13ck193 FIND v(dout1_13) AT=970.025n

* CHECK dout1_14 Vdout1_14ck193 = 1.1 time = 970
.meas tran vdout1_14ck193 FIND v(dout1_14) AT=970.025n

* CHECK dout1_15 Vdout1_15ck193 = 0 time = 970
.meas tran vdout1_15ck193 FIND v(dout1_15) AT=970.025n

* CHECK dout1_16 Vdout1_16ck193 = 0 time = 970
.meas tran vdout1_16ck193 FIND v(dout1_16) AT=970.025n

* CHECK dout1_17 Vdout1_17ck193 = 1.1 time = 970
.meas tran vdout1_17ck193 FIND v(dout1_17) AT=970.025n

* CHECK dout1_18 Vdout1_18ck193 = 1.1 time = 970
.meas tran vdout1_18ck193 FIND v(dout1_18) AT=970.025n

* CHECK dout1_19 Vdout1_19ck193 = 1.1 time = 970
.meas tran vdout1_19ck193 FIND v(dout1_19) AT=970.025n

* CHECK dout1_20 Vdout1_20ck193 = 0 time = 970
.meas tran vdout1_20ck193 FIND v(dout1_20) AT=970.025n

* CHECK dout1_21 Vdout1_21ck193 = 1.1 time = 970
.meas tran vdout1_21ck193 FIND v(dout1_21) AT=970.025n

* CHECK dout1_22 Vdout1_22ck193 = 0 time = 970
.meas tran vdout1_22ck193 FIND v(dout1_22) AT=970.025n

* CHECK dout1_23 Vdout1_23ck193 = 1.1 time = 970
.meas tran vdout1_23ck193 FIND v(dout1_23) AT=970.025n

* CHECK dout1_24 Vdout1_24ck193 = 1.1 time = 970
.meas tran vdout1_24ck193 FIND v(dout1_24) AT=970.025n

* CHECK dout1_25 Vdout1_25ck193 = 0 time = 970
.meas tran vdout1_25ck193 FIND v(dout1_25) AT=970.025n

* CHECK dout1_26 Vdout1_26ck193 = 0 time = 970
.meas tran vdout1_26ck193 FIND v(dout1_26) AT=970.025n

* CHECK dout1_27 Vdout1_27ck193 = 1.1 time = 970
.meas tran vdout1_27ck193 FIND v(dout1_27) AT=970.025n

* CHECK dout1_28 Vdout1_28ck193 = 1.1 time = 970
.meas tran vdout1_28ck193 FIND v(dout1_28) AT=970.025n

* CHECK dout1_29 Vdout1_29ck193 = 1.1 time = 970
.meas tran vdout1_29ck193 FIND v(dout1_29) AT=970.025n

* CHECK dout1_30 Vdout1_30ck193 = 0 time = 970
.meas tran vdout1_30ck193 FIND v(dout1_30) AT=970.025n

* CHECK dout1_31 Vdout1_31ck193 = 0 time = 970
.meas tran vdout1_31ck193 FIND v(dout1_31) AT=970.025n

* CHECK dout1_0 Vdout1_0ck197 = 1.1 time = 990
.meas tran vdout1_0ck197 FIND v(dout1_0) AT=990.025n

* CHECK dout1_1 Vdout1_1ck197 = 0 time = 990
.meas tran vdout1_1ck197 FIND v(dout1_1) AT=990.025n

* CHECK dout1_2 Vdout1_2ck197 = 1.1 time = 990
.meas tran vdout1_2ck197 FIND v(dout1_2) AT=990.025n

* CHECK dout1_3 Vdout1_3ck197 = 0 time = 990
.meas tran vdout1_3ck197 FIND v(dout1_3) AT=990.025n

* CHECK dout1_4 Vdout1_4ck197 = 0 time = 990
.meas tran vdout1_4ck197 FIND v(dout1_4) AT=990.025n

* CHECK dout1_5 Vdout1_5ck197 = 0 time = 990
.meas tran vdout1_5ck197 FIND v(dout1_5) AT=990.025n

* CHECK dout1_6 Vdout1_6ck197 = 1.1 time = 990
.meas tran vdout1_6ck197 FIND v(dout1_6) AT=990.025n

* CHECK dout1_7 Vdout1_7ck197 = 0 time = 990
.meas tran vdout1_7ck197 FIND v(dout1_7) AT=990.025n

* CHECK dout1_8 Vdout1_8ck197 = 1.1 time = 990
.meas tran vdout1_8ck197 FIND v(dout1_8) AT=990.025n

* CHECK dout1_9 Vdout1_9ck197 = 0 time = 990
.meas tran vdout1_9ck197 FIND v(dout1_9) AT=990.025n

* CHECK dout1_10 Vdout1_10ck197 = 0 time = 990
.meas tran vdout1_10ck197 FIND v(dout1_10) AT=990.025n

* CHECK dout1_11 Vdout1_11ck197 = 1.1 time = 990
.meas tran vdout1_11ck197 FIND v(dout1_11) AT=990.025n

* CHECK dout1_12 Vdout1_12ck197 = 1.1 time = 990
.meas tran vdout1_12ck197 FIND v(dout1_12) AT=990.025n

* CHECK dout1_13 Vdout1_13ck197 = 1.1 time = 990
.meas tran vdout1_13ck197 FIND v(dout1_13) AT=990.025n

* CHECK dout1_14 Vdout1_14ck197 = 1.1 time = 990
.meas tran vdout1_14ck197 FIND v(dout1_14) AT=990.025n

* CHECK dout1_15 Vdout1_15ck197 = 0 time = 990
.meas tran vdout1_15ck197 FIND v(dout1_15) AT=990.025n

* CHECK dout1_16 Vdout1_16ck197 = 0 time = 990
.meas tran vdout1_16ck197 FIND v(dout1_16) AT=990.025n

* CHECK dout1_17 Vdout1_17ck197 = 0 time = 990
.meas tran vdout1_17ck197 FIND v(dout1_17) AT=990.025n

* CHECK dout1_18 Vdout1_18ck197 = 0 time = 990
.meas tran vdout1_18ck197 FIND v(dout1_18) AT=990.025n

* CHECK dout1_19 Vdout1_19ck197 = 1.1 time = 990
.meas tran vdout1_19ck197 FIND v(dout1_19) AT=990.025n

* CHECK dout1_20 Vdout1_20ck197 = 0 time = 990
.meas tran vdout1_20ck197 FIND v(dout1_20) AT=990.025n

* CHECK dout1_21 Vdout1_21ck197 = 1.1 time = 990
.meas tran vdout1_21ck197 FIND v(dout1_21) AT=990.025n

* CHECK dout1_22 Vdout1_22ck197 = 0 time = 990
.meas tran vdout1_22ck197 FIND v(dout1_22) AT=990.025n

* CHECK dout1_23 Vdout1_23ck197 = 0 time = 990
.meas tran vdout1_23ck197 FIND v(dout1_23) AT=990.025n

* CHECK dout1_24 Vdout1_24ck197 = 1.1 time = 990
.meas tran vdout1_24ck197 FIND v(dout1_24) AT=990.025n

* CHECK dout1_25 Vdout1_25ck197 = 1.1 time = 990
.meas tran vdout1_25ck197 FIND v(dout1_25) AT=990.025n

* CHECK dout1_26 Vdout1_26ck197 = 0 time = 990
.meas tran vdout1_26ck197 FIND v(dout1_26) AT=990.025n

* CHECK dout1_27 Vdout1_27ck197 = 0 time = 990
.meas tran vdout1_27ck197 FIND v(dout1_27) AT=990.025n

* CHECK dout1_28 Vdout1_28ck197 = 0 time = 990
.meas tran vdout1_28ck197 FIND v(dout1_28) AT=990.025n

* CHECK dout1_29 Vdout1_29ck197 = 1.1 time = 990
.meas tran vdout1_29ck197 FIND v(dout1_29) AT=990.025n

* CHECK dout1_30 Vdout1_30ck197 = 0 time = 990
.meas tran vdout1_30ck197 FIND v(dout1_30) AT=990.025n

* CHECK dout1_31 Vdout1_31ck197 = 0 time = 990
.meas tran vdout1_31ck197 FIND v(dout1_31) AT=990.025n

* CHECK dout1_0 Vdout1_0ck203 = 1.1 time = 1020
.meas tran vdout1_0ck203 FIND v(dout1_0) AT=1020.025n

* CHECK dout1_1 Vdout1_1ck203 = 0 time = 1020
.meas tran vdout1_1ck203 FIND v(dout1_1) AT=1020.025n

* CHECK dout1_2 Vdout1_2ck203 = 1.1 time = 1020
.meas tran vdout1_2ck203 FIND v(dout1_2) AT=1020.025n

* CHECK dout1_3 Vdout1_3ck203 = 0 time = 1020
.meas tran vdout1_3ck203 FIND v(dout1_3) AT=1020.025n

* CHECK dout1_4 Vdout1_4ck203 = 0 time = 1020
.meas tran vdout1_4ck203 FIND v(dout1_4) AT=1020.025n

* CHECK dout1_5 Vdout1_5ck203 = 0 time = 1020
.meas tran vdout1_5ck203 FIND v(dout1_5) AT=1020.025n

* CHECK dout1_6 Vdout1_6ck203 = 1.1 time = 1020
.meas tran vdout1_6ck203 FIND v(dout1_6) AT=1020.025n

* CHECK dout1_7 Vdout1_7ck203 = 0 time = 1020
.meas tran vdout1_7ck203 FIND v(dout1_7) AT=1020.025n

* CHECK dout1_8 Vdout1_8ck203 = 1.1 time = 1020
.meas tran vdout1_8ck203 FIND v(dout1_8) AT=1020.025n

* CHECK dout1_9 Vdout1_9ck203 = 0 time = 1020
.meas tran vdout1_9ck203 FIND v(dout1_9) AT=1020.025n

* CHECK dout1_10 Vdout1_10ck203 = 0 time = 1020
.meas tran vdout1_10ck203 FIND v(dout1_10) AT=1020.025n

* CHECK dout1_11 Vdout1_11ck203 = 1.1 time = 1020
.meas tran vdout1_11ck203 FIND v(dout1_11) AT=1020.025n

* CHECK dout1_12 Vdout1_12ck203 = 1.1 time = 1020
.meas tran vdout1_12ck203 FIND v(dout1_12) AT=1020.025n

* CHECK dout1_13 Vdout1_13ck203 = 1.1 time = 1020
.meas tran vdout1_13ck203 FIND v(dout1_13) AT=1020.025n

* CHECK dout1_14 Vdout1_14ck203 = 1.1 time = 1020
.meas tran vdout1_14ck203 FIND v(dout1_14) AT=1020.025n

* CHECK dout1_15 Vdout1_15ck203 = 0 time = 1020
.meas tran vdout1_15ck203 FIND v(dout1_15) AT=1020.025n

* CHECK dout1_16 Vdout1_16ck203 = 0 time = 1020
.meas tran vdout1_16ck203 FIND v(dout1_16) AT=1020.025n

* CHECK dout1_17 Vdout1_17ck203 = 0 time = 1020
.meas tran vdout1_17ck203 FIND v(dout1_17) AT=1020.025n

* CHECK dout1_18 Vdout1_18ck203 = 0 time = 1020
.meas tran vdout1_18ck203 FIND v(dout1_18) AT=1020.025n

* CHECK dout1_19 Vdout1_19ck203 = 1.1 time = 1020
.meas tran vdout1_19ck203 FIND v(dout1_19) AT=1020.025n

* CHECK dout1_20 Vdout1_20ck203 = 0 time = 1020
.meas tran vdout1_20ck203 FIND v(dout1_20) AT=1020.025n

* CHECK dout1_21 Vdout1_21ck203 = 1.1 time = 1020
.meas tran vdout1_21ck203 FIND v(dout1_21) AT=1020.025n

* CHECK dout1_22 Vdout1_22ck203 = 0 time = 1020
.meas tran vdout1_22ck203 FIND v(dout1_22) AT=1020.025n

* CHECK dout1_23 Vdout1_23ck203 = 0 time = 1020
.meas tran vdout1_23ck203 FIND v(dout1_23) AT=1020.025n

* CHECK dout1_24 Vdout1_24ck203 = 1.1 time = 1020
.meas tran vdout1_24ck203 FIND v(dout1_24) AT=1020.025n

* CHECK dout1_25 Vdout1_25ck203 = 1.1 time = 1020
.meas tran vdout1_25ck203 FIND v(dout1_25) AT=1020.025n

* CHECK dout1_26 Vdout1_26ck203 = 0 time = 1020
.meas tran vdout1_26ck203 FIND v(dout1_26) AT=1020.025n

* CHECK dout1_27 Vdout1_27ck203 = 0 time = 1020
.meas tran vdout1_27ck203 FIND v(dout1_27) AT=1020.025n

* CHECK dout1_28 Vdout1_28ck203 = 0 time = 1020
.meas tran vdout1_28ck203 FIND v(dout1_28) AT=1020.025n

* CHECK dout1_29 Vdout1_29ck203 = 1.1 time = 1020
.meas tran vdout1_29ck203 FIND v(dout1_29) AT=1020.025n

* CHECK dout1_30 Vdout1_30ck203 = 0 time = 1020
.meas tran vdout1_30ck203 FIND v(dout1_30) AT=1020.025n

* CHECK dout1_31 Vdout1_31ck203 = 0 time = 1020
.meas tran vdout1_31ck203 FIND v(dout1_31) AT=1020.025n

* CHECK dout1_0 Vdout1_0ck204 = 1.1 time = 1025
.meas tran vdout1_0ck204 FIND v(dout1_0) AT=1025.025n

* CHECK dout1_1 Vdout1_1ck204 = 0 time = 1025
.meas tran vdout1_1ck204 FIND v(dout1_1) AT=1025.025n

* CHECK dout1_2 Vdout1_2ck204 = 1.1 time = 1025
.meas tran vdout1_2ck204 FIND v(dout1_2) AT=1025.025n

* CHECK dout1_3 Vdout1_3ck204 = 1.1 time = 1025
.meas tran vdout1_3ck204 FIND v(dout1_3) AT=1025.025n

* CHECK dout1_4 Vdout1_4ck204 = 1.1 time = 1025
.meas tran vdout1_4ck204 FIND v(dout1_4) AT=1025.025n

* CHECK dout1_5 Vdout1_5ck204 = 1.1 time = 1025
.meas tran vdout1_5ck204 FIND v(dout1_5) AT=1025.025n

* CHECK dout1_6 Vdout1_6ck204 = 0 time = 1025
.meas tran vdout1_6ck204 FIND v(dout1_6) AT=1025.025n

* CHECK dout1_7 Vdout1_7ck204 = 0 time = 1025
.meas tran vdout1_7ck204 FIND v(dout1_7) AT=1025.025n

* CHECK dout1_8 Vdout1_8ck204 = 0 time = 1025
.meas tran vdout1_8ck204 FIND v(dout1_8) AT=1025.025n

* CHECK dout1_9 Vdout1_9ck204 = 1.1 time = 1025
.meas tran vdout1_9ck204 FIND v(dout1_9) AT=1025.025n

* CHECK dout1_10 Vdout1_10ck204 = 0 time = 1025
.meas tran vdout1_10ck204 FIND v(dout1_10) AT=1025.025n

* CHECK dout1_11 Vdout1_11ck204 = 1.1 time = 1025
.meas tran vdout1_11ck204 FIND v(dout1_11) AT=1025.025n

* CHECK dout1_12 Vdout1_12ck204 = 1.1 time = 1025
.meas tran vdout1_12ck204 FIND v(dout1_12) AT=1025.025n

* CHECK dout1_13 Vdout1_13ck204 = 1.1 time = 1025
.meas tran vdout1_13ck204 FIND v(dout1_13) AT=1025.025n

* CHECK dout1_14 Vdout1_14ck204 = 1.1 time = 1025
.meas tran vdout1_14ck204 FIND v(dout1_14) AT=1025.025n

* CHECK dout1_15 Vdout1_15ck204 = 0 time = 1025
.meas tran vdout1_15ck204 FIND v(dout1_15) AT=1025.025n

* CHECK dout1_16 Vdout1_16ck204 = 1.1 time = 1025
.meas tran vdout1_16ck204 FIND v(dout1_16) AT=1025.025n

* CHECK dout1_17 Vdout1_17ck204 = 0 time = 1025
.meas tran vdout1_17ck204 FIND v(dout1_17) AT=1025.025n

* CHECK dout1_18 Vdout1_18ck204 = 0 time = 1025
.meas tran vdout1_18ck204 FIND v(dout1_18) AT=1025.025n

* CHECK dout1_19 Vdout1_19ck204 = 1.1 time = 1025
.meas tran vdout1_19ck204 FIND v(dout1_19) AT=1025.025n

* CHECK dout1_20 Vdout1_20ck204 = 1.1 time = 1025
.meas tran vdout1_20ck204 FIND v(dout1_20) AT=1025.025n

* CHECK dout1_21 Vdout1_21ck204 = 0 time = 1025
.meas tran vdout1_21ck204 FIND v(dout1_21) AT=1025.025n

* CHECK dout1_22 Vdout1_22ck204 = 0 time = 1025
.meas tran vdout1_22ck204 FIND v(dout1_22) AT=1025.025n

* CHECK dout1_23 Vdout1_23ck204 = 1.1 time = 1025
.meas tran vdout1_23ck204 FIND v(dout1_23) AT=1025.025n

* CHECK dout1_24 Vdout1_24ck204 = 1.1 time = 1025
.meas tran vdout1_24ck204 FIND v(dout1_24) AT=1025.025n

* CHECK dout1_25 Vdout1_25ck204 = 1.1 time = 1025
.meas tran vdout1_25ck204 FIND v(dout1_25) AT=1025.025n

* CHECK dout1_26 Vdout1_26ck204 = 0 time = 1025
.meas tran vdout1_26ck204 FIND v(dout1_26) AT=1025.025n

* CHECK dout1_27 Vdout1_27ck204 = 0 time = 1025
.meas tran vdout1_27ck204 FIND v(dout1_27) AT=1025.025n

* CHECK dout1_28 Vdout1_28ck204 = 1.1 time = 1025
.meas tran vdout1_28ck204 FIND v(dout1_28) AT=1025.025n

* CHECK dout1_29 Vdout1_29ck204 = 0 time = 1025
.meas tran vdout1_29ck204 FIND v(dout1_29) AT=1025.025n

* CHECK dout1_30 Vdout1_30ck204 = 1.1 time = 1025
.meas tran vdout1_30ck204 FIND v(dout1_30) AT=1025.025n

* CHECK dout1_31 Vdout1_31ck204 = 0 time = 1025
.meas tran vdout1_31ck204 FIND v(dout1_31) AT=1025.025n

* probe is used for hspice/xa, while plot is used in ngspice
*.probe V(*)
*.plot V(*)
.end

