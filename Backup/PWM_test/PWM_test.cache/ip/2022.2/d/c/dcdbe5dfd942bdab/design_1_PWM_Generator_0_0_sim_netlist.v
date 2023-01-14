// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Jan  7 10:01:19 2023
// Host        : DESKTOP-Q90JH2A running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_PWM_Generator_0_0_sim_netlist.v
// Design      : design_1_PWM_Generator_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_PWM_Generator_0_0,pwm,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "pwm,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    reset_n,
    ena,
    duty,
    pwm_out,
    pwm_n_out);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input reset_n;
  input ena;
  input [7:0]duty;
  output [0:0]pwm_out;
  output [0:0]pwm_n_out;

  wire clk;
  wire [7:0]duty;
  wire ena;
  wire [0:0]pwm_n_out;
  wire [0:0]pwm_out;
  wire reset_n;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm U0
       (.clk(clk),
        .duty(duty),
        .ena(ena),
        .pwm_n_out(pwm_n_out),
        .pwm_out(pwm_out),
        .reset_n(reset_n));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm
   (pwm_n_out,
    pwm_out,
    reset_n,
    clk,
    duty,
    ena);
  output [0:0]pwm_n_out;
  output [0:0]pwm_out;
  input reset_n;
  input clk;
  input [7:0]duty;
  input ena;

  wire clk;
  wire \count[0][2]_i_1_n_0 ;
  wire \count[0][3]_i_2_n_0 ;
  wire \count[0][6]_i_2_n_0 ;
  wire \count[0][8]_i_2_n_0 ;
  wire \count[0][9]_i_2_n_0 ;
  wire \count[0][9]_i_3_n_0 ;
  wire [9:0]\count[0]_0 ;
  wire [9:0]\count_reg[0] ;
  wire [7:0]duty;
  wire ena;
  wire half_duty_new0;
  wire [8:0]half_duty_new_reg__0;
  wire half_duty_new_reg_i_2_n_0;
  wire half_duty_new_reg_n_100;
  wire half_duty_new_reg_n_101;
  wire half_duty_new_reg_n_102;
  wire half_duty_new_reg_n_103;
  wire half_duty_new_reg_n_104;
  wire half_duty_new_reg_n_105;
  wire half_duty_new_reg_n_97;
  wire half_duty_new_reg_n_98;
  wire half_duty_new_reg_n_99;
  wire p_0_in;
  wire [0:0]pwm_n_out;
  wire \pwm_n_out[0]_i_1_n_0 ;
  wire [0:0]pwm_out;
  wire pwm_out0_carry_i_1_n_0;
  wire pwm_out0_carry_i_2_n_0;
  wire pwm_out0_carry_i_3_n_0;
  wire pwm_out0_carry_i_4_n_0;
  wire pwm_out0_carry_i_5_n_0;
  wire pwm_out0_carry_i_6_n_0;
  wire pwm_out0_carry_i_7_n_0;
  wire pwm_out0_carry_i_8_n_0;
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
  wire reset_n;
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

  LUT1 #(
    .INIT(2'h1)) 
    \count[0][0]_i_1 
       (.I0(\count_reg[0] [0]),
        .O(\count[0]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[0][1]_i_1 
       (.I0(\count_reg[0] [1]),
        .I1(\count_reg[0] [0]),
        .O(\count[0]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[0][2]_i_1 
       (.I0(\count_reg[0] [2]),
        .I1(\count_reg[0] [0]),
        .I2(\count_reg[0] [1]),
        .O(\count[0][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAA2AAA)) 
    \count[0][3]_i_1 
       (.I0(\count_reg[0] [3]),
        .I1(\count_reg[0] [2]),
        .I2(\count_reg[0] [1]),
        .I3(\count_reg[0] [0]),
        .I4(\count[0][3]_i_2_n_0 ),
        .O(\count[0]_0 [3]));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    \count[0][3]_i_2 
       (.I0(\count_reg[0] [4]),
        .I1(\count_reg[0] [5]),
        .I2(\count_reg[0] [8]),
        .I3(\count_reg[0] [7]),
        .I4(\count_reg[0] [6]),
        .I5(\count_reg[0] [9]),
        .O(\count[0][3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count[0][4]_i_1 
       (.I0(\count_reg[0] [4]),
        .I1(\count_reg[0] [2]),
        .I2(\count_reg[0] [1]),
        .I3(\count_reg[0] [0]),
        .I4(\count_reg[0] [3]),
        .O(\count[0]_0 [4]));
  LUT5 #(
    .INIT(32'h0000DF20)) 
    \count[0][5]_i_1 
       (.I0(\count_reg[0] [4]),
        .I1(\count[0][6]_i_2_n_0 ),
        .I2(\count_reg[0] [3]),
        .I3(\count_reg[0] [5]),
        .I4(\count[0][8]_i_2_n_0 ),
        .O(\count[0]_0 [5]));
  LUT6 #(
    .INIT(64'h00000000F7FF0800)) 
    \count[0][6]_i_1 
       (.I0(\count_reg[0] [5]),
        .I1(\count_reg[0] [3]),
        .I2(\count[0][6]_i_2_n_0 ),
        .I3(\count_reg[0] [4]),
        .I4(\count_reg[0] [6]),
        .I5(\count[0][8]_i_2_n_0 ),
        .O(\count[0]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \count[0][6]_i_2 
       (.I0(\count_reg[0] [0]),
        .I1(\count_reg[0] [1]),
        .I2(\count_reg[0] [2]),
        .O(\count[0][6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00D2)) 
    \count[0][7]_i_1 
       (.I0(\count_reg[0] [6]),
        .I1(\count[0][9]_i_3_n_0 ),
        .I2(\count_reg[0] [7]),
        .I3(\count[0][8]_i_2_n_0 ),
        .O(\count[0]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0000DF20)) 
    \count[0][8]_i_1 
       (.I0(\count_reg[0] [7]),
        .I1(\count[0][9]_i_3_n_0 ),
        .I2(\count_reg[0] [6]),
        .I3(\count_reg[0] [8]),
        .I4(\count[0][8]_i_2_n_0 ),
        .O(\count[0]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \count[0][8]_i_2 
       (.I0(\count[0][3]_i_2_n_0 ),
        .I1(\count_reg[0] [0]),
        .I2(\count_reg[0] [1]),
        .I3(\count_reg[0] [2]),
        .I4(\count_reg[0] [3]),
        .O(\count[0][8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h73FFFFFF0C000000)) 
    \count[0][9]_i_1 
       (.I0(\count[0][9]_i_2_n_0 ),
        .I1(\count_reg[0] [7]),
        .I2(\count[0][9]_i_3_n_0 ),
        .I3(\count_reg[0] [6]),
        .I4(\count_reg[0] [8]),
        .I5(\count_reg[0] [9]),
        .O(\count[0]_0 [9]));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \count[0][9]_i_2 
       (.I0(\count_reg[0] [4]),
        .I1(\count_reg[0] [3]),
        .I2(\count_reg[0] [5]),
        .I3(\count_reg[0] [0]),
        .I4(\count_reg[0] [1]),
        .I5(\count_reg[0] [2]),
        .O(\count[0][9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \count[0][9]_i_3 
       (.I0(\count_reg[0] [4]),
        .I1(\count_reg[0] [2]),
        .I2(\count_reg[0] [1]),
        .I3(\count_reg[0] [0]),
        .I4(\count_reg[0] [3]),
        .I5(\count_reg[0] [5]),
        .O(\count[0][9]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0][0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\count[0]_0 [0]),
        .Q(\count_reg[0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0][1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\count[0]_0 [1]),
        .Q(\count_reg[0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0][2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\count[0][2]_i_1_n_0 ),
        .Q(\count_reg[0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0][3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\count[0]_0 [3]),
        .Q(\count_reg[0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0][4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\count[0]_0 [4]),
        .Q(\count_reg[0] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0][5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\count[0]_0 [5]),
        .Q(\count_reg[0] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0][6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\count[0]_0 [6]),
        .Q(\count_reg[0] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0][7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\count[0]_0 [7]),
        .Q(\count_reg[0] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0][8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\count[0]_0 [8]),
        .Q(\count_reg[0] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0][9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(p_0_in),
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,duty}),
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
        .CEP(half_duty_new_reg_i_2_n_0),
        .CLK(clk),
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
       (.I0(reset_n),
        .I1(ena),
        .O(half_duty_new0));
  LUT2 #(
    .INIT(4'h8)) 
    half_duty_new_reg_i_2
       (.I0(\count[0][8]_i_2_n_0 ),
        .I1(reset_n),
        .O(half_duty_new_reg_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hDC)) 
    \pwm_n_out[0]_i_1 
       (.I0(pwm_out0_carry_n_0),
        .I1(pwm_out1_carry_n_0),
        .I2(pwm_n_out),
        .O(\pwm_n_out[0]_i_1_n_0 ));
  FDCE \pwm_n_out_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\pwm_n_out[0]_i_1_n_0 ),
        .Q(pwm_n_out));
  CARRY4 pwm_out0_carry
       (.CI(1'b0),
        .CO({pwm_out0_carry_n_0,pwm_out0_carry_n_1,pwm_out0_carry_n_2,pwm_out0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_pwm_out0_carry_O_UNCONNECTED[3:0]),
        .S({pwm_out0_carry_i_1_n_0,pwm_out0_carry_i_2_n_0,pwm_out0_carry_i_3_n_0,pwm_out0_carry_i_4_n_0}));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    pwm_out0_carry_i_1
       (.I0(half_duty_new_reg__0[7]),
        .I1(pwm_out0_carry_i_5_n_0),
        .I2(half_duty_new_reg__0[6]),
        .I3(half_duty_new_reg__0[8]),
        .I4(\count_reg[0] [9]),
        .O(pwm_out0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000011201122000)) 
    pwm_out0_carry_i_2
       (.I0(\count_reg[0] [6]),
        .I1(pwm_out0_carry_i_6_n_0),
        .I2(half_duty_new_reg__0[6]),
        .I3(pwm_out0_carry_i_5_n_0),
        .I4(half_duty_new_reg__0[7]),
        .I5(\count_reg[0] [7]),
        .O(pwm_out0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h0028810081000081)) 
    pwm_out0_carry_i_3
       (.I0(pwm_out0_carry_i_7_n_0),
        .I1(half_duty_new_reg__0[4]),
        .I2(\count_reg[0] [4]),
        .I3(pwm_out0_carry_i_8_n_0),
        .I4(half_duty_new_reg__0[3]),
        .I5(\count_reg[0] [3]),
        .O(pwm_out0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h0660000000001881)) 
    pwm_out0_carry_i_4
       (.I0(\count_reg[0] [1]),
        .I1(half_duty_new_reg__0[1]),
        .I2(half_duty_new_reg__0[2]),
        .I3(\count_reg[0] [2]),
        .I4(\count_reg[0] [0]),
        .I5(half_duty_new_reg__0[0]),
        .O(pwm_out0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAA88888880)) 
    pwm_out0_carry_i_5
       (.I0(half_duty_new_reg__0[5]),
        .I1(half_duty_new_reg__0[3]),
        .I2(half_duty_new_reg__0[0]),
        .I3(half_duty_new_reg__0[1]),
        .I4(half_duty_new_reg__0[2]),
        .I5(half_duty_new_reg__0[4]),
        .O(pwm_out0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    pwm_out0_carry_i_6
       (.I0(\count_reg[0] [8]),
        .I1(half_duty_new_reg__0[8]),
        .O(pwm_out0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    pwm_out0_carry_i_7
       (.I0(\count_reg[0] [5]),
        .I1(half_duty_new_reg__0[5]),
        .O(pwm_out0_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    pwm_out0_carry_i_8
       (.I0(half_duty_new_reg__0[2]),
        .I1(half_duty_new_reg__0[1]),
        .I2(half_duty_new_reg__0[0]),
        .O(pwm_out0_carry_i_8_n_0));
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
        .I2(\count_reg[0] [7]),
        .I3(half_duty_new_reg__0[7]),
        .I4(\count_reg[0] [6]),
        .I5(half_duty_new_reg__0[6]),
        .O(pwm_out1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pwm_out1_carry_i_3
       (.I0(half_duty_new_reg__0[5]),
        .I1(\count_reg[0] [5]),
        .I2(\count_reg[0] [3]),
        .I3(half_duty_new_reg__0[3]),
        .I4(\count_reg[0] [4]),
        .I5(half_duty_new_reg__0[4]),
        .O(pwm_out1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pwm_out1_carry_i_4
       (.I0(half_duty_new_reg__0[2]),
        .I1(\count_reg[0] [2]),
        .I2(\count_reg[0] [1]),
        .I3(half_duty_new_reg__0[1]),
        .I4(half_duty_new_reg__0[0]),
        .I5(\count_reg[0] [0]),
        .O(pwm_out1_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \pwm_out[0]_i_1 
       (.I0(pwm_out0_carry_n_0),
        .I1(pwm_out1_carry_n_0),
        .I2(pwm_out),
        .O(\pwm_out[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pwm_out[0]_i_2 
       (.I0(reset_n),
        .O(p_0_in));
  FDCE \pwm_out_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\pwm_out[0]_i_1_n_0 ),
        .Q(pwm_out));
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
