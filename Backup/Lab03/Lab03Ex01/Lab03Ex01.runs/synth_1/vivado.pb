
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:172default:default2
00:00:252default:default2
381.8162default:default2
76.6992default:defaultZ17-268h px? 
?
Command: %s
1870*	planAhead2?
?read_checkpoint -auto_incremental -incremental {C:/Users/Luiz H/Documents/GitHub/VLSI-G7-TeamBR/Lab03/Lab03Ex01/Lab03Ex01.srcs/utils_1/imports/synth_1/top_module.dcp}2default:defaultZ12-2866h px? 
?
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2?
uC:/Users/Luiz H/Documents/GitHub/VLSI-G7-TeamBR/Lab03/Lab03Ex01/Lab03Ex01.srcs/utils_1/imports/synth_1/top_module.dcp2default:defaultZ12-5825h px? 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px? 
x
Command: %s
53*	vivadotcl2G
3synth_design -top top_module -part xc7a100tcsg324-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px? 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px? 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
128722default:defaultZ8-7075h px? 
?
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2[
EC:/Xilinx/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px? 
?
%s*synth2?
yStarting RTL Elaboration : Time (s): cpu = 00:00:10 ; elapsed = 00:00:12 . Memory (MB): peak = 1210.684 ; gain = 409.488
2default:defaulth px? 
?
synthesizing module '%s'638*oasys2

top_module2default:default2?
tC:/Users/Luiz H/Documents/GitHub/VLSI-G7-TeamBR/Lab03/Lab03Ex01/Lab03Ex01.srcs/sources_1/imports/Ex02/top_module.vhd2default:default2
432default:default8@Z8-638h px? 
a
%s
*synth2I
5	Parameter limit bound to: 50000000 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
clk_divider2default:default2?
zC:/Users/Luiz H/Documents/GitHub/VLSI-G7-TeamBR/Lab03/Lab03Ex01/Lab03Ex01.srcs/sources_1/imports/Reusables/clk_divider.vhd2default:default2
52default:default2
CLK_1Hz2default:default2
clk_divider2default:default2?
tC:/Users/Luiz H/Documents/GitHub/VLSI-G7-TeamBR/Lab03/Lab03Ex01/Lab03Ex01.srcs/sources_1/imports/Ex02/top_module.vhd2default:default2
812default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
clk_divider2default:default2?
zC:/Users/Luiz H/Documents/GitHub/VLSI-G7-TeamBR/Lab03/Lab03Ex01/Lab03Ex01.srcs/sources_1/imports/Reusables/clk_divider.vhd2default:default2
122default:default8@Z8-638h px? 
a
%s
*synth2I
5	Parameter limit bound to: 50000000 - type: integer 
2default:defaulth p
x
? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
clk_divider2default:default2
02default:default2
12default:default2?
zC:/Users/Luiz H/Documents/GitHub/VLSI-G7-TeamBR/Lab03/Lab03Ex01/Lab03Ex01.srcs/sources_1/imports/Reusables/clk_divider.vhd2default:default2
122default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2(
decoder_4bit_to_7seg2default:default2?
?C:/Users/Luiz H/Documents/GitHub/VLSI-G7-TeamBR/Lab03/Lab03Ex01/Lab03Ex01.srcs/sources_1/imports/Reusables/decoder_4bit_to_7seg.vhd2default:default2
52default:default2
DECODER2default:default2(
decoder_4bit_to_7seg2default:default2?
tC:/Users/Luiz H/Documents/GitHub/VLSI-G7-TeamBR/Lab03/Lab03Ex01/Lab03Ex01.srcs/sources_1/imports/Ex02/top_module.vhd2default:default2
892default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2(
decoder_4bit_to_7seg2default:default2?
?C:/Users/Luiz H/Documents/GitHub/VLSI-G7-TeamBR/Lab03/Lab03Ex01/Lab03Ex01.srcs/sources_1/imports/Reusables/decoder_4bit_to_7seg.vhd2default:default2
102default:default8@Z8-638h px? 
?
default block is never used226*oasys2?
?C:/Users/Luiz H/Documents/GitHub/VLSI-G7-TeamBR/Lab03/Lab03Ex01/Lab03Ex01.srcs/sources_1/imports/Reusables/decoder_4bit_to_7seg.vhd2default:default2
172default:default8@Z8-226h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2(
decoder_4bit_to_7seg2default:default2
02default:default2
12default:default2?
?C:/Users/Luiz H/Documents/GitHub/VLSI-G7-TeamBR/Lab03/Lab03Ex01/Lab03Ex01.srcs/sources_1/imports/Reusables/decoder_4bit_to_7seg.vhd2default:default2
102default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

mux_8x7seg2default:default2?
yC:/Users/Luiz H/Documents/GitHub/VLSI-G7-TeamBR/Lab03/Lab03Ex01/Lab03Ex01.srcs/sources_1/imports/Reusables/mux_8x7seg.vhd2default:default2
42default:default2
MUX2default:default2

mux_8x7seg2default:default2?
tC:/Users/Luiz H/Documents/GitHub/VLSI-G7-TeamBR/Lab03/Lab03Ex01/Lab03Ex01.srcs/sources_1/imports/Ex02/top_module.vhd2default:default2
952default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2

mux_8x7seg2default:default2?
yC:/Users/Luiz H/Documents/GitHub/VLSI-G7-TeamBR/Lab03/Lab03Ex01/Lab03Ex01.srcs/sources_1/imports/Reusables/mux_8x7seg.vhd2default:default2
192default:default8@Z8-638h px? 
_
%s
*synth2G
3	Parameter limit bound to: 250000 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
clk_divider2default:default2?
zC:/Users/Luiz H/Documents/GitHub/VLSI-G7-TeamBR/Lab03/Lab03Ex01/Lab03Ex01.srcs/sources_1/imports/Reusables/clk_divider.vhd2default:default2
52default:default2
CLK256Hz2default:default2
clk_divider2default:default2?
yC:/Users/Luiz H/Documents/GitHub/VLSI-G7-TeamBR/Lab03/Lab03Ex01/Lab03Ex01.srcs/sources_1/imports/Reusables/mux_8x7seg.vhd2default:default2
342default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2/
clk_divider__parameterized12default:default2?
zC:/Users/Luiz H/Documents/GitHub/VLSI-G7-TeamBR/Lab03/Lab03Ex01/Lab03Ex01.srcs/sources_1/imports/Reusables/clk_divider.vhd2default:default2
122default:default8@Z8-638h px? 
_
%s
*synth2G
3	Parameter limit bound to: 250000 - type: integer 
2default:defaulth p
x
? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2/
clk_divider__parameterized12default:default2
02default:default2
12default:default2?
zC:/Users/Luiz H/Documents/GitHub/VLSI-G7-TeamBR/Lab03/Lab03Ex01/Lab03Ex01.srcs/sources_1/imports/Reusables/clk_divider.vhd2default:default2
122default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2

mux_8x7seg2default:default2
02default:default2
12default:default2?
yC:/Users/Luiz H/Documents/GitHub/VLSI-G7-TeamBR/Lab03/Lab03Ex01/Lab03Ex01.srcs/sources_1/imports/Reusables/mux_8x7seg.vhd2default:default2
192default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2

top_module2default:default2
02default:default2
12default:default2?
tC:/Users/Luiz H/Documents/GitHub/VLSI-G7-TeamBR/Lab03/Lab03Ex01/Lab03Ex01.srcs/sources_1/imports/Ex02/top_module.vhd2default:default2
432default:default8@Z8-256h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d2[3]2default:default2

mux_8x7seg2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d2[2]2default:default2

mux_8x7seg2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d2[1]2default:default2

mux_8x7seg2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d2[0]2default:default2

mux_8x7seg2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d3[3]2default:default2

mux_8x7seg2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d3[2]2default:default2

mux_8x7seg2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d3[1]2default:default2

mux_8x7seg2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d3[0]2default:default2

mux_8x7seg2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d4[3]2default:default2

mux_8x7seg2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d4[2]2default:default2

mux_8x7seg2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d4[1]2default:default2

mux_8x7seg2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d4[0]2default:default2

mux_8x7seg2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d5[3]2default:default2

mux_8x7seg2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d5[2]2default:default2

mux_8x7seg2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d5[1]2default:default2

mux_8x7seg2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d5[0]2default:default2

mux_8x7seg2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d6[3]2default:default2

mux_8x7seg2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d6[2]2default:default2

mux_8x7seg2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d6[1]2default:default2

mux_8x7seg2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d6[0]2default:default2

mux_8x7seg2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d7[3]2default:default2

mux_8x7seg2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d7[2]2default:default2

mux_8x7seg2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d7[1]2default:default2

mux_8x7seg2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
d7[0]2default:default2

mux_8x7seg2default:defaultZ8-7129h px? 
?
%s*synth2?
yFinished RTL Elaboration : Time (s): cpu = 00:00:15 ; elapsed = 00:00:18 . Memory (MB): peak = 1300.785 ; gain = 499.590
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:15 ; elapsed = 00:00:18 . Memory (MB): peak = 1300.785 ; gain = 499.590
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
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:15 ; elapsed = 00:00:18 . Memory (MB): peak = 1300.785 ; gain = 499.590
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
00:00:00.0072default:default2
1300.7852default:default2
0.0002default:defaultZ17-268h px? 
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
Parsing XDC File [%s]
179*designutils2?
?C:/Users/Luiz H/Documents/GitHub/VLSI-G7-TeamBR/Lab03/Lab03Ex01/Lab03Ex01.srcs/constrs_1/imports/Reusables/Nexys-A7-100T-Master.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2?
?C:/Users/Luiz H/Documents/GitHub/VLSI-G7-TeamBR/Lab03/Lab03Ex01/Lab03Ex01.srcs/constrs_1/imports/Reusables/Nexys-A7-100T-Master.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2?
?C:/Users/Luiz H/Documents/GitHub/VLSI-G7-TeamBR/Lab03/Lab03Ex01/Lab03Ex01.srcs/constrs_1/imports/Reusables/Nexys-A7-100T-Master.xdc2default:default20
.Xil/top_module_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1334.3552default:default2
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
00:00:00.0032default:default2
1334.3552default:default2
0.0002default:defaultZ17-268h px? 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
?
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2[
EC:/Xilinx/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
Finished Constraint Validation : Time (s): cpu = 00:00:34 ; elapsed = 00:00:38 . Memory (MB): peak = 1334.355 ; gain = 533.160
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
K
%s
*synth23
Loading part: xc7a100tcsg324-1
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
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:34 ; elapsed = 00:00:38 . Memory (MB): peak = 1334.355 ; gain = 533.160
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
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:34 ; elapsed = 00:00:38 . Memory (MB): peak = 1334.355 ; gain = 533.160
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
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:35 ; elapsed = 00:00:39 . Memory (MB): peak = 1334.355 ; gain = 533.160
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
,	   2 Input   26 Bit       Adders := 1     
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
,	   2 Input    4 Bit       Adders := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit       Adders := 1     
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
.	               26 Bit    Registers := 1     
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
.	                8 Bit    Registers := 1     
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
.	                2 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
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
,	   2 Input   26 Bit        Muxes := 1     
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
,	   3 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 1     
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
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:41 ; elapsed = 00:00:45 . Memory (MB): peak = 1334.355 ; gain = 533.160
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
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:53 ; elapsed = 00:00:57 . Memory (MB): peak = 1334.355 ; gain = 533.160
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
}Finished Timing Optimization : Time (s): cpu = 00:00:53 ; elapsed = 00:00:58 . Memory (MB): peak = 1334.355 ; gain = 533.160
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
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Technology Mapping : Time (s): cpu = 00:00:54 ; elapsed = 00:00:58 . Memory (MB): peak = 1334.355 ; gain = 533.160
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
vFinished IO Insertion : Time (s): cpu = 00:01:04 ; elapsed = 00:01:08 . Memory (MB): peak = 1334.355 ; gain = 533.160
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
?Finished Renaming Generated Instances : Time (s): cpu = 00:01:04 ; elapsed = 00:01:08 . Memory (MB): peak = 1334.355 ; gain = 533.160
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
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:01:04 ; elapsed = 00:01:09 . Memory (MB): peak = 1334.355 ; gain = 533.160
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
?Finished Renaming Generated Ports : Time (s): cpu = 00:01:04 ; elapsed = 00:01:09 . Memory (MB): peak = 1334.355 ; gain = 533.160
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:01:04 ; elapsed = 00:01:09 . Memory (MB): peak = 1334.355 ; gain = 533.160
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
?Finished Renaming Generated Nets : Time (s): cpu = 00:01:04 ; elapsed = 00:01:09 . Memory (MB): peak = 1334.355 ; gain = 533.160
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
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|1     |BUFG   |     1|
2default:defaulth px? 
D
%s*synth2,
|2     |CARRY4 |    12|
2default:defaulth px? 
D
%s*synth2,
|3     |LUT1   |     7|
2default:defaulth px? 
D
%s*synth2,
|4     |LUT2   |    27|
2default:defaulth px? 
D
%s*synth2,
|5     |LUT4   |    19|
2default:defaulth px? 
D
%s*synth2,
|6     |LUT5   |     8|
2default:defaulth px? 
D
%s*synth2,
|7     |LUT6   |     5|
2default:defaulth px? 
D
%s*synth2,
|8     |FDCE   |    34|
2default:defaulth px? 
D
%s*synth2,
|9     |FDPE   |     1|
2default:defaulth px? 
D
%s*synth2,
|10    |FDRE   |    25|
2default:defaulth px? 
D
%s*synth2,
|11    |FDSE   |     2|
2default:defaulth px? 
D
%s*synth2,
|12    |IBUF   |     4|
2default:defaulth px? 
D
%s*synth2,
|13    |OBUF   |    15|
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
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
?Finished Writing Synthesis Report : Time (s): cpu = 00:01:04 ; elapsed = 00:01:09 . Memory (MB): peak = 1334.355 ; gain = 533.160
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
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Runtime : Time (s): cpu = 00:00:44 ; elapsed = 00:01:03 . Memory (MB): peak = 1334.355 ; gain = 499.590
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:01:04 ; elapsed = 00:01:09 . Memory (MB): peak = 1334.355 ; gain = 533.160
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
00:00:00.0022default:default2
1336.2662default:default2
0.0002default:defaultZ17-268h px? 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
122default:defaultZ29-17h px? 
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
1340.9302default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
b747d7092default:defaultZ4-1430h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
382default:default2
252default:default2
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
00:01:182default:default2
00:01:322default:default2
1340.9302default:default2
935.2702default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2y
eC:/Users/Luiz H/Documents/GitHub/VLSI-G7-TeamBR/Lab03/Lab03Ex01/Lab03Ex01.runs/synth_1/top_module.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2~
jExecuting : report_utilization -file top_module_utilization_synth.rpt -pb top_module_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Thu Nov 17 15:55:11 20222default:defaultZ17-206h px? 


End Record