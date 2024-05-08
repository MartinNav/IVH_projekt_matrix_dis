-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Wed May  8 18:56:00 2024
-- Host        : LAPTOP-O3BSDE06 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_top_0_0_sim_netlist.vhdl
-- Design      : design_1_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top is
  port (
    col : out STD_LOGIC_VECTOR ( 4 downto 0 );
    row : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top is
  signal cnt : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \cnt0_carry__0_n_0\ : STD_LOGIC;
  signal \cnt0_carry__0_n_1\ : STD_LOGIC;
  signal \cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \cnt0_carry__0_n_3\ : STD_LOGIC;
  signal \cnt0_carry__1_n_0\ : STD_LOGIC;
  signal \cnt0_carry__1_n_1\ : STD_LOGIC;
  signal \cnt0_carry__1_n_2\ : STD_LOGIC;
  signal \cnt0_carry__1_n_3\ : STD_LOGIC;
  signal \cnt0_carry__2_n_3\ : STD_LOGIC;
  signal cnt0_carry_n_0 : STD_LOGIC;
  signal cnt0_carry_n_1 : STD_LOGIC;
  signal cnt0_carry_n_2 : STD_LOGIC;
  signal cnt0_carry_n_3 : STD_LOGIC;
  signal cnt_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal col_indx : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \col_indx[0]_i_1_n_0\ : STD_LOGIC;
  signal \col_indx[1]_i_1_n_0\ : STD_LOGIC;
  signal \col_indx[2]_i_1_n_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal \^row\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal scol : STD_LOGIC_VECTOR ( 6 downto 4 );
  signal \scol[3]_i_1_n_0\ : STD_LOGIC;
  signal \scol[6]_i_1_n_0\ : STD_LOGIC;
  signal \scol[6]_i_3_n_0\ : STD_LOGIC;
  signal \scol[6]_i_4_n_0\ : STD_LOGIC;
  signal \scol[6]_i_5_n_0\ : STD_LOGIC;
  signal \NLW_cnt0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_cnt0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of cnt0_carry : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__2\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \col_indx[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \col_indx[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \scol[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \scol[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \scol[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \scol[6]_i_2\ : label is "soft_lutpair1";
begin
  row(7 downto 0) <= \^row\(7 downto 0);
cnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cnt0_carry_n_0,
      CO(2) => cnt0_carry_n_1,
      CO(1) => cnt0_carry_n_2,
      CO(0) => cnt0_carry_n_3,
      CYINIT => cnt(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => cnt(4 downto 1)
    );
\cnt0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cnt0_carry_n_0,
      CO(3) => \cnt0_carry__0_n_0\,
      CO(2) => \cnt0_carry__0_n_1\,
      CO(1) => \cnt0_carry__0_n_2\,
      CO(0) => \cnt0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => cnt(8 downto 5)
    );
\cnt0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__0_n_0\,
      CO(3) => \cnt0_carry__1_n_0\,
      CO(2) => \cnt0_carry__1_n_1\,
      CO(1) => \cnt0_carry__1_n_2\,
      CO(0) => \cnt0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => cnt(12 downto 9)
    );
\cnt0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__1_n_0\,
      CO(3 downto 1) => \NLW_cnt0_carry__2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \cnt0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_cnt0_carry__2_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => data0(14 downto 13),
      S(3 downto 2) => B"00",
      S(1 downto 0) => cnt(14 downto 13)
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \scol[6]_i_3_n_0\,
      I1 => \scol[6]_i_4_n_0\,
      I2 => \scol[6]_i_5_n_0\,
      I3 => cnt(0),
      O => cnt_0(0)
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cnt_0(0),
      Q => cnt(0),
      R => '0'
    );
\cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(10),
      Q => cnt(10),
      R => \scol[6]_i_1_n_0\
    );
\cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(11),
      Q => cnt(11),
      R => \scol[6]_i_1_n_0\
    );
\cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(12),
      Q => cnt(12),
      R => \scol[6]_i_1_n_0\
    );
\cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(13),
      Q => cnt(13),
      R => \scol[6]_i_1_n_0\
    );
\cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(14),
      Q => cnt(14),
      R => \scol[6]_i_1_n_0\
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(1),
      Q => cnt(1),
      R => \scol[6]_i_1_n_0\
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(2),
      Q => cnt(2),
      R => \scol[6]_i_1_n_0\
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(3),
      Q => cnt(3),
      R => \scol[6]_i_1_n_0\
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(4),
      Q => cnt(4),
      R => \scol[6]_i_1_n_0\
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(5),
      Q => cnt(5),
      R => \scol[6]_i_1_n_0\
    );
\cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(6),
      Q => cnt(6),
      R => \scol[6]_i_1_n_0\
    );
\cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(7),
      Q => cnt(7),
      R => \scol[6]_i_1_n_0\
    );
\cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(8),
      Q => cnt(8),
      R => \scol[6]_i_1_n_0\
    );
\cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(9),
      Q => cnt(9),
      R => \scol[6]_i_1_n_0\
    );
\col_indx[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => col_indx(0),
      O => \col_indx[0]_i_1_n_0\
    );
\col_indx[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => col_indx(1),
      I1 => col_indx(0),
      O => \col_indx[1]_i_1_n_0\
    );
\col_indx[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6C"
    )
        port map (
      I0 => col_indx(1),
      I1 => col_indx(2),
      I2 => col_indx(0),
      O => \col_indx[2]_i_1_n_0\
    );
\col_indx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \scol[6]_i_1_n_0\,
      D => \col_indx[0]_i_1_n_0\,
      Q => col_indx(0),
      R => '0'
    );
\col_indx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \scol[6]_i_1_n_0\,
      D => \col_indx[1]_i_1_n_0\,
      Q => col_indx(1),
      R => '0'
    );
\col_indx_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \scol[6]_i_1_n_0\,
      D => \col_indx[2]_i_1_n_0\,
      Q => col_indx(2),
      R => '0'
    );
\scol[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"65"
    )
        port map (
      I0 => col_indx(0),
      I1 => col_indx(1),
      I2 => col_indx(2),
      O => \scol[3]_i_1_n_0\
    );
\scol[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AD"
    )
        port map (
      I0 => col_indx(2),
      I1 => col_indx(1),
      I2 => col_indx(0),
      O => scol(4)
    );
\scol[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"43"
    )
        port map (
      I0 => col_indx(1),
      I1 => col_indx(0),
      I2 => col_indx(2),
      O => scol(5)
    );
\scol[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \scol[6]_i_3_n_0\,
      I1 => \scol[6]_i_4_n_0\,
      I2 => \scol[6]_i_5_n_0\,
      I3 => cnt(0),
      O => \scol[6]_i_1_n_0\
    );
\scol[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DB"
    )
        port map (
      I0 => col_indx(0),
      I1 => col_indx(2),
      I2 => col_indx(1),
      O => scol(6)
    );
\scol[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => cnt(13),
      I1 => cnt(14),
      I2 => cnt(11),
      I3 => cnt(12),
      I4 => cnt(2),
      I5 => cnt(1),
      O => \scol[6]_i_3_n_0\
    );
\scol[6]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => cnt(3),
      I1 => cnt(4),
      I2 => cnt(5),
      I3 => cnt(6),
      O => \scol[6]_i_4_n_0\
    );
\scol[6]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => cnt(8),
      I1 => cnt(7),
      I2 => cnt(10),
      I3 => cnt(9),
      O => \scol[6]_i_5_n_0\
    );
\scol_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \scol[6]_i_1_n_0\,
      D => '0',
      Q => col(0),
      R => '0'
    );
\scol_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \scol[6]_i_1_n_0\,
      D => \scol[3]_i_1_n_0\,
      Q => col(1),
      R => '0'
    );
\scol_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \scol[6]_i_1_n_0\,
      D => scol(4),
      Q => col(2),
      R => '0'
    );
\scol_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \scol[6]_i_1_n_0\,
      D => scol(5),
      Q => col(3),
      R => '0'
    );
\scol_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \scol[6]_i_1_n_0\,
      D => scol(6),
      Q => col(4),
      R => '0'
    );
\srow_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \scol[6]_i_1_n_0\,
      D => \^row\(7),
      Q => \^row\(0),
      R => '0'
    );
\srow_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \scol[6]_i_1_n_0\,
      D => \^row\(0),
      Q => \^row\(1),
      R => '0'
    );
\srow_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \scol[6]_i_1_n_0\,
      D => \^row\(1),
      Q => \^row\(2),
      R => '0'
    );
\srow_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \scol[6]_i_1_n_0\,
      D => \^row\(2),
      Q => \^row\(3),
      R => '0'
    );
\srow_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \scol[6]_i_1_n_0\,
      D => \^row\(3),
      Q => \^row\(4),
      R => '0'
    );
\srow_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \scol[6]_i_1_n_0\,
      D => \^row\(4),
      Q => \^row\(5),
      R => '0'
    );
\srow_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \scol[6]_i_1_n_0\,
      D => \^row\(5),
      Q => \^row\(6),
      R => '0'
    );
\srow_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \scol[6]_i_1_n_0\,
      D => \^row\(6),
      Q => \^row\(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    col : out STD_LOGIC_VECTOR ( 7 downto 0 );
    row : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_top_0_0,top,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "top,Vivado 2023.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^col\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
begin
  col(7) <= \<const0>\;
  col(6) <= \^col\(2);
  col(5 downto 2) <= \^col\(5 downto 2);
  col(1) <= \^col\(0);
  col(0) <= \^col\(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top
     port map (
      clk => clk,
      col(4) => \^col\(2),
      col(3 downto 1) => \^col\(5 downto 3),
      col(0) => \^col\(0),
      row(7 downto 0) => row(7 downto 0)
    );
end STRUCTURE;
