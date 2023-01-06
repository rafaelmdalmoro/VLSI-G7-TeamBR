// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Dec 24 17:20:16 2022
// Host        : DESKTOP-Q90JH2A running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_Mux8x7Seg_0_0_sim_netlist.v
// Design      : design_1_Mux8x7Seg_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_divider
   (sclk,
    CLK,
    RESET);
  output sclk;
  input CLK;
  input RESET;

  wire CLK;
  wire RESET;
  wire [16:0]counter;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__2_n_1;
  wire counter0_carry__2_n_2;
  wire counter0_carry__2_n_3;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire \counter[16]_i_2_n_0 ;
  wire \counter[16]_i_3_n_0 ;
  wire \counter[16]_i_4_n_0 ;
  wire \counter[16]_i_5_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[10] ;
  wire \counter_reg_n_0_[11] ;
  wire \counter_reg_n_0_[12] ;
  wire \counter_reg_n_0_[13] ;
  wire \counter_reg_n_0_[14] ;
  wire \counter_reg_n_0_[15] ;
  wire \counter_reg_n_0_[16] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[5] ;
  wire \counter_reg_n_0_[6] ;
  wire \counter_reg_n_0_[7] ;
  wire \counter_reg_n_0_[8] ;
  wire \counter_reg_n_0_[9] ;
  wire [16:1]data0;
  wire sclk;
  wire sclk_i_1_n_0;
  wire [3:3]NLW_counter0_carry__2_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(\counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\counter_reg_n_0_[4] ,\counter_reg_n_0_[3] ,\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\counter_reg_n_0_[8] ,\counter_reg_n_0_[7] ,\counter_reg_n_0_[6] ,\counter_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\counter_reg_n_0_[12] ,\counter_reg_n_0_[11] ,\counter_reg_n_0_[10] ,\counter_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({NLW_counter0_carry__2_CO_UNCONNECTED[3],counter0_carry__2_n_1,counter0_carry__2_n_2,counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\counter_reg_n_0_[16] ,\counter_reg_n_0_[15] ,\counter_reg_n_0_[14] ,\counter_reg_n_0_[13] }));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__0 
       (.I0(\counter_reg_n_0_[0] ),
        .O(counter[0]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[10]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(data0[10]),
        .O(counter[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[11]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(data0[11]),
        .O(counter[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[12]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(data0[12]),
        .O(counter[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[13]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(data0[13]),
        .O(counter[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[14]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(data0[14]),
        .O(counter[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[15]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(data0[15]),
        .O(counter[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[16]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(data0[16]),
        .O(counter[16]));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \counter[16]_i_2 
       (.I0(\counter_reg_n_0_[4] ),
        .I1(\counter_reg_n_0_[3] ),
        .I2(\counter_reg_n_0_[5] ),
        .I3(\counter_reg_n_0_[6] ),
        .O(\counter[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFBF)) 
    \counter[16]_i_3 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter_reg_n_0_[15] ),
        .I2(\counter_reg_n_0_[16] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[1] ),
        .O(\counter[16]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[16]_i_4 
       (.I0(\counter_reg_n_0_[12] ),
        .I1(\counter_reg_n_0_[11] ),
        .I2(\counter_reg_n_0_[14] ),
        .I3(\counter_reg_n_0_[13] ),
        .O(\counter[16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \counter[16]_i_5 
       (.I0(\counter_reg_n_0_[7] ),
        .I1(\counter_reg_n_0_[8] ),
        .I2(\counter_reg_n_0_[10] ),
        .I3(\counter_reg_n_0_[9] ),
        .O(\counter[16]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[1]_i_1__0 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(data0[1]),
        .O(counter[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[2]_i_1__0 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(data0[2]),
        .O(counter[2]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[3]_i_1__0 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(data0[3]),
        .O(counter[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[4]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(data0[4]),
        .O(counter[4]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[5]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(data0[5]),
        .O(counter[5]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[6]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(data0[6]),
        .O(counter[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[7]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(data0[7]),
        .O(counter[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[8]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(data0[8]),
        .O(counter[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[9]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(data0[9]),
        .O(counter[9]));
  FDPE #(
    .INIT(1'b1)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(counter[0]),
        .PRE(RESET),
        .Q(\counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RESET),
        .D(counter[10]),
        .Q(\counter_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RESET),
        .D(counter[11]),
        .Q(\counter_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RESET),
        .D(counter[12]),
        .Q(\counter_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RESET),
        .D(counter[13]),
        .Q(\counter_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RESET),
        .D(counter[14]),
        .Q(\counter_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RESET),
        .D(counter[15]),
        .Q(\counter_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RESET),
        .D(counter[16]),
        .Q(\counter_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RESET),
        .D(counter[1]),
        .Q(\counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RESET),
        .D(counter[2]),
        .Q(\counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RESET),
        .D(counter[3]),
        .Q(\counter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RESET),
        .D(counter[4]),
        .Q(\counter_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RESET),
        .D(counter[5]),
        .Q(\counter_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RESET),
        .D(counter[6]),
        .Q(\counter_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RESET),
        .D(counter[7]),
        .Q(\counter_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RESET),
        .D(counter[8]),
        .Q(\counter_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RESET),
        .D(counter[9]),
        .Q(\counter_reg_n_0_[9] ));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    sclk_i_1
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(sclk),
        .O(sclk_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    sclk_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(RESET),
        .D(sclk_i_1_n_0),
        .Q(sclk));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_Mux8x7Seg_0_0,mux_8x7seg,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "mux_8x7seg,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    RESET,
    d0,
    d1,
    d2,
    d3,
    d4,
    d5,
    d6,
    d7,
    SEG,
    AN,
    DP);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RESET, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RESET RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input RESET;
  input [6:0]d0;
  input [6:0]d1;
  input [6:0]d2;
  input [6:0]d3;
  input [6:0]d4;
  input [6:0]d5;
  input [6:0]d6;
  input [6:0]d7;
  output [6:0]SEG;
  output [7:0]AN;
  output DP;

  wire \<const1> ;
  wire [7:0]AN;
  wire CLK;
  wire RESET;
  wire [6:0]SEG;
  wire [6:0]d0;
  wire [6:0]d1;
  wire [6:0]d2;
  wire [6:0]d3;
  wire [6:0]d4;
  wire [6:0]d5;
  wire [6:0]d6;
  wire [6:0]d7;

  assign DP = \<const1> ;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mux_8x7seg U0
       (.AN(AN),
        .CLK(CLK),
        .RESET(RESET),
        .SEG(SEG),
        .d0(d0),
        .d1(d1),
        .d2(d2),
        .d3(d3),
        .d4(d4),
        .d5(d5),
        .d6(d6),
        .d7(d7));
  VCC VCC
       (.P(\<const1> ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mux_8x7seg
   (SEG,
    AN,
    RESET,
    CLK,
    d7,
    d6,
    d5,
    d4,
    d3,
    d2,
    d1,
    d0);
  output [6:0]SEG;
  output [7:0]AN;
  input RESET;
  input CLK;
  input [6:0]d7;
  input [6:0]d6;
  input [6:0]d5;
  input [6:0]d4;
  input [6:0]d3;
  input [6:0]d2;
  input [6:0]d1;
  input [6:0]d0;

  wire [7:0]AN;
  wire \AN[0]_i_1_n_0 ;
  wire \AN[1]_i_1_n_0 ;
  wire \AN[2]_i_1_n_0 ;
  wire \AN[3]_i_1_n_0 ;
  wire \AN[4]_i_1_n_0 ;
  wire \AN[5]_i_1_n_0 ;
  wire \AN[6]_i_1_n_0 ;
  wire \AN[7]_i_1_n_0 ;
  wire \AN[7]_i_2_n_0 ;
  wire CLK;
  wire RESET;
  wire [6:0]SEG;
  wire [6:0]bcd;
  wire \bcd[0]_i_3_n_0 ;
  wire \bcd[0]_i_4_n_0 ;
  wire \bcd[1]_i_3_n_0 ;
  wire \bcd[1]_i_4_n_0 ;
  wire \bcd[2]_i_3_n_0 ;
  wire \bcd[2]_i_4_n_0 ;
  wire \bcd[3]_i_3_n_0 ;
  wire \bcd[3]_i_4_n_0 ;
  wire \bcd[4]_i_3_n_0 ;
  wire \bcd[4]_i_4_n_0 ;
  wire \bcd[5]_i_3_n_0 ;
  wire \bcd[5]_i_4_n_0 ;
  wire \bcd[6]_i_1_n_0 ;
  wire \bcd[6]_i_4_n_0 ;
  wire \bcd[6]_i_5_n_0 ;
  wire \bcd_reg[0]_i_2_n_0 ;
  wire \bcd_reg[1]_i_2_n_0 ;
  wire \bcd_reg[2]_i_2_n_0 ;
  wire \bcd_reg[3]_i_2_n_0 ;
  wire \bcd_reg[4]_i_2_n_0 ;
  wire \bcd_reg[5]_i_2_n_0 ;
  wire \bcd_reg[6]_i_3_n_0 ;
  wire [3:0]counter;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[3]_i_1_n_0 ;
  wire [6:0]d0;
  wire [6:0]d1;
  wire [6:0]d2;
  wire [6:0]d3;
  wire [6:0]d4;
  wire [6:0]d5;
  wire [6:0]d6;
  wire [6:0]d7;
  wire sclk;

  LUT6 #(
    .INIT(64'hAAAAFFFCAAAAFFFF)) 
    \AN[0]_i_1 
       (.I0(AN[0]),
        .I1(counter[2]),
        .I2(counter[1]),
        .I3(counter[0]),
        .I4(RESET),
        .I5(counter[3]),
        .O(\AN[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \AN[1]_i_1 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(counter[2]),
        .O(\AN[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \AN[2]_i_1 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(counter[2]),
        .O(\AN[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \AN[3]_i_1 
       (.I0(counter[0]),
        .I1(counter[1]),
        .I2(counter[2]),
        .O(\AN[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \AN[4]_i_1 
       (.I0(counter[0]),
        .I1(counter[1]),
        .I2(counter[2]),
        .O(\AN[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \AN[5]_i_1 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(counter[2]),
        .O(\AN[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \AN[6]_i_1 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(counter[2]),
        .O(\AN[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \AN[7]_i_1 
       (.I0(counter[3]),
        .I1(RESET),
        .O(\AN[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \AN[7]_i_2 
       (.I0(counter[0]),
        .I1(counter[1]),
        .I2(counter[2]),
        .O(\AN[7]_i_2_n_0 ));
  FDRE \AN_reg[0] 
       (.C(sclk),
        .CE(1'b1),
        .D(\AN[0]_i_1_n_0 ),
        .Q(AN[0]),
        .R(1'b0));
  FDSE \AN_reg[1] 
       (.C(sclk),
        .CE(\bcd[6]_i_1_n_0 ),
        .D(\AN[1]_i_1_n_0 ),
        .Q(AN[1]),
        .S(\AN[7]_i_1_n_0 ));
  FDSE \AN_reg[2] 
       (.C(sclk),
        .CE(\bcd[6]_i_1_n_0 ),
        .D(\AN[2]_i_1_n_0 ),
        .Q(AN[2]),
        .S(\AN[7]_i_1_n_0 ));
  FDSE \AN_reg[3] 
       (.C(sclk),
        .CE(\bcd[6]_i_1_n_0 ),
        .D(\AN[3]_i_1_n_0 ),
        .Q(AN[3]),
        .S(\AN[7]_i_1_n_0 ));
  FDSE \AN_reg[4] 
       (.C(sclk),
        .CE(\bcd[6]_i_1_n_0 ),
        .D(\AN[4]_i_1_n_0 ),
        .Q(AN[4]),
        .S(\AN[7]_i_1_n_0 ));
  FDSE \AN_reg[5] 
       (.C(sclk),
        .CE(\bcd[6]_i_1_n_0 ),
        .D(\AN[5]_i_1_n_0 ),
        .Q(AN[5]),
        .S(\AN[7]_i_1_n_0 ));
  FDSE \AN_reg[6] 
       (.C(sclk),
        .CE(\bcd[6]_i_1_n_0 ),
        .D(\AN[6]_i_1_n_0 ),
        .Q(AN[6]),
        .S(\AN[7]_i_1_n_0 ));
  FDSE \AN_reg[7] 
       (.C(sclk),
        .CE(\bcd[6]_i_1_n_0 ),
        .D(\AN[7]_i_2_n_0 ),
        .Q(AN[7]),
        .S(\AN[7]_i_1_n_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_divider CLK256Hz
       (.CLK(CLK),
        .RESET(RESET),
        .sclk(sclk));
  LUT6 #(
    .INIT(64'h0100FFFF01000000)) 
    \bcd[0]_i_1 
       (.I0(counter[2]),
        .I1(counter[0]),
        .I2(counter[1]),
        .I3(d7[0]),
        .I4(counter[3]),
        .I5(\bcd_reg[0]_i_2_n_0 ),
        .O(bcd[0]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \bcd[0]_i_3 
       (.I0(d2[0]),
        .I1(d1[0]),
        .I2(counter[1]),
        .I3(d0[0]),
        .I4(counter[0]),
        .O(\bcd[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bcd[0]_i_4 
       (.I0(d6[0]),
        .I1(d5[0]),
        .I2(counter[1]),
        .I3(d4[0]),
        .I4(counter[0]),
        .I5(d3[0]),
        .O(\bcd[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0100FFFF01000000)) 
    \bcd[1]_i_1 
       (.I0(counter[2]),
        .I1(counter[0]),
        .I2(counter[1]),
        .I3(d7[1]),
        .I4(counter[3]),
        .I5(\bcd_reg[1]_i_2_n_0 ),
        .O(bcd[1]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \bcd[1]_i_3 
       (.I0(d2[1]),
        .I1(d1[1]),
        .I2(counter[1]),
        .I3(d0[1]),
        .I4(counter[0]),
        .O(\bcd[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bcd[1]_i_4 
       (.I0(d6[1]),
        .I1(d5[1]),
        .I2(counter[1]),
        .I3(d4[1]),
        .I4(counter[0]),
        .I5(d3[1]),
        .O(\bcd[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0100FFFF01000000)) 
    \bcd[2]_i_1 
       (.I0(counter[2]),
        .I1(counter[0]),
        .I2(counter[1]),
        .I3(d7[2]),
        .I4(counter[3]),
        .I5(\bcd_reg[2]_i_2_n_0 ),
        .O(bcd[2]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \bcd[2]_i_3 
       (.I0(d2[2]),
        .I1(d1[2]),
        .I2(counter[1]),
        .I3(d0[2]),
        .I4(counter[0]),
        .O(\bcd[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bcd[2]_i_4 
       (.I0(d6[2]),
        .I1(d5[2]),
        .I2(counter[1]),
        .I3(d4[2]),
        .I4(counter[0]),
        .I5(d3[2]),
        .O(\bcd[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0100FFFF01000000)) 
    \bcd[3]_i_1 
       (.I0(counter[2]),
        .I1(counter[0]),
        .I2(counter[1]),
        .I3(d7[3]),
        .I4(counter[3]),
        .I5(\bcd_reg[3]_i_2_n_0 ),
        .O(bcd[3]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \bcd[3]_i_3 
       (.I0(d2[3]),
        .I1(d1[3]),
        .I2(counter[1]),
        .I3(d0[3]),
        .I4(counter[0]),
        .O(\bcd[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bcd[3]_i_4 
       (.I0(d6[3]),
        .I1(d5[3]),
        .I2(counter[1]),
        .I3(d4[3]),
        .I4(counter[0]),
        .I5(d3[3]),
        .O(\bcd[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0100FFFF01000000)) 
    \bcd[4]_i_1 
       (.I0(counter[2]),
        .I1(counter[0]),
        .I2(counter[1]),
        .I3(d7[4]),
        .I4(counter[3]),
        .I5(\bcd_reg[4]_i_2_n_0 ),
        .O(bcd[4]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \bcd[4]_i_3 
       (.I0(d2[4]),
        .I1(d1[4]),
        .I2(counter[1]),
        .I3(d0[4]),
        .I4(counter[0]),
        .O(\bcd[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bcd[4]_i_4 
       (.I0(d6[4]),
        .I1(d5[4]),
        .I2(counter[1]),
        .I3(d4[4]),
        .I4(counter[0]),
        .I5(d3[4]),
        .O(\bcd[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0100FFFF01000000)) 
    \bcd[5]_i_1 
       (.I0(counter[2]),
        .I1(counter[0]),
        .I2(counter[1]),
        .I3(d7[5]),
        .I4(counter[3]),
        .I5(\bcd_reg[5]_i_2_n_0 ),
        .O(bcd[5]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \bcd[5]_i_3 
       (.I0(d2[5]),
        .I1(d1[5]),
        .I2(counter[1]),
        .I3(d0[5]),
        .I4(counter[0]),
        .O(\bcd[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bcd[5]_i_4 
       (.I0(d6[5]),
        .I1(d5[5]),
        .I2(counter[1]),
        .I3(d4[5]),
        .I4(counter[0]),
        .I5(d3[5]),
        .O(\bcd[5]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bcd[6]_i_1 
       (.I0(RESET),
        .O(\bcd[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0100FFFF01000000)) 
    \bcd[6]_i_2 
       (.I0(counter[2]),
        .I1(counter[0]),
        .I2(counter[1]),
        .I3(d7[6]),
        .I4(counter[3]),
        .I5(\bcd_reg[6]_i_3_n_0 ),
        .O(bcd[6]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \bcd[6]_i_4 
       (.I0(d2[6]),
        .I1(d1[6]),
        .I2(counter[1]),
        .I3(d0[6]),
        .I4(counter[0]),
        .O(\bcd[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bcd[6]_i_5 
       (.I0(d6[6]),
        .I1(d5[6]),
        .I2(counter[1]),
        .I3(d4[6]),
        .I4(counter[0]),
        .I5(d3[6]),
        .O(\bcd[6]_i_5_n_0 ));
  FDRE \bcd_reg[0] 
       (.C(sclk),
        .CE(\bcd[6]_i_1_n_0 ),
        .D(bcd[0]),
        .Q(SEG[0]),
        .R(1'b0));
  MUXF7 \bcd_reg[0]_i_2 
       (.I0(\bcd[0]_i_3_n_0 ),
        .I1(\bcd[0]_i_4_n_0 ),
        .O(\bcd_reg[0]_i_2_n_0 ),
        .S(counter[2]));
  FDRE \bcd_reg[1] 
       (.C(sclk),
        .CE(\bcd[6]_i_1_n_0 ),
        .D(bcd[1]),
        .Q(SEG[1]),
        .R(1'b0));
  MUXF7 \bcd_reg[1]_i_2 
       (.I0(\bcd[1]_i_3_n_0 ),
        .I1(\bcd[1]_i_4_n_0 ),
        .O(\bcd_reg[1]_i_2_n_0 ),
        .S(counter[2]));
  FDRE \bcd_reg[2] 
       (.C(sclk),
        .CE(\bcd[6]_i_1_n_0 ),
        .D(bcd[2]),
        .Q(SEG[2]),
        .R(1'b0));
  MUXF7 \bcd_reg[2]_i_2 
       (.I0(\bcd[2]_i_3_n_0 ),
        .I1(\bcd[2]_i_4_n_0 ),
        .O(\bcd_reg[2]_i_2_n_0 ),
        .S(counter[2]));
  FDRE \bcd_reg[3] 
       (.C(sclk),
        .CE(\bcd[6]_i_1_n_0 ),
        .D(bcd[3]),
        .Q(SEG[3]),
        .R(1'b0));
  MUXF7 \bcd_reg[3]_i_2 
       (.I0(\bcd[3]_i_3_n_0 ),
        .I1(\bcd[3]_i_4_n_0 ),
        .O(\bcd_reg[3]_i_2_n_0 ),
        .S(counter[2]));
  FDRE \bcd_reg[4] 
       (.C(sclk),
        .CE(\bcd[6]_i_1_n_0 ),
        .D(bcd[4]),
        .Q(SEG[4]),
        .R(1'b0));
  MUXF7 \bcd_reg[4]_i_2 
       (.I0(\bcd[4]_i_3_n_0 ),
        .I1(\bcd[4]_i_4_n_0 ),
        .O(\bcd_reg[4]_i_2_n_0 ),
        .S(counter[2]));
  FDRE \bcd_reg[5] 
       (.C(sclk),
        .CE(\bcd[6]_i_1_n_0 ),
        .D(bcd[5]),
        .Q(SEG[5]),
        .R(1'b0));
  MUXF7 \bcd_reg[5]_i_2 
       (.I0(\bcd[5]_i_3_n_0 ),
        .I1(\bcd[5]_i_4_n_0 ),
        .O(\bcd_reg[5]_i_2_n_0 ),
        .S(counter[2]));
  FDRE \bcd_reg[6] 
       (.C(sclk),
        .CE(\bcd[6]_i_1_n_0 ),
        .D(bcd[6]),
        .Q(SEG[6]),
        .R(1'b0));
  MUXF7 \bcd_reg[6]_i_3 
       (.I0(\bcd[6]_i_4_n_0 ),
        .I1(\bcd[6]_i_5_n_0 ),
        .O(\bcd_reg[6]_i_3_n_0 ),
        .S(counter[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .O(\counter[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(counter[1]),
        .I1(counter[0]),
        .O(\counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \counter[2]_i_1 
       (.I0(counter[2]),
        .I1(counter[0]),
        .I2(counter[1]),
        .O(\counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AA8)) 
    \counter[3]_i_1 
       (.I0(counter[3]),
        .I1(counter[0]),
        .I2(counter[1]),
        .I3(counter[2]),
        .O(\counter[3]_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \counter_reg[0] 
       (.C(sclk),
        .CE(1'b1),
        .D(\counter[0]_i_1_n_0 ),
        .PRE(RESET),
        .Q(counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(sclk),
        .CE(1'b1),
        .CLR(RESET),
        .D(\counter[1]_i_1_n_0 ),
        .Q(counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(sclk),
        .CE(1'b1),
        .CLR(RESET),
        .D(\counter[2]_i_1_n_0 ),
        .Q(counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(sclk),
        .CE(1'b1),
        .CLR(RESET),
        .D(\counter[3]_i_1_n_0 ),
        .Q(counter[3]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
