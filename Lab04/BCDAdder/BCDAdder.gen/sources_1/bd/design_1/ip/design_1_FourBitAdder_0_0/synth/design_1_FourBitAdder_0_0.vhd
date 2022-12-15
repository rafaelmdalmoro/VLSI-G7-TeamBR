-- (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:user:FourBitAdder:1.0
-- IP Revision: 2

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_FourBitAdder_0_0 IS
  PORT (
    A_0 : IN STD_LOGIC;
    A_1 : IN STD_LOGIC;
    A_2 : IN STD_LOGIC;
    A_3 : IN STD_LOGIC;
    B_0 : IN STD_LOGIC;
    B_1 : IN STD_LOGIC;
    B_2 : IN STD_LOGIC;
    B_3 : IN STD_LOGIC;
    Cin : IN STD_LOGIC;
    Cout : OUT STD_LOGIC;
    S_0 : OUT STD_LOGIC;
    S_1 : OUT STD_LOGIC;
    S_2 : OUT STD_LOGIC;
    S_3 : OUT STD_LOGIC
  );
END design_1_FourBitAdder_0_0;

ARCHITECTURE design_1_FourBitAdder_0_0_arch OF design_1_FourBitAdder_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_FourBitAdder_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT design_1_wrapper IS
    PORT (
      A_0 : IN STD_LOGIC;
      A_1 : IN STD_LOGIC;
      A_2 : IN STD_LOGIC;
      A_3 : IN STD_LOGIC;
      B_0 : IN STD_LOGIC;
      B_1 : IN STD_LOGIC;
      B_2 : IN STD_LOGIC;
      B_3 : IN STD_LOGIC;
      Cin : IN STD_LOGIC;
      Cout : OUT STD_LOGIC;
      S_0 : OUT STD_LOGIC;
      S_1 : OUT STD_LOGIC;
      S_2 : OUT STD_LOGIC;
      S_3 : OUT STD_LOGIC
    );
  END COMPONENT design_1_wrapper;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF design_1_FourBitAdder_0_0_arch: ARCHITECTURE IS "design_1_wrapper,Vivado 2022.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF design_1_FourBitAdder_0_0_arch : ARCHITECTURE IS "design_1_FourBitAdder_0_0,design_1_wrapper,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF design_1_FourBitAdder_0_0_arch: ARCHITECTURE IS "design_1_FourBitAdder_0_0,design_1_wrapper,{x_ipProduct=Vivado 2022.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=FourBitAdder,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_1_FourBitAdder_0_0_arch: ARCHITECTURE IS "package_project";
BEGIN
  U0 : design_1_wrapper
    PORT MAP (
      A_0 => A_0,
      A_1 => A_1,
      A_2 => A_2,
      A_3 => A_3,
      B_0 => B_0,
      B_1 => B_1,
      B_2 => B_2,
      B_3 => B_3,
      Cin => Cin,
      Cout => Cout,
      S_0 => S_0,
      S_1 => S_1,
      S_2 => S_2,
      S_3 => S_3
    );
END design_1_FourBitAdder_0_0_arch;
