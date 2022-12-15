// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Nov 24 16:28:35 2022
// Host        : DESKTOP-Q90JH2A running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/vikto/Experiments/BCDAdder/BCDAdder.gen/sources_1/bd/design_1/ip/design_1_DoubleDabbler12Bit_0_0/design_1_DoubleDabbler12Bit_0_0_stub.v
// Design      : design_1_DoubleDabbler12Bit_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "DoubleDabbler12Bit,Vivado 2022.2" *)
module design_1_DoubleDabbler12Bit_0_0(hex_in, bcd_tho, bcd_hun, bcd_ten, bcd_uni)
/* synthesis syn_black_box black_box_pad_pin="hex_in[11:0],bcd_tho[3:0],bcd_hun[3:0],bcd_ten[3:0],bcd_uni[3:0]" */;
  input [11:0]hex_in;
  output [3:0]bcd_tho;
  output [3:0]bcd_hun;
  output [3:0]bcd_ten;
  output [3:0]bcd_uni;
endmodule
