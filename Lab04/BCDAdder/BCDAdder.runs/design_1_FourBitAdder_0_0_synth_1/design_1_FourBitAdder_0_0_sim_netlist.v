// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Nov 24 15:08:44 2022
// Host        : DESKTOP-Q90JH2A running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_FourBitAdder_0_0_sim_netlist.v
// Design      : design_1_FourBitAdder_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FullAdder
   (A,
    B,
    Cin,
    S,
    Cout);
  input A;
  input B;
  input Cin;
  output S;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire S;

  LUT3 #(
    .INIT(8'hE8)) 
    Cout_INST_0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Cout));
  LUT3 #(
    .INIT(8'h96)) 
    S_INST_0
       (.I0(Cin),
        .I1(A),
        .I2(B),
        .O(S));
endmodule

(* ORIG_REF_NAME = "FullAdder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FullAdder__1
   (A,
    B,
    Cin,
    S,
    Cout);
  input A;
  input B;
  input Cin;
  output S;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire S;

  LUT3 #(
    .INIT(8'hE8)) 
    Cout_INST_0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Cout));
  LUT3 #(
    .INIT(8'h96)) 
    S_INST_0
       (.I0(Cin),
        .I1(A),
        .I2(B),
        .O(S));
endmodule

(* ORIG_REF_NAME = "FullAdder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FullAdder__2
   (A,
    B,
    Cin,
    S,
    Cout);
  input A;
  input B;
  input Cin;
  output S;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire S;

  LUT3 #(
    .INIT(8'hE8)) 
    Cout_INST_0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Cout));
  LUT3 #(
    .INIT(8'h96)) 
    S_INST_0
       (.I0(Cin),
        .I1(A),
        .I2(B),
        .O(S));
endmodule

(* ORIG_REF_NAME = "FullAdder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FullAdder__3
   (A,
    B,
    Cin,
    S,
    Cout);
  input A;
  input B;
  input Cin;
  output S;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire S;

  LUT3 #(
    .INIT(8'hE8)) 
    Cout_INST_0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Cout));
  LUT3 #(
    .INIT(8'h96)) 
    S_INST_0
       (.I0(Cin),
        .I1(A),
        .I2(B),
        .O(S));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1
   (S_0,
    S_1,
    S_2,
    S_3,
    Cout,
    A_0,
    B_0,
    Cin,
    A_1,
    B_1,
    A_2,
    B_2,
    A_3,
    B_3);
  output S_0;
  output S_1;
  output S_2;
  output S_3;
  output Cout;
  input A_0;
  input B_0;
  input Cin;
  input A_1;
  input B_1;
  input A_2;
  input B_2;
  input A_3;
  input B_3;

  wire A_0;
  wire A_1;
  wire A_2;
  wire A_3;
  wire B_0;
  wire B_1;
  wire B_2;
  wire B_3;
  wire Cin;
  wire Cout;
  wire FullAdder_0_Cout;
  wire FullAdder_1_Cout;
  wire FullAdder_2_Cout;
  wire S_0;
  wire S_1;
  wire S_2;
  wire S_3;

  (* CHECK_LICENSE_TYPE = "design_1_FullAdder_0_0,FullAdder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "package_project" *) 
  (* x_core_info = "FullAdder,Vivado 2022.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_FullAdder_0_0 FullAdder_0
       (.A(A_0),
        .B(B_0),
        .Cin(Cin),
        .Cout(FullAdder_0_Cout),
        .S(S_0));
  (* CHECK_LICENSE_TYPE = "design_1_FullAdder_1_0,FullAdder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "package_project" *) 
  (* x_core_info = "FullAdder,Vivado 2022.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_FullAdder_1_0 FullAdder_1
       (.A(A_1),
        .B(B_1),
        .Cin(FullAdder_0_Cout),
        .Cout(FullAdder_1_Cout),
        .S(S_1));
  (* CHECK_LICENSE_TYPE = "design_1_FullAdder_2_0,FullAdder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "package_project" *) 
  (* x_core_info = "FullAdder,Vivado 2022.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_FullAdder_2_0 FullAdder_2
       (.A(A_2),
        .B(B_2),
        .Cin(FullAdder_1_Cout),
        .Cout(FullAdder_2_Cout),
        .S(S_2));
  (* CHECK_LICENSE_TYPE = "design_1_FullAdder_3_0,FullAdder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "package_project" *) 
  (* x_core_info = "FullAdder,Vivado 2022.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_FullAdder_3_0 FullAdder_3
       (.A(A_3),
        .B(B_3),
        .Cin(FullAdder_2_Cout),
        .Cout(Cout),
        .S(S_3));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_FourBitAdder_0_0,design_1_wrapper,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "design_1_wrapper,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (A_0,
    A_1,
    A_2,
    A_3,
    B_0,
    B_1,
    B_2,
    B_3,
    Cin,
    Cout,
    S_0,
    S_1,
    S_2,
    S_3);
  input A_0;
  input A_1;
  input A_2;
  input A_3;
  input B_0;
  input B_1;
  input B_2;
  input B_3;
  input Cin;
  output Cout;
  output S_0;
  output S_1;
  output S_2;
  output S_3;

  wire A_0;
  wire A_1;
  wire A_2;
  wire A_3;
  wire B_0;
  wire B_1;
  wire B_2;
  wire B_3;
  wire Cin;
  wire Cout;
  wire S_0;
  wire S_1;
  wire S_2;
  wire S_3;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_wrapper U0
       (.A_0(A_0),
        .A_1(A_1),
        .A_2(A_2),
        .A_3(A_3),
        .B_0(B_0),
        .B_1(B_1),
        .B_2(B_2),
        .B_3(B_3),
        .Cin(Cin),
        .Cout(Cout),
        .S_0(S_0),
        .S_1(S_1),
        .S_2(S_2),
        .S_3(S_3));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_FullAdder_0_0,FullAdder,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "FullAdder,Vivado 2022.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_FullAdder_0_0
   (A,
    B,
    Cin,
    S,
    Cout);
  input A;
  input B;
  input Cin;
  output S;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire S;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FullAdder__1 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .S(S));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_FullAdder_1_0,FullAdder,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "FullAdder,Vivado 2022.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_FullAdder_1_0
   (A,
    B,
    Cin,
    S,
    Cout);
  input A;
  input B;
  input Cin;
  output S;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire S;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FullAdder__2 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .S(S));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_FullAdder_2_0,FullAdder,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "FullAdder,Vivado 2022.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_FullAdder_2_0
   (A,
    B,
    Cin,
    S,
    Cout);
  input A;
  input B;
  input Cin;
  output S;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire S;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FullAdder__3 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .S(S));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_FullAdder_3_0,FullAdder,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "FullAdder,Vivado 2022.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_FullAdder_3_0
   (A,
    B,
    Cin,
    S,
    Cout);
  input A;
  input B;
  input Cin;
  output S;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire S;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FullAdder U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .S(S));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_wrapper
   (A_0,
    A_1,
    A_2,
    A_3,
    B_0,
    B_1,
    B_2,
    B_3,
    Cin,
    Cout,
    S_0,
    S_1,
    S_2,
    S_3);
  input A_0;
  input A_1;
  input A_2;
  input A_3;
  input B_0;
  input B_1;
  input B_2;
  input B_3;
  input Cin;
  output Cout;
  output S_0;
  output S_1;
  output S_2;
  output S_3;

  wire A_0;
  wire A_1;
  wire A_2;
  wire A_3;
  wire B_0;
  wire B_1;
  wire B_2;
  wire B_3;
  wire Cin;
  wire Cout;
  wire S_0;
  wire S_1;
  wire S_2;
  wire S_3;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1 design_1_i
       (.A_0(A_0),
        .A_1(A_1),
        .A_2(A_2),
        .A_3(A_3),
        .B_0(B_0),
        .B_1(B_1),
        .B_2(B_2),
        .B_3(B_3),
        .Cin(Cin),
        .Cout(Cout),
        .S_0(S_0),
        .S_1(S_1),
        .S_2(S_2),
        .S_3(S_3));
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
