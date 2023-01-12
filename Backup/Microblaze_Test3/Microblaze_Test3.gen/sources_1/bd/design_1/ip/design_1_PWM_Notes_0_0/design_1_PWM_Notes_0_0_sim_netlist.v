// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue Jan 10 14:24:21 2023
// Host        : DESKTOP-Q90JH2A running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/vikto/Experiments/Microblaze_Test3/Microblaze_Test3.gen/sources_1/bd/design_1/ip/design_1_PWM_Notes_0_0/design_1_PWM_Notes_0_0_sim_netlist.v
// Design      : design_1_PWM_Notes_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_PWM_Notes_0_0,top,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "top,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module design_1_PWM_Notes_0_0
   (CLK,
    RESET,
    PWM_EN,
    NOTE,
    AUD_PWM);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RESET, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RESET RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input RESET;
  input PWM_EN;
  input [3:0]NOTE;
  output AUD_PWM;

  wire AUD_PWM;
  wire CLK;
  wire [3:0]NOTE;
  wire PWM_EN;
  wire RESET;

  design_1_PWM_Notes_0_0_top U0
       (.AUD_PWM(AUD_PWM),
        .CLK(CLK),
        .NOTE(NOTE),
        .PWM_EN(PWM_EN),
        .RESET(RESET));
endmodule

(* ORIG_REF_NAME = "pwm" *) 
module design_1_PWM_Notes_0_0_pwm
   (AUD_PWM,
    AR,
    CLK,
    Q,
    RESET,
    PWM_EN);
  output AUD_PWM;
  output [0:0]AR;
  input CLK;
  input [6:0]Q;
  input RESET;
  input PWM_EN;

  wire [0:0]AR;
  wire AUD_PWM;
  wire CLK;
  wire PWM_EN;
  wire [6:0]Q;
  wire RESET;
  wire \count[0][5]_i_2_n_0 ;
  wire \count[0][5]_i_3_n_0 ;
  wire \count[0][7]_i_2_n_0 ;
  wire \count[0][7]_i_3_n_0 ;
  wire \count[0][9]_i_2_n_0 ;
  wire [9:0]\count[0]_0 ;
  wire [9:0]\count_reg[0] ;
  wire half_duty_new0;
  wire [8:0]half_duty_new_reg__0;
  wire half_duty_new_reg_n_100;
  wire half_duty_new_reg_n_101;
  wire half_duty_new_reg_n_102;
  wire half_duty_new_reg_n_103;
  wire half_duty_new_reg_n_104;
  wire half_duty_new_reg_n_105;
  wire half_duty_new_reg_n_97;
  wire half_duty_new_reg_n_98;
  wire half_duty_new_reg_n_99;
  wire \half_duty_reg[0]0 ;
  wire pwm_out0_carry_i_1_n_0;
  wire pwm_out0_carry_i_2_n_0;
  wire pwm_out0_carry_i_3_n_0;
  wire pwm_out0_carry_i_4_n_0;
  wire pwm_out0_carry_i_5_n_0;
  wire pwm_out0_carry_i_6_n_0;
  wire pwm_out0_carry_i_7_n_0;
  wire pwm_out0_carry_i_8_n_0;
  wire pwm_out0_carry_i_9_n_0;
  wire pwm_out0_carry_n_0;
  wire pwm_out0_carry_n_1;
  wire pwm_out0_carry_n_2;
  wire pwm_out0_carry_n_3;
  wire pwm_out1_carry_i_1_n_0;
  wire pwm_out1_carry_i_2_n_0;
  wire pwm_out1_carry_i_3_n_0;
  wire pwm_out1_carry_i_4_n_0;
  wire pwm_out1_carry_n_0;
  wire pwm_out1_carry_n_1;
  wire pwm_out1_carry_n_2;
  wire pwm_out1_carry_n_3;
  wire \pwm_out[0]_i_1_n_0 ;
  wire NLW_half_duty_new_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_half_duty_new_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_half_duty_new_reg_OVERFLOW_UNCONNECTED;
  wire NLW_half_duty_new_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_half_duty_new_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_half_duty_new_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_half_duty_new_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_half_duty_new_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_half_duty_new_reg_CARRYOUT_UNCONNECTED;
  wire [47:18]NLW_half_duty_new_reg_P_UNCONNECTED;
  wire [47:0]NLW_half_duty_new_reg_PCOUT_UNCONNECTED;
  wire [3:0]NLW_pwm_out0_carry_O_UNCONNECTED;
  wire [3:0]NLW_pwm_out1_carry_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0][0]_i_1 
       (.I0(\count_reg[0] [0]),
        .O(\count[0]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[0][1]_i_1 
       (.I0(\count_reg[0] [0]),
        .I1(\count_reg[0] [1]),
        .O(\count[0]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[0][2]_i_1 
       (.I0(\count_reg[0] [1]),
        .I1(\count_reg[0] [0]),
        .I2(\count_reg[0] [2]),
        .O(\count[0]_0 [2]));
  LUT6 #(
    .INIT(64'hFFFF00000000FF7F)) 
    \count[0][3]_i_1 
       (.I0(\count_reg[0] [5]),
        .I1(\count_reg[0] [6]),
        .I2(\count_reg[0] [7]),
        .I3(\count[0][7]_i_3_n_0 ),
        .I4(\count[0][5]_i_3_n_0 ),
        .I5(\count_reg[0] [3]),
        .O(\count[0]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[0][4]_i_1 
       (.I0(\count_reg[0] [3]),
        .I1(\count_reg[0] [1]),
        .I2(\count_reg[0] [0]),
        .I3(\count_reg[0] [2]),
        .I4(\count_reg[0] [4]),
        .O(\count[0]_0 [4]));
  LUT6 #(
    .INIT(64'hF0F0F0F00FF0E0E0)) 
    \count[0][5]_i_1 
       (.I0(\count[0][7]_i_3_n_0 ),
        .I1(\count[0][5]_i_2_n_0 ),
        .I2(\count_reg[0] [5]),
        .I3(\count_reg[0] [4]),
        .I4(\count_reg[0] [3]),
        .I5(\count[0][5]_i_3_n_0 ),
        .O(\count[0]_0 [5]));
  LUT2 #(
    .INIT(4'h7)) 
    \count[0][5]_i_2 
       (.I0(\count_reg[0] [6]),
        .I1(\count_reg[0] [7]),
        .O(\count[0][5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \count[0][5]_i_3 
       (.I0(\count_reg[0] [1]),
        .I1(\count_reg[0] [0]),
        .I2(\count_reg[0] [2]),
        .O(\count[0][5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC3C3CCC4CCCCCCC4)) 
    \count[0][6]_i_1 
       (.I0(\count_reg[0] [7]),
        .I1(\count_reg[0] [6]),
        .I2(\count[0][7]_i_2_n_0 ),
        .I3(\count[0][7]_i_3_n_0 ),
        .I4(\count_reg[0] [3]),
        .I5(\count_reg[0] [4]),
        .O(\count[0]_0 [6]));
  LUT6 #(
    .INIT(64'hC6C6CCC4CCCCCCC4)) 
    \count[0][7]_i_1 
       (.I0(\count_reg[0] [6]),
        .I1(\count_reg[0] [7]),
        .I2(\count[0][7]_i_2_n_0 ),
        .I3(\count[0][7]_i_3_n_0 ),
        .I4(\count_reg[0] [3]),
        .I5(\count_reg[0] [4]),
        .O(\count[0]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \count[0][7]_i_2 
       (.I0(\count_reg[0] [2]),
        .I1(\count_reg[0] [0]),
        .I2(\count_reg[0] [1]),
        .I3(\count_reg[0] [5]),
        .O(\count[0][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \count[0][7]_i_3 
       (.I0(\count_reg[0] [9]),
        .I1(\count_reg[0] [4]),
        .I2(\count_reg[0] [8]),
        .O(\count[0][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAA68AA6A)) 
    \count[0][8]_i_1 
       (.I0(\count_reg[0] [8]),
        .I1(\count_reg[0] [4]),
        .I2(\count_reg[0] [3]),
        .I3(\count[0][9]_i_2_n_0 ),
        .I4(\count_reg[0] [9]),
        .O(\count[0]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAAAA68AA)) 
    \count[0][9]_i_1 
       (.I0(\count_reg[0] [9]),
        .I1(\count_reg[0] [4]),
        .I2(\count_reg[0] [3]),
        .I3(\count_reg[0] [8]),
        .I4(\count[0][9]_i_2_n_0 ),
        .O(\count[0]_0 [9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \count[0][9]_i_2 
       (.I0(\count_reg[0] [5]),
        .I1(\count_reg[0] [1]),
        .I2(\count_reg[0] [0]),
        .I3(\count_reg[0] [2]),
        .I4(\count_reg[0] [7]),
        .I5(\count_reg[0] [6]),
        .O(\count[0][9]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0][0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\count[0]_0 [0]),
        .Q(\count_reg[0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0][1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\count[0]_0 [1]),
        .Q(\count_reg[0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0][2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\count[0]_0 [2]),
        .Q(\count_reg[0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0][3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\count[0]_0 [3]),
        .Q(\count_reg[0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0][4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\count[0]_0 [4]),
        .Q(\count_reg[0] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0][5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\count[0]_0 [5]),
        .Q(\count_reg[0] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0][6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\count[0]_0 [6]),
        .Q(\count_reg[0] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0][7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\count[0]_0 [7]),
        .Q(\count_reg[0] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0][8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\count[0]_0 [8]),
        .Q(\count_reg[0] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0][9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\count[0]_0 [9]),
        .Q(\count_reg[0] [9]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    half_duty_new_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_half_duty_new_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_half_duty_new_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_half_duty_new_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_half_duty_new_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(half_duty_new0),
        .CEP(\half_duty_reg[0]0 ),
        .CLK(CLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_half_duty_new_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_half_duty_new_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_half_duty_new_reg_P_UNCONNECTED[47:18],half_duty_new_reg__0,half_duty_new_reg_n_97,half_duty_new_reg_n_98,half_duty_new_reg_n_99,half_duty_new_reg_n_100,half_duty_new_reg_n_101,half_duty_new_reg_n_102,half_duty_new_reg_n_103,half_duty_new_reg_n_104,half_duty_new_reg_n_105}),
        .PATTERNBDETECT(NLW_half_duty_new_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_half_duty_new_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_half_duty_new_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_half_duty_new_reg_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'h8)) 
    half_duty_new_reg_i_1
       (.I0(RESET),
        .I1(PWM_EN),
        .O(half_duty_new0));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    half_duty_new_reg_i_2
       (.I0(\count_reg[0] [9]),
        .I1(\count_reg[0] [4]),
        .I2(\count_reg[0] [8]),
        .I3(RESET),
        .I4(\count_reg[0] [3]),
        .I5(\count[0][9]_i_2_n_0 ),
        .O(\half_duty_reg[0]0 ));
  CARRY4 pwm_out0_carry
       (.CI(1'b0),
        .CO({pwm_out0_carry_n_0,pwm_out0_carry_n_1,pwm_out0_carry_n_2,pwm_out0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_pwm_out0_carry_O_UNCONNECTED[3:0]),
        .S({pwm_out0_carry_i_1_n_0,pwm_out0_carry_i_2_n_0,pwm_out0_carry_i_3_n_0,pwm_out0_carry_i_4_n_0}));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    pwm_out0_carry_i_1
       (.I0(pwm_out0_carry_i_5_n_0),
        .I1(half_duty_new_reg__0[6]),
        .I2(half_duty_new_reg__0[5]),
        .I3(half_duty_new_reg__0[8]),
        .I4(half_duty_new_reg__0[7]),
        .I5(\count_reg[0] [9]),
        .O(pwm_out0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h4001022002200110)) 
    pwm_out0_carry_i_2
       (.I0(pwm_out0_carry_i_6_n_0),
        .I1(pwm_out0_carry_i_7_n_0),
        .I2(half_duty_new_reg__0[7]),
        .I3(\count_reg[0] [7]),
        .I4(\count_reg[0] [6]),
        .I5(half_duty_new_reg__0[6]),
        .O(pwm_out0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h1600800080000016)) 
    pwm_out0_carry_i_3
       (.I0(pwm_out0_carry_i_8_n_0),
        .I1(half_duty_new_reg__0[3]),
        .I2(\count_reg[0] [3]),
        .I3(pwm_out0_carry_i_9_n_0),
        .I4(\count_reg[0] [4]),
        .I5(half_duty_new_reg__0[4]),
        .O(pwm_out0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h0001188018800001)) 
    pwm_out0_carry_i_4
       (.I0(half_duty_new_reg__0[0]),
        .I1(\count_reg[0] [0]),
        .I2(\count_reg[0] [1]),
        .I3(half_duty_new_reg__0[1]),
        .I4(\count_reg[0] [2]),
        .I5(half_duty_new_reg__0[2]),
        .O(pwm_out0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hEEEEEEEA)) 
    pwm_out0_carry_i_5
       (.I0(half_duty_new_reg__0[4]),
        .I1(half_duty_new_reg__0[3]),
        .I2(half_duty_new_reg__0[2]),
        .I3(half_duty_new_reg__0[1]),
        .I4(half_duty_new_reg__0[0]),
        .O(pwm_out0_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h000001FFFFFFFFFF)) 
    pwm_out0_carry_i_6
       (.I0(half_duty_new_reg__0[0]),
        .I1(half_duty_new_reg__0[1]),
        .I2(half_duty_new_reg__0[2]),
        .I3(half_duty_new_reg__0[3]),
        .I4(half_duty_new_reg__0[4]),
        .I5(half_duty_new_reg__0[5]),
        .O(pwm_out0_carry_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h9)) 
    pwm_out0_carry_i_7
       (.I0(half_duty_new_reg__0[8]),
        .I1(\count_reg[0] [8]),
        .O(pwm_out0_carry_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    pwm_out0_carry_i_8
       (.I0(half_duty_new_reg__0[2]),
        .I1(half_duty_new_reg__0[1]),
        .I2(half_duty_new_reg__0[0]),
        .O(pwm_out0_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    pwm_out0_carry_i_9
       (.I0(half_duty_new_reg__0[5]),
        .I1(\count_reg[0] [5]),
        .O(pwm_out0_carry_i_9_n_0));
  CARRY4 pwm_out1_carry
       (.CI(1'b0),
        .CO({pwm_out1_carry_n_0,pwm_out1_carry_n_1,pwm_out1_carry_n_2,pwm_out1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_pwm_out1_carry_O_UNCONNECTED[3:0]),
        .S({pwm_out1_carry_i_1_n_0,pwm_out1_carry_i_2_n_0,pwm_out1_carry_i_3_n_0,pwm_out1_carry_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    pwm_out1_carry_i_1
       (.I0(\count_reg[0] [9]),
        .O(pwm_out1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pwm_out1_carry_i_2
       (.I0(half_duty_new_reg__0[8]),
        .I1(\count_reg[0] [8]),
        .I2(half_duty_new_reg__0[7]),
        .I3(\count_reg[0] [7]),
        .I4(\count_reg[0] [6]),
        .I5(half_duty_new_reg__0[6]),
        .O(pwm_out1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pwm_out1_carry_i_3
       (.I0(half_duty_new_reg__0[5]),
        .I1(\count_reg[0] [5]),
        .I2(half_duty_new_reg__0[4]),
        .I3(\count_reg[0] [4]),
        .I4(\count_reg[0] [3]),
        .I5(half_duty_new_reg__0[3]),
        .O(pwm_out1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h8241000000008241)) 
    pwm_out1_carry_i_4
       (.I0(\count_reg[0] [1]),
        .I1(\count_reg[0] [0]),
        .I2(half_duty_new_reg__0[0]),
        .I3(half_duty_new_reg__0[1]),
        .I4(half_duty_new_reg__0[2]),
        .I5(\count_reg[0] [2]),
        .O(pwm_out1_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h54)) 
    \pwm_out[0]_i_1 
       (.I0(pwm_out1_carry_n_0),
        .I1(pwm_out0_carry_n_0),
        .I2(AUD_PWM),
        .O(\pwm_out[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pwm_out[0]_i_2 
       (.I0(RESET),
        .O(AR));
  FDCE \pwm_out_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\pwm_out[0]_i_1_n_0 ),
        .Q(AUD_PWM));
endmodule

(* ORIG_REF_NAME = "top" *) 
module design_1_PWM_Notes_0_0_top
   (CLK,
    RESET,
    PWM_EN,
    NOTE,
    AUD_PWM);
  input CLK;
  input RESET;
  input PWM_EN;
  input [3:0]NOTE;
  output AUD_PWM;

  wire AUD_PWM;
  wire CLK;
  wire [3:0]NOTE;
  wire PWM_EN;
  wire PWM_GEN_n_1;
  wire RESET;
  wire clk;
  wire [1:1]counter0;
  wire \counter[7]_i_1_n_0 ;
  wire \counter[7]_i_3_n_0 ;
  wire \counter[7]_i_4_n_0 ;
  wire [7:1]counter_reg;
  wire dir_i_1_n_0;
  wire dir_reg_n_0;
  wire [7:2]p_0_in;
  wire sclk_i_1_n_0;
  wire [13:0]scounter;
  wire [13:1]scounter0;
  wire \scounter[0]_i_1_n_0 ;
  wire \scounter[10]_i_1_n_0 ;
  wire \scounter[11]_i_1_n_0 ;
  wire \scounter[12]_i_1_n_0 ;
  wire \scounter[13]_i_10_n_0 ;
  wire \scounter[13]_i_11_n_0 ;
  wire \scounter[13]_i_12_n_0 ;
  wire \scounter[13]_i_13_n_0 ;
  wire \scounter[13]_i_1_n_0 ;
  wire \scounter[13]_i_5_n_0 ;
  wire \scounter[13]_i_6_n_0 ;
  wire \scounter[13]_i_7_n_0 ;
  wire \scounter[13]_i_8_n_0 ;
  wire \scounter[13]_i_9_n_0 ;
  wire \scounter[1]_i_1_n_0 ;
  wire \scounter[2]_i_1_n_0 ;
  wire \scounter[3]_i_1_n_0 ;
  wire \scounter[4]_i_1_n_0 ;
  wire \scounter[5]_i_1_n_0 ;
  wire \scounter[6]_i_1_n_0 ;
  wire \scounter[7]_i_1_n_0 ;
  wire \scounter[8]_i_1_n_0 ;
  wire \scounter[9]_i_1_n_0 ;
  wire \scounter_reg[12]_i_2_n_0 ;
  wire \scounter_reg[12]_i_2_n_1 ;
  wire \scounter_reg[12]_i_2_n_2 ;
  wire \scounter_reg[12]_i_2_n_3 ;
  wire \scounter_reg[13]_i_3_n_3 ;
  wire \scounter_reg[13]_i_4_n_0 ;
  wire \scounter_reg[13]_i_4_n_1 ;
  wire \scounter_reg[13]_i_4_n_2 ;
  wire \scounter_reg[13]_i_4_n_3 ;
  wire \scounter_reg[4]_i_2_n_0 ;
  wire \scounter_reg[4]_i_2_n_1 ;
  wire \scounter_reg[4]_i_2_n_2 ;
  wire \scounter_reg[4]_i_2_n_3 ;
  wire \scounter_reg[8]_i_2_n_0 ;
  wire \scounter_reg[8]_i_2_n_1 ;
  wire \scounter_reg[8]_i_2_n_2 ;
  wire \scounter_reg[8]_i_2_n_3 ;
  wire [3:0]\NLW_scounter_reg[13]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_scounter_reg[13]_i_2_O_UNCONNECTED ;
  wire [3:1]\NLW_scounter_reg[13]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_scounter_reg[13]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_scounter_reg[13]_i_4_O_UNCONNECTED ;

  design_1_PWM_Notes_0_0_pwm PWM_GEN
       (.AR(PWM_GEN_n_1),
        .AUD_PWM(AUD_PWM),
        .CLK(CLK),
        .PWM_EN(PWM_EN),
        .Q(counter_reg),
        .RESET(RESET));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[1]_i_1 
       (.I0(counter_reg[1]),
        .O(counter0));
  LUT3 #(
    .INIT(8'h96)) 
    \counter[2]_i_1 
       (.I0(counter_reg[2]),
        .I1(counter_reg[1]),
        .I2(dir_reg_n_0),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h9AA6)) 
    \counter[3]_i_1 
       (.I0(counter_reg[3]),
        .I1(dir_reg_n_0),
        .I2(counter_reg[1]),
        .I3(counter_reg[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hF0E178F0)) 
    \counter[4]_i_1 
       (.I0(counter_reg[2]),
        .I1(counter_reg[1]),
        .I2(counter_reg[4]),
        .I3(counter_reg[3]),
        .I4(dir_reg_n_0),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hF078F0F0F0F0E1F0)) 
    \counter[5]_i_1 
       (.I0(counter_reg[2]),
        .I1(counter_reg[1]),
        .I2(counter_reg[5]),
        .I3(dir_reg_n_0),
        .I4(counter_reg[3]),
        .I5(counter_reg[4]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hAAA95AA9)) 
    \counter[6]_i_1 
       (.I0(counter_reg[6]),
        .I1(\counter[7]_i_3_n_0 ),
        .I2(counter_reg[2]),
        .I3(counter_reg[1]),
        .I4(\counter[7]_i_4_n_0 ),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[7]_i_1 
       (.I0(counter_reg[1]),
        .I1(counter_reg[2]),
        .I2(\counter[7]_i_3_n_0 ),
        .I3(counter_reg[6]),
        .I4(counter_reg[7]),
        .O(\counter[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000177FE8801)) 
    \counter[7]_i_2 
       (.I0(counter_reg[1]),
        .I1(counter_reg[2]),
        .I2(\counter[7]_i_3_n_0 ),
        .I3(counter_reg[6]),
        .I4(counter_reg[7]),
        .I5(\counter[7]_i_4_n_0 ),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \counter[7]_i_3 
       (.I0(counter_reg[4]),
        .I1(counter_reg[3]),
        .I2(dir_reg_n_0),
        .I3(counter_reg[5]),
        .O(\counter[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \counter[7]_i_4 
       (.I0(counter_reg[4]),
        .I1(dir_reg_n_0),
        .I2(counter_reg[3]),
        .I3(counter_reg[5]),
        .O(\counter[7]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk),
        .CE(\counter[7]_i_1_n_0 ),
        .CLR(PWM_GEN_n_1),
        .D(counter0),
        .Q(counter_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk),
        .CE(\counter[7]_i_1_n_0 ),
        .CLR(PWM_GEN_n_1),
        .D(p_0_in[2]),
        .Q(counter_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk),
        .CE(\counter[7]_i_1_n_0 ),
        .CLR(PWM_GEN_n_1),
        .D(p_0_in[3]),
        .Q(counter_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk),
        .CE(\counter[7]_i_1_n_0 ),
        .CLR(PWM_GEN_n_1),
        .D(p_0_in[4]),
        .Q(counter_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk),
        .CE(\counter[7]_i_1_n_0 ),
        .CLR(PWM_GEN_n_1),
        .D(p_0_in[5]),
        .Q(counter_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk),
        .CE(\counter[7]_i_1_n_0 ),
        .CLR(PWM_GEN_n_1),
        .D(p_0_in[6]),
        .Q(counter_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk),
        .CE(\counter[7]_i_1_n_0 ),
        .CLR(PWM_GEN_n_1),
        .D(p_0_in[7]),
        .Q(counter_reg[7]));
  LUT3 #(
    .INIT(8'hD0)) 
    dir_i_1
       (.I0(RESET),
        .I1(\counter[7]_i_1_n_0 ),
        .I2(dir_reg_n_0),
        .O(dir_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    dir_reg
       (.C(clk),
        .CE(1'b1),
        .D(dir_i_1_n_0),
        .Q(dir_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    sclk_i_1
       (.I0(\scounter_reg[13]_i_3_n_3 ),
        .I1(clk),
        .O(sclk_i_1_n_0));
  FDCE #(
    .INIT(1'b1)) 
    sclk_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(PWM_GEN_n_1),
        .D(sclk_i_1_n_0),
        .Q(clk));
  LUT2 #(
    .INIT(4'h1)) 
    \scounter[0]_i_1 
       (.I0(scounter[0]),
        .I1(\scounter_reg[13]_i_3_n_3 ),
        .O(\scounter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \scounter[10]_i_1 
       (.I0(scounter0[10]),
        .I1(\scounter_reg[13]_i_3_n_3 ),
        .O(\scounter[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \scounter[11]_i_1 
       (.I0(scounter0[11]),
        .I1(\scounter_reg[13]_i_3_n_3 ),
        .O(\scounter[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \scounter[12]_i_1 
       (.I0(scounter0[12]),
        .I1(\scounter_reg[13]_i_3_n_3 ),
        .O(\scounter[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \scounter[13]_i_1 
       (.I0(scounter0[13]),
        .I1(\scounter_reg[13]_i_3_n_3 ),
        .O(\scounter[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4111111111111114)) 
    \scounter[13]_i_10 
       (.I0(scounter[10]),
        .I1(scounter[11]),
        .I2(NOTE[1]),
        .I3(NOTE[0]),
        .I4(NOTE[2]),
        .I5(NOTE[3]),
        .O(\scounter[13]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h2222444488811222)) 
    \scounter[13]_i_11 
       (.I0(scounter[7]),
        .I1(scounter[8]),
        .I2(NOTE[1]),
        .I3(NOTE[0]),
        .I4(NOTE[2]),
        .I5(NOTE[3]),
        .O(\scounter[13]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h8221184818248828)) 
    \scounter[13]_i_12 
       (.I0(scounter[4]),
        .I1(scounter[5]),
        .I2(NOTE[1]),
        .I3(NOTE[2]),
        .I4(NOTE[0]),
        .I5(NOTE[3]),
        .O(\scounter[13]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h4881114444212244)) 
    \scounter[13]_i_13 
       (.I0(scounter[1]),
        .I1(scounter[2]),
        .I2(NOTE[0]),
        .I3(NOTE[1]),
        .I4(NOTE[2]),
        .I5(NOTE[3]),
        .O(\scounter[13]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \scounter[13]_i_5 
       (.I0(scounter[12]),
        .I1(scounter[13]),
        .O(\scounter[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h555A556900000000)) 
    \scounter[13]_i_6 
       (.I0(scounter[9]),
        .I1(NOTE[1]),
        .I2(NOTE[2]),
        .I3(NOTE[3]),
        .I4(NOTE[0]),
        .I5(\scounter[13]_i_10_n_0 ),
        .O(\scounter[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h65AA599900000000)) 
    \scounter[13]_i_7 
       (.I0(scounter[6]),
        .I1(NOTE[0]),
        .I2(NOTE[2]),
        .I3(NOTE[1]),
        .I4(NOTE[3]),
        .I5(\scounter[13]_i_11_n_0 ),
        .O(\scounter[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA6A9996A00000000)) 
    \scounter[13]_i_8 
       (.I0(scounter[3]),
        .I1(NOTE[1]),
        .I2(NOTE[0]),
        .I3(NOTE[2]),
        .I4(NOTE[3]),
        .I5(\scounter[13]_i_12_n_0 ),
        .O(\scounter[13]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9565656A00000000)) 
    \scounter[13]_i_9 
       (.I0(scounter[0]),
        .I1(NOTE[1]),
        .I2(NOTE[3]),
        .I3(NOTE[2]),
        .I4(NOTE[0]),
        .I5(\scounter[13]_i_13_n_0 ),
        .O(\scounter[13]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \scounter[1]_i_1 
       (.I0(scounter0[1]),
        .I1(\scounter_reg[13]_i_3_n_3 ),
        .O(\scounter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \scounter[2]_i_1 
       (.I0(scounter0[2]),
        .I1(\scounter_reg[13]_i_3_n_3 ),
        .O(\scounter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \scounter[3]_i_1 
       (.I0(scounter0[3]),
        .I1(\scounter_reg[13]_i_3_n_3 ),
        .O(\scounter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \scounter[4]_i_1 
       (.I0(scounter0[4]),
        .I1(\scounter_reg[13]_i_3_n_3 ),
        .O(\scounter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \scounter[5]_i_1 
       (.I0(scounter0[5]),
        .I1(\scounter_reg[13]_i_3_n_3 ),
        .O(\scounter[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \scounter[6]_i_1 
       (.I0(scounter0[6]),
        .I1(\scounter_reg[13]_i_3_n_3 ),
        .O(\scounter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \scounter[7]_i_1 
       (.I0(scounter0[7]),
        .I1(\scounter_reg[13]_i_3_n_3 ),
        .O(\scounter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \scounter[8]_i_1 
       (.I0(scounter0[8]),
        .I1(\scounter_reg[13]_i_3_n_3 ),
        .O(\scounter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \scounter[9]_i_1 
       (.I0(scounter0[9]),
        .I1(\scounter_reg[13]_i_3_n_3 ),
        .O(\scounter[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \scounter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(PWM_GEN_n_1),
        .D(\scounter[0]_i_1_n_0 ),
        .Q(scounter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \scounter_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(PWM_GEN_n_1),
        .D(\scounter[10]_i_1_n_0 ),
        .Q(scounter[10]));
  FDCE #(
    .INIT(1'b0)) 
    \scounter_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(PWM_GEN_n_1),
        .D(\scounter[11]_i_1_n_0 ),
        .Q(scounter[11]));
  FDCE #(
    .INIT(1'b0)) 
    \scounter_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(PWM_GEN_n_1),
        .D(\scounter[12]_i_1_n_0 ),
        .Q(scounter[12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \scounter_reg[12]_i_2 
       (.CI(\scounter_reg[8]_i_2_n_0 ),
        .CO({\scounter_reg[12]_i_2_n_0 ,\scounter_reg[12]_i_2_n_1 ,\scounter_reg[12]_i_2_n_2 ,\scounter_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(scounter0[12:9]),
        .S(scounter[12:9]));
  FDCE #(
    .INIT(1'b0)) 
    \scounter_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(PWM_GEN_n_1),
        .D(\scounter[13]_i_1_n_0 ),
        .Q(scounter[13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \scounter_reg[13]_i_2 
       (.CI(\scounter_reg[12]_i_2_n_0 ),
        .CO(\NLW_scounter_reg[13]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_scounter_reg[13]_i_2_O_UNCONNECTED [3:1],scounter0[13]}),
        .S({1'b0,1'b0,1'b0,scounter[13]}));
  CARRY4 \scounter_reg[13]_i_3 
       (.CI(\scounter_reg[13]_i_4_n_0 ),
        .CO({\NLW_scounter_reg[13]_i_3_CO_UNCONNECTED [3:1],\scounter_reg[13]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_scounter_reg[13]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\scounter[13]_i_5_n_0 }));
  CARRY4 \scounter_reg[13]_i_4 
       (.CI(1'b0),
        .CO({\scounter_reg[13]_i_4_n_0 ,\scounter_reg[13]_i_4_n_1 ,\scounter_reg[13]_i_4_n_2 ,\scounter_reg[13]_i_4_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_scounter_reg[13]_i_4_O_UNCONNECTED [3:0]),
        .S({\scounter[13]_i_6_n_0 ,\scounter[13]_i_7_n_0 ,\scounter[13]_i_8_n_0 ,\scounter[13]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \scounter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(PWM_GEN_n_1),
        .D(\scounter[1]_i_1_n_0 ),
        .Q(scounter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \scounter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(PWM_GEN_n_1),
        .D(\scounter[2]_i_1_n_0 ),
        .Q(scounter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \scounter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(PWM_GEN_n_1),
        .D(\scounter[3]_i_1_n_0 ),
        .Q(scounter[3]));
  FDCE #(
    .INIT(1'b0)) 
    \scounter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(PWM_GEN_n_1),
        .D(\scounter[4]_i_1_n_0 ),
        .Q(scounter[4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \scounter_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\scounter_reg[4]_i_2_n_0 ,\scounter_reg[4]_i_2_n_1 ,\scounter_reg[4]_i_2_n_2 ,\scounter_reg[4]_i_2_n_3 }),
        .CYINIT(scounter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(scounter0[4:1]),
        .S(scounter[4:1]));
  FDCE #(
    .INIT(1'b0)) 
    \scounter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(PWM_GEN_n_1),
        .D(\scounter[5]_i_1_n_0 ),
        .Q(scounter[5]));
  FDCE #(
    .INIT(1'b0)) 
    \scounter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(PWM_GEN_n_1),
        .D(\scounter[6]_i_1_n_0 ),
        .Q(scounter[6]));
  FDCE #(
    .INIT(1'b0)) 
    \scounter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(PWM_GEN_n_1),
        .D(\scounter[7]_i_1_n_0 ),
        .Q(scounter[7]));
  FDCE #(
    .INIT(1'b0)) 
    \scounter_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(PWM_GEN_n_1),
        .D(\scounter[8]_i_1_n_0 ),
        .Q(scounter[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \scounter_reg[8]_i_2 
       (.CI(\scounter_reg[4]_i_2_n_0 ),
        .CO({\scounter_reg[8]_i_2_n_0 ,\scounter_reg[8]_i_2_n_1 ,\scounter_reg[8]_i_2_n_2 ,\scounter_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(scounter0[8:5]),
        .S(scounter[8:5]));
  FDCE #(
    .INIT(1'b0)) 
    \scounter_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(PWM_GEN_n_1),
        .D(\scounter[9]_i_1_n_0 ),
        .Q(scounter[9]));
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
