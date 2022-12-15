// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Nov 24 15:09:46 2022
// Host        : DESKTOP-Q90JH2A running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/vikto/Experiments/BCDAdder/BCDAdder.gen/sources_1/bd/design_1/ip/design_1_Mux8x7Seg_0_0/design_1_Mux8x7Seg_0_0_stub.v
// Design      : design_1_Mux8x7Seg_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mux_8x7seg,Vivado 2022.2" *)
module design_1_Mux8x7Seg_0_0(CLK, RESET, d0, d1, d2, d3, d4, d5, d6, d7, SEG, AN, DP)
/* synthesis syn_black_box black_box_pad_pin="CLK,RESET,d0[3:0],d1[3:0],d2[3:0],d3[3:0],d4[3:0],d5[3:0],d6[3:0],d7[3:0],SEG[6:0],AN[7:0],DP" */;
  input CLK;
  input RESET;
  input [3:0]d0;
  input [3:0]d1;
  input [3:0]d2;
  input [3:0]d3;
  input [3:0]d4;
  input [3:0]d5;
  input [3:0]d6;
  input [3:0]d7;
  output [6:0]SEG;
  output [7:0]AN;
  output DP;
endmodule
