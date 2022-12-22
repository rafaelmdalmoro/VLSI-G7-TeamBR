--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
--Date        : Thu Nov 24 16:27:14 2022
--Host        : DESKTOP-Q90JH2A running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    AN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    A_0 : in STD_LOGIC;
    A_1 : in STD_LOGIC;
    A_2 : in STD_LOGIC;
    A_3 : in STD_LOGIC;
    B_0 : in STD_LOGIC;
    B_1 : in STD_LOGIC;
    B_2 : in STD_LOGIC;
    B_3 : in STD_LOGIC;
    CLK : in STD_LOGIC;
    Cin : in STD_LOGIC;
    DP : out STD_LOGIC;
    RESET : in STD_LOGIC;
    SEG : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_FourBitAdder_0_0 is
  port (
    A_0 : in STD_LOGIC;
    A_1 : in STD_LOGIC;
    A_2 : in STD_LOGIC;
    A_3 : in STD_LOGIC;
    B_0 : in STD_LOGIC;
    B_1 : in STD_LOGIC;
    B_2 : in STD_LOGIC;
    B_3 : in STD_LOGIC;
    Cin : in STD_LOGIC;
    Cout : out STD_LOGIC;
    S_0 : out STD_LOGIC;
    S_1 : out STD_LOGIC;
    S_2 : out STD_LOGIC;
    S_3 : out STD_LOGIC
  );
  end component design_1_FourBitAdder_0_0;
  component design_1_Mux8x7Seg_0_0 is
  port (
    CLK : in STD_LOGIC;
    RESET : in STD_LOGIC;
    d0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    d1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    d2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    d3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    d4 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    d5 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    d6 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    d7 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SEG : out STD_LOGIC_VECTOR ( 6 downto 0 );
    AN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DP : out STD_LOGIC
  );
  end component design_1_Mux8x7Seg_0_0;
  component design_1_DoubleDabbler12Bit_0_0 is
  port (
    hex_in : in STD_LOGIC_VECTOR ( 11 downto 0 );
    bcd_tho : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bcd_hun : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bcd_ten : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bcd_uni : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_1_DoubleDabbler12Bit_0_0;
  component design_1_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component design_1_xlconcat_0_0;
  signal A_0_0_1 : STD_LOGIC;
  signal A_1_0_1 : STD_LOGIC;
  signal A_2_0_1 : STD_LOGIC;
  signal A_3_0_1 : STD_LOGIC;
  signal B_0_0_1 : STD_LOGIC;
  signal B_1_0_1 : STD_LOGIC;
  signal B_2_0_1 : STD_LOGIC;
  signal B_3_0_1 : STD_LOGIC;
  signal CLK_0_1 : STD_LOGIC;
  signal Cin_0_1 : STD_LOGIC;
  signal DoubleDabbler12Bit_0_bcd_hun : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DoubleDabbler12Bit_0_bcd_ten : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DoubleDabbler12Bit_0_bcd_tho : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DoubleDabbler12Bit_0_bcd_uni : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal FourBitAdder_0_Cout : STD_LOGIC;
  signal FourBitAdder_0_S_0 : STD_LOGIC;
  signal FourBitAdder_0_S_1 : STD_LOGIC;
  signal FourBitAdder_0_S_2 : STD_LOGIC;
  signal FourBitAdder_0_S_3 : STD_LOGIC;
  signal Mux8x7Seg_0_AN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Mux8x7Seg_0_DP : STD_LOGIC;
  signal Mux8x7Seg_0_SEG : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal RESET_0_1 : STD_LOGIC;
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET RESET, CLK_DOMAIN design_1_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of RESET : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute X_INTERFACE_PARAMETER of RESET : signal is "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
  AN(7 downto 0) <= Mux8x7Seg_0_AN(7 downto 0);
  A_0_0_1 <= A_0;
  A_1_0_1 <= A_1;
  A_2_0_1 <= A_2;
  A_3_0_1 <= A_3;
  B_0_0_1 <= B_0;
  B_1_0_1 <= B_1;
  B_2_0_1 <= B_2;
  B_3_0_1 <= B_3;
  CLK_0_1 <= CLK;
  Cin_0_1 <= Cin;
  DP <= Mux8x7Seg_0_DP;
  RESET_0_1 <= RESET;
  SEG(6 downto 0) <= Mux8x7Seg_0_SEG(6 downto 0);
DoubleDabbler12Bit_0: component design_1_DoubleDabbler12Bit_0_0
     port map (
      bcd_hun(3 downto 0) => DoubleDabbler12Bit_0_bcd_hun(3 downto 0),
      bcd_ten(3 downto 0) => DoubleDabbler12Bit_0_bcd_ten(3 downto 0),
      bcd_tho(3 downto 0) => DoubleDabbler12Bit_0_bcd_tho(3 downto 0),
      bcd_uni(3 downto 0) => DoubleDabbler12Bit_0_bcd_uni(3 downto 0),
      hex_in(11 downto 5) => B"0000000",
      hex_in(4 downto 0) => xlconcat_0_dout(4 downto 0)
    );
FourBitAdder_0: component design_1_FourBitAdder_0_0
     port map (
      A_0 => A_0_0_1,
      A_1 => A_1_0_1,
      A_2 => A_2_0_1,
      A_3 => A_3_0_1,
      B_0 => B_0_0_1,
      B_1 => B_1_0_1,
      B_2 => B_2_0_1,
      B_3 => B_3_0_1,
      Cin => Cin_0_1,
      Cout => FourBitAdder_0_Cout,
      S_0 => FourBitAdder_0_S_0,
      S_1 => FourBitAdder_0_S_1,
      S_2 => FourBitAdder_0_S_2,
      S_3 => FourBitAdder_0_S_3
    );
Mux8x7Seg_0: component design_1_Mux8x7Seg_0_0
     port map (
      AN(7 downto 0) => Mux8x7Seg_0_AN(7 downto 0),
      CLK => CLK_0_1,
      DP => Mux8x7Seg_0_DP,
      RESET => RESET_0_1,
      SEG(6 downto 0) => Mux8x7Seg_0_SEG(6 downto 0),
      d0(3 downto 0) => DoubleDabbler12Bit_0_bcd_uni(3 downto 0),
      d1(3 downto 0) => DoubleDabbler12Bit_0_bcd_ten(3 downto 0),
      d2(3 downto 0) => DoubleDabbler12Bit_0_bcd_hun(3 downto 0),
      d3(3 downto 0) => DoubleDabbler12Bit_0_bcd_tho(3 downto 0),
      d4(3 downto 0) => B"0000",
      d5(3 downto 0) => B"0000",
      d6(3 downto 0) => B"0000",
      d7(3 downto 0) => B"0000"
    );
xlconcat_0: component design_1_xlconcat_0_0
     port map (
      In0(0) => FourBitAdder_0_S_0,
      In1(0) => FourBitAdder_0_S_1,
      In2(0) => FourBitAdder_0_S_2,
      In3(0) => FourBitAdder_0_S_3,
      In4(0) => FourBitAdder_0_Cout,
      dout(4 downto 0) => xlconcat_0_dout(4 downto 0)
    );
end STRUCTURE;
