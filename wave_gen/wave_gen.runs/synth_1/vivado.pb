
u
Command: %s
53*	vivadotcl2D
0synth_design -top wave_gen -part xc7k70tfbg676-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7k70t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7k70t2default:defaultZ17-349h px? 
V
Loading part %s157*device2#
xc7k70tfbg676-12default:defaultZ21-403h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
121082default:defaultZ8-7075h px? 
?
Pparameter declaration becomes local in %s with formal parameter declaration list2507*oasys2
	cmd_parse2default:default2e
OC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/cmd_parse.v2default:default2
952default:default8@Z8-2507h px? 
?
%s*synth2?
xStarting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1185.809 ; gain = 29.109
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2
wave_gen2default:default2
 2default:default2d
NC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/wave_gen.v2default:default2
322default:default8@Z8-6157h px? 
c
%s
*synth2K
7	Parameter BAUD_RATE bound to: 115200 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter CLOCK_RATE_RX bound to: 200000000 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter CLOCK_RATE_TX bound to: 166667000 - type: integer 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter PW bound to: 3 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter NSAMP_WID bound to: 10 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
IBUF2default:default2
 2default:default2K
5C:/Xilinx/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
329832default:default8@Z8-6157h px? 
g
%s
*synth2O
;	Parameter CAPACITANCE bound to: DONT_CARE - type: string 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter IBUF_DELAY_VALUE bound to: 0 - type: string 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter IBUF_LOW_PWR bound to: TRUE - type: string 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter IFD_DELAY_VALUE bound to: AUTO - type: string 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter IOSTANDARD bound to: DEFAULT - type: string 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
IBUF2default:default2
 2default:default2
12default:default2
12default:default2K
5C:/Xilinx/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
329832default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
OBUF2default:default2
 2default:default2K
5C:/Xilinx/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
463182default:default8@Z8-6157h px? 
g
%s
*synth2O
;	Parameter CAPACITANCE bound to: DONT_CARE - type: string 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter DRIVE bound to: 12 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter IOSTANDARD bound to: DEFAULT - type: string 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter SLEW bound to: SLOW - type: string 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
OBUF2default:default2
 2default:default2
22default:default2
12default:default2K
5C:/Xilinx/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
463182default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
clk_gen2default:default2
 2default:default2c
MC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/clk_gen.v2default:default2
332default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
clk_div2default:default2
 2default:default2c
MC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/clk_div.v2default:default2
302default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
clk_div2default:default2
 2default:default2
32default:default2
12default:default2c
MC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/clk_div.v2default:default2
302default:default8@Z8-6155h px? 
?
synthesizing module '%s'638*oasys2
clk_core2default:default2w
aC:/prj/tcl/wave_gen/wave_gen.runs/synth_1/.Xil/Vivado-8252-fae-server/realtime/clk_core_stub.vhdl2default:default2
172default:default8@Z8-638h px? 
?
synthesizing module '%s'%s4497*oasys2
BUFHCE2default:default2
 2default:default2K
5C:/Xilinx/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
13292default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter CE_TYPE bound to: SYNC - type: string 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter INIT_OUT bound to: 0 - type: integer 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter IS_CE_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BUFHCE2default:default2
 2default:default2
42default:default2
12default:default2K
5C:/Xilinx/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
13292default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
clk_gen2default:default2
 2default:default2
52default:default2
12default:default2c
MC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/clk_gen.v2default:default2
332default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
rst_gen2default:default2
 2default:default2c
MC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/rst_gen.v2default:default2
262default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2 
reset_bridge2default:default2
 2default:default2h
RC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/reset_bridge.v2default:default2
352default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
reset_bridge2default:default2
 2default:default2
62default:default2
12default:default2h
RC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/reset_bridge.v2default:default2
352default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
rst_gen2default:default2
 2default:default2
72default:default2
12default:default2c
MC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/rst_gen.v2default:default2
262default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
uart_rx2default:default2
 2default:default2c
MC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/uart_rx.v2default:default2
372default:default8@Z8-6157h px? 
c
%s
*synth2K
7	Parameter BAUD_RATE bound to: 115200 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter CLOCK_RATE bound to: 200000000 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
meta_harden2default:default2
 2default:default2g
QC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/meta_harden.v2default:default2
272default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
meta_harden2default:default2
 2default:default2
82default:default2
12default:default2g
QC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/meta_harden.v2default:default2
272default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2!
uart_baud_gen2default:default2
 2default:default2i
SC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/uart_baud_gen.v2default:default2
352default:default8@Z8-6157h px? 
c
%s
*synth2K
7	Parameter BAUD_RATE bound to: 115200 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter CLOCK_RATE bound to: 200000000 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter OVERSAMPLE_RATE bound to: 1843200 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter DIVIDER bound to: 109 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter OVERSAMPLE_VALUE bound to: 108 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter CNT_WID bound to: 7 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
uart_baud_gen2default:default2
 2default:default2
92default:default2
12default:default2i
SC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/uart_baud_gen.v2default:default2
352default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
uart_rx_ctl2default:default2
 2default:default2g
QC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/uart_rx_ctl.v2default:default2
522default:default8@Z8-6157h px? 
M
%s
*synth25
!	Parameter IDLE bound to: 2'b00 
2default:defaulth p
x
? 
N
%s
*synth26
"	Parameter START bound to: 2'b01 
2default:defaulth p
x
? 
M
%s
*synth25
!	Parameter DATA bound to: 2'b10 
2default:defaulth p
x
? 
M
%s
*synth25
!	Parameter STOP bound to: 2'b11 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
uart_rx_ctl2default:default2
 2default:default2
102default:default2
12default:default2g
QC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/uart_rx_ctl.v2default:default2
522default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
uart_rx2default:default2
 2default:default2
112default:default2
12default:default2c
MC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/uart_rx.v2default:default2
372default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
	cmd_parse2default:default2
 2default:default2e
OC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/cmd_parse.v2default:default2
372default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter NSAMP_WID bound to: 10 - type: integer 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter PW bound to: 3 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter NSAMP_MIN bound to: 1 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter NSAMP_MAX bound to: 1024 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter PRESCALE_MIN bound to: 32 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter SPEED_MIN bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter RAM_MAX bound to: 1023 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter SAMP_WID bound to: 16 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter PRE_WID bound to: 16 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter SPD_WID bound to: 16 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter MAX_ARG_CH bound to: 8 - type: integer 
2default:defaulth p
x
? 
P
%s
*synth28
$	Parameter RESP_OK bound to: 2'b00 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter RESP_ERR bound to: 2'b01 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter RESP_DATA bound to: 2'b11 
2default:defaulth p
x
? 
N
%s
*synth26
"	Parameter IDLE bound to: 3'b000 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter CMD_WAIT bound to: 3'b001 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter GET_ARG bound to: 3'b010 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter READ_RAM bound to: 3'b011 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter READ_RAM2 bound to: 3'b100 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter SEND_RESP bound to: 3'b101 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter CMD_W bound to: 7'b1010111 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter CMD_R bound to: 7'b1010010 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter CMD_N bound to: 7'b1001110 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter CMD_P bound to: 7'b1010000 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter CMD_S bound to: 7'b1010011 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter CMD_n_l bound to: 7'b1101110 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter CMD_p_l bound to: 7'b1110000 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter CMD_s_l bound to: 7'b1110011 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter CMD_G bound to: 7'b1000111 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter CMD_C bound to: 7'b1000011 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter CMD_H bound to: 7'b1001000 
2default:defaulth p
x
? 
?
-case statement is not full and has no default155*oasys2e
OC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/cmd_parse.v2default:default2
3652default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	cmd_parse2default:default2
 2default:default2
122default:default2
12default:default2e
OC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/cmd_parse.v2default:default2
372default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
samp_ram2default:default2
 2default:default2d
NC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/samp_ram.v2default:default2
252default:default8@Z8-6157h px? 
`
%s
*synth2H
4	Parameter DATA_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter ADDR_WIDTH bound to: 10 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
samp_ram2default:default2
 2default:default2
132default:default2
12default:default2d
NC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/samp_ram.v2default:default2
252default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
resp_gen2default:default2
 2default:default2d
NC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/resp_gen.v2default:default2
412default:default8@Z8-6157h px? 
P
%s
*synth28
$	Parameter RESP_OK bound to: 2'b00 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter RESP_ERR bound to: 2'b01 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter RESP_DATA bound to: 2'b11 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter STR_OK_LEN bound to: 5 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter STR_ERR_LEN bound to: 6 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter STR_DATA_LEN bound to: 13 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter STR_LEN bound to: 13 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter CNT_WID bound to: 4 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter LEN_WID bound to: 4 - type: integer 
2default:defaulth p
x
? 
L
%s
*synth24
 	Parameter IDLE bound to: 1'b0 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter SENDING bound to: 1'b1 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
to_bcd2default:default2
 2default:default2b
LC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/to_bcd.v2default:default2
332default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
to_bcd2default:default2
 2default:default2
142default:default2
12default:default2b
LC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/to_bcd.v2default:default2
332default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
resp_gen2default:default2
 2default:default2
152default:default2
12default:default2d
NC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/resp_gen.v2default:default2
412default:default8@Z8-6155h px? 
?
synthesizing module '%s'638*oasys2
	char_fifo2default:default2x
bC:/prj/tcl/wave_gen/wave_gen.runs/synth_1/.Xil/Vivado-8252-fae-server/realtime/char_fifo_stub.vhdl2default:default2
222default:default8@Z8-638h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
wr_rst_busy2default:default2
	char_fifo2default:default2 
char_fifo_i02default:default2d
NC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/wave_gen.v2default:default2
3392default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
rd_rst_busy2default:default2
	char_fifo2default:default2 
char_fifo_i02default:default2d
NC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/wave_gen.v2default:default2
3392default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2 
char_fifo_i02default:default2
	char_fifo2default:default2
112default:default2
92default:default2d
NC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/wave_gen.v2default:default2
3392default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys2
uart_tx2default:default2
 2default:default2c
MC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/uart_tx.v2default:default2
352default:default8@Z8-6157h px? 
c
%s
*synth2K
7	Parameter BAUD_RATE bound to: 115200 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter CLOCK_RATE bound to: 166667000 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys21
uart_baud_gen__parameterized02default:default2
 2default:default2i
SC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/uart_baud_gen.v2default:default2
352default:default8@Z8-6157h px? 
c
%s
*synth2K
7	Parameter BAUD_RATE bound to: 115200 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter CLOCK_RATE bound to: 166667000 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter OVERSAMPLE_RATE bound to: 1843200 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter DIVIDER bound to: 90 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter OVERSAMPLE_VALUE bound to: 89 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter CNT_WID bound to: 7 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
uart_baud_gen__parameterized02default:default2
 2default:default2
152default:default2
12default:default2i
SC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/uart_baud_gen.v2default:default2
352default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
uart_tx_ctl2default:default2
 2default:default2g
QC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/uart_tx_ctl.v2default:default2
602default:default8@Z8-6157h px? 
M
%s
*synth25
!	Parameter IDLE bound to: 2'b00 
2default:defaulth p
x
? 
N
%s
*synth26
"	Parameter START bound to: 2'b01 
2default:defaulth p
x
? 
M
%s
*synth25
!	Parameter DATA bound to: 2'b10 
2default:defaulth p
x
? 
M
%s
*synth25
!	Parameter STOP bound to: 2'b11 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
uart_tx_ctl2default:default2
 2default:default2
162default:default2
12default:default2g
QC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/uart_tx_ctl.v2default:default2
602default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
uart_tx2default:default2
 2default:default2
172default:default2
12default:default2c
MC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/uart_tx.v2default:default2
352default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
lb_ctl2default:default2
 2default:default2b
LC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/lb_ctl.v2default:default2
322default:default8@Z8-6157h px? 
`
%s
*synth2H
4	Parameter FILTER bound to: 200000 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
	debouncer2default:default2
 2default:default2e
OC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/debouncer.v2default:default2
262default:default8@Z8-6157h px? 
`
%s
*synth2H
4	Parameter FILTER bound to: 200000 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter RELOAD bound to: 199999 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter FILTER_WIDTH bound to: 18 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	debouncer2default:default2
 2default:default2
182default:default2
12default:default2e
OC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/debouncer.v2default:default2
262default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
lb_ctl2default:default2
 2default:default2
192default:default2
12default:default2b
LC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/lb_ctl.v2default:default2
322default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
clkx_bus2default:default2
 2default:default2d
NC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/clkx_bus.v2default:default2
342default:default8@Z8-6157h px? 
W
%s
*synth2?
+	Parameter PW bound to: 3 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter WIDTH bound to: 11 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
clkx_bus2default:default2
 2default:default2
202default:default2
12default:default2d
NC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/clkx_bus.v2default:default2
342default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2,
clkx_bus__parameterized02default:default2
 2default:default2d
NC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/clkx_bus.v2default:default2
342default:default8@Z8-6157h px? 
W
%s
*synth2?
+	Parameter PW bound to: 3 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
clkx_bus__parameterized02default:default2
 2default:default2
202default:default2
12default:default2d
NC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/clkx_bus.v2default:default2
342default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
samp_gen2default:default2
 2default:default2d
NC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/samp_gen.v2default:default2
432default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter NSAMP_WID bound to: 10 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
samp_gen2default:default2
 2default:default2
212default:default2
12default:default2d
NC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/samp_gen.v2default:default2
432default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
dac_spi2default:default2
 2default:default2c
MC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/dac_spi.v2default:default2
322default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2 
out_ddr_flop2default:default2
 2default:default2h
RC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/out_ddr_flop.v2default:default2
282default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
ODDR2default:default2
 2default:default2K
5C:/Xilinx/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
497912default:default8@Z8-6157h px? 
l
%s
*synth2T
@	Parameter DDR_CLK_EDGE bound to: OPPOSITE_EDGE - type: string 
2default:defaulth p
x
? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter IS_C_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter IS_D1_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter IS_D2_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter SRTYPE bound to: SYNC - type: string 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ODDR2default:default2
 2default:default2
222default:default2
12default:default2K
5C:/Xilinx/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
497912default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
out_ddr_flop2default:default2
 2default:default2
232default:default2
12default:default2h
RC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/out_ddr_flop.v2default:default2
282default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
dac_spi2default:default2
 2default:default2
242default:default2
12default:default2c
MC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/dac_spi.v2default:default2
322default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
wave_gen2default:default2
 2default:default2
252default:default2
12default:default2d
NC:/prj/tcl/wave_gen/wave_gen.srcs/sources_1/imports/Sources/kintex7/wave_gen.v2default:default2
322default:default8@Z8-6155h px? 
?
%s*synth2?
xFinished RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:06 . Memory (MB): peak = 1253.895 ; gain = 97.195
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1271.770 ; gain = 115.070
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1271.770 ; gain = 115.070
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0282default:default2
1283.8132default:default2
0.0002default:defaultZ17-268h px? 
e
-Analyzing %s Unisim elements for replacement
17*netlist2
12default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2m
Wc:/prj/tcl/wave_gen/wave_gen.gen/sources_1/ip/clk_core/clk_core/clk_core_in_context.xdc2default:default2,
clk_gen_i0/clk_core_i0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2m
Wc:/prj/tcl/wave_gen/wave_gen.gen/sources_1/ip/clk_core/clk_core/clk_core_in_context.xdc2default:default2,
clk_gen_i0/clk_core_i0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2p
Zc:/prj/tcl/wave_gen/wave_gen.gen/sources_1/ip/char_fifo/char_fifo/char_fifo_in_context.xdc2default:default2"
char_fifo_i0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2p
Zc:/prj/tcl/wave_gen/wave_gen.gen/sources_1/ip/char_fifo/char_fifo/char_fifo_in_context.xdc2default:default2"
char_fifo_i0	2default:default8Z20-847h px? 
?
Parsing XDC File [%s]
179*designutils2m
WC:/prj/tcl/wave_gen/wave_gen.srcs/constrs_1/imports/xc7k70tfbg676-1/wave_gen_timing.xdc2default:default8Z20-179h px? 
?
?%s: no pin(s)/port(s)/net(s) specified as objects, only virtual clock '%s' will be created. If you don't want this, please specify pin(s)/ports(s)/net(s) as objects to the command.
483*constraints2 
create_clock2default:default2!
virtual_clock2default:default2m
WC:/prj/tcl/wave_gen/wave_gen.srcs/constrs_1/imports/xc7k70tfbg676-1/wave_gen_timing.xdc2default:default2
72default:default8@Z18-483h px?
?
eUse of '%s' with '%s' is not supported by synthesis. The constraint will not be passed to synthesis.
1199*designutils2'
set_multicycle_path2default:default2
-hold2default:default2m
WC:/prj/tcl/wave_gen/wave_gen.srcs/constrs_1/imports/xc7k70tfbg676-1/wave_gen_timing.xdc2default:default2
232default:default8@Z20-1567h px? 
?
eUse of '%s' with '%s' is not supported by synthesis. The constraint will not be passed to synthesis.
1199*designutils2'
set_multicycle_path2default:default2
-hold2default:default2m
WC:/prj/tcl/wave_gen/wave_gen.srcs/constrs_1/imports/xc7k70tfbg676-1/wave_gen_timing.xdc2default:default2
262default:default8@Z20-1567h px? 
?
eUse of '%s' with '%s' is not supported by synthesis. The constraint will not be passed to synthesis.
1199*designutils2'
set_multicycle_path2default:default2
-hold2default:default2m
WC:/prj/tcl/wave_gen/wave_gen.srcs/constrs_1/imports/xc7k70tfbg676-1/wave_gen_timing.xdc2default:default2
342default:default8@Z20-1567h px? 
?
Finished Parsing XDC File [%s]
178*designutils2m
WC:/prj/tcl/wave_gen/wave_gen.srcs/constrs_1/imports/xc7k70tfbg676-1/wave_gen_timing.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2k
WC:/prj/tcl/wave_gen/wave_gen.srcs/constrs_1/imports/xc7k70tfbg676-1/wave_gen_timing.xdc2default:default2.
.Xil/wave_gen_propImpl.xdc2default:defaultZ1-236h px? 
?
Parsing XDC File [%s]
179*designutils2k
UC:/prj/tcl/wave_gen/wave_gen.srcs/constrs_1/imports/xc7k70tfbg676-1/wave_gen_pins.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2k
UC:/prj/tcl/wave_gen/wave_gen.srcs/constrs_1/imports/xc7k70tfbg676-1/wave_gen_pins.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2i
UC:/prj/tcl/wave_gen/wave_gen.srcs/constrs_1/imports/xc7k70tfbg676-1/wave_gen_pins.xdc2default:default2.
.Xil/wave_gen_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1385.7732default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0172default:default2
1385.7732default:default2
0.0002default:defaultZ17-268h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
10.0002default:default2 
char_fifo_i02default:default2
rd_clk2default:default2
6.0002default:defaultZ38-316h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
Finished Constraint Validation : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 1386.762 ; gain = 230.063
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Loading part: xc7k70tfbg676-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 1386.762 ; gain = 230.063
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 1386.762 ; gain = 230.063
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2
uart_rx_ctl2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2
	cmd_parse2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2
uart_tx_ctl2default:defaultZ8-802h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE1 |                               00 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_                  iSTATE |                               01 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE0 |                               10 |                               10
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE2 |                               11 |                               11
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2
uart_rx_ctl2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                    IDLE |                              000 |                              000
2default:defaulth p
x
? 
?
%s
*synth2s
_                CMD_WAIT |                              001 |                              001
2default:defaulth p
x
? 
?
%s
*synth2s
_                 GET_ARG |                              010 |                              010
2default:defaulth p
x
? 
?
%s
*synth2s
_                READ_RAM |                              011 |                              011
2default:defaulth p
x
? 
?
%s
*synth2s
_               READ_RAM2 |                              100 |                              100
2default:defaulth p
x
? 
?
%s
*synth2s
_               SEND_RESP |                              101 |                              101
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2
	cmd_parse2default:defaultZ8-3354h px? 
?
?The signal %s was recognized as a true dual port RAM template.
3473*oasys2-
"samp_ram:/mem_array_reg"2default:defaultZ8-3971h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE1 |                               00 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE2 |                               01 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_                  iSTATE |                               10 |                               10
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE0 |                               11 |                               11
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2
uart_tx_ctl2default:defaultZ8-3354h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:16 ; elapsed = 00:00:16 . Memory (MB): peak = 1386.762 ; gain = 230.063
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   18 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   16 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   14 Bit       Adders := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   11 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   10 Bit       Adders := 10    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit       Adders := 8     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    7 Bit       Adders := 11    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    5 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit       Adders := 12    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    3 Bit       Adders := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit       Adders := 4     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               28 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               19 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               18 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 12    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               11 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                5 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 64    
2default:defaulth p
x
? 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
? 
k
%s
*synth2S
?	              16K Bit	(1024 X 16 bit)          RAMs := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   19 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   18 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   6 Input   16 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   16 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   11 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 12    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  14 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   8 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    5 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    5 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 5     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input    3 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   6 Input    3 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    3 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    2 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 13    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   6 Input    2 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    2 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 58    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   6 Input    1 Bit        Muxes := 29    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input    1 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    1 Bit        Muxes := 2     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:36 ; elapsed = 00:00:37 . Memory (MB): peak = 1467.652 ; gain = 310.953
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
d
%s*synth2L
8
Block RAM: Preliminary Mapping	Report (see note below)
2default:defaulth px? 
?
%s*synth2?
?+------------+---------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth px? 
?
%s*synth2?
?|Module Name | RTL Object                | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | 
2default:defaulth px? 
?
%s*synth2?
?+------------+---------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth px? 
?
%s*synth2?
?|wave_gen    | samp_ram_i0/mem_array_reg | 1 K x 16(WRITE_FIRST)  | W | R | 1 K x 16(WRITE_FIRST)  |   | R | Port A and B     | 1      | 0      | 
2default:defaulth px? 
?
%s*synth2?
?+------------+---------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the Block RAMs at the current stage of the synthesis flow. Some Block RAMs may be reimplemented as non Block RAM primitives later in the synthesis flow. Multiple instantiated Block RAMs are reported only once. 
2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:43 ; elapsed = 00:00:44 . Memory (MB): peak = 1467.652 ; gain = 310.953
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Timing Optimization : Time (s): cpu = 00:01:13 ; elapsed = 00:01:14 . Memory (MB): peak = 1506.527 ; gain = 349.828
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!
Block RAM: Final Mapping	Report
2default:defaulth p
x
? 
?
%s
*synth2?
?+------------+---------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|Module Name | RTL Object                | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+------------+---------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|wave_gen    | samp_ram_i0/mem_array_reg | 1 K x 16(WRITE_FIRST)  | W | R | 1 K x 16(WRITE_FIRST)  |   | R | Port A and B     | 1      | 0      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+------------+---------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+

2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2-
samp_ram_i0/mem_array_reg2default:default2
Block2default:defaultZ8-7052h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Technology Mapping : Time (s): cpu = 00:01:14 ; elapsed = 00:01:15 . Memory (MB): peak = 1516.559 ; gain = 359.859
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
vFinished IO Insertion : Time (s): cpu = 00:01:18 ; elapsed = 00:01:19 . Memory (MB): peak = 1516.559 ; gain = 359.859
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:01:18 ; elapsed = 00:01:19 . Memory (MB): peak = 1516.559 ; gain = 359.859
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:01:18 ; elapsed = 00:01:19 . Memory (MB): peak = 1516.559 ; gain = 359.859
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:01:18 ; elapsed = 00:01:19 . Memory (MB): peak = 1516.559 ; gain = 359.859
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:01:18 ; elapsed = 00:01:19 . Memory (MB): peak = 1516.559 ; gain = 359.859
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:01:18 ; elapsed = 00:01:19 . Memory (MB): peak = 1516.559 ; gain = 359.859
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
O
%s
*synth27
#|      |BlackBox name |Instances |
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
O
%s
*synth27
#|1     |char_fifo     |         1|
2default:defaulth p
x
? 
O
%s
*synth27
#|2     |clk_core      |         1|
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
L
%s*synth24
 +------+---------------+------+
2default:defaulth px? 
L
%s*synth24
 |      |Cell           |Count |
2default:defaulth px? 
L
%s*synth24
 +------+---------------+------+
2default:defaulth px? 
L
%s*synth24
 |1     |char_fifo_bbox |     1|
2default:defaulth px? 
L
%s*synth24
 |2     |clk_core_bbox  |     1|
2default:defaulth px? 
L
%s*synth24
 |3     |BUFHCE         |     1|
2default:defaulth px? 
L
%s*synth24
 |4     |CARRY4         |    32|
2default:defaulth px? 
L
%s*synth24
 |5     |LUT1           |    54|
2default:defaulth px? 
L
%s*synth24
 |6     |LUT2           |    97|
2default:defaulth px? 
L
%s*synth24
 |7     |LUT3           |   155|
2default:defaulth px? 
L
%s*synth24
 |8     |LUT4           |    94|
2default:defaulth px? 
L
%s*synth24
 |9     |LUT5           |   124|
2default:defaulth px? 
L
%s*synth24
 |10    |LUT6           |   276|
2default:defaulth px? 
L
%s*synth24
 |11    |MUXF7          |     1|
2default:defaulth px? 
L
%s*synth24
 |12    |ODDR           |     1|
2default:defaulth px? 
L
%s*synth24
 |13    |RAMB18E1       |     1|
2default:defaulth px? 
L
%s*synth24
 |14    |FDPE           |     6|
2default:defaulth px? 
L
%s*synth24
 |15    |FDRE           |   414|
2default:defaulth px? 
L
%s*synth24
 |16    |FDSE           |    26|
2default:defaulth px? 
L
%s*synth24
 |17    |IBUF           |     3|
2default:defaulth px? 
L
%s*synth24
 |18    |OBUF           |    13|
2default:defaulth px? 
L
%s*synth24
 +------+---------------+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:01:18 ; elapsed = 00:01:19 . Memory (MB): peak = 1516.559 ; gain = 359.859
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 0 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Runtime : Time (s): cpu = 00:01:08 ; elapsed = 00:01:16 . Memory (MB): peak = 1516.559 ; gain = 244.867
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:01:18 ; elapsed = 00:01:19 . Memory (MB): peak = 1516.559 ; gain = 359.859
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0212default:default2
1516.5592default:default2
0.0002default:defaultZ17-268h px? 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
352default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1516.5592default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
842default:default2
82default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:01:252default:default2
00:01:282default:default2
1516.5592default:default2
359.8592default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2J
6C:/prj/tcl/wave_gen/wave_gen.runs/synth_1/wave_gen.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2z
fExecuting : report_utilization -file wave_gen_utilization_synth.rpt -pb wave_gen_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sat Mar 20 11:11:07 20212default:defaultZ17-206h px? 


End Record