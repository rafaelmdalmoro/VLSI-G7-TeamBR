-- (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
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

-- IP VLNV: xilinx.com:user:Mux8x7Seg:1.0
-- IP Revision: 3

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_Mux8x7Seg_0_0 IS
  PORT (
    CLK : IN STD_LOGIC;
    RESET : IN STD_LOGIC;
    d0 : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    d1 : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    d2 : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    d3 : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    d4 : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    d5 : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    d6 : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    d7 : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    SEG : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
    AN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    DP : OUT STD_LOGIC
  );
END design_1_Mux8x7Seg_0_0;

ARCHITECTURE design_1_Mux8x7Seg_0_0_arch OF design_1_Mux8x7Seg_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_Mux8x7Seg_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT mux_8x7seg IS
    GENERIC (
      NoDecoder : INTEGER
    );
    PORT (
      CLK : IN STD_LOGIC;
      RESET : IN STD_LOGIC;
      d0 : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
      d1 : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
      d2 : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
      d3 : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
      d4 : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
      d5 : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
      d6 : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
      d7 : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
      SEG : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
      AN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      DP : OUT STD_LOGIC
    );
  END COMPONENT mux_8x7seg;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF CLK: SIGNAL IS "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RESET, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF CLK: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF RESET: SIGNAL IS "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF RESET: SIGNAL IS "xilinx.com:signal:reset:1.0 RESET RST";
BEGIN
  U0 : mux_8x7seg
    GENERIC MAP (
      NoDecoder => 1
    )
    PORT MAP (
      CLK => CLK,
      RESET => RESET,
      d0 => d0,
      d1 => d1,
      d2 => d2,
      d3 => d3,
      d4 => d4,
      d5 => d5,
      d6 => d6,
      d7 => d7,
      SEG => SEG,
      AN => AN,
      DP => DP
    );
END design_1_Mux8x7Seg_0_0_arch;
