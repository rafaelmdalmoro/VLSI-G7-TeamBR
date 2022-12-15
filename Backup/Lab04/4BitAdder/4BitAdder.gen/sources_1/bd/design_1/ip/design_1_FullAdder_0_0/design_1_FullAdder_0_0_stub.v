// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Nov 24 13:35:20 2022
// Host        : DESKTOP-Q90JH2A running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_FullAdder_0_0 -prefix
//               design_1_FullAdder_0_0_ FullAdder_0_stub.v
// Design      : FullAdder_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "FullAdder,Vivado 2022.2" *)
module design_1_FullAdder_0_0(A, B, Cin, S, Cout)
/* synthesis syn_black_box black_box_pad_pin="A,B,Cin,S,Cout" */;
  input A;
  input B;
  input Cin;
  output S;
  output Cout;
endmodule
