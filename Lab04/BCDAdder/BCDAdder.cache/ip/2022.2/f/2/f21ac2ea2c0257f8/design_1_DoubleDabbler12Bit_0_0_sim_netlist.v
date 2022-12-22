// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Nov 24 16:28:34 2022
// Host        : DESKTOP-Q90JH2A running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_DoubleDabbler12Bit_0_0_sim_netlist.v
// Design      : design_1_DoubleDabbler12Bit_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_DoubleDabbler12Bit_0_0,DoubleDabbler12Bit,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "DoubleDabbler12Bit,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (hex_in,
    bcd_tho,
    bcd_hun,
    bcd_ten,
    bcd_uni);
  input [11:0]hex_in;
  output [3:0]bcd_tho;
  output [3:0]bcd_hun;
  output [3:0]bcd_ten;
  output [3:0]bcd_uni;

  wire \<const0> ;
  wire [3:0]bcd_hun;
  wire \bcd_hun[0]_INST_0_i_1_n_0 ;
  wire \bcd_hun[0]_INST_0_i_2_n_0 ;
  wire \bcd_hun[0]_INST_0_i_3_n_0 ;
  wire \bcd_hun[0]_INST_0_i_4_n_0 ;
  wire \bcd_hun[0]_INST_0_i_5_n_0 ;
  wire \bcd_hun[0]_INST_0_i_6_n_0 ;
  wire \bcd_hun[0]_INST_0_i_7_n_0 ;
  wire \bcd_hun[0]_INST_0_i_8_n_0 ;
  wire [3:0]bcd_ten;
  wire \bcd_ten[0]_INST_0_i_1_n_0 ;
  wire \bcd_ten[0]_INST_0_i_2_n_0 ;
  wire [2:0]\^bcd_tho ;
  wire \bcd_tho[0]_INST_0_i_1_n_0 ;
  wire \bcd_tho[0]_INST_0_i_2_n_0 ;
  wire \bcd_tho[0]_INST_0_i_3_n_0 ;
  wire \bcd_tho[0]_INST_0_i_4_n_0 ;
  wire \bcd_tho[1]_INST_0_i_1_n_0 ;
  wire \bcd_tho[2]_INST_0_i_1_n_0 ;
  wire \bcd_tho[2]_INST_0_i_2_n_0 ;
  wire \bcd_tho[2]_INST_0_i_3_n_0 ;
  wire \bcd_tho[2]_INST_0_i_4_n_0 ;
  wire \bcd_tho[2]_INST_0_i_5_n_0 ;
  wire \bcd_tho[2]_INST_0_i_6_n_0 ;
  wire \bcd_tho[2]_INST_0_i_7_n_0 ;
  wire \bcd_tho[2]_INST_0_i_8_n_0 ;
  wire [3:1]\^bcd_uni ;
  wire [11:0]hex_in;

  assign bcd_tho[3] = \<const0> ;
  assign bcd_tho[2:0] = \^bcd_tho [2:0];
  assign bcd_uni[3:1] = \^bcd_uni [3:1];
  assign bcd_uni[0] = hex_in[0];
  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'hECCECEDCEEDECFFC)) 
    \bcd_hun[0]_INST_0 
       (.I0(\bcd_hun[0]_INST_0_i_1_n_0 ),
        .I1(\bcd_hun[0]_INST_0_i_2_n_0 ),
        .I2(\bcd_tho[1]_INST_0_i_1_n_0 ),
        .I3(\bcd_hun[0]_INST_0_i_3_n_0 ),
        .I4(\bcd_hun[0]_INST_0_i_4_n_0 ),
        .I5(\bcd_hun[0]_INST_0_i_5_n_0 ),
        .O(bcd_hun[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h62299994)) 
    \bcd_hun[0]_INST_0_i_1 
       (.I0(\bcd_tho[2]_INST_0_i_8_n_0 ),
        .I1(\bcd_tho[2]_INST_0_i_7_n_0 ),
        .I2(\bcd_tho[2]_INST_0_i_6_n_0 ),
        .I3(\bcd_tho[2]_INST_0_i_5_n_0 ),
        .I4(\bcd_tho[2]_INST_0_i_4_n_0 ),
        .O(\bcd_hun[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8001122424488001)) 
    \bcd_hun[0]_INST_0_i_2 
       (.I0(\bcd_hun[0]_INST_0_i_3_n_0 ),
        .I1(\bcd_tho[2]_INST_0_i_4_n_0 ),
        .I2(\bcd_tho[2]_INST_0_i_5_n_0 ),
        .I3(\bcd_tho[2]_INST_0_i_6_n_0 ),
        .I4(\bcd_tho[2]_INST_0_i_7_n_0 ),
        .I5(\bcd_tho[2]_INST_0_i_8_n_0 ),
        .O(\bcd_hun[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000C3D70000D73C)) 
    \bcd_hun[0]_INST_0_i_3 
       (.I0(hex_in[4]),
        .I1(hex_in[6]),
        .I2(\bcd_tho[2]_INST_0_i_5_n_0 ),
        .I3(hex_in[5]),
        .I4(\bcd_hun[0]_INST_0_i_6_n_0 ),
        .I5(\bcd_hun[0]_INST_0_i_7_n_0 ),
        .O(\bcd_hun[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h007017FC0000FC01)) 
    \bcd_hun[0]_INST_0_i_4 
       (.I0(hex_in[3]),
        .I1(hex_in[4]),
        .I2(\bcd_hun[0]_INST_0_i_8_n_0 ),
        .I3(hex_in[5]),
        .I4(\bcd_hun[0]_INST_0_i_6_n_0 ),
        .I5(\bcd_hun[0]_INST_0_i_7_n_0 ),
        .O(\bcd_hun[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000066696FF9)) 
    \bcd_hun[0]_INST_0_i_5 
       (.I0(\bcd_hun[0]_INST_0_i_3_n_0 ),
        .I1(hex_in[4]),
        .I2(\bcd_hun[0]_INST_0_i_4_n_0 ),
        .I3(hex_in[3]),
        .I4(hex_in[2]),
        .I5(\bcd_ten[0]_INST_0_i_2_n_0 ),
        .O(\bcd_hun[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0420184182180420)) 
    \bcd_hun[0]_INST_0_i_6 
       (.I0(hex_in[6]),
        .I1(hex_in[7]),
        .I2(hex_in[9]),
        .I3(hex_in[11]),
        .I4(hex_in[10]),
        .I5(hex_in[8]),
        .O(\bcd_hun[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6D69B66D69DB6D69)) 
    \bcd_hun[0]_INST_0_i_7 
       (.I0(hex_in[7]),
        .I1(hex_in[9]),
        .I2(hex_in[11]),
        .I3(hex_in[10]),
        .I4(hex_in[8]),
        .I5(hex_in[6]),
        .O(\bcd_hun[0]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h696DDB696DB6696D)) 
    \bcd_hun[0]_INST_0_i_8 
       (.I0(hex_in[6]),
        .I1(hex_in[8]),
        .I2(hex_in[10]),
        .I3(hex_in[11]),
        .I4(hex_in[9]),
        .I5(hex_in[7]),
        .O(\bcd_hun[0]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hF4420BB4)) 
    \bcd_hun[1]_INST_0 
       (.I0(\bcd_tho[2]_INST_0_i_2_n_0 ),
        .I1(\bcd_tho[1]_INST_0_i_1_n_0 ),
        .I2(\bcd_tho[2]_INST_0_i_3_n_0 ),
        .I3(\bcd_tho[2]_INST_0_i_1_n_0 ),
        .I4(\bcd_tho[0]_INST_0_i_1_n_0 ),
        .O(bcd_hun[1]));
  LUT5 #(
    .INIT(32'h40BD6B80)) 
    \bcd_hun[2]_INST_0 
       (.I0(\bcd_tho[0]_INST_0_i_1_n_0 ),
        .I1(\bcd_tho[2]_INST_0_i_1_n_0 ),
        .I2(\bcd_tho[2]_INST_0_i_3_n_0 ),
        .I3(\bcd_tho[1]_INST_0_i_1_n_0 ),
        .I4(\bcd_tho[2]_INST_0_i_2_n_0 ),
        .O(bcd_hun[2]));
  LUT5 #(
    .INIT(32'h40097440)) 
    \bcd_hun[3]_INST_0 
       (.I0(\bcd_tho[2]_INST_0_i_2_n_0 ),
        .I1(\bcd_tho[1]_INST_0_i_1_n_0 ),
        .I2(\bcd_tho[2]_INST_0_i_3_n_0 ),
        .I3(\bcd_tho[2]_INST_0_i_1_n_0 ),
        .I4(\bcd_tho[0]_INST_0_i_1_n_0 ),
        .O(bcd_hun[3]));
  LUT6 #(
    .INIT(64'hFFFF9996FFFF9006)) 
    \bcd_ten[0]_INST_0 
       (.I0(hex_in[3]),
        .I1(\bcd_hun[0]_INST_0_i_4_n_0 ),
        .I2(\bcd_ten[0]_INST_0_i_1_n_0 ),
        .I3(hex_in[2]),
        .I4(\bcd_ten[0]_INST_0_i_2_n_0 ),
        .I5(hex_in[1]),
        .O(bcd_ten[0]));
  LUT4 #(
    .INIT(16'h6669)) 
    \bcd_ten[0]_INST_0_i_1 
       (.I0(\bcd_hun[0]_INST_0_i_3_n_0 ),
        .I1(hex_in[4]),
        .I2(\bcd_hun[0]_INST_0_i_4_n_0 ),
        .I3(hex_in[3]),
        .O(\bcd_ten[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC5CC04DE0C2C24CD)) 
    \bcd_ten[0]_INST_0_i_2 
       (.I0(\bcd_hun[0]_INST_0_i_7_n_0 ),
        .I1(\bcd_hun[0]_INST_0_i_6_n_0 ),
        .I2(hex_in[5]),
        .I3(\bcd_hun[0]_INST_0_i_8_n_0 ),
        .I4(hex_in[4]),
        .I5(hex_in[3]),
        .O(\bcd_ten[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hECCECEDC11213003)) 
    \bcd_ten[1]_INST_0 
       (.I0(\bcd_hun[0]_INST_0_i_1_n_0 ),
        .I1(\bcd_hun[0]_INST_0_i_2_n_0 ),
        .I2(\bcd_tho[1]_INST_0_i_1_n_0 ),
        .I3(\bcd_hun[0]_INST_0_i_3_n_0 ),
        .I4(\bcd_hun[0]_INST_0_i_4_n_0 ),
        .I5(\bcd_hun[0]_INST_0_i_5_n_0 ),
        .O(bcd_ten[1]));
  LUT6 #(
    .INIT(64'h66668C18666631C3)) 
    \bcd_ten[2]_INST_0 
       (.I0(\bcd_hun[0]_INST_0_i_5_n_0 ),
        .I1(\bcd_hun[0]_INST_0_i_4_n_0 ),
        .I2(\bcd_hun[0]_INST_0_i_3_n_0 ),
        .I3(\bcd_tho[1]_INST_0_i_1_n_0 ),
        .I4(\bcd_hun[0]_INST_0_i_2_n_0 ),
        .I5(\bcd_hun[0]_INST_0_i_1_n_0 ),
        .O(bcd_ten[2]));
  LUT6 #(
    .INIT(64'hFF7D3C7D61080820)) 
    \bcd_ten[3]_INST_0 
       (.I0(\bcd_hun[0]_INST_0_i_5_n_0 ),
        .I1(\bcd_tho[1]_INST_0_i_1_n_0 ),
        .I2(\bcd_hun[0]_INST_0_i_3_n_0 ),
        .I3(\bcd_hun[0]_INST_0_i_4_n_0 ),
        .I4(\bcd_hun[0]_INST_0_i_1_n_0 ),
        .I5(\bcd_hun[0]_INST_0_i_2_n_0 ),
        .O(bcd_ten[3]));
  LUT5 #(
    .INIT(32'hF442F44B)) 
    \bcd_tho[0]_INST_0 
       (.I0(\bcd_tho[2]_INST_0_i_2_n_0 ),
        .I1(\bcd_tho[1]_INST_0_i_1_n_0 ),
        .I2(\bcd_tho[2]_INST_0_i_3_n_0 ),
        .I3(\bcd_tho[2]_INST_0_i_1_n_0 ),
        .I4(\bcd_tho[0]_INST_0_i_1_n_0 ),
        .O(\^bcd_tho [0]));
  LUT6 #(
    .INIT(64'h0F3220033B200033)) 
    \bcd_tho[0]_INST_0_i_1 
       (.I0(\bcd_hun[0]_INST_0_i_4_n_0 ),
        .I1(\bcd_tho[0]_INST_0_i_2_n_0 ),
        .I2(\bcd_tho[0]_INST_0_i_3_n_0 ),
        .I3(\bcd_tho[2]_INST_0_i_4_n_0 ),
        .I4(\bcd_tho[0]_INST_0_i_4_n_0 ),
        .I5(\bcd_hun[0]_INST_0_i_3_n_0 ),
        .O(\bcd_tho[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h001AA000011A8000)) 
    \bcd_tho[0]_INST_0_i_2 
       (.I0(hex_in[8]),
        .I1(hex_in[7]),
        .I2(hex_in[11]),
        .I3(hex_in[9]),
        .I4(hex_in[10]),
        .I5(hex_in[6]),
        .O(\bcd_tho[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h33C08033378313C8)) 
    \bcd_tho[0]_INST_0_i_3 
       (.I0(hex_in[6]),
        .I1(hex_in[8]),
        .I2(hex_in[7]),
        .I3(hex_in[11]),
        .I4(hex_in[9]),
        .I5(hex_in[10]),
        .O(\bcd_tho[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3CF0F1CF38F3F3CF)) 
    \bcd_tho[0]_INST_0_i_4 
       (.I0(hex_in[6]),
        .I1(hex_in[8]),
        .I2(hex_in[10]),
        .I3(hex_in[11]),
        .I4(hex_in[9]),
        .I5(hex_in[7]),
        .O(\bcd_tho[0]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hC1D5)) 
    \bcd_tho[1]_INST_0 
       (.I0(\bcd_tho[2]_INST_0_i_2_n_0 ),
        .I1(\bcd_tho[2]_INST_0_i_1_n_0 ),
        .I2(\bcd_tho[2]_INST_0_i_3_n_0 ),
        .I3(\bcd_tho[1]_INST_0_i_1_n_0 ),
        .O(\^bcd_tho [1]));
  LUT6 #(
    .INIT(64'hBC3BC2CC3B23CCBC)) 
    \bcd_tho[1]_INST_0_i_1 
       (.I0(\bcd_hun[0]_INST_0_i_3_n_0 ),
        .I1(\bcd_tho[2]_INST_0_i_5_n_0 ),
        .I2(\bcd_tho[2]_INST_0_i_8_n_0 ),
        .I3(\bcd_tho[2]_INST_0_i_7_n_0 ),
        .I4(\bcd_tho[2]_INST_0_i_6_n_0 ),
        .I5(\bcd_tho[2]_INST_0_i_4_n_0 ),
        .O(\bcd_tho[1]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \bcd_tho[2]_INST_0 
       (.I0(\bcd_tho[2]_INST_0_i_1_n_0 ),
        .I1(\bcd_tho[2]_INST_0_i_2_n_0 ),
        .I2(\bcd_tho[2]_INST_0_i_3_n_0 ),
        .O(\^bcd_tho [2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF000E000)) 
    \bcd_tho[2]_INST_0_i_1 
       (.I0(hex_in[8]),
        .I1(hex_in[9]),
        .I2(hex_in[11]),
        .I3(hex_in[10]),
        .I4(hex_in[7]),
        .O(\bcd_tho[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA7A7A787A7A7A78F)) 
    \bcd_tho[2]_INST_0_i_2 
       (.I0(hex_in[10]),
        .I1(hex_in[9]),
        .I2(hex_in[11]),
        .I3(hex_in[7]),
        .I4(hex_in[8]),
        .I5(hex_in[6]),
        .O(\bcd_tho[2]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFC022BFC)) 
    \bcd_tho[2]_INST_0_i_3 
       (.I0(\bcd_tho[2]_INST_0_i_4_n_0 ),
        .I1(\bcd_tho[2]_INST_0_i_5_n_0 ),
        .I2(\bcd_tho[2]_INST_0_i_6_n_0 ),
        .I3(\bcd_tho[2]_INST_0_i_7_n_0 ),
        .I4(\bcd_tho[2]_INST_0_i_8_n_0 ),
        .O(\bcd_tho[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000004DF3F34D)) 
    \bcd_tho[2]_INST_0_i_4 
       (.I0(hex_in[5]),
        .I1(\bcd_tho[2]_INST_0_i_5_n_0 ),
        .I2(hex_in[6]),
        .I3(\bcd_tho[2]_INST_0_i_8_n_0 ),
        .I4(hex_in[7]),
        .I5(\bcd_hun[0]_INST_0_i_6_n_0 ),
        .O(\bcd_tho[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h24FBDF2404B2DB04)) 
    \bcd_tho[2]_INST_0_i_5 
       (.I0(hex_in[7]),
        .I1(hex_in[9]),
        .I2(hex_in[11]),
        .I3(hex_in[10]),
        .I4(hex_in[8]),
        .I5(hex_in[6]),
        .O(\bcd_tho[2]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h71CF)) 
    \bcd_tho[2]_INST_0_i_6 
       (.I0(hex_in[8]),
        .I1(hex_in[9]),
        .I2(hex_in[11]),
        .I3(hex_in[10]),
        .O(\bcd_tho[2]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \bcd_tho[2]_INST_0_i_7 
       (.I0(hex_in[10]),
        .I1(hex_in[9]),
        .I2(hex_in[11]),
        .O(\bcd_tho[2]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hC7C31CC7)) 
    \bcd_tho[2]_INST_0_i_8 
       (.I0(hex_in[7]),
        .I1(hex_in[9]),
        .I2(hex_in[11]),
        .I3(hex_in[10]),
        .I4(hex_in[8]),
        .O(\bcd_tho[2]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00006669FFFF9006)) 
    \bcd_uni[1]_INST_0 
       (.I0(hex_in[3]),
        .I1(\bcd_hun[0]_INST_0_i_4_n_0 ),
        .I2(\bcd_ten[0]_INST_0_i_1_n_0 ),
        .I3(hex_in[2]),
        .I4(\bcd_ten[0]_INST_0_i_2_n_0 ),
        .I5(hex_in[1]),
        .O(\^bcd_uni [1]));
  LUT6 #(
    .INIT(64'h0FF6F0000F00F09F)) 
    \bcd_uni[2]_INST_0 
       (.I0(hex_in[3]),
        .I1(\bcd_hun[0]_INST_0_i_4_n_0 ),
        .I2(hex_in[1]),
        .I3(\bcd_ten[0]_INST_0_i_2_n_0 ),
        .I4(hex_in[2]),
        .I5(\bcd_ten[0]_INST_0_i_1_n_0 ),
        .O(\^bcd_uni [2]));
  LUT6 #(
    .INIT(64'hF9F999FF00090960)) 
    \bcd_uni[3]_INST_0 
       (.I0(hex_in[3]),
        .I1(\bcd_hun[0]_INST_0_i_4_n_0 ),
        .I2(hex_in[1]),
        .I3(\bcd_ten[0]_INST_0_i_1_n_0 ),
        .I4(hex_in[2]),
        .I5(\bcd_ten[0]_INST_0_i_2_n_0 ),
        .O(\^bcd_uni [3]));
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
