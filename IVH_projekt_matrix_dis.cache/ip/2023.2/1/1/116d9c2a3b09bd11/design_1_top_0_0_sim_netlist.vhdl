-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Sun May 12 11:28:21 2024
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bcd_value_reg[0]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \bcd_value_reg[2]_0\ : out STD_LOGIC;
    \bcd_value_reg[2]_1\ : out STD_LOGIC;
    \bcd_value_reg[0]_1\ : out STD_LOGIC;
    \bcd_value_reg[2]_2\ : out STD_LOGIC;
    \bcd_value_reg[2]_3\ : out STD_LOGIC;
    \bcd_value_reg[2]_4\ : out STD_LOGIC;
    clk : in STD_LOGIC;
    \bcd_value_reg[0]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \bcd_value[0]_i_1_n_0\ : STD_LOGIC;
  signal \bcd_value[1]_i_1_n_0\ : STD_LOGIC;
  signal \bcd_value[2]_i_1_n_0\ : STD_LOGIC;
  signal \bcd_value[3]_i_1_n_0\ : STD_LOGIC;
  signal bcd_value_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal carry_i_1_n_0 : STD_LOGIC;
  signal \change_digit[0]_i_1_n_0\ : STD_LOGIC;
  signal \change_digit[1]_i_1_n_0\ : STD_LOGIC;
  signal \change_digit[1]_i_2_n_0\ : STD_LOGIC;
  signal \change_digit_reg_n_0_[0]\ : STD_LOGIC;
  signal \change_digit_reg_n_0_[1]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bcd_value[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bcd_value[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \bcd_value[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \change_digit[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \change_digit[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \change_digit[1]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \first_value[10]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \first_value[12]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \first_value[14]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \first_value[19]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \first_value[21]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \first_value[23]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \first_value[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \first_value[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \first_value[5]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \first_value[6]_i_1\ : label is "soft_lutpair7";
begin
  E(0) <= \^e\(0);
  Q(0) <= \^q\(0);
\bcd_value[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bcd_value_reg(0),
      O => \bcd_value[0]_i_1_n_0\
    );
\bcd_value[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5A52"
    )
        port map (
      I0 => bcd_value_reg(0),
      I1 => \^q\(0),
      I2 => bcd_value_reg(1),
      I3 => bcd_value_reg(2),
      O => \bcd_value[1]_i_1_n_0\
    );
\bcd_value[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => bcd_value_reg(0),
      I1 => bcd_value_reg(1),
      I2 => bcd_value_reg(2),
      O => \bcd_value[2]_i_1_n_0\
    );
\bcd_value[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6CC4"
    )
        port map (
      I0 => bcd_value_reg(0),
      I1 => \^q\(0),
      I2 => bcd_value_reg(1),
      I3 => bcd_value_reg(2),
      O => \bcd_value[3]_i_1_n_0\
    );
\bcd_value_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bcd_value_reg[0]_2\(0),
      CLR => AR(0),
      D => \bcd_value[0]_i_1_n_0\,
      Q => bcd_value_reg(0)
    );
\bcd_value_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bcd_value_reg[0]_2\(0),
      CLR => AR(0),
      D => \bcd_value[1]_i_1_n_0\,
      Q => bcd_value_reg(1)
    );
\bcd_value_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bcd_value_reg[0]_2\(0),
      CLR => AR(0),
      D => \bcd_value[2]_i_1_n_0\,
      Q => bcd_value_reg(2)
    );
\bcd_value_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bcd_value_reg[0]_2\(0),
      CLR => AR(0),
      D => \bcd_value[3]_i_1_n_0\,
      Q => \^q\(0)
    );
carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => \^e\(0),
      I1 => \change_digit_reg_n_0_[0]\,
      I2 => \change_digit_reg_n_0_[1]\,
      O => carry_i_1_n_0
    );
carry_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carry_i_1_n_0,
      Q => \^e\(0),
      R => '0'
    );
\change_digit[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \change_digit[1]_i_2_n_0\,
      I1 => \change_digit_reg_n_0_[0]\,
      I2 => \change_digit_reg_n_0_[1]\,
      I3 => \bcd_value_reg[0]_2\(0),
      O => \change_digit[0]_i_1_n_0\
    );
\change_digit[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAF0"
    )
        port map (
      I0 => \change_digit[1]_i_2_n_0\,
      I1 => \change_digit_reg_n_0_[0]\,
      I2 => \change_digit_reg_n_0_[1]\,
      I3 => \bcd_value_reg[0]_2\(0),
      O => \change_digit[1]_i_1_n_0\
    );
\change_digit[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => bcd_value_reg(2),
      I1 => bcd_value_reg(1),
      I2 => \^q\(0),
      I3 => bcd_value_reg(0),
      O => \change_digit[1]_i_2_n_0\
    );
\change_digit_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \change_digit[0]_i_1_n_0\,
      Q => \change_digit_reg_n_0_[0]\,
      R => '0'
    );
\change_digit_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \change_digit[1]_i_1_n_0\,
      Q => \change_digit_reg_n_0_[1]\,
      R => '0'
    );
\first_value[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BCFB"
    )
        port map (
      I0 => \^q\(0),
      I1 => bcd_value_reg(2),
      I2 => bcd_value_reg(1),
      I3 => bcd_value_reg(0),
      O => D(1)
    );
\first_value[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7C"
    )
        port map (
      I0 => bcd_value_reg(0),
      I1 => bcd_value_reg(2),
      I2 => bcd_value_reg(1),
      O => \bcd_value_reg[0]_1\
    );
\first_value[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"ED"
    )
        port map (
      I0 => bcd_value_reg(2),
      I1 => bcd_value_reg(1),
      I2 => bcd_value_reg(0),
      O => \bcd_value_reg[2]_2\
    );
\first_value[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => bcd_value_reg(2),
      I1 => bcd_value_reg(1),
      I2 => bcd_value_reg(0),
      O => \bcd_value_reg[2]_4\
    );
\first_value[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9F"
    )
        port map (
      I0 => bcd_value_reg(0),
      I1 => bcd_value_reg(1),
      I2 => bcd_value_reg(2),
      O => \bcd_value_reg[0]_0\
    );
\first_value[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \^q\(0),
      I1 => bcd_value_reg(2),
      I2 => bcd_value_reg(1),
      O => D(2)
    );
\first_value[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A8EF"
    )
        port map (
      I0 => \^q\(0),
      I1 => bcd_value_reg(1),
      I2 => bcd_value_reg(2),
      I3 => bcd_value_reg(0),
      O => D(0)
    );
\first_value[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => bcd_value_reg(2),
      I1 => bcd_value_reg(1),
      I2 => bcd_value_reg(0),
      O => \bcd_value_reg[2]_0\
    );
\first_value[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2B"
    )
        port map (
      I0 => bcd_value_reg(2),
      I1 => bcd_value_reg(0),
      I2 => bcd_value_reg(1),
      O => \bcd_value_reg[2]_1\
    );
\first_value[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => bcd_value_reg(2),
      I1 => bcd_value_reg(0),
      I2 => bcd_value_reg(1),
      O => \bcd_value_reg[2]_3\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_0 is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bcd_value_reg[0]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \bcd_value_reg[2]_0\ : out STD_LOGIC;
    \bcd_value_reg[2]_1\ : out STD_LOGIC;
    \bcd_value_reg[0]_1\ : out STD_LOGIC;
    \bcd_value_reg[2]_2\ : out STD_LOGIC;
    \bcd_value_reg[2]_3\ : out STD_LOGIC;
    \bcd_value_reg[2]_4\ : out STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_0 : entity is "counter";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_0 is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \bcd_value[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \bcd_value[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \bcd_value[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \bcd_value[3]_i_1__0_n_0\ : STD_LOGIC;
  signal bcd_value_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bcd_value[0]_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \bcd_value[1]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \bcd_value[2]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \bcd_value[3]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \second_value[10]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \second_value[12]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \second_value[14]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \second_value[19]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \second_value[21]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \second_value[23]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \second_value[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \second_value[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \second_value[5]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \second_value[6]_i_1\ : label is "soft_lutpair13";
begin
  Q(0) <= \^q\(0);
\bcd_value[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bcd_value_reg(0),
      O => \bcd_value[0]_i_1__0_n_0\
    );
\bcd_value[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5A52"
    )
        port map (
      I0 => bcd_value_reg(0),
      I1 => \^q\(0),
      I2 => bcd_value_reg(1),
      I3 => bcd_value_reg(2),
      O => \bcd_value[1]_i_1__0_n_0\
    );
\bcd_value[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => bcd_value_reg(0),
      I1 => bcd_value_reg(1),
      I2 => bcd_value_reg(2),
      O => \bcd_value[2]_i_1__0_n_0\
    );
\bcd_value[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6CC4"
    )
        port map (
      I0 => bcd_value_reg(0),
      I1 => \^q\(0),
      I2 => bcd_value_reg(1),
      I3 => bcd_value_reg(2),
      O => \bcd_value[3]_i_1__0_n_0\
    );
\bcd_value_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => \bcd_value[0]_i_1__0_n_0\,
      Q => bcd_value_reg(0)
    );
\bcd_value_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => \bcd_value[1]_i_1__0_n_0\,
      Q => bcd_value_reg(1)
    );
\bcd_value_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => \bcd_value[2]_i_1__0_n_0\,
      Q => bcd_value_reg(2)
    );
\bcd_value_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => \bcd_value[3]_i_1__0_n_0\,
      Q => \^q\(0)
    );
\second_value[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BCFB"
    )
        port map (
      I0 => \^q\(0),
      I1 => bcd_value_reg(2),
      I2 => bcd_value_reg(1),
      I3 => bcd_value_reg(0),
      O => D(1)
    );
\second_value[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7C"
    )
        port map (
      I0 => bcd_value_reg(0),
      I1 => bcd_value_reg(2),
      I2 => bcd_value_reg(1),
      O => \bcd_value_reg[0]_1\
    );
\second_value[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"ED"
    )
        port map (
      I0 => bcd_value_reg(2),
      I1 => bcd_value_reg(1),
      I2 => bcd_value_reg(0),
      O => \bcd_value_reg[2]_2\
    );
\second_value[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => bcd_value_reg(2),
      I1 => bcd_value_reg(1),
      I2 => bcd_value_reg(0),
      O => \bcd_value_reg[2]_4\
    );
\second_value[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9F"
    )
        port map (
      I0 => bcd_value_reg(0),
      I1 => bcd_value_reg(1),
      I2 => bcd_value_reg(2),
      O => \bcd_value_reg[0]_0\
    );
\second_value[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \^q\(0),
      I1 => bcd_value_reg(2),
      I2 => bcd_value_reg(1),
      O => D(2)
    );
\second_value[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A8EF"
    )
        port map (
      I0 => \^q\(0),
      I1 => bcd_value_reg(1),
      I2 => bcd_value_reg(2),
      I3 => bcd_value_reg(0),
      O => D(0)
    );
\second_value[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => bcd_value_reg(2),
      I1 => bcd_value_reg(1),
      I2 => bcd_value_reg(0),
      O => \bcd_value_reg[2]_0\
    );
\second_value[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2B"
    )
        port map (
      I0 => bcd_value_reg(2),
      I1 => bcd_value_reg(0),
      I2 => bcd_value_reg(1),
      O => \bcd_value_reg[2]_1\
    );
\second_value[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => bcd_value_reg(2),
      I1 => bcd_value_reg(0),
      I2 => bcd_value_reg(1),
      O => \bcd_value_reg[2]_3\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_anim is
  port (
    \screen_value_reg[11]_0\ : out STD_LOGIC;
    \screen_value_reg[12]_0\ : out STD_LOGIC;
    \screen_value_reg[13]_0\ : out STD_LOGIC;
    \screen_value_reg[14]_0\ : out STD_LOGIC;
    \screen_value_reg[18]_0\ : out STD_LOGIC;
    \screen_value_reg[20]_0\ : out STD_LOGIC;
    \screen_value_reg[22]_0\ : out STD_LOGIC;
    \screen_value_reg[27]_0\ : out STD_LOGIC;
    \screen_value_reg[29]_0\ : out STD_LOGIC;
    \screen_value_reg[31]_0\ : out STD_LOGIC;
    \screen_value_reg[43]_0\ : out STD_LOGIC;
    \screen_value_reg[44]_0\ : out STD_LOGIC;
    \screen_value_reg[45]_0\ : out STD_LOGIC;
    \screen_value_reg[46]_0\ : out STD_LOGIC;
    \screen_value_reg[50]_0\ : out STD_LOGIC;
    \screen_value_reg[52]_0\ : out STD_LOGIC;
    \screen_value_reg[54]_0\ : out STD_LOGIC;
    \screen_value_reg[59]_0\ : out STD_LOGIC;
    \screen_value_reg[61]_0\ : out STD_LOGIC;
    \screen_value_reg[62]_0\ : out STD_LOGIC;
    \screen_value_reg[63]_0\ : out STD_LOGIC;
    clk : in STD_LOGIC;
    \display_buffer_reg[11]\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_anim;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_anim is
  signal bcd_value_reg : STD_LOGIC_VECTOR ( 3 to 3 );
  signal bcd_value_reg_0 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal cnt1_n_10 : STD_LOGIC;
  signal cnt1_n_11 : STD_LOGIC;
  signal cnt1_n_2 : STD_LOGIC;
  signal cnt1_n_6 : STD_LOGIC;
  signal cnt1_n_7 : STD_LOGIC;
  signal cnt1_n_8 : STD_LOGIC;
  signal cnt1_n_9 : STD_LOGIC;
  signal cnt2_n_1 : STD_LOGIC;
  signal cnt2_n_10 : STD_LOGIC;
  signal cnt2_n_5 : STD_LOGIC;
  signal cnt2_n_6 : STD_LOGIC;
  signal cnt2_n_7 : STD_LOGIC;
  signal cnt2_n_8 : STD_LOGIC;
  signal cnt2_n_9 : STD_LOGIC;
  signal en_2nd_ctr : STD_LOGIC;
  signal first_value : STD_LOGIC_VECTOR ( 23 downto 3 );
  signal first_value_0 : STD_LOGIC_VECTOR ( 23 downto 3 );
  signal screen_value : STD_LOGIC_VECTOR ( 63 downto 11 );
  signal second_value : STD_LOGIC_VECTOR ( 23 downto 3 );
  signal second_value_1 : STD_LOGIC_VECTOR ( 23 downto 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \display_buffer[11]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \display_buffer[12]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \display_buffer[13]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \display_buffer[14]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \display_buffer[18]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \display_buffer[20]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \display_buffer[22]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \display_buffer[27]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \display_buffer[29]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \display_buffer[31]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \display_buffer[42]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \display_buffer[43]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \display_buffer[44]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \display_buffer[45]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \display_buffer[46]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \display_buffer[52]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \display_buffer[54]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \display_buffer[59]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \display_buffer[61]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \display_buffer[62]_i_1\ : label is "soft_lutpair24";
begin
cnt1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter
     port map (
      AR(0) => AR(0),
      D(2) => first_value_0(23),
      D(1) => first_value_0(10),
      D(0) => first_value_0(3),
      E(0) => en_2nd_ctr,
      Q(0) => bcd_value_reg(3),
      \bcd_value_reg[0]_0\ => cnt1_n_2,
      \bcd_value_reg[0]_1\ => cnt1_n_8,
      \bcd_value_reg[0]_2\(0) => E(0),
      \bcd_value_reg[2]_0\ => cnt1_n_6,
      \bcd_value_reg[2]_1\ => cnt1_n_7,
      \bcd_value_reg[2]_2\ => cnt1_n_9,
      \bcd_value_reg[2]_3\ => cnt1_n_10,
      \bcd_value_reg[2]_4\ => cnt1_n_11,
      clk => clk
    );
cnt2: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_0
     port map (
      AR(0) => AR(0),
      D(2) => second_value_1(23),
      D(1) => second_value_1(10),
      D(0) => second_value_1(3),
      E(0) => en_2nd_ctr,
      Q(0) => bcd_value_reg_0(3),
      \bcd_value_reg[0]_0\ => cnt2_n_1,
      \bcd_value_reg[0]_1\ => cnt2_n_7,
      \bcd_value_reg[2]_0\ => cnt2_n_5,
      \bcd_value_reg[2]_1\ => cnt2_n_6,
      \bcd_value_reg[2]_2\ => cnt2_n_8,
      \bcd_value_reg[2]_3\ => cnt2_n_9,
      \bcd_value_reg[2]_4\ => cnt2_n_10,
      clk => clk
    );
\display_buffer[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \display_buffer_reg[11]\,
      I1 => screen_value(11),
      O => \screen_value_reg[11]_0\
    );
\display_buffer[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \display_buffer_reg[11]\,
      I1 => screen_value(12),
      O => \screen_value_reg[12]_0\
    );
\display_buffer[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \display_buffer_reg[11]\,
      I1 => screen_value(13),
      O => \screen_value_reg[13]_0\
    );
\display_buffer[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \display_buffer_reg[11]\,
      I1 => screen_value(14),
      O => \screen_value_reg[14]_0\
    );
\display_buffer[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \display_buffer_reg[11]\,
      I1 => screen_value(18),
      O => \screen_value_reg[18]_0\
    );
\display_buffer[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \display_buffer_reg[11]\,
      I1 => screen_value(20),
      O => \screen_value_reg[20]_0\
    );
\display_buffer[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \display_buffer_reg[11]\,
      I1 => screen_value(22),
      O => \screen_value_reg[22]_0\
    );
\display_buffer[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \display_buffer_reg[11]\,
      I1 => screen_value(27),
      O => \screen_value_reg[27]_0\
    );
\display_buffer[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \display_buffer_reg[11]\,
      I1 => screen_value(29),
      O => \screen_value_reg[29]_0\
    );
\display_buffer[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \display_buffer_reg[11]\,
      I1 => screen_value(31),
      O => \screen_value_reg[31]_0\
    );
\display_buffer[42]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \display_buffer_reg[11]\,
      I1 => screen_value(50),
      O => \screen_value_reg[50]_0\
    );
\display_buffer[43]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \display_buffer_reg[11]\,
      I1 => screen_value(43),
      O => \screen_value_reg[43]_0\
    );
\display_buffer[44]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \display_buffer_reg[11]\,
      I1 => screen_value(44),
      O => \screen_value_reg[44]_0\
    );
\display_buffer[45]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \display_buffer_reg[11]\,
      I1 => screen_value(45),
      O => \screen_value_reg[45]_0\
    );
\display_buffer[46]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \display_buffer_reg[11]\,
      I1 => screen_value(46),
      O => \screen_value_reg[46]_0\
    );
\display_buffer[52]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \display_buffer_reg[11]\,
      I1 => screen_value(52),
      O => \screen_value_reg[52]_0\
    );
\display_buffer[54]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \display_buffer_reg[11]\,
      I1 => screen_value(54),
      O => \screen_value_reg[54]_0\
    );
\display_buffer[59]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \display_buffer_reg[11]\,
      I1 => screen_value(59),
      O => \screen_value_reg[59]_0\
    );
\display_buffer[61]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \display_buffer_reg[11]\,
      I1 => screen_value(61),
      O => \screen_value_reg[61]_0\
    );
\display_buffer[62]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \display_buffer_reg[11]\,
      I1 => screen_value(62),
      O => \screen_value_reg[62]_0\
    );
\display_buffer[63]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \display_buffer_reg[11]\,
      I1 => screen_value(63),
      O => \screen_value_reg[63]_0\
    );
\first_value_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => first_value_0(10),
      Q => first_value(10),
      R => '0'
    );
\first_value_reg[12]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cnt1_n_8,
      Q => first_value(12),
      S => bcd_value_reg(3)
    );
\first_value_reg[14]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cnt1_n_9,
      Q => first_value(14),
      S => bcd_value_reg(3)
    );
\first_value_reg[19]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cnt1_n_11,
      Q => first_value(19),
      S => bcd_value_reg(3)
    );
\first_value_reg[21]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cnt1_n_2,
      Q => first_value(21),
      S => bcd_value_reg(3)
    );
\first_value_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => '1',
      Q => first_value(22),
      R => '0'
    );
\first_value_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => first_value_0(23),
      Q => first_value(23),
      R => '0'
    );
\first_value_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => first_value_0(3),
      Q => first_value(3),
      R => '0'
    );
\first_value_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cnt1_n_6,
      Q => first_value(4),
      S => bcd_value_reg(3)
    );
\first_value_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cnt1_n_7,
      Q => first_value(5),
      S => bcd_value_reg(3)
    );
\first_value_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cnt1_n_10,
      Q => first_value(6),
      S => bcd_value_reg(3)
    );
\screen_value_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => second_value(3),
      Q => screen_value(11),
      R => '0'
    );
\screen_value_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => second_value(4),
      Q => screen_value(12),
      R => '0'
    );
\screen_value_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => second_value(5),
      Q => screen_value(13),
      R => '0'
    );
\screen_value_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => second_value(6),
      Q => screen_value(14),
      R => '0'
    );
\screen_value_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => second_value(10),
      Q => screen_value(18),
      R => '0'
    );
\screen_value_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => second_value(12),
      Q => screen_value(20),
      R => '0'
    );
\screen_value_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => second_value(14),
      Q => screen_value(22),
      R => '0'
    );
\screen_value_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => second_value(19),
      Q => screen_value(27),
      R => '0'
    );
\screen_value_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => second_value(21),
      Q => screen_value(29),
      R => '0'
    );
\screen_value_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => second_value(23),
      Q => screen_value(31),
      R => '0'
    );
\screen_value_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => first_value(3),
      Q => screen_value(43),
      R => '0'
    );
\screen_value_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => first_value(4),
      Q => screen_value(44),
      R => '0'
    );
\screen_value_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => first_value(5),
      Q => screen_value(45),
      R => '0'
    );
\screen_value_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => first_value(6),
      Q => screen_value(46),
      R => '0'
    );
\screen_value_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => first_value(10),
      Q => screen_value(50),
      R => '0'
    );
\screen_value_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => first_value(12),
      Q => screen_value(52),
      R => '0'
    );
\screen_value_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => first_value(14),
      Q => screen_value(54),
      R => '0'
    );
\screen_value_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => first_value(19),
      Q => screen_value(59),
      R => '0'
    );
\screen_value_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => first_value(21),
      Q => screen_value(61),
      R => '0'
    );
\screen_value_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => first_value(22),
      Q => screen_value(62),
      R => '0'
    );
\screen_value_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => first_value(23),
      Q => screen_value(63),
      R => '0'
    );
\second_value_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => second_value_1(10),
      Q => second_value(10),
      R => '0'
    );
\second_value_reg[12]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cnt2_n_7,
      Q => second_value(12),
      S => bcd_value_reg_0(3)
    );
\second_value_reg[14]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cnt2_n_8,
      Q => second_value(14),
      S => bcd_value_reg_0(3)
    );
\second_value_reg[19]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cnt2_n_10,
      Q => second_value(19),
      S => bcd_value_reg_0(3)
    );
\second_value_reg[21]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cnt2_n_1,
      Q => second_value(21),
      S => bcd_value_reg_0(3)
    );
\second_value_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => second_value_1(23),
      Q => second_value(23),
      R => '0'
    );
\second_value_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => second_value_1(3),
      Q => second_value(3),
      R => '0'
    );
\second_value_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cnt2_n_5,
      Q => second_value(4),
      S => bcd_value_reg_0(3)
    );
\second_value_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cnt2_n_6,
      Q => second_value(5),
      S => bcd_value_reg_0(3)
    );
\second_value_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cnt2_n_9,
      Q => second_value(6),
      S => bcd_value_reg_0(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top is
  port (
    row : out STD_LOGIC_VECTOR ( 7 downto 0 );
    col : out STD_LOGIC_VECTOR ( 6 downto 0 );
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top is
  signal cnt : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \cnt0_carry__0_n_0\ : STD_LOGIC;
  signal \cnt0_carry__0_n_1\ : STD_LOGIC;
  signal \cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \cnt0_carry__0_n_3\ : STD_LOGIC;
  signal \cnt0_carry__0_n_4\ : STD_LOGIC;
  signal \cnt0_carry__0_n_5\ : STD_LOGIC;
  signal \cnt0_carry__0_n_6\ : STD_LOGIC;
  signal \cnt0_carry__0_n_7\ : STD_LOGIC;
  signal \cnt0_carry__1_n_0\ : STD_LOGIC;
  signal \cnt0_carry__1_n_1\ : STD_LOGIC;
  signal \cnt0_carry__1_n_2\ : STD_LOGIC;
  signal \cnt0_carry__1_n_3\ : STD_LOGIC;
  signal \cnt0_carry__1_n_4\ : STD_LOGIC;
  signal \cnt0_carry__1_n_5\ : STD_LOGIC;
  signal \cnt0_carry__1_n_6\ : STD_LOGIC;
  signal \cnt0_carry__1_n_7\ : STD_LOGIC;
  signal \cnt0_carry__2_n_3\ : STD_LOGIC;
  signal \cnt0_carry__2_n_6\ : STD_LOGIC;
  signal \cnt0_carry__2_n_7\ : STD_LOGIC;
  signal cnt0_carry_n_0 : STD_LOGIC;
  signal cnt0_carry_n_1 : STD_LOGIC;
  signal cnt0_carry_n_2 : STD_LOGIC;
  signal cnt0_carry_n_3 : STD_LOGIC;
  signal cnt0_carry_n_4 : STD_LOGIC;
  signal cnt0_carry_n_5 : STD_LOGIC;
  signal cnt0_carry_n_6 : STD_LOGIC;
  signal cnt0_carry_n_7 : STD_LOGIC;
  signal cnt_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cnt_dis_enable_reg_n_0 : STD_LOGIC;
  signal cnt_dis_n_0 : STD_LOGIC;
  signal cnt_dis_n_1 : STD_LOGIC;
  signal cnt_dis_n_10 : STD_LOGIC;
  signal cnt_dis_n_11 : STD_LOGIC;
  signal cnt_dis_n_12 : STD_LOGIC;
  signal cnt_dis_n_13 : STD_LOGIC;
  signal cnt_dis_n_14 : STD_LOGIC;
  signal cnt_dis_n_15 : STD_LOGIC;
  signal cnt_dis_n_16 : STD_LOGIC;
  signal cnt_dis_n_17 : STD_LOGIC;
  signal cnt_dis_n_18 : STD_LOGIC;
  signal cnt_dis_n_19 : STD_LOGIC;
  signal cnt_dis_n_2 : STD_LOGIC;
  signal cnt_dis_n_20 : STD_LOGIC;
  signal cnt_dis_n_3 : STD_LOGIC;
  signal cnt_dis_n_4 : STD_LOGIC;
  signal cnt_dis_n_5 : STD_LOGIC;
  signal cnt_dis_n_6 : STD_LOGIC;
  signal cnt_dis_n_7 : STD_LOGIC;
  signal cnt_dis_n_8 : STD_LOGIC;
  signal cnt_dis_n_9 : STD_LOGIC;
  signal cnt_dis_rst : STD_LOGIC;
  signal cnt_dis_rst_i_1_n_0 : STD_LOGIC;
  signal \col[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \col[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \col[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \col[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \col[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \col[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \col[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \col[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \col[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \col[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \col[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \col[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal col_indx : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \col_indx[0]_i_1_n_0\ : STD_LOGIC;
  signal \col_indx[1]_i_1_n_0\ : STD_LOGIC;
  signal \col_indx[2]_i_1_n_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal data1 : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal data2 : STD_LOGIC_VECTOR ( 6 downto 2 );
  signal data3 : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal data4 : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal data5 : STD_LOGIC_VECTOR ( 6 downto 2 );
  signal data6 : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal display_buffer : STD_LOGIC;
  signal \display_buffer[37]_i_1_n_0\ : STD_LOGIC;
  signal \display_buffer[39]_i_1_n_0\ : STD_LOGIC;
  signal \display_buffer[63]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal \^row\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sec_cnt : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal \sec_cnt0_carry__0_n_0\ : STD_LOGIC;
  signal \sec_cnt0_carry__0_n_1\ : STD_LOGIC;
  signal \sec_cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \sec_cnt0_carry__0_n_3\ : STD_LOGIC;
  signal \sec_cnt0_carry__1_n_0\ : STD_LOGIC;
  signal \sec_cnt0_carry__1_n_1\ : STD_LOGIC;
  signal \sec_cnt0_carry__1_n_2\ : STD_LOGIC;
  signal \sec_cnt0_carry__1_n_3\ : STD_LOGIC;
  signal \sec_cnt0_carry__2_n_0\ : STD_LOGIC;
  signal \sec_cnt0_carry__2_n_1\ : STD_LOGIC;
  signal \sec_cnt0_carry__2_n_2\ : STD_LOGIC;
  signal \sec_cnt0_carry__2_n_3\ : STD_LOGIC;
  signal \sec_cnt0_carry__3_n_0\ : STD_LOGIC;
  signal \sec_cnt0_carry__3_n_1\ : STD_LOGIC;
  signal \sec_cnt0_carry__3_n_2\ : STD_LOGIC;
  signal \sec_cnt0_carry__3_n_3\ : STD_LOGIC;
  signal \sec_cnt0_carry__4_n_1\ : STD_LOGIC;
  signal \sec_cnt0_carry__4_n_2\ : STD_LOGIC;
  signal \sec_cnt0_carry__4_n_3\ : STD_LOGIC;
  signal sec_cnt0_carry_n_0 : STD_LOGIC;
  signal sec_cnt0_carry_n_1 : STD_LOGIC;
  signal sec_cnt0_carry_n_2 : STD_LOGIC;
  signal sec_cnt0_carry_n_3 : STD_LOGIC;
  signal \sec_cnt[24]_i_2_n_0\ : STD_LOGIC;
  signal \sec_cnt[24]_i_3_n_0\ : STD_LOGIC;
  signal \sec_cnt[24]_i_4_n_0\ : STD_LOGIC;
  signal \sec_cnt[24]_i_5_n_0\ : STD_LOGIC;
  signal \srow[7]_i_2_n_0\ : STD_LOGIC;
  signal \srow[7]_i_3_n_0\ : STD_LOGIC;
  signal \srow[7]_i_4_n_0\ : STD_LOGIC;
  signal time_from_start : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \time_from_start[0]_i_1_n_0\ : STD_LOGIC;
  signal \time_from_start[1]_i_1_n_0\ : STD_LOGIC;
  signal \time_from_start[2]_i_1_n_0\ : STD_LOGIC;
  signal \time_from_start[3]_i_1_n_0\ : STD_LOGIC;
  signal \time_from_start[4]_i_1_n_0\ : STD_LOGIC;
  signal \time_from_start[5]_i_1_n_0\ : STD_LOGIC;
  signal \time_from_start[5]_i_3_n_0\ : STD_LOGIC;
  signal \time_from_start[5]_i_4_n_0\ : STD_LOGIC;
  signal time_from_start_0 : STD_LOGIC;
  signal \NLW_cnt0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_cnt0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_sec_cnt0_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of cnt0_carry : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__2\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \col_indx[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \col_indx[2]_i_1\ : label is "soft_lutpair26";
  attribute ADDER_THRESHOLD of sec_cnt0_carry : label is 35;
  attribute ADDER_THRESHOLD of \sec_cnt0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \sec_cnt0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \sec_cnt0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \sec_cnt0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \sec_cnt0_carry__4\ : label is 35;
  attribute SOFT_HLUTNM of \time_from_start[1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \time_from_start[2]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \time_from_start[3]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \time_from_start[4]_i_1\ : label is "soft_lutpair25";
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
      O(3) => cnt0_carry_n_4,
      O(2) => cnt0_carry_n_5,
      O(1) => cnt0_carry_n_6,
      O(0) => cnt0_carry_n_7,
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
      O(3) => \cnt0_carry__0_n_4\,
      O(2) => \cnt0_carry__0_n_5\,
      O(1) => \cnt0_carry__0_n_6\,
      O(0) => \cnt0_carry__0_n_7\,
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
      O(3) => \cnt0_carry__1_n_4\,
      O(2) => \cnt0_carry__1_n_5\,
      O(1) => \cnt0_carry__1_n_6\,
      O(0) => \cnt0_carry__1_n_7\,
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
      O(1) => \cnt0_carry__2_n_6\,
      O(0) => \cnt0_carry__2_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => cnt(14 downto 13)
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \srow[7]_i_2_n_0\,
      I1 => cnt(0),
      O => cnt_1(0)
    );
cnt_dis: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_anim
     port map (
      AR(0) => cnt_dis_rst,
      E(0) => cnt_dis_enable_reg_n_0,
      clk => clk,
      \display_buffer_reg[11]\ => \display_buffer[37]_i_1_n_0\,
      \screen_value_reg[11]_0\ => cnt_dis_n_0,
      \screen_value_reg[12]_0\ => cnt_dis_n_1,
      \screen_value_reg[13]_0\ => cnt_dis_n_2,
      \screen_value_reg[14]_0\ => cnt_dis_n_3,
      \screen_value_reg[18]_0\ => cnt_dis_n_4,
      \screen_value_reg[20]_0\ => cnt_dis_n_5,
      \screen_value_reg[22]_0\ => cnt_dis_n_6,
      \screen_value_reg[27]_0\ => cnt_dis_n_7,
      \screen_value_reg[29]_0\ => cnt_dis_n_8,
      \screen_value_reg[31]_0\ => cnt_dis_n_9,
      \screen_value_reg[43]_0\ => cnt_dis_n_10,
      \screen_value_reg[44]_0\ => cnt_dis_n_11,
      \screen_value_reg[45]_0\ => cnt_dis_n_12,
      \screen_value_reg[46]_0\ => cnt_dis_n_13,
      \screen_value_reg[50]_0\ => cnt_dis_n_14,
      \screen_value_reg[52]_0\ => cnt_dis_n_15,
      \screen_value_reg[54]_0\ => cnt_dis_n_16,
      \screen_value_reg[59]_0\ => cnt_dis_n_17,
      \screen_value_reg[61]_0\ => cnt_dis_n_18,
      \screen_value_reg[62]_0\ => cnt_dis_n_19,
      \screen_value_reg[63]_0\ => cnt_dis_n_20
    );
cnt_dis_enable_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in,
      Q => cnt_dis_enable_reg_n_0,
      R => '0'
    );
cnt_dis_rst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => time_from_start(5),
      I1 => time_from_start(1),
      I2 => time_from_start(2),
      I3 => time_from_start(3),
      I4 => time_from_start(4),
      I5 => time_from_start(0),
      O => cnt_dis_rst_i_1_n_0
    );
cnt_dis_rst_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cnt_dis_rst_i_1_n_0,
      Q => cnt_dis_rst,
      R => '0'
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cnt_1(0),
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
      D => \cnt0_carry__1_n_6\,
      Q => cnt(10),
      R => display_buffer
    );
\cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt0_carry__1_n_5\,
      Q => cnt(11),
      R => display_buffer
    );
\cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt0_carry__1_n_4\,
      Q => cnt(12),
      R => display_buffer
    );
\cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt0_carry__2_n_7\,
      Q => cnt(13),
      R => display_buffer
    );
\cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt0_carry__2_n_6\,
      Q => cnt(14),
      R => display_buffer
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cnt0_carry_n_7,
      Q => cnt(1),
      R => display_buffer
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cnt0_carry_n_6,
      Q => cnt(2),
      R => display_buffer
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cnt0_carry_n_5,
      Q => cnt(3),
      R => display_buffer
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cnt0_carry_n_4,
      Q => cnt(4),
      R => display_buffer
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt0_carry__0_n_7\,
      Q => cnt(5),
      R => display_buffer
    );
\cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt0_carry__0_n_6\,
      Q => cnt(6),
      R => display_buffer
    );
\cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt0_carry__0_n_5\,
      Q => cnt(7),
      R => display_buffer
    );
\cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt0_carry__0_n_4\,
      Q => cnt(8),
      R => display_buffer
    );
\cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt0_carry__1_n_7\,
      Q => cnt(9),
      R => display_buffer
    );
\col[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0BBBBBBF0888888"
    )
        port map (
      I0 => data4(7),
      I1 => col_indx(2),
      I2 => data3(7),
      I3 => col_indx(0),
      I4 => col_indx(1),
      I5 => data0(7),
      O => col(0)
    );
\col[1]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \col[1]_INST_0_i_1_n_0\,
      I1 => \col[1]_INST_0_i_2_n_0\,
      O => col(6),
      S => col_indx(2)
    );
\col[1]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data3(7),
      I1 => col_indx(1),
      I2 => data1(7),
      I3 => col_indx(0),
      I4 => data0(7),
      O => \col[1]_INST_0_i_1_n_0\
    );
\col[1]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data3(7),
      I1 => col_indx(0),
      I2 => data6(7),
      I3 => col_indx(1),
      I4 => data4(7),
      O => \col[1]_INST_0_i_2_n_0\
    );
\col[2]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \col[2]_INST_0_i_1_n_0\,
      I1 => \col[2]_INST_0_i_2_n_0\,
      O => col(1),
      S => col_indx(2)
    );
\col[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(7),
      I1 => data2(2),
      I2 => col_indx(1),
      I3 => data1(2),
      I4 => col_indx(0),
      I5 => data0(6),
      O => \col[2]_INST_0_i_1_n_0\
    );
\col[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(7),
      I1 => data6(2),
      I2 => col_indx(1),
      I3 => data5(2),
      I4 => col_indx(0),
      I5 => data0(6),
      O => \col[2]_INST_0_i_2_n_0\
    );
\col[3]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \col[3]_INST_0_i_1_n_0\,
      I1 => \col[3]_INST_0_i_2_n_0\,
      O => col(2),
      S => col_indx(2)
    );
\col[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(7),
      I1 => data2(3),
      I2 => col_indx(1),
      I3 => data1(7),
      I4 => col_indx(0),
      I5 => data0(3),
      O => \col[3]_INST_0_i_1_n_0\
    );
\col[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(7),
      I1 => data6(3),
      I2 => col_indx(1),
      I3 => data4(7),
      I4 => col_indx(0),
      I5 => data4(3),
      O => \col[3]_INST_0_i_2_n_0\
    );
\col[4]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \col[4]_INST_0_i_1_n_0\,
      I1 => \col[4]_INST_0_i_2_n_0\,
      O => col(3),
      S => col_indx(2)
    );
\col[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(7),
      I1 => data2(4),
      I2 => col_indx(1),
      I3 => data1(4),
      I4 => col_indx(0),
      I5 => data0(6),
      O => \col[4]_INST_0_i_1_n_0\
    );
\col[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(7),
      I1 => data6(4),
      I2 => col_indx(1),
      I3 => data5(4),
      I4 => col_indx(0),
      I5 => data0(6),
      O => \col[4]_INST_0_i_2_n_0\
    );
\col[5]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \col[5]_INST_0_i_1_n_0\,
      I1 => \col[5]_INST_0_i_2_n_0\,
      O => col(4),
      S => col_indx(2)
    );
\col[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(5),
      I1 => data2(5),
      I2 => col_indx(1),
      I3 => data1(7),
      I4 => col_indx(0),
      I5 => data0(5),
      O => \col[5]_INST_0_i_1_n_0\
    );
\col[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(7),
      I1 => data6(5),
      I2 => col_indx(1),
      I3 => data4(7),
      I4 => col_indx(0),
      I5 => data4(5),
      O => \col[5]_INST_0_i_2_n_0\
    );
\col[6]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \col[6]_INST_0_i_1_n_0\,
      I1 => \col[6]_INST_0_i_2_n_0\,
      O => col(5),
      S => col_indx(2)
    );
\col[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(7),
      I1 => data2(6),
      I2 => col_indx(1),
      I3 => data1(6),
      I4 => col_indx(0),
      I5 => data0(6),
      O => \col[6]_INST_0_i_1_n_0\
    );
\col[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(7),
      I1 => data6(6),
      I2 => col_indx(1),
      I3 => data5(6),
      I4 => col_indx(0),
      I5 => data0(6),
      O => \col[6]_INST_0_i_2_n_0\
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
      I0 => col_indx(0),
      I1 => col_indx(1),
      O => \col_indx[1]_i_1_n_0\
    );
\col_indx[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => col_indx(2),
      I1 => col_indx(0),
      I2 => col_indx(1),
      O => \col_indx[2]_i_1_n_0\
    );
\col_indx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
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
      CE => display_buffer,
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
      CE => display_buffer,
      D => \col_indx[2]_i_1_n_0\,
      Q => col_indx(2),
      R => '0'
    );
\display_buffer[37]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAAAFAEAAAAA"
    )
        port map (
      I0 => time_from_start(5),
      I1 => time_from_start(1),
      I2 => time_from_start(2),
      I3 => time_from_start(0),
      I4 => time_from_start(4),
      I5 => time_from_start(3),
      O => \display_buffer[37]_i_1_n_0\
    );
\display_buffer[39]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030C0E0C0"
    )
        port map (
      I0 => time_from_start(0),
      I1 => time_from_start(3),
      I2 => time_from_start(4),
      I3 => time_from_start(2),
      I4 => time_from_start(1),
      I5 => time_from_start(5),
      O => \display_buffer[39]_i_1_n_0\
    );
\display_buffer[63]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FF08"
    )
        port map (
      I0 => time_from_start(4),
      I1 => time_from_start(3),
      I2 => \time_from_start[5]_i_4_n_0\,
      I3 => time_from_start(5),
      I4 => cnt(0),
      I5 => \srow[7]_i_2_n_0\,
      O => \display_buffer[63]_i_1_n_0\
    );
\display_buffer_reg[10]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => cnt_dis_n_4,
      Q => data6(2),
      S => \display_buffer[63]_i_1_n_0\
    );
\display_buffer_reg[11]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => cnt_dis_n_0,
      Q => data6(3),
      S => \display_buffer[63]_i_1_n_0\
    );
\display_buffer_reg[12]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => cnt_dis_n_1,
      Q => data6(4),
      S => \display_buffer[63]_i_1_n_0\
    );
\display_buffer_reg[13]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => cnt_dis_n_2,
      Q => data6(5),
      S => \display_buffer[63]_i_1_n_0\
    );
\display_buffer_reg[14]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => cnt_dis_n_3,
      Q => data6(6),
      S => \display_buffer[63]_i_1_n_0\
    );
\display_buffer_reg[15]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => cnt_dis_n_9,
      Q => data6(7),
      S => \display_buffer[63]_i_1_n_0\
    );
\display_buffer_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => cnt_dis_n_4,
      Q => data5(2),
      R => \display_buffer[63]_i_1_n_0\
    );
\display_buffer_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => cnt_dis_n_5,
      Q => data5(4),
      R => \display_buffer[63]_i_1_n_0\
    );
\display_buffer_reg[22]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => cnt_dis_n_6,
      Q => data5(6),
      S => \display_buffer[63]_i_1_n_0\
    );
\display_buffer_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => cnt_dis_n_7,
      Q => data4(3),
      R => \display_buffer[63]_i_1_n_0\
    );
\display_buffer_reg[29]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => cnt_dis_n_8,
      Q => data4(5),
      S => \display_buffer[63]_i_1_n_0\
    );
\display_buffer_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => cnt_dis_n_9,
      Q => data4(7),
      R => \display_buffer[63]_i_1_n_0\
    );
\display_buffer_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => \display_buffer[37]_i_1_n_0\,
      Q => data3(5),
      R => '0'
    );
\display_buffer_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => \display_buffer[39]_i_1_n_0\,
      Q => data3(7),
      R => '0'
    );
\display_buffer_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => cnt_dis_n_14,
      Q => data2(2),
      R => \display_buffer[63]_i_1_n_0\
    );
\display_buffer_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => cnt_dis_n_10,
      Q => data2(3),
      R => \display_buffer[63]_i_1_n_0\
    );
\display_buffer_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => cnt_dis_n_11,
      Q => data2(4),
      R => \display_buffer[63]_i_1_n_0\
    );
\display_buffer_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => cnt_dis_n_12,
      Q => data2(5),
      R => \display_buffer[63]_i_1_n_0\
    );
\display_buffer_reg[46]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => cnt_dis_n_13,
      Q => data2(6),
      S => \display_buffer[63]_i_1_n_0\
    );
\display_buffer_reg[50]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => cnt_dis_n_14,
      Q => data1(2),
      S => \display_buffer[63]_i_1_n_0\
    );
\display_buffer_reg[52]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => cnt_dis_n_15,
      Q => data1(4),
      S => \display_buffer[63]_i_1_n_0\
    );
\display_buffer_reg[54]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => cnt_dis_n_16,
      Q => data1(6),
      S => \display_buffer[63]_i_1_n_0\
    );
\display_buffer_reg[55]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => cnt_dis_n_20,
      Q => data1(7),
      S => \display_buffer[63]_i_1_n_0\
    );
\display_buffer_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => cnt_dis_n_17,
      Q => data0(3),
      R => \display_buffer[63]_i_1_n_0\
    );
\display_buffer_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => cnt_dis_n_18,
      Q => data0(5),
      R => \display_buffer[63]_i_1_n_0\
    );
\display_buffer_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => cnt_dis_n_19,
      Q => data0(6),
      R => \display_buffer[63]_i_1_n_0\
    );
\display_buffer_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => cnt_dis_n_20,
      Q => data0(7),
      R => \display_buffer[63]_i_1_n_0\
    );
sec_cnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sec_cnt0_carry_n_0,
      CO(2) => sec_cnt0_carry_n_1,
      CO(1) => sec_cnt0_carry_n_2,
      CO(0) => sec_cnt0_carry_n_3,
      CYINIT => sec_cnt(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(4 downto 1),
      S(3 downto 0) => sec_cnt(4 downto 1)
    );
\sec_cnt0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sec_cnt0_carry_n_0,
      CO(3) => \sec_cnt0_carry__0_n_0\,
      CO(2) => \sec_cnt0_carry__0_n_1\,
      CO(1) => \sec_cnt0_carry__0_n_2\,
      CO(0) => \sec_cnt0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(8 downto 5),
      S(3 downto 0) => sec_cnt(8 downto 5)
    );
\sec_cnt0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sec_cnt0_carry__0_n_0\,
      CO(3) => \sec_cnt0_carry__1_n_0\,
      CO(2) => \sec_cnt0_carry__1_n_1\,
      CO(1) => \sec_cnt0_carry__1_n_2\,
      CO(0) => \sec_cnt0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(12 downto 9),
      S(3 downto 0) => sec_cnt(12 downto 9)
    );
\sec_cnt0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sec_cnt0_carry__1_n_0\,
      CO(3) => \sec_cnt0_carry__2_n_0\,
      CO(2) => \sec_cnt0_carry__2_n_1\,
      CO(1) => \sec_cnt0_carry__2_n_2\,
      CO(0) => \sec_cnt0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(16 downto 13),
      S(3 downto 0) => sec_cnt(16 downto 13)
    );
\sec_cnt0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \sec_cnt0_carry__2_n_0\,
      CO(3) => \sec_cnt0_carry__3_n_0\,
      CO(2) => \sec_cnt0_carry__3_n_1\,
      CO(1) => \sec_cnt0_carry__3_n_2\,
      CO(0) => \sec_cnt0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(20 downto 17),
      S(3 downto 0) => sec_cnt(20 downto 17)
    );
\sec_cnt0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \sec_cnt0_carry__3_n_0\,
      CO(3) => \NLW_sec_cnt0_carry__4_CO_UNCONNECTED\(3),
      CO(2) => \sec_cnt0_carry__4_n_1\,
      CO(1) => \sec_cnt0_carry__4_n_2\,
      CO(0) => \sec_cnt0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(24 downto 21),
      S(3 downto 0) => sec_cnt(24 downto 21)
    );
\sec_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sec_cnt(0),
      O => p_1_in(0)
    );
\sec_cnt[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \sec_cnt[24]_i_2_n_0\,
      I1 => \sec_cnt[24]_i_3_n_0\,
      I2 => \sec_cnt[24]_i_4_n_0\,
      I3 => sec_cnt(0),
      I4 => \sec_cnt[24]_i_5_n_0\,
      O => p_0_in
    );
\sec_cnt[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => sec_cnt(3),
      I1 => sec_cnt(4),
      I2 => sec_cnt(1),
      I3 => sec_cnt(2),
      I4 => sec_cnt(6),
      I5 => sec_cnt(5),
      O => \sec_cnt[24]_i_2_n_0\
    );
\sec_cnt[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => sec_cnt(21),
      I1 => sec_cnt(22),
      I2 => sec_cnt(19),
      I3 => sec_cnt(20),
      I4 => sec_cnt(23),
      I5 => sec_cnt(24),
      O => \sec_cnt[24]_i_3_n_0\
    );
\sec_cnt[24]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => sec_cnt(16),
      I1 => sec_cnt(15),
      I2 => sec_cnt(13),
      I3 => sec_cnt(14),
      I4 => sec_cnt(17),
      I5 => sec_cnt(18),
      O => \sec_cnt[24]_i_4_n_0\
    );
\sec_cnt[24]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => sec_cnt(9),
      I1 => sec_cnt(10),
      I2 => sec_cnt(7),
      I3 => sec_cnt(8),
      I4 => sec_cnt(12),
      I5 => sec_cnt(11),
      O => \sec_cnt[24]_i_5_n_0\
    );
\sec_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(0),
      Q => sec_cnt(0),
      R => p_0_in
    );
\sec_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(10),
      Q => sec_cnt(10),
      R => p_0_in
    );
\sec_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(11),
      Q => sec_cnt(11),
      R => p_0_in
    );
\sec_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(12),
      Q => sec_cnt(12),
      R => p_0_in
    );
\sec_cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(13),
      Q => sec_cnt(13),
      R => p_0_in
    );
\sec_cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(14),
      Q => sec_cnt(14),
      R => p_0_in
    );
\sec_cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(15),
      Q => sec_cnt(15),
      R => p_0_in
    );
\sec_cnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(16),
      Q => sec_cnt(16),
      R => p_0_in
    );
\sec_cnt_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(17),
      Q => sec_cnt(17),
      R => p_0_in
    );
\sec_cnt_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(18),
      Q => sec_cnt(18),
      R => p_0_in
    );
\sec_cnt_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(19),
      Q => sec_cnt(19),
      R => p_0_in
    );
\sec_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(1),
      Q => sec_cnt(1),
      R => p_0_in
    );
\sec_cnt_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(20),
      Q => sec_cnt(20),
      R => p_0_in
    );
\sec_cnt_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(21),
      Q => sec_cnt(21),
      R => p_0_in
    );
\sec_cnt_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(22),
      Q => sec_cnt(22),
      R => p_0_in
    );
\sec_cnt_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(23),
      Q => sec_cnt(23),
      R => p_0_in
    );
\sec_cnt_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(24),
      Q => sec_cnt(24),
      R => p_0_in
    );
\sec_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(2),
      Q => sec_cnt(2),
      R => p_0_in
    );
\sec_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(3),
      Q => sec_cnt(3),
      R => p_0_in
    );
\sec_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(4),
      Q => sec_cnt(4),
      R => p_0_in
    );
\sec_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(5),
      Q => sec_cnt(5),
      R => p_0_in
    );
\sec_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(6),
      Q => sec_cnt(6),
      R => p_0_in
    );
\sec_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(7),
      Q => sec_cnt(7),
      R => p_0_in
    );
\sec_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(8),
      Q => sec_cnt(8),
      R => p_0_in
    );
\sec_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(9),
      Q => sec_cnt(9),
      R => p_0_in
    );
\srow[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt(0),
      I1 => \srow[7]_i_2_n_0\,
      O => display_buffer
    );
\srow[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFBFF"
    )
        port map (
      I0 => \srow[7]_i_3_n_0\,
      I1 => cnt(3),
      I2 => cnt(4),
      I3 => cnt(5),
      I4 => cnt(6),
      I5 => \srow[7]_i_4_n_0\,
      O => \srow[7]_i_2_n_0\
    );
\srow[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => cnt(8),
      I1 => cnt(7),
      I2 => cnt(10),
      I3 => cnt(9),
      O => \srow[7]_i_3_n_0\
    );
\srow[7]_i_4\: unisim.vcomponents.LUT6
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
      O => \srow[7]_i_4_n_0\
    );
\srow_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => display_buffer,
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
      CE => display_buffer,
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
      CE => display_buffer,
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
      CE => display_buffer,
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
      CE => display_buffer,
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
      CE => display_buffer,
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
      CE => display_buffer,
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
      CE => display_buffer,
      D => \^row\(6),
      Q => \^row\(7),
      R => '0'
    );
\time_from_start[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F7FFFFFF0000"
    )
        port map (
      I0 => time_from_start(4),
      I1 => time_from_start(3),
      I2 => \time_from_start[5]_i_4_n_0\,
      I3 => time_from_start(5),
      I4 => p_0_in,
      I5 => time_from_start(0),
      O => \time_from_start[0]_i_1_n_0\
    );
\time_from_start[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => time_from_start(0),
      I1 => time_from_start(1),
      O => \time_from_start[1]_i_1_n_0\
    );
\time_from_start[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => time_from_start(1),
      I1 => time_from_start(0),
      I2 => time_from_start(2),
      O => \time_from_start[2]_i_1_n_0\
    );
\time_from_start[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => time_from_start(1),
      I1 => time_from_start(2),
      I2 => time_from_start(0),
      I3 => time_from_start(3),
      O => \time_from_start[3]_i_1_n_0\
    );
\time_from_start[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => time_from_start(1),
      I1 => time_from_start(2),
      I2 => time_from_start(0),
      I3 => time_from_start(3),
      I4 => time_from_start(4),
      O => \time_from_start[4]_i_1_n_0\
    );
\time_from_start[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => time_from_start(5),
      I1 => \time_from_start[5]_i_4_n_0\,
      I2 => time_from_start(3),
      I3 => time_from_start(4),
      I4 => time_from_start(0),
      O => \time_from_start[5]_i_1_n_0\
    );
\time_from_start[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAAAAAAAAAAAAAA"
    )
        port map (
      I0 => p_0_in,
      I1 => time_from_start(5),
      I2 => \time_from_start[5]_i_4_n_0\,
      I3 => time_from_start(3),
      I4 => time_from_start(4),
      I5 => time_from_start(0),
      O => time_from_start_0
    );
\time_from_start[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => time_from_start(0),
      I1 => time_from_start(4),
      I2 => time_from_start(3),
      I3 => time_from_start(2),
      I4 => time_from_start(1),
      I5 => time_from_start(5),
      O => \time_from_start[5]_i_3_n_0\
    );
\time_from_start[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => time_from_start(1),
      I1 => time_from_start(2),
      O => \time_from_start[5]_i_4_n_0\
    );
\time_from_start_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \time_from_start[0]_i_1_n_0\,
      Q => time_from_start(0),
      R => '0'
    );
\time_from_start_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => time_from_start_0,
      D => \time_from_start[1]_i_1_n_0\,
      Q => time_from_start(1),
      R => \time_from_start[5]_i_1_n_0\
    );
\time_from_start_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => time_from_start_0,
      D => \time_from_start[2]_i_1_n_0\,
      Q => time_from_start(2),
      R => \time_from_start[5]_i_1_n_0\
    );
\time_from_start_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => time_from_start_0,
      D => \time_from_start[3]_i_1_n_0\,
      Q => time_from_start(3),
      R => \time_from_start[5]_i_1_n_0\
    );
\time_from_start_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => time_from_start_0,
      D => \time_from_start[4]_i_1_n_0\,
      Q => time_from_start(4),
      R => \time_from_start[5]_i_1_n_0\
    );
\time_from_start_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => time_from_start_0,
      D => \time_from_start[5]_i_3_n_0\,
      Q => time_from_start(5),
      R => \time_from_start[5]_i_1_n_0\
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
  signal \^col\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
begin
  col(7 downto 2) <= \^col\(7 downto 2);
  col(1) <= \^col\(7);
  col(0) <= \^col\(0);
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top
     port map (
      clk => clk,
      col(6 downto 1) => \^col\(7 downto 2),
      col(0) => \^col\(0),
      row(7 downto 0) => row(7 downto 0)
    );
end STRUCTURE;
