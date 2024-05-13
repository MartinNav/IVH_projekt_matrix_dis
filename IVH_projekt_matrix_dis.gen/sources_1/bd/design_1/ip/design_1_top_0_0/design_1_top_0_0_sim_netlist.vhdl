-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Mon May 13 15:47:44 2024
-- Host        : LAPTOP-O3BSDE06 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top design_1_top_0_0 -prefix
--               design_1_top_0_0_ design_1_top_0_0_sim_netlist.vhdl
-- Design      : design_1_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_counter is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    clk : in STD_LOGIC;
    \bcd_value_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end design_1_top_0_0_counter;

architecture STRUCTURE of design_1_top_0_0_counter is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \bcd_value[0]_i_1_n_0\ : STD_LOGIC;
  signal bcd_value_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal carry_i_1_n_0 : STD_LOGIC;
  signal \change_digit[0]_i_1_n_0\ : STD_LOGIC;
  signal \change_digit[1]_i_1_n_0\ : STD_LOGIC;
  signal \change_digit[1]_i_2_n_0\ : STD_LOGIC;
  signal \change_digit_reg_n_0_[0]\ : STD_LOGIC;
  signal \change_digit_reg_n_0_[1]\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bcd_value[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \bcd_value[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \bcd_value[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \change_digit[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \change_digit[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \change_digit[1]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \first_value[10]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \first_value[12]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \first_value[14]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \first_value[19]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \first_value[21]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \first_value[23]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \first_value[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \first_value[4]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \first_value[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \first_value[6]_i_1\ : label is "soft_lutpair8";
begin
  E(0) <= \^e\(0);
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
      INIT => X"0DF0"
    )
        port map (
      I0 => bcd_value_reg(3),
      I1 => bcd_value_reg(2),
      I2 => bcd_value_reg(1),
      I3 => bcd_value_reg(0),
      O => \p_0_in__0\(1)
    );
\bcd_value[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => bcd_value_reg(2),
      I1 => bcd_value_reg(0),
      I2 => bcd_value_reg(1),
      O => \p_0_in__0\(2)
    );
\bcd_value[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"68AA"
    )
        port map (
      I0 => bcd_value_reg(3),
      I1 => bcd_value_reg(2),
      I2 => bcd_value_reg(1),
      I3 => bcd_value_reg(0),
      O => \p_0_in__0\(3)
    );
\bcd_value_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bcd_value_reg[0]_0\(0),
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
      CE => \bcd_value_reg[0]_0\(0),
      CLR => AR(0),
      D => \p_0_in__0\(1),
      Q => bcd_value_reg(1)
    );
\bcd_value_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bcd_value_reg[0]_0\(0),
      CLR => AR(0),
      D => \p_0_in__0\(2),
      Q => bcd_value_reg(2)
    );
\bcd_value_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bcd_value_reg[0]_0\(0),
      CLR => AR(0),
      D => \p_0_in__0\(3),
      Q => bcd_value_reg(3)
    );
carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => \change_digit_reg_n_0_[1]\,
      I1 => \change_digit_reg_n_0_[0]\,
      I2 => \^e\(0),
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
      INIT => X"0704"
    )
        port map (
      I0 => \change_digit[1]_i_2_n_0\,
      I1 => \bcd_value_reg[0]_0\(0),
      I2 => \change_digit_reg_n_0_[1]\,
      I3 => \change_digit_reg_n_0_[0]\,
      O => \change_digit[0]_i_1_n_0\
    );
\change_digit[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F474"
    )
        port map (
      I0 => \change_digit[1]_i_2_n_0\,
      I1 => \bcd_value_reg[0]_0\(0),
      I2 => \change_digit_reg_n_0_[1]\,
      I3 => \change_digit_reg_n_0_[0]\,
      O => \change_digit[1]_i_1_n_0\
    );
\change_digit[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDFF"
    )
        port map (
      I0 => bcd_value_reg(0),
      I1 => bcd_value_reg(1),
      I2 => bcd_value_reg(2),
      I3 => bcd_value_reg(3),
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
      INIT => X"FD79"
    )
        port map (
      I0 => bcd_value_reg(0),
      I1 => bcd_value_reg(2),
      I2 => bcd_value_reg(1),
      I3 => bcd_value_reg(3),
      O => D(4)
    );
\first_value[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFEE"
    )
        port map (
      I0 => bcd_value_reg(2),
      I1 => bcd_value_reg(3),
      I2 => bcd_value_reg(0),
      I3 => bcd_value_reg(1),
      O => D(5)
    );
\first_value[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEF"
    )
        port map (
      I0 => bcd_value_reg(3),
      I1 => bcd_value_reg(1),
      I2 => bcd_value_reg(2),
      I3 => bcd_value_reg(0),
      O => D(6)
    );
\first_value[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => bcd_value_reg(3),
      I1 => bcd_value_reg(0),
      I2 => bcd_value_reg(1),
      I3 => bcd_value_reg(2),
      O => D(7)
    );
\first_value[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDDF"
    )
        port map (
      I0 => bcd_value_reg(2),
      I1 => bcd_value_reg(3),
      I2 => bcd_value_reg(0),
      I3 => bcd_value_reg(1),
      O => D(8)
    );
\first_value[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => bcd_value_reg(2),
      I1 => bcd_value_reg(1),
      I2 => bcd_value_reg(3),
      O => D(9)
    );
\first_value[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DCD5"
    )
        port map (
      I0 => bcd_value_reg(0),
      I1 => bcd_value_reg(3),
      I2 => bcd_value_reg(1),
      I3 => bcd_value_reg(2),
      O => D(0)
    );
\first_value[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F6FF"
    )
        port map (
      I0 => bcd_value_reg(2),
      I1 => bcd_value_reg(1),
      I2 => bcd_value_reg(3),
      I3 => bcd_value_reg(0),
      O => D(1)
    );
\first_value[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF71"
    )
        port map (
      I0 => bcd_value_reg(0),
      I1 => bcd_value_reg(1),
      I2 => bcd_value_reg(2),
      I3 => bcd_value_reg(3),
      O => D(2)
    );
\first_value[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => bcd_value_reg(0),
      I1 => bcd_value_reg(1),
      I2 => bcd_value_reg(2),
      I3 => bcd_value_reg(3),
      O => D(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_counter_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_counter_0 : entity is "counter";
end design_1_top_0_0_counter_0;

architecture STRUCTURE of design_1_top_0_0_counter_0 is
  signal \bcd_value[0]_i_1__0_n_0\ : STD_LOGIC;
  signal bcd_value_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bcd_value[0]_i_1__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \bcd_value[1]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \bcd_value[2]_i_1__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \bcd_value[3]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \second_value[10]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \second_value[12]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \second_value[14]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \second_value[19]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \second_value[21]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \second_value[23]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \second_value[3]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \second_value[4]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \second_value[5]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \second_value[6]_i_1\ : label is "soft_lutpair17";
begin
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
      INIT => X"0DF0"
    )
        port map (
      I0 => bcd_value_reg(3),
      I1 => bcd_value_reg(2),
      I2 => bcd_value_reg(1),
      I3 => bcd_value_reg(0),
      O => \p_0_in__1\(1)
    );
\bcd_value[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => bcd_value_reg(2),
      I1 => bcd_value_reg(0),
      I2 => bcd_value_reg(1),
      O => \p_0_in__1\(2)
    );
\bcd_value[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"68AA"
    )
        port map (
      I0 => bcd_value_reg(3),
      I1 => bcd_value_reg(2),
      I2 => bcd_value_reg(1),
      I3 => bcd_value_reg(0),
      O => \p_0_in__1\(3)
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
      D => \p_0_in__1\(1),
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
      D => \p_0_in__1\(2),
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
      D => \p_0_in__1\(3),
      Q => bcd_value_reg(3)
    );
\second_value[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD79"
    )
        port map (
      I0 => bcd_value_reg(0),
      I1 => bcd_value_reg(2),
      I2 => bcd_value_reg(1),
      I3 => bcd_value_reg(3),
      O => D(4)
    );
\second_value[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFEE"
    )
        port map (
      I0 => bcd_value_reg(2),
      I1 => bcd_value_reg(3),
      I2 => bcd_value_reg(0),
      I3 => bcd_value_reg(1),
      O => D(5)
    );
\second_value[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEF"
    )
        port map (
      I0 => bcd_value_reg(3),
      I1 => bcd_value_reg(1),
      I2 => bcd_value_reg(2),
      I3 => bcd_value_reg(0),
      O => D(6)
    );
\second_value[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => bcd_value_reg(3),
      I1 => bcd_value_reg(0),
      I2 => bcd_value_reg(1),
      I3 => bcd_value_reg(2),
      O => D(7)
    );
\second_value[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDDF"
    )
        port map (
      I0 => bcd_value_reg(2),
      I1 => bcd_value_reg(3),
      I2 => bcd_value_reg(0),
      I3 => bcd_value_reg(1),
      O => D(8)
    );
\second_value[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => bcd_value_reg(2),
      I1 => bcd_value_reg(1),
      I2 => bcd_value_reg(3),
      O => D(9)
    );
\second_value[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DCD5"
    )
        port map (
      I0 => bcd_value_reg(0),
      I1 => bcd_value_reg(3),
      I2 => bcd_value_reg(1),
      I3 => bcd_value_reg(2),
      O => D(0)
    );
\second_value[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F6FF"
    )
        port map (
      I0 => bcd_value_reg(2),
      I1 => bcd_value_reg(1),
      I2 => bcd_value_reg(3),
      I3 => bcd_value_reg(0),
      O => D(1)
    );
\second_value[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF71"
    )
        port map (
      I0 => bcd_value_reg(0),
      I1 => bcd_value_reg(1),
      I2 => bcd_value_reg(2),
      I3 => bcd_value_reg(3),
      O => D(2)
    );
\second_value[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => bcd_value_reg(0),
      I1 => bcd_value_reg(1),
      I2 => bcd_value_reg(2),
      I3 => bcd_value_reg(3),
      O => D(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_graphics is
  port (
    \time_from_start_reg[2]\ : out STD_LOGIC;
    \time_from_start_reg[2]_0\ : out STD_LOGIC;
    \time_from_start_reg[2]_1\ : out STD_LOGIC;
    \time_from_start_reg[2]_2\ : out STD_LOGIC;
    \time_from_start_reg[2]_3\ : out STD_LOGIC;
    \time_from_start_reg[2]_4\ : out STD_LOGIC;
    \time_from_start_reg[2]_5\ : out STD_LOGIC;
    \time_from_start_reg[2]_6\ : out STD_LOGIC;
    \time_from_start_reg[2]_7\ : out STD_LOGIC;
    \time_from_start_reg[2]_8\ : out STD_LOGIC;
    \time_from_start_reg[2]_9\ : out STD_LOGIC;
    \time_from_start_reg[2]_10\ : out STD_LOGIC;
    \time_from_start_reg[2]_11\ : out STD_LOGIC;
    \time_from_start_reg[2]_12\ : out STD_LOGIC;
    \time_from_start_reg[2]_13\ : out STD_LOGIC;
    \time_from_start_reg[2]_14\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 19 downto 0 );
    \time_from_start_reg[4]\ : out STD_LOGIC;
    \time_from_start_reg[4]_0\ : out STD_LOGIC;
    \time_from_start_reg[4]_1\ : out STD_LOGIC;
    \time_from_start_reg[4]_2\ : out STD_LOGIC;
    \time_from_start_reg[4]_3\ : out STD_LOGIC;
    \time_from_start_reg[4]_4\ : out STD_LOGIC;
    \time_from_start_reg[4]_5\ : out STD_LOGIC;
    \time_from_start_reg[4]_6\ : out STD_LOGIC;
    \time_from_start_reg[4]_7\ : out STD_LOGIC;
    \time_from_start_reg[4]_8\ : out STD_LOGIC;
    \time_from_start_reg[4]_9\ : out STD_LOGIC;
    \time_from_start_reg[4]_10\ : out STD_LOGIC;
    \time_from_start_reg[4]_11\ : out STD_LOGIC;
    \time_from_start_reg[4]_12\ : out STD_LOGIC;
    \time_from_start_reg[4]_13\ : out STD_LOGIC;
    \time_from_start_reg[4]_14\ : out STD_LOGIC;
    \time_from_start_reg[4]_15\ : out STD_LOGIC;
    \time_from_start_reg[4]_16\ : out STD_LOGIC;
    \time_from_start_reg[4]_17\ : out STD_LOGIC;
    \time_from_start_reg[4]_18\ : out STD_LOGIC;
    \time_from_start_reg[4]_19\ : out STD_LOGIC;
    \time_from_start_reg[4]_20\ : out STD_LOGIC;
    \time_from_start_reg[4]_21\ : out STD_LOGIC;
    \time_from_start_reg[4]_22\ : out STD_LOGIC;
    \time_from_start_reg[4]_23\ : out STD_LOGIC;
    \time_from_start_reg[4]_24\ : out STD_LOGIC;
    \time_from_start_reg[4]_25\ : out STD_LOGIC;
    \time_from_start_reg[4]_26\ : out STD_LOGIC;
    anim_mode : in STD_LOGIC;
    time_from_start : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \display_buffer_reg[11]\ : in STD_LOGIC;
    display_buffer1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 17 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
end design_1_top_0_0_graphics;

architecture STRUCTURE of design_1_top_0_0_graphics is
  signal VUT_LOGO : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \VUT_LOGO[0]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[10]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[11]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[12]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[13]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[14]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[15]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[16]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[17]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[18]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[19]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[1]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[20]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[21]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[22]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[23]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[24]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[25]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[26]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[27]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[28]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[29]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[2]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[30]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[31]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[32]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[33]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[34]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[35]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[36]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[37]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[38]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[39]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[3]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[40]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[41]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[42]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[43]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[44]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[45]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[46]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[47]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[48]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[49]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[4]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[50]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[51]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[52]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[53]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[54]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[55]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[56]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[57]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[58]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[59]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[5]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[60]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[61]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[61]_i_2_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[61]_i_3_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[62]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[62]_i_2_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[62]_i_3_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[63]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[63]_i_2_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[63]_i_3_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[63]_i_4_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[6]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[7]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[8]_i_1_n_0\ : STD_LOGIC;
  signal \VUT_LOGO[9]_i_1_n_0\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \frame_num[0]_i_1_n_0\ : STD_LOGIC;
  signal frame_num_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal screen_buffer : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \VUT_LOGO[37]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \VUT_LOGO[38]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \VUT_LOGO[45]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \VUT_LOGO[46]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \VUT_LOGO[53]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \VUT_LOGO[54]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \VUT_LOGO[61]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \VUT_LOGO[62]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \display_buffer[10]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \display_buffer[18]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \display_buffer[42]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \display_buffer[50]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \frame_num[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \frame_num[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \frame_num[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \frame_num[4]_i_1\ : label is "soft_lutpair0";
begin
\VUT_LOGO[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => VUT_LOGO(0),
      O => \VUT_LOGO[0]_i_1_n_0\
    );
\VUT_LOGO[10]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => VUT_LOGO(10),
      O => \VUT_LOGO[10]_i_1_n_0\
    );
\VUT_LOGO[11]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => VUT_LOGO(11),
      O => \VUT_LOGO[11]_i_1_n_0\
    );
\VUT_LOGO[12]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => VUT_LOGO(12),
      O => \VUT_LOGO[12]_i_1_n_0\
    );
\VUT_LOGO[13]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => VUT_LOGO(13),
      O => \VUT_LOGO[13]_i_1_n_0\
    );
\VUT_LOGO[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFB80080000"
    )
        port map (
      I0 => frame_num_reg(0),
      I1 => \VUT_LOGO[63]_i_4_n_0\,
      I2 => frame_num_reg(1),
      I3 => frame_num_reg(2),
      I4 => frame_num_reg(3),
      I5 => VUT_LOGO(14),
      O => \VUT_LOGO[14]_i_1_n_0\
    );
\VUT_LOGO[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFB80080000"
    )
        port map (
      I0 => frame_num_reg(0),
      I1 => \VUT_LOGO[63]_i_4_n_0\,
      I2 => frame_num_reg(1),
      I3 => frame_num_reg(2),
      I4 => frame_num_reg(3),
      I5 => VUT_LOGO(15),
      O => \VUT_LOGO[15]_i_1_n_0\
    );
\VUT_LOGO[16]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => VUT_LOGO(16),
      O => \VUT_LOGO[16]_i_1_n_0\
    );
\VUT_LOGO[17]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => VUT_LOGO(17),
      O => \VUT_LOGO[17]_i_1_n_0\
    );
\VUT_LOGO[18]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => VUT_LOGO(18),
      O => \VUT_LOGO[18]_i_1_n_0\
    );
\VUT_LOGO[19]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => VUT_LOGO(19),
      O => \VUT_LOGO[19]_i_1_n_0\
    );
\VUT_LOGO[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => VUT_LOGO(1),
      O => \VUT_LOGO[1]_i_1_n_0\
    );
\VUT_LOGO[20]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => VUT_LOGO(20),
      O => \VUT_LOGO[20]_i_1_n_0\
    );
\VUT_LOGO[21]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => VUT_LOGO(21),
      O => \VUT_LOGO[21]_i_1_n_0\
    );
\VUT_LOGO[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFEF80200000"
    )
        port map (
      I0 => frame_num_reg(3),
      I1 => frame_num_reg(0),
      I2 => \VUT_LOGO[63]_i_4_n_0\,
      I3 => frame_num_reg(2),
      I4 => frame_num_reg(1),
      I5 => VUT_LOGO(22),
      O => \VUT_LOGO[22]_i_1_n_0\
    );
\VUT_LOGO[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFEF80200000"
    )
        port map (
      I0 => frame_num_reg(3),
      I1 => frame_num_reg(0),
      I2 => \VUT_LOGO[63]_i_4_n_0\,
      I3 => frame_num_reg(2),
      I4 => frame_num_reg(1),
      I5 => VUT_LOGO(23),
      O => \VUT_LOGO[23]_i_1_n_0\
    );
\VUT_LOGO[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFB80000008"
    )
        port map (
      I0 => frame_num_reg(0),
      I1 => \VUT_LOGO[63]_i_4_n_0\,
      I2 => frame_num_reg(1),
      I3 => frame_num_reg(3),
      I4 => frame_num_reg(2),
      I5 => VUT_LOGO(24),
      O => \VUT_LOGO[24]_i_1_n_0\
    );
\VUT_LOGO[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFEF80100000"
    )
        port map (
      I0 => frame_num_reg(3),
      I1 => frame_num_reg(0),
      I2 => \VUT_LOGO[63]_i_4_n_0\,
      I3 => frame_num_reg(2),
      I4 => frame_num_reg(1),
      I5 => VUT_LOGO(25),
      O => \VUT_LOGO[25]_i_1_n_0\
    );
\VUT_LOGO[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFEFF90000000"
    )
        port map (
      I0 => frame_num_reg(2),
      I1 => frame_num_reg(3),
      I2 => frame_num_reg(1),
      I3 => \VUT_LOGO[63]_i_4_n_0\,
      I4 => frame_num_reg(0),
      I5 => VUT_LOGO(26),
      O => \VUT_LOGO[26]_i_1_n_0\
    );
\VUT_LOGO[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFEF80001000"
    )
        port map (
      I0 => frame_num_reg(3),
      I1 => frame_num_reg(0),
      I2 => \VUT_LOGO[63]_i_4_n_0\,
      I3 => frame_num_reg(2),
      I4 => frame_num_reg(1),
      I5 => VUT_LOGO(27),
      O => \VUT_LOGO[27]_i_1_n_0\
    );
\VUT_LOGO[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFEF90000000"
    )
        port map (
      I0 => frame_num_reg(1),
      I1 => frame_num_reg(3),
      I2 => \VUT_LOGO[63]_i_4_n_0\,
      I3 => frame_num_reg(0),
      I4 => frame_num_reg(2),
      I5 => VUT_LOGO(28),
      O => \VUT_LOGO[28]_i_1_n_0\
    );
\VUT_LOGO[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame_num_reg(0),
      I1 => VUT_LOGO(29),
      O => \VUT_LOGO[29]_i_1_n_0\
    );
\VUT_LOGO[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => VUT_LOGO(2),
      O => \VUT_LOGO[2]_i_1_n_0\
    );
\VUT_LOGO[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame_num_reg(2),
      I1 => VUT_LOGO(30),
      O => \VUT_LOGO[30]_i_1_n_0\
    );
\VUT_LOGO[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => VUT_LOGO(31),
      O => \VUT_LOGO[31]_i_1_n_0\
    );
\VUT_LOGO[32]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFB80000008"
    )
        port map (
      I0 => frame_num_reg(0),
      I1 => \VUT_LOGO[63]_i_4_n_0\,
      I2 => frame_num_reg(1),
      I3 => frame_num_reg(3),
      I4 => frame_num_reg(2),
      I5 => VUT_LOGO(32),
      O => \VUT_LOGO[32]_i_1_n_0\
    );
\VUT_LOGO[33]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFEF80100000"
    )
        port map (
      I0 => frame_num_reg(3),
      I1 => frame_num_reg(0),
      I2 => \VUT_LOGO[63]_i_4_n_0\,
      I3 => frame_num_reg(2),
      I4 => frame_num_reg(1),
      I5 => VUT_LOGO(33),
      O => \VUT_LOGO[33]_i_1_n_0\
    );
\VUT_LOGO[34]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFEFF90000000"
    )
        port map (
      I0 => frame_num_reg(2),
      I1 => frame_num_reg(3),
      I2 => frame_num_reg(1),
      I3 => \VUT_LOGO[63]_i_4_n_0\,
      I4 => frame_num_reg(0),
      I5 => VUT_LOGO(34),
      O => \VUT_LOGO[34]_i_1_n_0\
    );
\VUT_LOGO[35]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFEF80001000"
    )
        port map (
      I0 => frame_num_reg(3),
      I1 => frame_num_reg(0),
      I2 => \VUT_LOGO[63]_i_4_n_0\,
      I3 => frame_num_reg(2),
      I4 => frame_num_reg(1),
      I5 => VUT_LOGO(35),
      O => \VUT_LOGO[35]_i_1_n_0\
    );
\VUT_LOGO[36]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFEF90000000"
    )
        port map (
      I0 => frame_num_reg(1),
      I1 => frame_num_reg(3),
      I2 => \VUT_LOGO[63]_i_4_n_0\,
      I3 => frame_num_reg(0),
      I4 => frame_num_reg(2),
      I5 => VUT_LOGO(36),
      O => \VUT_LOGO[36]_i_1_n_0\
    );
\VUT_LOGO[37]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame_num_reg(0),
      I1 => VUT_LOGO(37),
      O => \VUT_LOGO[37]_i_1_n_0\
    );
\VUT_LOGO[38]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame_num_reg(2),
      I1 => VUT_LOGO(38),
      O => \VUT_LOGO[38]_i_1_n_0\
    );
\VUT_LOGO[39]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => VUT_LOGO(39),
      O => \VUT_LOGO[39]_i_1_n_0\
    );
\VUT_LOGO[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => VUT_LOGO(3),
      O => \VUT_LOGO[3]_i_1_n_0\
    );
\VUT_LOGO[40]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFF7B80000008"
    )
        port map (
      I0 => frame_num_reg(0),
      I1 => \VUT_LOGO[63]_i_4_n_0\,
      I2 => frame_num_reg(1),
      I3 => frame_num_reg(3),
      I4 => frame_num_reg(2),
      I5 => VUT_LOGO(40),
      O => \VUT_LOGO[40]_i_1_n_0\
    );
\VUT_LOGO[41]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFEFEF80100000"
    )
        port map (
      I0 => frame_num_reg(3),
      I1 => frame_num_reg(0),
      I2 => \VUT_LOGO[63]_i_4_n_0\,
      I3 => frame_num_reg(2),
      I4 => frame_num_reg(1),
      I5 => VUT_LOGO(41),
      O => \VUT_LOGO[41]_i_1_n_0\
    );
\VUT_LOGO[42]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FF7FFFD80000080"
    )
        port map (
      I0 => \VUT_LOGO[63]_i_4_n_0\,
      I1 => frame_num_reg(0),
      I2 => frame_num_reg(1),
      I3 => frame_num_reg(3),
      I4 => frame_num_reg(2),
      I5 => VUT_LOGO(42),
      O => \VUT_LOGO[42]_i_1_n_0\
    );
\VUT_LOGO[43]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFF6F80000040"
    )
        port map (
      I0 => frame_num_reg(1),
      I1 => frame_num_reg(2),
      I2 => \VUT_LOGO[63]_i_4_n_0\,
      I3 => frame_num_reg(0),
      I4 => frame_num_reg(3),
      I5 => VUT_LOGO(43),
      O => \VUT_LOGO[43]_i_1_n_0\
    );
\VUT_LOGO[44]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF7FFB80000800"
    )
        port map (
      I0 => frame_num_reg(0),
      I1 => \VUT_LOGO[63]_i_4_n_0\,
      I2 => frame_num_reg(1),
      I3 => frame_num_reg(2),
      I4 => frame_num_reg(3),
      I5 => VUT_LOGO(44),
      O => \VUT_LOGO[44]_i_1_n_0\
    );
\VUT_LOGO[45]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame_num_reg(0),
      I1 => VUT_LOGO(45),
      O => \VUT_LOGO[45]_i_1_n_0\
    );
\VUT_LOGO[46]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame_num_reg(2),
      I1 => VUT_LOGO(46),
      O => \VUT_LOGO[46]_i_1_n_0\
    );
\VUT_LOGO[47]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => VUT_LOGO(47),
      O => \VUT_LOGO[47]_i_1_n_0\
    );
\VUT_LOGO[48]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFF7B80000008"
    )
        port map (
      I0 => frame_num_reg(0),
      I1 => \VUT_LOGO[63]_i_4_n_0\,
      I2 => frame_num_reg(1),
      I3 => frame_num_reg(3),
      I4 => frame_num_reg(2),
      I5 => VUT_LOGO(48),
      O => \VUT_LOGO[48]_i_1_n_0\
    );
\VUT_LOGO[49]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFEFEF80100000"
    )
        port map (
      I0 => frame_num_reg(3),
      I1 => frame_num_reg(0),
      I2 => \VUT_LOGO[63]_i_4_n_0\,
      I3 => frame_num_reg(2),
      I4 => frame_num_reg(1),
      I5 => VUT_LOGO(49),
      O => \VUT_LOGO[49]_i_1_n_0\
    );
\VUT_LOGO[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => VUT_LOGO(4),
      O => \VUT_LOGO[4]_i_1_n_0\
    );
\VUT_LOGO[50]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FF7FFFD80000080"
    )
        port map (
      I0 => \VUT_LOGO[63]_i_4_n_0\,
      I1 => frame_num_reg(0),
      I2 => frame_num_reg(1),
      I3 => frame_num_reg(3),
      I4 => frame_num_reg(2),
      I5 => VUT_LOGO(50),
      O => \VUT_LOGO[50]_i_1_n_0\
    );
\VUT_LOGO[51]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFF6F80000040"
    )
        port map (
      I0 => frame_num_reg(1),
      I1 => frame_num_reg(2),
      I2 => \VUT_LOGO[63]_i_4_n_0\,
      I3 => frame_num_reg(0),
      I4 => frame_num_reg(3),
      I5 => VUT_LOGO(51),
      O => \VUT_LOGO[51]_i_1_n_0\
    );
\VUT_LOGO[52]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF7FFB80000800"
    )
        port map (
      I0 => frame_num_reg(0),
      I1 => \VUT_LOGO[63]_i_4_n_0\,
      I2 => frame_num_reg(1),
      I3 => frame_num_reg(2),
      I4 => frame_num_reg(3),
      I5 => VUT_LOGO(52),
      O => \VUT_LOGO[52]_i_1_n_0\
    );
\VUT_LOGO[53]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame_num_reg(0),
      I1 => VUT_LOGO(53),
      O => \VUT_LOGO[53]_i_1_n_0\
    );
\VUT_LOGO[54]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame_num_reg(2),
      I1 => VUT_LOGO(54),
      O => \VUT_LOGO[54]_i_1_n_0\
    );
\VUT_LOGO[55]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => VUT_LOGO(55),
      O => \VUT_LOGO[55]_i_1_n_0\
    );
\VUT_LOGO[56]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFF7B80000008"
    )
        port map (
      I0 => frame_num_reg(0),
      I1 => \VUT_LOGO[63]_i_4_n_0\,
      I2 => frame_num_reg(1),
      I3 => frame_num_reg(3),
      I4 => frame_num_reg(2),
      I5 => VUT_LOGO(56),
      O => \VUT_LOGO[56]_i_1_n_0\
    );
\VUT_LOGO[57]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFEFEF80100000"
    )
        port map (
      I0 => frame_num_reg(3),
      I1 => frame_num_reg(0),
      I2 => \VUT_LOGO[63]_i_4_n_0\,
      I3 => frame_num_reg(2),
      I4 => frame_num_reg(1),
      I5 => VUT_LOGO(57),
      O => \VUT_LOGO[57]_i_1_n_0\
    );
\VUT_LOGO[58]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FF7FFFD80000080"
    )
        port map (
      I0 => \VUT_LOGO[63]_i_4_n_0\,
      I1 => frame_num_reg(0),
      I2 => frame_num_reg(1),
      I3 => frame_num_reg(3),
      I4 => frame_num_reg(2),
      I5 => VUT_LOGO(58),
      O => \VUT_LOGO[58]_i_1_n_0\
    );
\VUT_LOGO[59]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFF6F80000040"
    )
        port map (
      I0 => frame_num_reg(1),
      I1 => frame_num_reg(2),
      I2 => \VUT_LOGO[63]_i_4_n_0\,
      I3 => frame_num_reg(0),
      I4 => frame_num_reg(3),
      I5 => VUT_LOGO(59),
      O => \VUT_LOGO[59]_i_1_n_0\
    );
\VUT_LOGO[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => VUT_LOGO(5),
      O => \VUT_LOGO[5]_i_1_n_0\
    );
\VUT_LOGO[60]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF7FFB80000800"
    )
        port map (
      I0 => frame_num_reg(0),
      I1 => \VUT_LOGO[63]_i_4_n_0\,
      I2 => frame_num_reg(1),
      I3 => frame_num_reg(2),
      I4 => frame_num_reg(3),
      I5 => VUT_LOGO(60),
      O => \VUT_LOGO[60]_i_1_n_0\
    );
\VUT_LOGO[61]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => frame_num_reg(3),
      I1 => frame_num_reg(0),
      I2 => \VUT_LOGO[63]_i_4_n_0\,
      I3 => frame_num_reg(2),
      I4 => frame_num_reg(1),
      O => \VUT_LOGO[61]_i_1_n_0\
    );
\VUT_LOGO[61]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90000010"
    )
        port map (
      I0 => frame_num_reg(3),
      I1 => frame_num_reg(0),
      I2 => \VUT_LOGO[63]_i_4_n_0\,
      I3 => frame_num_reg(2),
      I4 => frame_num_reg(1),
      O => \VUT_LOGO[61]_i_2_n_0\
    );
\VUT_LOGO[61]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame_num_reg(0),
      I1 => VUT_LOGO(61),
      O => \VUT_LOGO[61]_i_3_n_0\
    );
\VUT_LOGO[62]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => frame_num_reg(3),
      I1 => frame_num_reg(1),
      I2 => frame_num_reg(2),
      I3 => \VUT_LOGO[63]_i_4_n_0\,
      I4 => frame_num_reg(0),
      O => \VUT_LOGO[62]_i_1_n_0\
    );
\VUT_LOGO[62]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0000100"
    )
        port map (
      I0 => frame_num_reg(3),
      I1 => frame_num_reg(1),
      I2 => frame_num_reg(2),
      I3 => \VUT_LOGO[63]_i_4_n_0\,
      I4 => frame_num_reg(0),
      O => \VUT_LOGO[62]_i_2_n_0\
    );
\VUT_LOGO[62]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame_num_reg(2),
      I1 => VUT_LOGO(62),
      O => \VUT_LOGO[62]_i_3_n_0\
    );
\VUT_LOGO[63]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => frame_num_reg(2),
      I1 => frame_num_reg(3),
      I2 => frame_num_reg(1),
      I3 => \VUT_LOGO[63]_i_4_n_0\,
      I4 => frame_num_reg(0),
      O => \VUT_LOGO[63]_i_1_n_0\
    );
\VUT_LOGO[63]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000100"
    )
        port map (
      I0 => frame_num_reg(2),
      I1 => frame_num_reg(3),
      I2 => frame_num_reg(1),
      I3 => \VUT_LOGO[63]_i_4_n_0\,
      I4 => frame_num_reg(0),
      O => \VUT_LOGO[63]_i_2_n_0\
    );
\VUT_LOGO[63]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => VUT_LOGO(63),
      O => \VUT_LOGO[63]_i_3_n_0\
    );
\VUT_LOGO[63]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => frame_num_reg(4),
      I1 => E(0),
      I2 => anim_mode,
      O => \VUT_LOGO[63]_i_4_n_0\
    );
\VUT_LOGO[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFEF80000020"
    )
        port map (
      I0 => frame_num_reg(3),
      I1 => frame_num_reg(0),
      I2 => \VUT_LOGO[63]_i_4_n_0\,
      I3 => frame_num_reg(2),
      I4 => frame_num_reg(1),
      I5 => VUT_LOGO(6),
      O => \VUT_LOGO[6]_i_1_n_0\
    );
\VUT_LOGO[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFEF80000020"
    )
        port map (
      I0 => frame_num_reg(3),
      I1 => frame_num_reg(0),
      I2 => \VUT_LOGO[63]_i_4_n_0\,
      I3 => frame_num_reg(2),
      I4 => frame_num_reg(1),
      I5 => VUT_LOGO(7),
      O => \VUT_LOGO[7]_i_1_n_0\
    );
\VUT_LOGO[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => VUT_LOGO(8),
      O => \VUT_LOGO[8]_i_1_n_0\
    );
\VUT_LOGO[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => VUT_LOGO(9),
      O => \VUT_LOGO[9]_i_1_n_0\
    );
\VUT_LOGO_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \VUT_LOGO[63]_i_2_n_0\,
      D => \VUT_LOGO[0]_i_1_n_0\,
      Q => VUT_LOGO(0),
      R => \VUT_LOGO[63]_i_1_n_0\
    );
\VUT_LOGO_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \VUT_LOGO[63]_i_2_n_0\,
      D => \VUT_LOGO[10]_i_1_n_0\,
      Q => VUT_LOGO(10),
      R => \VUT_LOGO[63]_i_1_n_0\
    );
\VUT_LOGO_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \VUT_LOGO[63]_i_2_n_0\,
      D => \VUT_LOGO[11]_i_1_n_0\,
      Q => VUT_LOGO(11),
      R => \VUT_LOGO[63]_i_1_n_0\
    );
\VUT_LOGO_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \VUT_LOGO[63]_i_2_n_0\,
      D => \VUT_LOGO[12]_i_1_n_0\,
      Q => VUT_LOGO(12),
      R => \VUT_LOGO[63]_i_1_n_0\
    );
\VUT_LOGO_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \VUT_LOGO[63]_i_2_n_0\,
      D => \VUT_LOGO[13]_i_1_n_0\,
      Q => VUT_LOGO(13),
      R => \VUT_LOGO[63]_i_1_n_0\
    );
\VUT_LOGO_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \VUT_LOGO[14]_i_1_n_0\,
      Q => VUT_LOGO(14),
      R => '0'
    );
\VUT_LOGO_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \VUT_LOGO[15]_i_1_n_0\,
      Q => VUT_LOGO(15),
      R => '0'
    );
\VUT_LOGO_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \VUT_LOGO[63]_i_2_n_0\,
      D => \VUT_LOGO[16]_i_1_n_0\,
      Q => VUT_LOGO(16),
      R => \VUT_LOGO[63]_i_1_n_0\
    );
\VUT_LOGO_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \VUT_LOGO[63]_i_2_n_0\,
      D => \VUT_LOGO[17]_i_1_n_0\,
      Q => VUT_LOGO(17),
      R => \VUT_LOGO[63]_i_1_n_0\
    );
\VUT_LOGO_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \VUT_LOGO[63]_i_2_n_0\,
      D => \VUT_LOGO[18]_i_1_n_0\,
      Q => VUT_LOGO(18),
      R => \VUT_LOGO[63]_i_1_n_0\
    );
\VUT_LOGO_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \VUT_LOGO[63]_i_2_n_0\,
      D => \VUT_LOGO[19]_i_1_n_0\,
      Q => VUT_LOGO(19),
      R => \VUT_LOGO[63]_i_1_n_0\
    );
\VUT_LOGO_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \VUT_LOGO[63]_i_2_n_0\,
      D => \VUT_LOGO[1]_i_1_n_0\,
      Q => VUT_LOGO(1),
      R => \VUT_LOGO[63]_i_1_n_0\
    );
\VUT_LOGO_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \VUT_LOGO[63]_i_2_n_0\,
      D => \VUT_LOGO[20]_i_1_n_0\,
      Q => VUT_LOGO(20),
      R => \VUT_LOGO[63]_i_1_n_0\
    );
\VUT_LOGO_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \VUT_LOGO[63]_i_2_n_0\,
      D => \VUT_LOGO[21]_i_1_n_0\,
      Q => VUT_LOGO(21),
      R => \VUT_LOGO[63]_i_1_n_0\
    );
\VUT_LOGO_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \VUT_LOGO[22]_i_1_n_0\,
      Q => VUT_LOGO(22),
      R => '0'
    );
\VUT_LOGO_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \VUT_LOGO[23]_i_1_n_0\,
      Q => VUT_LOGO(23),
      R => '0'
    );
\VUT_LOGO_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \VUT_LOGO[24]_i_1_n_0\,
      Q => VUT_LOGO(24),
      R => '0'
    );
\VUT_LOGO_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \VUT_LOGO[25]_i_1_n_0\,
      Q => VUT_LOGO(25),
      R => '0'
    );
\VUT_LOGO_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \VUT_LOGO[26]_i_1_n_0\,
      Q => VUT_LOGO(26),
      R => '0'
    );
\VUT_LOGO_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \VUT_LOGO[27]_i_1_n_0\,
      Q => VUT_LOGO(27),
      R => '0'
    );
\VUT_LOGO_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \VUT_LOGO[28]_i_1_n_0\,
      Q => VUT_LOGO(28),
      R => '0'
    );
\VUT_LOGO_reg[29]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \VUT_LOGO[61]_i_2_n_0\,
      D => \VUT_LOGO[29]_i_1_n_0\,
      Q => VUT_LOGO(29),
      S => \VUT_LOGO[61]_i_1_n_0\
    );
\VUT_LOGO_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \VUT_LOGO[63]_i_2_n_0\,
      D => \VUT_LOGO[2]_i_1_n_0\,
      Q => VUT_LOGO(2),
      R => \VUT_LOGO[63]_i_1_n_0\
    );
\VUT_LOGO_reg[30]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \VUT_LOGO[62]_i_2_n_0\,
      D => \VUT_LOGO[30]_i_1_n_0\,
      Q => VUT_LOGO(30),
      S => \VUT_LOGO[62]_i_1_n_0\
    );
\VUT_LOGO_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \VUT_LOGO[63]_i_2_n_0\,
      D => \VUT_LOGO[31]_i_1_n_0\,
      Q => VUT_LOGO(31),
      R => \VUT_LOGO[63]_i_1_n_0\
    );
\VUT_LOGO_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \VUT_LOGO[32]_i_1_n_0\,
      Q => VUT_LOGO(32),
      R => '0'
    );
\VUT_LOGO_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \VUT_LOGO[33]_i_1_n_0\,
      Q => VUT_LOGO(33),
      R => '0'
    );
\VUT_LOGO_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \VUT_LOGO[34]_i_1_n_0\,
      Q => VUT_LOGO(34),
      R => '0'
    );
\VUT_LOGO_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \VUT_LOGO[35]_i_1_n_0\,
      Q => VUT_LOGO(35),
      R => '0'
    );
\VUT_LOGO_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \VUT_LOGO[36]_i_1_n_0\,
      Q => VUT_LOGO(36),
      R => '0'
    );
\VUT_LOGO_reg[37]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \VUT_LOGO[61]_i_2_n_0\,
      D => \VUT_LOGO[37]_i_1_n_0\,
      Q => VUT_LOGO(37),
      S => \VUT_LOGO[61]_i_1_n_0\
    );
\VUT_LOGO_reg[38]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \VUT_LOGO[62]_i_2_n_0\,
      D => \VUT_LOGO[38]_i_1_n_0\,
      Q => VUT_LOGO(38),
      S => \VUT_LOGO[62]_i_1_n_0\
    );
\VUT_LOGO_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \VUT_LOGO[63]_i_2_n_0\,
      D => \VUT_LOGO[39]_i_1_n_0\,
      Q => VUT_LOGO(39),
      R => \VUT_LOGO[63]_i_1_n_0\
    );
\VUT_LOGO_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \VUT_LOGO[63]_i_2_n_0\,
      D => \VUT_LOGO[3]_i_1_n_0\,
      Q => VUT_LOGO(3),
      R => \VUT_LOGO[63]_i_1_n_0\
    );
\VUT_LOGO_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \VUT_LOGO[40]_i_1_n_0\,
      Q => VUT_LOGO(40),
      R => '0'
    );
\VUT_LOGO_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \VUT_LOGO[41]_i_1_n_0\,
      Q => VUT_LOGO(41),
      R => '0'
    );
\VUT_LOGO_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \VUT_LOGO[42]_i_1_n_0\,
      Q => VUT_LOGO(42),
      R => '0'
    );
\VUT_LOGO_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \VUT_LOGO[43]_i_1_n_0\,
      Q => VUT_LOGO(43),
      R => '0'
    );
\VUT_LOGO_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \VUT_LOGO[44]_i_1_n_0\,
      Q => VUT_LOGO(44),
      R => '0'
    );
\VUT_LOGO_reg[45]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \VUT_LOGO[61]_i_2_n_0\,
      D => \VUT_LOGO[45]_i_1_n_0\,
      Q => VUT_LOGO(45),
      S => \VUT_LOGO[61]_i_1_n_0\
    );
\VUT_LOGO_reg[46]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \VUT_LOGO[62]_i_2_n_0\,
      D => \VUT_LOGO[46]_i_1_n_0\,
      Q => VUT_LOGO(46),
      S => \VUT_LOGO[62]_i_1_n_0\
    );
\VUT_LOGO_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \VUT_LOGO[63]_i_2_n_0\,
      D => \VUT_LOGO[47]_i_1_n_0\,
      Q => VUT_LOGO(47),
      R => \VUT_LOGO[63]_i_1_n_0\
    );
\VUT_LOGO_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \VUT_LOGO[48]_i_1_n_0\,
      Q => VUT_LOGO(48),
      R => '0'
    );
\VUT_LOGO_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \VUT_LOGO[49]_i_1_n_0\,
      Q => VUT_LOGO(49),
      R => '0'
    );
\VUT_LOGO_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \VUT_LOGO[63]_i_2_n_0\,
      D => \VUT_LOGO[4]_i_1_n_0\,
      Q => VUT_LOGO(4),
      R => \VUT_LOGO[63]_i_1_n_0\
    );
\VUT_LOGO_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \VUT_LOGO[50]_i_1_n_0\,
      Q => VUT_LOGO(50),
      R => '0'
    );
\VUT_LOGO_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \VUT_LOGO[51]_i_1_n_0\,
      Q => VUT_LOGO(51),
      R => '0'
    );
\VUT_LOGO_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \VUT_LOGO[52]_i_1_n_0\,
      Q => VUT_LOGO(52),
      R => '0'
    );
\VUT_LOGO_reg[53]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \VUT_LOGO[61]_i_2_n_0\,
      D => \VUT_LOGO[53]_i_1_n_0\,
      Q => VUT_LOGO(53),
      S => \VUT_LOGO[61]_i_1_n_0\
    );
\VUT_LOGO_reg[54]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \VUT_LOGO[62]_i_2_n_0\,
      D => \VUT_LOGO[54]_i_1_n_0\,
      Q => VUT_LOGO(54),
      S => \VUT_LOGO[62]_i_1_n_0\
    );
\VUT_LOGO_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \VUT_LOGO[63]_i_2_n_0\,
      D => \VUT_LOGO[55]_i_1_n_0\,
      Q => VUT_LOGO(55),
      R => \VUT_LOGO[63]_i_1_n_0\
    );
\VUT_LOGO_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \VUT_LOGO[56]_i_1_n_0\,
      Q => VUT_LOGO(56),
      R => '0'
    );
\VUT_LOGO_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \VUT_LOGO[57]_i_1_n_0\,
      Q => VUT_LOGO(57),
      R => '0'
    );
\VUT_LOGO_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \VUT_LOGO[58]_i_1_n_0\,
      Q => VUT_LOGO(58),
      R => '0'
    );
\VUT_LOGO_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \VUT_LOGO[59]_i_1_n_0\,
      Q => VUT_LOGO(59),
      R => '0'
    );
\VUT_LOGO_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \VUT_LOGO[63]_i_2_n_0\,
      D => \VUT_LOGO[5]_i_1_n_0\,
      Q => VUT_LOGO(5),
      R => \VUT_LOGO[63]_i_1_n_0\
    );
\VUT_LOGO_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \VUT_LOGO[60]_i_1_n_0\,
      Q => VUT_LOGO(60),
      R => '0'
    );
\VUT_LOGO_reg[61]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \VUT_LOGO[61]_i_2_n_0\,
      D => \VUT_LOGO[61]_i_3_n_0\,
      Q => VUT_LOGO(61),
      S => \VUT_LOGO[61]_i_1_n_0\
    );
\VUT_LOGO_reg[62]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \VUT_LOGO[62]_i_2_n_0\,
      D => \VUT_LOGO[62]_i_3_n_0\,
      Q => VUT_LOGO(62),
      S => \VUT_LOGO[62]_i_1_n_0\
    );
\VUT_LOGO_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \VUT_LOGO[63]_i_2_n_0\,
      D => \VUT_LOGO[63]_i_3_n_0\,
      Q => VUT_LOGO(63),
      R => \VUT_LOGO[63]_i_1_n_0\
    );
\VUT_LOGO_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \VUT_LOGO[6]_i_1_n_0\,
      Q => VUT_LOGO(6),
      R => '0'
    );
\VUT_LOGO_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \VUT_LOGO[7]_i_1_n_0\,
      Q => VUT_LOGO(7),
      R => '0'
    );
\VUT_LOGO_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \VUT_LOGO[63]_i_2_n_0\,
      D => \VUT_LOGO[8]_i_1_n_0\,
      Q => VUT_LOGO(8),
      R => \VUT_LOGO[63]_i_1_n_0\
    );
\VUT_LOGO_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \VUT_LOGO[63]_i_2_n_0\,
      D => \VUT_LOGO[9]_i_1_n_0\,
      Q => VUT_LOGO(9),
      R => \VUT_LOGO[63]_i_1_n_0\
    );
\display_buffer[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF800000"
    )
        port map (
      I0 => time_from_start(1),
      I1 => time_from_start(0),
      I2 => time_from_start(3),
      I3 => time_from_start(4),
      I4 => screen_buffer(0),
      O => \time_from_start_reg[2]\
    );
\display_buffer[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => screen_buffer(10),
      I1 => \display_buffer_reg[11]\,
      I2 => display_buffer1,
      I3 => Q(4),
      O => D(0)
    );
\display_buffer[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => screen_buffer(11),
      I1 => \display_buffer_reg[11]\,
      I2 => display_buffer1,
      I3 => Q(0),
      O => D(1)
    );
\display_buffer[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => screen_buffer(12),
      I1 => \display_buffer_reg[11]\,
      I2 => display_buffer1,
      I3 => Q(1),
      O => D(2)
    );
\display_buffer[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => screen_buffer(13),
      I1 => \display_buffer_reg[11]\,
      I2 => display_buffer1,
      I3 => Q(2),
      O => D(3)
    );
\display_buffer[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => screen_buffer(14),
      I1 => \display_buffer_reg[11]\,
      I2 => display_buffer1,
      I3 => Q(3),
      O => D(4)
    );
\display_buffer[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF800000000000"
    )
        port map (
      I0 => time_from_start(3),
      I1 => time_from_start(0),
      I2 => time_from_start(1),
      I3 => time_from_start(2),
      I4 => time_from_start(4),
      I5 => screen_buffer(15),
      O => \time_from_start_reg[4]_1\
    );
\display_buffer[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF800000000000"
    )
        port map (
      I0 => time_from_start(3),
      I1 => time_from_start(0),
      I2 => time_from_start(1),
      I3 => time_from_start(2),
      I4 => time_from_start(4),
      I5 => screen_buffer(16),
      O => \time_from_start_reg[4]_2\
    );
\display_buffer[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF800000000000"
    )
        port map (
      I0 => time_from_start(3),
      I1 => time_from_start(0),
      I2 => time_from_start(1),
      I3 => time_from_start(2),
      I4 => time_from_start(4),
      I5 => screen_buffer(17),
      O => \time_from_start_reg[4]_3\
    );
\display_buffer[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => screen_buffer(18),
      I1 => \display_buffer_reg[11]\,
      I2 => display_buffer1,
      I3 => Q(4),
      O => D(5)
    );
\display_buffer[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF800000000000"
    )
        port map (
      I0 => time_from_start(3),
      I1 => time_from_start(0),
      I2 => time_from_start(1),
      I3 => time_from_start(2),
      I4 => time_from_start(4),
      I5 => screen_buffer(19),
      O => \time_from_start_reg[4]_4\
    );
\display_buffer[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF800000"
    )
        port map (
      I0 => time_from_start(1),
      I1 => time_from_start(0),
      I2 => time_from_start(3),
      I3 => time_from_start(4),
      I4 => screen_buffer(1),
      O => \time_from_start_reg[2]_0\
    );
\display_buffer[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => screen_buffer(20),
      I1 => \display_buffer_reg[11]\,
      I2 => display_buffer1,
      I3 => Q(5),
      O => D(6)
    );
\display_buffer[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF800000000000"
    )
        port map (
      I0 => time_from_start(3),
      I1 => time_from_start(0),
      I2 => time_from_start(1),
      I3 => time_from_start(2),
      I4 => time_from_start(4),
      I5 => screen_buffer(21),
      O => \time_from_start_reg[4]_5\
    );
\display_buffer[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => screen_buffer(22),
      I1 => \display_buffer_reg[11]\,
      I2 => display_buffer1,
      I3 => Q(6),
      O => D(7)
    );
\display_buffer[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF800000000000"
    )
        port map (
      I0 => time_from_start(3),
      I1 => time_from_start(0),
      I2 => time_from_start(1),
      I3 => time_from_start(2),
      I4 => time_from_start(4),
      I5 => screen_buffer(23),
      O => \time_from_start_reg[4]_6\
    );
\display_buffer[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF800000000000"
    )
        port map (
      I0 => time_from_start(3),
      I1 => time_from_start(0),
      I2 => time_from_start(1),
      I3 => time_from_start(2),
      I4 => time_from_start(4),
      I5 => screen_buffer(24),
      O => \time_from_start_reg[4]_7\
    );
\display_buffer[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF800000000000"
    )
        port map (
      I0 => time_from_start(3),
      I1 => time_from_start(0),
      I2 => time_from_start(1),
      I3 => time_from_start(2),
      I4 => time_from_start(4),
      I5 => screen_buffer(25),
      O => \time_from_start_reg[4]_8\
    );
\display_buffer[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF800000000000"
    )
        port map (
      I0 => time_from_start(3),
      I1 => time_from_start(0),
      I2 => time_from_start(1),
      I3 => time_from_start(2),
      I4 => time_from_start(4),
      I5 => screen_buffer(26),
      O => \time_from_start_reg[4]_9\
    );
\display_buffer[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => screen_buffer(27),
      I1 => \display_buffer_reg[11]\,
      I2 => display_buffer1,
      I3 => Q(7),
      O => D(8)
    );
\display_buffer[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF800000000000"
    )
        port map (
      I0 => time_from_start(3),
      I1 => time_from_start(0),
      I2 => time_from_start(1),
      I3 => time_from_start(2),
      I4 => time_from_start(4),
      I5 => screen_buffer(28),
      O => \time_from_start_reg[4]_10\
    );
\display_buffer[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => screen_buffer(29),
      I1 => \display_buffer_reg[11]\,
      I2 => display_buffer1,
      I3 => Q(8),
      O => D(9)
    );
\display_buffer[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF800000"
    )
        port map (
      I0 => time_from_start(1),
      I1 => time_from_start(0),
      I2 => time_from_start(3),
      I3 => time_from_start(4),
      I4 => screen_buffer(2),
      O => \time_from_start_reg[2]_1\
    );
\display_buffer[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF800000000000"
    )
        port map (
      I0 => time_from_start(3),
      I1 => time_from_start(0),
      I2 => time_from_start(1),
      I3 => time_from_start(2),
      I4 => time_from_start(4),
      I5 => screen_buffer(30),
      O => \time_from_start_reg[4]_11\
    );
\display_buffer[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF800000000000"
    )
        port map (
      I0 => time_from_start(3),
      I1 => time_from_start(0),
      I2 => time_from_start(1),
      I3 => time_from_start(2),
      I4 => time_from_start(4),
      I5 => screen_buffer(31),
      O => \time_from_start_reg[4]_12\
    );
\display_buffer[32]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF800000"
    )
        port map (
      I0 => time_from_start(1),
      I1 => time_from_start(0),
      I2 => time_from_start(3),
      I3 => time_from_start(4),
      I4 => screen_buffer(32),
      O => \time_from_start_reg[2]_7\
    );
\display_buffer[33]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF800000"
    )
        port map (
      I0 => time_from_start(1),
      I1 => time_from_start(0),
      I2 => time_from_start(3),
      I3 => time_from_start(4),
      I4 => screen_buffer(33),
      O => \time_from_start_reg[2]_8\
    );
\display_buffer[34]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF800000"
    )
        port map (
      I0 => time_from_start(1),
      I1 => time_from_start(0),
      I2 => time_from_start(3),
      I3 => time_from_start(4),
      I4 => screen_buffer(34),
      O => \time_from_start_reg[2]_9\
    );
\display_buffer[35]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF800000"
    )
        port map (
      I0 => time_from_start(1),
      I1 => time_from_start(0),
      I2 => time_from_start(3),
      I3 => time_from_start(4),
      I4 => screen_buffer(35),
      O => \time_from_start_reg[2]_10\
    );
\display_buffer[36]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF800000"
    )
        port map (
      I0 => time_from_start(1),
      I1 => time_from_start(0),
      I2 => time_from_start(3),
      I3 => time_from_start(4),
      I4 => screen_buffer(36),
      O => \time_from_start_reg[2]_11\
    );
\display_buffer[37]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF800000"
    )
        port map (
      I0 => time_from_start(1),
      I1 => time_from_start(0),
      I2 => time_from_start(3),
      I3 => time_from_start(4),
      I4 => screen_buffer(37),
      O => \time_from_start_reg[2]_12\
    );
\display_buffer[38]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF800000"
    )
        port map (
      I0 => time_from_start(1),
      I1 => time_from_start(0),
      I2 => time_from_start(3),
      I3 => time_from_start(4),
      I4 => screen_buffer(38),
      O => \time_from_start_reg[2]_13\
    );
\display_buffer[39]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF800000"
    )
        port map (
      I0 => time_from_start(1),
      I1 => time_from_start(0),
      I2 => time_from_start(3),
      I3 => time_from_start(4),
      I4 => screen_buffer(39),
      O => \time_from_start_reg[2]_14\
    );
\display_buffer[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF800000"
    )
        port map (
      I0 => time_from_start(1),
      I1 => time_from_start(0),
      I2 => time_from_start(3),
      I3 => time_from_start(4),
      I4 => screen_buffer(3),
      O => \time_from_start_reg[2]_2\
    );
\display_buffer[40]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF800000000000"
    )
        port map (
      I0 => time_from_start(3),
      I1 => time_from_start(0),
      I2 => time_from_start(1),
      I3 => time_from_start(2),
      I4 => time_from_start(4),
      I5 => screen_buffer(40),
      O => \time_from_start_reg[4]_13\
    );
\display_buffer[41]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF800000000000"
    )
        port map (
      I0 => time_from_start(3),
      I1 => time_from_start(0),
      I2 => time_from_start(1),
      I3 => time_from_start(2),
      I4 => time_from_start(4),
      I5 => screen_buffer(41),
      O => \time_from_start_reg[4]_14\
    );
\display_buffer[42]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => screen_buffer(42),
      I1 => \display_buffer_reg[11]\,
      I2 => display_buffer1,
      I3 => Q(13),
      O => D(10)
    );
\display_buffer[43]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => screen_buffer(43),
      I1 => \display_buffer_reg[11]\,
      I2 => display_buffer1,
      I3 => Q(9),
      O => D(11)
    );
\display_buffer[44]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => screen_buffer(44),
      I1 => \display_buffer_reg[11]\,
      I2 => display_buffer1,
      I3 => Q(10),
      O => D(12)
    );
\display_buffer[45]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => screen_buffer(45),
      I1 => \display_buffer_reg[11]\,
      I2 => display_buffer1,
      I3 => Q(11),
      O => D(13)
    );
\display_buffer[46]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => screen_buffer(46),
      I1 => \display_buffer_reg[11]\,
      I2 => display_buffer1,
      I3 => Q(12),
      O => D(14)
    );
\display_buffer[47]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF800000000000"
    )
        port map (
      I0 => time_from_start(3),
      I1 => time_from_start(0),
      I2 => time_from_start(1),
      I3 => time_from_start(2),
      I4 => time_from_start(4),
      I5 => screen_buffer(47),
      O => \time_from_start_reg[4]_15\
    );
\display_buffer[48]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF800000000000"
    )
        port map (
      I0 => time_from_start(3),
      I1 => time_from_start(0),
      I2 => time_from_start(1),
      I3 => time_from_start(2),
      I4 => time_from_start(4),
      I5 => screen_buffer(48),
      O => \time_from_start_reg[4]_16\
    );
\display_buffer[49]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF800000000000"
    )
        port map (
      I0 => time_from_start(3),
      I1 => time_from_start(0),
      I2 => time_from_start(1),
      I3 => time_from_start(2),
      I4 => time_from_start(4),
      I5 => screen_buffer(49),
      O => \time_from_start_reg[4]_17\
    );
\display_buffer[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF800000"
    )
        port map (
      I0 => time_from_start(1),
      I1 => time_from_start(0),
      I2 => time_from_start(3),
      I3 => time_from_start(4),
      I4 => screen_buffer(4),
      O => \time_from_start_reg[2]_3\
    );
\display_buffer[50]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => screen_buffer(50),
      I1 => \display_buffer_reg[11]\,
      I2 => display_buffer1,
      I3 => Q(13),
      O => D(15)
    );
\display_buffer[51]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF800000000000"
    )
        port map (
      I0 => time_from_start(3),
      I1 => time_from_start(0),
      I2 => time_from_start(1),
      I3 => time_from_start(2),
      I4 => time_from_start(4),
      I5 => screen_buffer(51),
      O => \time_from_start_reg[4]_18\
    );
\display_buffer[52]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => screen_buffer(52),
      I1 => \display_buffer_reg[11]\,
      I2 => display_buffer1,
      I3 => Q(14),
      O => D(16)
    );
\display_buffer[53]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF800000000000"
    )
        port map (
      I0 => time_from_start(3),
      I1 => time_from_start(0),
      I2 => time_from_start(1),
      I3 => time_from_start(2),
      I4 => time_from_start(4),
      I5 => screen_buffer(53),
      O => \time_from_start_reg[4]_19\
    );
\display_buffer[54]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => screen_buffer(54),
      I1 => \display_buffer_reg[11]\,
      I2 => display_buffer1,
      I3 => Q(15),
      O => D(17)
    );
\display_buffer[55]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF800000000000"
    )
        port map (
      I0 => time_from_start(3),
      I1 => time_from_start(0),
      I2 => time_from_start(1),
      I3 => time_from_start(2),
      I4 => time_from_start(4),
      I5 => screen_buffer(55),
      O => \time_from_start_reg[4]_20\
    );
\display_buffer[56]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF800000000000"
    )
        port map (
      I0 => time_from_start(3),
      I1 => time_from_start(0),
      I2 => time_from_start(1),
      I3 => time_from_start(2),
      I4 => time_from_start(4),
      I5 => screen_buffer(56),
      O => \time_from_start_reg[4]_21\
    );
\display_buffer[57]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF800000000000"
    )
        port map (
      I0 => time_from_start(3),
      I1 => time_from_start(0),
      I2 => time_from_start(1),
      I3 => time_from_start(2),
      I4 => time_from_start(4),
      I5 => screen_buffer(57),
      O => \time_from_start_reg[4]_22\
    );
\display_buffer[58]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF800000000000"
    )
        port map (
      I0 => time_from_start(3),
      I1 => time_from_start(0),
      I2 => time_from_start(1),
      I3 => time_from_start(2),
      I4 => time_from_start(4),
      I5 => screen_buffer(58),
      O => \time_from_start_reg[4]_23\
    );
\display_buffer[59]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => screen_buffer(59),
      I1 => \display_buffer_reg[11]\,
      I2 => display_buffer1,
      I3 => Q(16),
      O => D(18)
    );
\display_buffer[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF800000"
    )
        port map (
      I0 => time_from_start(1),
      I1 => time_from_start(0),
      I2 => time_from_start(3),
      I3 => time_from_start(4),
      I4 => screen_buffer(5),
      O => \time_from_start_reg[2]_4\
    );
\display_buffer[60]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF800000000000"
    )
        port map (
      I0 => time_from_start(3),
      I1 => time_from_start(0),
      I2 => time_from_start(1),
      I3 => time_from_start(2),
      I4 => time_from_start(4),
      I5 => screen_buffer(60),
      O => \time_from_start_reg[4]_24\
    );
\display_buffer[61]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => screen_buffer(61),
      I1 => \display_buffer_reg[11]\,
      I2 => display_buffer1,
      I3 => Q(17),
      O => D(19)
    );
\display_buffer[62]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF800000000000"
    )
        port map (
      I0 => time_from_start(3),
      I1 => time_from_start(0),
      I2 => time_from_start(1),
      I3 => time_from_start(2),
      I4 => time_from_start(4),
      I5 => screen_buffer(62),
      O => \time_from_start_reg[4]_25\
    );
\display_buffer[63]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF800000000000"
    )
        port map (
      I0 => time_from_start(3),
      I1 => time_from_start(0),
      I2 => time_from_start(1),
      I3 => time_from_start(2),
      I4 => time_from_start(4),
      I5 => screen_buffer(63),
      O => \time_from_start_reg[4]_26\
    );
\display_buffer[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF800000"
    )
        port map (
      I0 => time_from_start(1),
      I1 => time_from_start(0),
      I2 => time_from_start(3),
      I3 => time_from_start(4),
      I4 => screen_buffer(6),
      O => \time_from_start_reg[2]_5\
    );
\display_buffer[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF800000"
    )
        port map (
      I0 => time_from_start(1),
      I1 => time_from_start(0),
      I2 => time_from_start(3),
      I3 => time_from_start(4),
      I4 => screen_buffer(7),
      O => \time_from_start_reg[2]_6\
    );
\display_buffer[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF800000000000"
    )
        port map (
      I0 => time_from_start(3),
      I1 => time_from_start(0),
      I2 => time_from_start(1),
      I3 => time_from_start(2),
      I4 => time_from_start(4),
      I5 => screen_buffer(8),
      O => \time_from_start_reg[4]\
    );
\display_buffer[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF800000000000"
    )
        port map (
      I0 => time_from_start(3),
      I1 => time_from_start(0),
      I2 => time_from_start(1),
      I3 => time_from_start(2),
      I4 => time_from_start(4),
      I5 => screen_buffer(9),
      O => \time_from_start_reg[4]_0\
    );
\frame_num[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frame_num_reg(0),
      O => \frame_num[0]_i_1_n_0\
    );
\frame_num[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => frame_num_reg(0),
      I1 => frame_num_reg(1),
      O => \p_0_in__2\(1)
    );
\frame_num[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => frame_num_reg(0),
      I1 => frame_num_reg(1),
      I2 => frame_num_reg(2),
      O => \p_0_in__2\(2)
    );
\frame_num[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => frame_num_reg(1),
      I1 => frame_num_reg(2),
      I2 => frame_num_reg(0),
      I3 => frame_num_reg(3),
      O => \p_0_in__2\(3)
    );
\frame_num[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => frame_num_reg(1),
      I1 => frame_num_reg(2),
      I2 => frame_num_reg(0),
      I3 => frame_num_reg(3),
      I4 => frame_num_reg(4),
      O => \p_0_in__2\(4)
    );
\frame_num_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \frame_num[0]_i_1_n_0\,
      Q => frame_num_reg(0),
      R => clear
    );
\frame_num_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__2\(1),
      Q => frame_num_reg(1),
      R => clear
    );
\frame_num_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__2\(2),
      Q => frame_num_reg(2),
      R => clear
    );
\frame_num_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__2\(3),
      Q => frame_num_reg(3),
      R => clear
    );
\frame_num_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__2\(4),
      Q => frame_num_reg(4),
      R => clear
    );
\screen_buffer[63]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => anim_mode,
      O => clear
    );
\screen_buffer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(0),
      Q => screen_buffer(0),
      R => clear
    );
\screen_buffer_reg[10]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(10),
      Q => screen_buffer(10),
      S => clear
    );
\screen_buffer_reg[11]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(11),
      Q => screen_buffer(11),
      S => clear
    );
\screen_buffer_reg[12]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(12),
      Q => screen_buffer(12),
      S => clear
    );
\screen_buffer_reg[13]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(13),
      Q => screen_buffer(13),
      S => clear
    );
\screen_buffer_reg[14]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(14),
      Q => screen_buffer(14),
      S => clear
    );
\screen_buffer_reg[15]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(15),
      Q => screen_buffer(15),
      S => clear
    );
\screen_buffer_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(16),
      Q => screen_buffer(16),
      R => clear
    );
\screen_buffer_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(17),
      Q => screen_buffer(17),
      R => clear
    );
\screen_buffer_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(18),
      Q => screen_buffer(18),
      R => clear
    );
\screen_buffer_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(19),
      Q => screen_buffer(19),
      R => clear
    );
\screen_buffer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(1),
      Q => screen_buffer(1),
      R => clear
    );
\screen_buffer_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(20),
      Q => screen_buffer(20),
      R => clear
    );
\screen_buffer_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(21),
      Q => screen_buffer(21),
      R => clear
    );
\screen_buffer_reg[22]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(22),
      Q => screen_buffer(22),
      S => clear
    );
\screen_buffer_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(23),
      Q => screen_buffer(23),
      R => clear
    );
\screen_buffer_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(24),
      Q => screen_buffer(24),
      R => clear
    );
\screen_buffer_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(25),
      Q => screen_buffer(25),
      R => clear
    );
\screen_buffer_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(26),
      Q => screen_buffer(26),
      R => clear
    );
\screen_buffer_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(27),
      Q => screen_buffer(27),
      R => clear
    );
\screen_buffer_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(28),
      Q => screen_buffer(28),
      R => clear
    );
\screen_buffer_reg[29]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(29),
      Q => screen_buffer(29),
      S => clear
    );
\screen_buffer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(2),
      Q => screen_buffer(2),
      R => clear
    );
\screen_buffer_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(30),
      Q => screen_buffer(30),
      R => clear
    );
\screen_buffer_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(31),
      Q => screen_buffer(31),
      R => clear
    );
\screen_buffer_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(32),
      Q => screen_buffer(32),
      R => clear
    );
\screen_buffer_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(33),
      Q => screen_buffer(33),
      R => clear
    );
\screen_buffer_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(34),
      Q => screen_buffer(34),
      R => clear
    );
\screen_buffer_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(35),
      Q => screen_buffer(35),
      R => clear
    );
\screen_buffer_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(36),
      Q => screen_buffer(36),
      R => clear
    );
\screen_buffer_reg[37]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(37),
      Q => screen_buffer(37),
      S => clear
    );
\screen_buffer_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(38),
      Q => screen_buffer(38),
      R => clear
    );
\screen_buffer_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(39),
      Q => screen_buffer(39),
      R => clear
    );
\screen_buffer_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(3),
      Q => screen_buffer(3),
      R => clear
    );
\screen_buffer_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(40),
      Q => screen_buffer(40),
      R => clear
    );
\screen_buffer_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(41),
      Q => screen_buffer(41),
      R => clear
    );
\screen_buffer_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(42),
      Q => screen_buffer(42),
      R => clear
    );
\screen_buffer_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(43),
      Q => screen_buffer(43),
      R => clear
    );
\screen_buffer_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(44),
      Q => screen_buffer(44),
      R => clear
    );
\screen_buffer_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(45),
      Q => screen_buffer(45),
      R => clear
    );
\screen_buffer_reg[46]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(46),
      Q => screen_buffer(46),
      S => clear
    );
\screen_buffer_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(47),
      Q => screen_buffer(47),
      R => clear
    );
\screen_buffer_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(48),
      Q => screen_buffer(48),
      R => clear
    );
\screen_buffer_reg[49]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(49),
      Q => screen_buffer(49),
      S => clear
    );
\screen_buffer_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(4),
      Q => screen_buffer(4),
      R => clear
    );
\screen_buffer_reg[50]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(50),
      Q => screen_buffer(50),
      S => clear
    );
\screen_buffer_reg[51]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(51),
      Q => screen_buffer(51),
      S => clear
    );
\screen_buffer_reg[52]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(52),
      Q => screen_buffer(52),
      S => clear
    );
\screen_buffer_reg[53]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(53),
      Q => screen_buffer(53),
      S => clear
    );
\screen_buffer_reg[54]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(54),
      Q => screen_buffer(54),
      S => clear
    );
\screen_buffer_reg[55]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(55),
      Q => screen_buffer(55),
      S => clear
    );
\screen_buffer_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(56),
      Q => screen_buffer(56),
      R => clear
    );
\screen_buffer_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(57),
      Q => screen_buffer(57),
      R => clear
    );
\screen_buffer_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(58),
      Q => screen_buffer(58),
      R => clear
    );
\screen_buffer_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(59),
      Q => screen_buffer(59),
      R => clear
    );
\screen_buffer_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(5),
      Q => screen_buffer(5),
      R => clear
    );
\screen_buffer_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(60),
      Q => screen_buffer(60),
      R => clear
    );
\screen_buffer_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(61),
      Q => screen_buffer(61),
      R => clear
    );
\screen_buffer_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(62),
      Q => screen_buffer(62),
      R => clear
    );
\screen_buffer_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(63),
      Q => screen_buffer(63),
      R => clear
    );
\screen_buffer_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(6),
      Q => screen_buffer(6),
      R => clear
    );
\screen_buffer_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(7),
      Q => screen_buffer(7),
      R => clear
    );
\screen_buffer_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(8),
      Q => screen_buffer(8),
      R => clear
    );
\screen_buffer_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => VUT_LOGO(9),
      Q => screen_buffer(9),
      S => clear
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_counter_anim is
  port (
    \screen_value_reg[63]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 17 downto 0 );
    \screen_value_reg[62]_0\ : out STD_LOGIC;
    \screen_value_reg[31]_0\ : out STD_LOGIC;
    clk : in STD_LOGIC;
    \display_buffer_reg[63]\ : in STD_LOGIC;
    display_buffer1 : in STD_LOGIC;
    \display_buffer_reg[63]_0\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end design_1_top_0_0_counter_anim;

architecture STRUCTURE of design_1_top_0_0_counter_anim is
  signal en_2nd_ctr : STD_LOGIC;
  signal first_value : STD_LOGIC_VECTOR ( 23 downto 3 );
  signal first_value_0 : STD_LOGIC_VECTOR ( 23 downto 3 );
  signal screen_value : STD_LOGIC_VECTOR ( 63 downto 31 );
  signal second_value : STD_LOGIC_VECTOR ( 23 downto 3 );
  signal second_value_1 : STD_LOGIC_VECTOR ( 23 downto 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \display_buffer[62]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \display_buffer[63]_i_1\ : label is "soft_lutpair23";
begin
cnt1: entity work.design_1_top_0_0_counter
     port map (
      AR(0) => AR(0),
      D(9) => first_value_0(23),
      D(8) => first_value_0(21),
      D(7) => first_value_0(19),
      D(6) => first_value_0(14),
      D(5) => first_value_0(12),
      D(4) => first_value_0(10),
      D(3 downto 0) => first_value_0(6 downto 3),
      E(0) => en_2nd_ctr,
      \bcd_value_reg[0]_0\(0) => E(0),
      clk => clk
    );
cnt2: entity work.design_1_top_0_0_counter_0
     port map (
      AR(0) => AR(0),
      D(9) => second_value_1(23),
      D(8) => second_value_1(21),
      D(7) => second_value_1(19),
      D(6) => second_value_1(14),
      D(5) => second_value_1(12),
      D(4) => second_value_1(10),
      D(3 downto 0) => second_value_1(6 downto 3),
      E(0) => en_2nd_ctr,
      clk => clk
    );
\display_buffer[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0014"
    )
        port map (
      I0 => \display_buffer_reg[63]\,
      I1 => display_buffer1,
      I2 => screen_value(31),
      I3 => \display_buffer_reg[63]_0\,
      O => \screen_value_reg[31]_0\
    );
\display_buffer[62]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0014"
    )
        port map (
      I0 => \display_buffer_reg[63]\,
      I1 => display_buffer1,
      I2 => screen_value(62),
      I3 => \display_buffer_reg[63]_0\,
      O => \screen_value_reg[62]_0\
    );
\display_buffer[63]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0014"
    )
        port map (
      I0 => \display_buffer_reg[63]\,
      I1 => display_buffer1,
      I2 => screen_value(63),
      I3 => \display_buffer_reg[63]_0\,
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
\first_value_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => first_value_0(12),
      Q => first_value(12),
      R => '0'
    );
\first_value_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => first_value_0(14),
      Q => first_value(14),
      R => '0'
    );
\first_value_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => first_value_0(19),
      Q => first_value(19),
      R => '0'
    );
\first_value_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => first_value_0(21),
      Q => first_value(21),
      R => '0'
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
\first_value_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => first_value_0(4),
      Q => first_value(4),
      R => '0'
    );
\first_value_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => first_value_0(5),
      Q => first_value(5),
      R => '0'
    );
\first_value_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => first_value_0(6),
      Q => first_value(6),
      R => '0'
    );
\screen_value_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => second_value(3),
      Q => Q(0),
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
      Q => Q(1),
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
      Q => Q(2),
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
      Q => Q(3),
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
      Q => Q(4),
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
      Q => Q(5),
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
      Q => Q(6),
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
      Q => Q(7),
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
      Q => Q(8),
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
      Q => Q(9),
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
      Q => Q(10),
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
      Q => Q(11),
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
      Q => Q(12),
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
      Q => Q(13),
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
      Q => Q(14),
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
      Q => Q(15),
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
      Q => Q(16),
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
      Q => Q(17),
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
\second_value_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => second_value_1(12),
      Q => second_value(12),
      R => '0'
    );
\second_value_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => second_value_1(14),
      Q => second_value(14),
      R => '0'
    );
\second_value_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => second_value_1(19),
      Q => second_value(19),
      R => '0'
    );
\second_value_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => second_value_1(21),
      Q => second_value(21),
      R => '0'
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
\second_value_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => second_value_1(4),
      Q => second_value(4),
      R => '0'
    );
\second_value_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => second_value_1(5),
      Q => second_value(5),
      R => '0'
    );
\second_value_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => second_value_1(6),
      Q => second_value(6),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_top is
  port (
    \pre_leds_reg[0]_0\ : out STD_LOGIC;
    col : out STD_LOGIC_VECTOR ( 7 downto 0 );
    row : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \pre_leds_reg[1]_0\ : out STD_LOGIC;
    leds : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC
  );
end design_1_top_0_0_top;

architecture STRUCTURE of design_1_top_0_0_top is
  signal anim_ctr : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \anim_ctr0_carry__0_n_0\ : STD_LOGIC;
  signal \anim_ctr0_carry__0_n_1\ : STD_LOGIC;
  signal \anim_ctr0_carry__0_n_2\ : STD_LOGIC;
  signal \anim_ctr0_carry__0_n_3\ : STD_LOGIC;
  signal \anim_ctr0_carry__0_n_4\ : STD_LOGIC;
  signal \anim_ctr0_carry__0_n_5\ : STD_LOGIC;
  signal \anim_ctr0_carry__0_n_6\ : STD_LOGIC;
  signal \anim_ctr0_carry__0_n_7\ : STD_LOGIC;
  signal \anim_ctr0_carry__1_n_0\ : STD_LOGIC;
  signal \anim_ctr0_carry__1_n_1\ : STD_LOGIC;
  signal \anim_ctr0_carry__1_n_2\ : STD_LOGIC;
  signal \anim_ctr0_carry__1_n_3\ : STD_LOGIC;
  signal \anim_ctr0_carry__1_n_4\ : STD_LOGIC;
  signal \anim_ctr0_carry__1_n_5\ : STD_LOGIC;
  signal \anim_ctr0_carry__1_n_6\ : STD_LOGIC;
  signal \anim_ctr0_carry__1_n_7\ : STD_LOGIC;
  signal \anim_ctr0_carry__2_n_0\ : STD_LOGIC;
  signal \anim_ctr0_carry__2_n_1\ : STD_LOGIC;
  signal \anim_ctr0_carry__2_n_2\ : STD_LOGIC;
  signal \anim_ctr0_carry__2_n_3\ : STD_LOGIC;
  signal \anim_ctr0_carry__2_n_4\ : STD_LOGIC;
  signal \anim_ctr0_carry__2_n_5\ : STD_LOGIC;
  signal \anim_ctr0_carry__2_n_6\ : STD_LOGIC;
  signal \anim_ctr0_carry__2_n_7\ : STD_LOGIC;
  signal \anim_ctr0_carry__3_n_0\ : STD_LOGIC;
  signal \anim_ctr0_carry__3_n_1\ : STD_LOGIC;
  signal \anim_ctr0_carry__3_n_2\ : STD_LOGIC;
  signal \anim_ctr0_carry__3_n_3\ : STD_LOGIC;
  signal \anim_ctr0_carry__3_n_4\ : STD_LOGIC;
  signal \anim_ctr0_carry__3_n_5\ : STD_LOGIC;
  signal \anim_ctr0_carry__3_n_6\ : STD_LOGIC;
  signal \anim_ctr0_carry__3_n_7\ : STD_LOGIC;
  signal \anim_ctr0_carry__4_n_3\ : STD_LOGIC;
  signal \anim_ctr0_carry__4_n_6\ : STD_LOGIC;
  signal \anim_ctr0_carry__4_n_7\ : STD_LOGIC;
  signal anim_ctr0_carry_n_0 : STD_LOGIC;
  signal anim_ctr0_carry_n_1 : STD_LOGIC;
  signal anim_ctr0_carry_n_2 : STD_LOGIC;
  signal anim_ctr0_carry_n_3 : STD_LOGIC;
  signal anim_ctr0_carry_n_4 : STD_LOGIC;
  signal anim_ctr0_carry_n_5 : STD_LOGIC;
  signal anim_ctr0_carry_n_6 : STD_LOGIC;
  signal anim_ctr0_carry_n_7 : STD_LOGIC;
  signal \anim_ctr[22]_i_1_n_0\ : STD_LOGIC;
  signal \anim_ctr[22]_i_2_n_0\ : STD_LOGIC;
  signal \anim_ctr[22]_i_3_n_0\ : STD_LOGIC;
  signal \anim_ctr[22]_i_4_n_0\ : STD_LOGIC;
  signal \anim_ctr[22]_i_5_n_0\ : STD_LOGIC;
  signal \anim_ctr[22]_i_6_n_0\ : STD_LOGIC;
  signal anim_ctr_2 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal anim_enable : STD_LOGIC;
  signal anim_mode : STD_LOGIC;
  signal anim_mode_i_1_n_0 : STD_LOGIC;
  signal anim_mode_i_2_n_0 : STD_LOGIC;
  signal animation_n_0 : STD_LOGIC;
  signal animation_n_1 : STD_LOGIC;
  signal animation_n_10 : STD_LOGIC;
  signal animation_n_11 : STD_LOGIC;
  signal animation_n_12 : STD_LOGIC;
  signal animation_n_13 : STD_LOGIC;
  signal animation_n_14 : STD_LOGIC;
  signal animation_n_15 : STD_LOGIC;
  signal animation_n_16 : STD_LOGIC;
  signal animation_n_17 : STD_LOGIC;
  signal animation_n_18 : STD_LOGIC;
  signal animation_n_19 : STD_LOGIC;
  signal animation_n_2 : STD_LOGIC;
  signal animation_n_20 : STD_LOGIC;
  signal animation_n_21 : STD_LOGIC;
  signal animation_n_22 : STD_LOGIC;
  signal animation_n_23 : STD_LOGIC;
  signal animation_n_24 : STD_LOGIC;
  signal animation_n_25 : STD_LOGIC;
  signal animation_n_26 : STD_LOGIC;
  signal animation_n_27 : STD_LOGIC;
  signal animation_n_28 : STD_LOGIC;
  signal animation_n_29 : STD_LOGIC;
  signal animation_n_3 : STD_LOGIC;
  signal animation_n_30 : STD_LOGIC;
  signal animation_n_31 : STD_LOGIC;
  signal animation_n_32 : STD_LOGIC;
  signal animation_n_33 : STD_LOGIC;
  signal animation_n_34 : STD_LOGIC;
  signal animation_n_35 : STD_LOGIC;
  signal animation_n_36 : STD_LOGIC;
  signal animation_n_37 : STD_LOGIC;
  signal animation_n_38 : STD_LOGIC;
  signal animation_n_39 : STD_LOGIC;
  signal animation_n_4 : STD_LOGIC;
  signal animation_n_40 : STD_LOGIC;
  signal animation_n_41 : STD_LOGIC;
  signal animation_n_42 : STD_LOGIC;
  signal animation_n_43 : STD_LOGIC;
  signal animation_n_44 : STD_LOGIC;
  signal animation_n_45 : STD_LOGIC;
  signal animation_n_46 : STD_LOGIC;
  signal animation_n_47 : STD_LOGIC;
  signal animation_n_48 : STD_LOGIC;
  signal animation_n_49 : STD_LOGIC;
  signal animation_n_5 : STD_LOGIC;
  signal animation_n_50 : STD_LOGIC;
  signal animation_n_51 : STD_LOGIC;
  signal animation_n_52 : STD_LOGIC;
  signal animation_n_53 : STD_LOGIC;
  signal animation_n_54 : STD_LOGIC;
  signal animation_n_55 : STD_LOGIC;
  signal animation_n_56 : STD_LOGIC;
  signal animation_n_57 : STD_LOGIC;
  signal animation_n_58 : STD_LOGIC;
  signal animation_n_59 : STD_LOGIC;
  signal animation_n_6 : STD_LOGIC;
  signal animation_n_60 : STD_LOGIC;
  signal animation_n_61 : STD_LOGIC;
  signal animation_n_62 : STD_LOGIC;
  signal animation_n_63 : STD_LOGIC;
  signal animation_n_7 : STD_LOGIC;
  signal animation_n_8 : STD_LOGIC;
  signal animation_n_9 : STD_LOGIC;
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
  signal \cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal cnt_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cnt_dis_enable_reg_n_0 : STD_LOGIC;
  signal cnt_dis_n_0 : STD_LOGIC;
  signal cnt_dis_n_19 : STD_LOGIC;
  signal cnt_dis_n_20 : STD_LOGIC;
  signal cnt_dis_rst : STD_LOGIC;
  signal cnt_dis_rst_i_1_n_0 : STD_LOGIC;
  signal col_indx : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \col_indx[0]_i_1_n_0\ : STD_LOGIC;
  signal \col_indx[1]_i_1_n_0\ : STD_LOGIC;
  signal \col_indx[2]_i_1_n_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data3 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data4 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data5 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data6 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal display_buffer : STD_LOGIC;
  signal display_buffer1 : STD_LOGIC;
  signal \display_buffer[39]_i_1_n_0\ : STD_LOGIC;
  signal \display_buffer[39]_i_3_n_0\ : STD_LOGIC;
  signal \display_buffer[61]_i_2_n_0\ : STD_LOGIC;
  signal \display_buffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \display_buffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \display_buffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \display_buffer_reg_n_0_[3]\ : STD_LOGIC;
  signal \display_buffer_reg_n_0_[4]\ : STD_LOGIC;
  signal \display_buffer_reg_n_0_[5]\ : STD_LOGIC;
  signal \display_buffer_reg_n_0_[6]\ : STD_LOGIC;
  signal \display_buffer_reg_n_0_[7]\ : STD_LOGIC;
  signal \^leds\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal \pre_leds[0]_i_1_n_0\ : STD_LOGIC;
  signal \pre_leds[1]_i_1_n_0\ : STD_LOGIC;
  signal \pre_leds[2]_i_1_n_0\ : STD_LOGIC;
  signal \pre_leds[3]_i_1_n_0\ : STD_LOGIC;
  signal \pre_leds[3]_i_2_n_0\ : STD_LOGIC;
  signal \pre_leds[3]_i_3_n_0\ : STD_LOGIC;
  signal \pre_leds[3]_i_4_n_0\ : STD_LOGIC;
  signal \pre_leds[3]_i_5_n_0\ : STD_LOGIC;
  signal \pre_leds[3]_i_6_n_0\ : STD_LOGIC;
  signal \pre_leds[3]_i_7_n_0\ : STD_LOGIC;
  signal \pre_leds[3]_i_8_n_0\ : STD_LOGIC;
  signal \^pre_leds_reg[0]_0\ : STD_LOGIC;
  signal \^pre_leds_reg[1]_0\ : STD_LOGIC;
  signal \^row\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal scol : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \scol[0]_i_2_n_0\ : STD_LOGIC;
  signal \scol[0]_i_3_n_0\ : STD_LOGIC;
  signal \scol[1]_i_2_n_0\ : STD_LOGIC;
  signal \scol[1]_i_3_n_0\ : STD_LOGIC;
  signal \scol[2]_i_2_n_0\ : STD_LOGIC;
  signal \scol[2]_i_3_n_0\ : STD_LOGIC;
  signal \scol[3]_i_2_n_0\ : STD_LOGIC;
  signal \scol[3]_i_3_n_0\ : STD_LOGIC;
  signal \scol[4]_i_2_n_0\ : STD_LOGIC;
  signal \scol[4]_i_3_n_0\ : STD_LOGIC;
  signal \scol[5]_i_2_n_0\ : STD_LOGIC;
  signal \scol[5]_i_3_n_0\ : STD_LOGIC;
  signal \scol[6]_i_2_n_0\ : STD_LOGIC;
  signal \scol[6]_i_3_n_0\ : STD_LOGIC;
  signal \scol[7]_i_2_n_0\ : STD_LOGIC;
  signal \scol[7]_i_3_n_0\ : STD_LOGIC;
  signal screen_value : STD_LOGIC_VECTOR ( 61 downto 11 );
  signal sec_cnt : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal \sec_cnt0_carry__0_n_0\ : STD_LOGIC;
  signal \sec_cnt0_carry__0_n_1\ : STD_LOGIC;
  signal \sec_cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \sec_cnt0_carry__0_n_3\ : STD_LOGIC;
  signal \sec_cnt0_carry__0_n_4\ : STD_LOGIC;
  signal \sec_cnt0_carry__0_n_5\ : STD_LOGIC;
  signal \sec_cnt0_carry__0_n_6\ : STD_LOGIC;
  signal \sec_cnt0_carry__0_n_7\ : STD_LOGIC;
  signal \sec_cnt0_carry__1_n_0\ : STD_LOGIC;
  signal \sec_cnt0_carry__1_n_1\ : STD_LOGIC;
  signal \sec_cnt0_carry__1_n_2\ : STD_LOGIC;
  signal \sec_cnt0_carry__1_n_3\ : STD_LOGIC;
  signal \sec_cnt0_carry__1_n_4\ : STD_LOGIC;
  signal \sec_cnt0_carry__1_n_5\ : STD_LOGIC;
  signal \sec_cnt0_carry__1_n_6\ : STD_LOGIC;
  signal \sec_cnt0_carry__1_n_7\ : STD_LOGIC;
  signal \sec_cnt0_carry__2_n_0\ : STD_LOGIC;
  signal \sec_cnt0_carry__2_n_1\ : STD_LOGIC;
  signal \sec_cnt0_carry__2_n_2\ : STD_LOGIC;
  signal \sec_cnt0_carry__2_n_3\ : STD_LOGIC;
  signal \sec_cnt0_carry__2_n_4\ : STD_LOGIC;
  signal \sec_cnt0_carry__2_n_5\ : STD_LOGIC;
  signal \sec_cnt0_carry__2_n_6\ : STD_LOGIC;
  signal \sec_cnt0_carry__2_n_7\ : STD_LOGIC;
  signal \sec_cnt0_carry__3_n_0\ : STD_LOGIC;
  signal \sec_cnt0_carry__3_n_1\ : STD_LOGIC;
  signal \sec_cnt0_carry__3_n_2\ : STD_LOGIC;
  signal \sec_cnt0_carry__3_n_3\ : STD_LOGIC;
  signal \sec_cnt0_carry__3_n_4\ : STD_LOGIC;
  signal \sec_cnt0_carry__3_n_5\ : STD_LOGIC;
  signal \sec_cnt0_carry__3_n_6\ : STD_LOGIC;
  signal \sec_cnt0_carry__3_n_7\ : STD_LOGIC;
  signal \sec_cnt0_carry__4_n_1\ : STD_LOGIC;
  signal \sec_cnt0_carry__4_n_2\ : STD_LOGIC;
  signal \sec_cnt0_carry__4_n_3\ : STD_LOGIC;
  signal \sec_cnt0_carry__4_n_4\ : STD_LOGIC;
  signal \sec_cnt0_carry__4_n_5\ : STD_LOGIC;
  signal \sec_cnt0_carry__4_n_6\ : STD_LOGIC;
  signal \sec_cnt0_carry__4_n_7\ : STD_LOGIC;
  signal sec_cnt0_carry_n_0 : STD_LOGIC;
  signal sec_cnt0_carry_n_1 : STD_LOGIC;
  signal sec_cnt0_carry_n_2 : STD_LOGIC;
  signal sec_cnt0_carry_n_3 : STD_LOGIC;
  signal sec_cnt0_carry_n_4 : STD_LOGIC;
  signal sec_cnt0_carry_n_5 : STD_LOGIC;
  signal sec_cnt0_carry_n_6 : STD_LOGIC;
  signal sec_cnt0_carry_n_7 : STD_LOGIC;
  signal \sec_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \srow[7]_i_2_n_0\ : STD_LOGIC;
  signal \srow[7]_i_3_n_0\ : STD_LOGIC;
  signal \srow[7]_i_4_n_0\ : STD_LOGIC;
  signal \srow[7]_i_5_n_0\ : STD_LOGIC;
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
  signal \NLW_anim_ctr0_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_anim_ctr0_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cnt0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_cnt0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_sec_cnt0_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of anim_ctr0_carry : label is 35;
  attribute ADDER_THRESHOLD of \anim_ctr0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \anim_ctr0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \anim_ctr0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \anim_ctr0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \anim_ctr0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of cnt0_carry : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__2\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[0]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \col_indx[1]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \col_indx[2]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \display_buffer[61]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \pre_leds[0]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \pre_leds[1]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \pre_leds[2]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \pre_leds[3]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \pre_leds[3]_i_8\ : label is "soft_lutpair25";
  attribute ADDER_THRESHOLD of sec_cnt0_carry : label is 35;
  attribute ADDER_THRESHOLD of \sec_cnt0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \sec_cnt0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \sec_cnt0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \sec_cnt0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \sec_cnt0_carry__4\ : label is 35;
  attribute SOFT_HLUTNM of \sec_cnt[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \srow[7]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \time_from_start[1]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \time_from_start[2]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \time_from_start[3]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \time_from_start[4]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \time_from_start[5]_i_4\ : label is "soft_lutpair27";
begin
  leds(1 downto 0) <= \^leds\(1 downto 0);
  \pre_leds_reg[0]_0\ <= \^pre_leds_reg[0]_0\;
  \pre_leds_reg[1]_0\ <= \^pre_leds_reg[1]_0\;
  row(7 downto 0) <= \^row\(7 downto 0);
anim_ctr0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => anim_ctr0_carry_n_0,
      CO(2) => anim_ctr0_carry_n_1,
      CO(1) => anim_ctr0_carry_n_2,
      CO(0) => anim_ctr0_carry_n_3,
      CYINIT => anim_ctr(0),
      DI(3 downto 0) => B"0000",
      O(3) => anim_ctr0_carry_n_4,
      O(2) => anim_ctr0_carry_n_5,
      O(1) => anim_ctr0_carry_n_6,
      O(0) => anim_ctr0_carry_n_7,
      S(3 downto 0) => anim_ctr(4 downto 1)
    );
\anim_ctr0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => anim_ctr0_carry_n_0,
      CO(3) => \anim_ctr0_carry__0_n_0\,
      CO(2) => \anim_ctr0_carry__0_n_1\,
      CO(1) => \anim_ctr0_carry__0_n_2\,
      CO(0) => \anim_ctr0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \anim_ctr0_carry__0_n_4\,
      O(2) => \anim_ctr0_carry__0_n_5\,
      O(1) => \anim_ctr0_carry__0_n_6\,
      O(0) => \anim_ctr0_carry__0_n_7\,
      S(3 downto 0) => anim_ctr(8 downto 5)
    );
\anim_ctr0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \anim_ctr0_carry__0_n_0\,
      CO(3) => \anim_ctr0_carry__1_n_0\,
      CO(2) => \anim_ctr0_carry__1_n_1\,
      CO(1) => \anim_ctr0_carry__1_n_2\,
      CO(0) => \anim_ctr0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \anim_ctr0_carry__1_n_4\,
      O(2) => \anim_ctr0_carry__1_n_5\,
      O(1) => \anim_ctr0_carry__1_n_6\,
      O(0) => \anim_ctr0_carry__1_n_7\,
      S(3 downto 0) => anim_ctr(12 downto 9)
    );
\anim_ctr0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \anim_ctr0_carry__1_n_0\,
      CO(3) => \anim_ctr0_carry__2_n_0\,
      CO(2) => \anim_ctr0_carry__2_n_1\,
      CO(1) => \anim_ctr0_carry__2_n_2\,
      CO(0) => \anim_ctr0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \anim_ctr0_carry__2_n_4\,
      O(2) => \anim_ctr0_carry__2_n_5\,
      O(1) => \anim_ctr0_carry__2_n_6\,
      O(0) => \anim_ctr0_carry__2_n_7\,
      S(3 downto 0) => anim_ctr(16 downto 13)
    );
\anim_ctr0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \anim_ctr0_carry__2_n_0\,
      CO(3) => \anim_ctr0_carry__3_n_0\,
      CO(2) => \anim_ctr0_carry__3_n_1\,
      CO(1) => \anim_ctr0_carry__3_n_2\,
      CO(0) => \anim_ctr0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \anim_ctr0_carry__3_n_4\,
      O(2) => \anim_ctr0_carry__3_n_5\,
      O(1) => \anim_ctr0_carry__3_n_6\,
      O(0) => \anim_ctr0_carry__3_n_7\,
      S(3 downto 0) => anim_ctr(20 downto 17)
    );
\anim_ctr0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \anim_ctr0_carry__3_n_0\,
      CO(3 downto 1) => \NLW_anim_ctr0_carry__4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \anim_ctr0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_anim_ctr0_carry__4_O_UNCONNECTED\(3 downto 2),
      O(1) => \anim_ctr0_carry__4_n_6\,
      O(0) => \anim_ctr0_carry__4_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => anim_ctr(22 downto 21)
    );
\anim_ctr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => anim_ctr(0),
      O => anim_ctr_2(0)
    );
\anim_ctr[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => \anim_ctr[22]_i_2_n_0\,
      I1 => anim_ctr(0),
      I2 => anim_ctr(21),
      I3 => anim_ctr(22),
      I4 => \anim_ctr[22]_i_3_n_0\,
      I5 => \anim_ctr[22]_i_4_n_0\,
      O => \anim_ctr[22]_i_1_n_0\
    );
\anim_ctr[22]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => anim_ctr(18),
      I1 => anim_ctr(17),
      I2 => anim_ctr(19),
      I3 => anim_ctr(20),
      O => \anim_ctr[22]_i_2_n_0\
    );
\anim_ctr[22]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => anim_ctr(12),
      I1 => anim_ctr(11),
      I2 => anim_ctr(10),
      I3 => anim_ctr(9),
      I4 => \anim_ctr[22]_i_5_n_0\,
      O => \anim_ctr[22]_i_3_n_0\
    );
\anim_ctr[22]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => anim_ctr(3),
      I1 => anim_ctr(4),
      I2 => anim_ctr(1),
      I3 => anim_ctr(2),
      I4 => \anim_ctr[22]_i_6_n_0\,
      O => \anim_ctr[22]_i_4_n_0\
    );
\anim_ctr[22]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => anim_ctr(14),
      I1 => anim_ctr(13),
      I2 => anim_ctr(16),
      I3 => anim_ctr(15),
      O => \anim_ctr[22]_i_5_n_0\
    );
\anim_ctr[22]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => anim_ctr(5),
      I1 => anim_ctr(6),
      I2 => anim_ctr(8),
      I3 => anim_ctr(7),
      O => \anim_ctr[22]_i_6_n_0\
    );
\anim_ctr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => anim_ctr_2(0),
      Q => anim_ctr(0),
      R => '0'
    );
\anim_ctr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \anim_ctr0_carry__1_n_6\,
      Q => anim_ctr(10),
      R => \anim_ctr[22]_i_1_n_0\
    );
\anim_ctr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \anim_ctr0_carry__1_n_5\,
      Q => anim_ctr(11),
      R => \anim_ctr[22]_i_1_n_0\
    );
\anim_ctr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \anim_ctr0_carry__1_n_4\,
      Q => anim_ctr(12),
      R => \anim_ctr[22]_i_1_n_0\
    );
\anim_ctr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \anim_ctr0_carry__2_n_7\,
      Q => anim_ctr(13),
      R => \anim_ctr[22]_i_1_n_0\
    );
\anim_ctr_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \anim_ctr0_carry__2_n_6\,
      Q => anim_ctr(14),
      R => \anim_ctr[22]_i_1_n_0\
    );
\anim_ctr_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \anim_ctr0_carry__2_n_5\,
      Q => anim_ctr(15),
      R => \anim_ctr[22]_i_1_n_0\
    );
\anim_ctr_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \anim_ctr0_carry__2_n_4\,
      Q => anim_ctr(16),
      R => \anim_ctr[22]_i_1_n_0\
    );
\anim_ctr_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \anim_ctr0_carry__3_n_7\,
      Q => anim_ctr(17),
      R => \anim_ctr[22]_i_1_n_0\
    );
\anim_ctr_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \anim_ctr0_carry__3_n_6\,
      Q => anim_ctr(18),
      R => \anim_ctr[22]_i_1_n_0\
    );
\anim_ctr_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \anim_ctr0_carry__3_n_5\,
      Q => anim_ctr(19),
      R => \anim_ctr[22]_i_1_n_0\
    );
\anim_ctr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => anim_ctr0_carry_n_7,
      Q => anim_ctr(1),
      R => \anim_ctr[22]_i_1_n_0\
    );
\anim_ctr_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \anim_ctr0_carry__3_n_4\,
      Q => anim_ctr(20),
      R => \anim_ctr[22]_i_1_n_0\
    );
\anim_ctr_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \anim_ctr0_carry__4_n_7\,
      Q => anim_ctr(21),
      R => \anim_ctr[22]_i_1_n_0\
    );
\anim_ctr_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \anim_ctr0_carry__4_n_6\,
      Q => anim_ctr(22),
      R => \anim_ctr[22]_i_1_n_0\
    );
\anim_ctr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => anim_ctr0_carry_n_6,
      Q => anim_ctr(2),
      R => \anim_ctr[22]_i_1_n_0\
    );
\anim_ctr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => anim_ctr0_carry_n_5,
      Q => anim_ctr(3),
      R => \anim_ctr[22]_i_1_n_0\
    );
\anim_ctr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => anim_ctr0_carry_n_4,
      Q => anim_ctr(4),
      R => \anim_ctr[22]_i_1_n_0\
    );
\anim_ctr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \anim_ctr0_carry__0_n_7\,
      Q => anim_ctr(5),
      R => \anim_ctr[22]_i_1_n_0\
    );
\anim_ctr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \anim_ctr0_carry__0_n_6\,
      Q => anim_ctr(6),
      R => \anim_ctr[22]_i_1_n_0\
    );
\anim_ctr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \anim_ctr0_carry__0_n_5\,
      Q => anim_ctr(7),
      R => \anim_ctr[22]_i_1_n_0\
    );
\anim_ctr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \anim_ctr0_carry__0_n_4\,
      Q => anim_ctr(8),
      R => \anim_ctr[22]_i_1_n_0\
    );
\anim_ctr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \anim_ctr0_carry__1_n_7\,
      Q => anim_ctr(9),
      R => \anim_ctr[22]_i_1_n_0\
    );
anim_enable_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \anim_ctr[22]_i_1_n_0\,
      Q => anim_enable,
      R => '0'
    );
anim_mode_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EE20"
    )
        port map (
      I0 => \display_buffer[61]_i_2_n_0\,
      I1 => \srow[7]_i_2_n_0\,
      I2 => anim_mode_i_2_n_0,
      I3 => anim_mode,
      O => anim_mode_i_1_n_0
    );
anim_mode_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => time_from_start(3),
      I1 => time_from_start(4),
      I2 => time_from_start(1),
      I3 => time_from_start(2),
      I4 => time_from_start(5),
      I5 => time_from_start(0),
      O => anim_mode_i_2_n_0
    );
anim_mode_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => anim_mode_i_1_n_0,
      Q => anim_mode,
      R => '0'
    );
animation: entity work.design_1_top_0_0_graphics
     port map (
      D(19) => animation_n_16,
      D(18) => animation_n_17,
      D(17) => animation_n_18,
      D(16) => animation_n_19,
      D(15) => animation_n_20,
      D(14) => animation_n_21,
      D(13) => animation_n_22,
      D(12) => animation_n_23,
      D(11) => animation_n_24,
      D(10) => animation_n_25,
      D(9) => animation_n_26,
      D(8) => animation_n_27,
      D(7) => animation_n_28,
      D(6) => animation_n_29,
      D(5) => animation_n_30,
      D(4) => animation_n_31,
      D(3) => animation_n_32,
      D(2) => animation_n_33,
      D(1) => animation_n_34,
      D(0) => animation_n_35,
      E(0) => anim_enable,
      Q(17) => screen_value(61),
      Q(16) => screen_value(59),
      Q(15) => screen_value(54),
      Q(14) => screen_value(52),
      Q(13) => screen_value(50),
      Q(12 downto 9) => screen_value(46 downto 43),
      Q(8) => screen_value(29),
      Q(7) => screen_value(27),
      Q(6) => screen_value(22),
      Q(5) => screen_value(20),
      Q(4) => screen_value(18),
      Q(3 downto 0) => screen_value(14 downto 11),
      anim_mode => anim_mode,
      clk => clk,
      display_buffer1 => display_buffer1,
      \display_buffer_reg[11]\ => \display_buffer[61]_i_2_n_0\,
      time_from_start(4 downto 0) => time_from_start(5 downto 1),
      \time_from_start_reg[2]\ => animation_n_0,
      \time_from_start_reg[2]_0\ => animation_n_1,
      \time_from_start_reg[2]_1\ => animation_n_2,
      \time_from_start_reg[2]_10\ => animation_n_11,
      \time_from_start_reg[2]_11\ => animation_n_12,
      \time_from_start_reg[2]_12\ => animation_n_13,
      \time_from_start_reg[2]_13\ => animation_n_14,
      \time_from_start_reg[2]_14\ => animation_n_15,
      \time_from_start_reg[2]_2\ => animation_n_3,
      \time_from_start_reg[2]_3\ => animation_n_4,
      \time_from_start_reg[2]_4\ => animation_n_5,
      \time_from_start_reg[2]_5\ => animation_n_6,
      \time_from_start_reg[2]_6\ => animation_n_7,
      \time_from_start_reg[2]_7\ => animation_n_8,
      \time_from_start_reg[2]_8\ => animation_n_9,
      \time_from_start_reg[2]_9\ => animation_n_10,
      \time_from_start_reg[4]\ => animation_n_36,
      \time_from_start_reg[4]_0\ => animation_n_37,
      \time_from_start_reg[4]_1\ => animation_n_38,
      \time_from_start_reg[4]_10\ => animation_n_47,
      \time_from_start_reg[4]_11\ => animation_n_48,
      \time_from_start_reg[4]_12\ => animation_n_49,
      \time_from_start_reg[4]_13\ => animation_n_50,
      \time_from_start_reg[4]_14\ => animation_n_51,
      \time_from_start_reg[4]_15\ => animation_n_52,
      \time_from_start_reg[4]_16\ => animation_n_53,
      \time_from_start_reg[4]_17\ => animation_n_54,
      \time_from_start_reg[4]_18\ => animation_n_55,
      \time_from_start_reg[4]_19\ => animation_n_56,
      \time_from_start_reg[4]_2\ => animation_n_39,
      \time_from_start_reg[4]_20\ => animation_n_57,
      \time_from_start_reg[4]_21\ => animation_n_58,
      \time_from_start_reg[4]_22\ => animation_n_59,
      \time_from_start_reg[4]_23\ => animation_n_60,
      \time_from_start_reg[4]_24\ => animation_n_61,
      \time_from_start_reg[4]_25\ => animation_n_62,
      \time_from_start_reg[4]_26\ => animation_n_63,
      \time_from_start_reg[4]_3\ => animation_n_40,
      \time_from_start_reg[4]_4\ => animation_n_41,
      \time_from_start_reg[4]_5\ => animation_n_42,
      \time_from_start_reg[4]_6\ => animation_n_43,
      \time_from_start_reg[4]_7\ => animation_n_44,
      \time_from_start_reg[4]_8\ => animation_n_45,
      \time_from_start_reg[4]_9\ => animation_n_46
    );
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
      I0 => \cnt[0]_i_2_n_0\,
      I1 => cnt(0),
      O => cnt_1(0)
    );
\cnt[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFBFF"
    )
        port map (
      I0 => \srow[7]_i_5_n_0\,
      I1 => cnt(3),
      I2 => cnt(4),
      I3 => cnt(5),
      I4 => cnt(6),
      I5 => \srow[7]_i_3_n_0\,
      O => \cnt[0]_i_2_n_0\
    );
cnt_dis: entity work.design_1_top_0_0_counter_anim
     port map (
      AR(0) => cnt_dis_rst,
      E(0) => cnt_dis_enable_reg_n_0,
      Q(17) => screen_value(61),
      Q(16) => screen_value(59),
      Q(15) => screen_value(54),
      Q(14) => screen_value(52),
      Q(13) => screen_value(50),
      Q(12 downto 9) => screen_value(46 downto 43),
      Q(8) => screen_value(29),
      Q(7) => screen_value(27),
      Q(6) => screen_value(22),
      Q(5) => screen_value(20),
      Q(4) => screen_value(18),
      Q(3 downto 0) => screen_value(14 downto 11),
      clk => clk,
      display_buffer1 => display_buffer1,
      \display_buffer_reg[63]\ => \display_buffer[61]_i_2_n_0\,
      \display_buffer_reg[63]_0\ => \srow[7]_i_2_n_0\,
      \screen_value_reg[31]_0\ => cnt_dis_n_20,
      \screen_value_reg[62]_0\ => cnt_dis_n_19,
      \screen_value_reg[63]_0\ => cnt_dis_n_0
    );
cnt_dis_enable_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      Q => cnt_dis_enable_reg_n_0,
      S => p_0_in
    );
cnt_dis_rst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => time_from_start(4),
      I1 => time_from_start(1),
      I2 => time_from_start(2),
      I3 => time_from_start(3),
      I4 => time_from_start(0),
      I5 => time_from_start(5),
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
\display_buffer[39]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \display_buffer[39]_i_3_n_0\,
      I1 => \srow[7]_i_2_n_0\,
      O => \display_buffer[39]_i_1_n_0\
    );
\display_buffer[39]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007A780000"
    )
        port map (
      I0 => time_from_start(2),
      I1 => time_from_start(1),
      I2 => time_from_start(3),
      I3 => time_from_start(0),
      I4 => time_from_start(4),
      I5 => time_from_start(5),
      O => \display_buffer[39]_i_3_n_0\
    );
\display_buffer[61]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAAAAAA"
    )
        port map (
      I0 => time_from_start(5),
      I1 => time_from_start(3),
      I2 => time_from_start(2),
      I3 => time_from_start(1),
      I4 => time_from_start(4),
      O => \display_buffer[61]_i_2_n_0\
    );
\display_buffer[61]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAFEAAFAAAFAAA"
    )
        port map (
      I0 => time_from_start(5),
      I1 => time_from_start(1),
      I2 => time_from_start(3),
      I3 => time_from_start(4),
      I4 => time_from_start(0),
      I5 => time_from_start(2),
      O => display_buffer1
    );
\display_buffer_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_0,
      Q => \display_buffer_reg_n_0_[0]\,
      S => \display_buffer[39]_i_1_n_0\
    );
\display_buffer_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_35,
      Q => data6(2),
      R => '0'
    );
\display_buffer_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_34,
      Q => data6(3),
      R => '0'
    );
\display_buffer_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_33,
      Q => data6(4),
      R => '0'
    );
\display_buffer_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_32,
      Q => data6(5),
      R => '0'
    );
\display_buffer_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_31,
      Q => data6(6),
      R => '0'
    );
\display_buffer_reg[15]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_38,
      Q => data6(7),
      S => cnt_dis_n_20
    );
\display_buffer_reg[16]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_39,
      Q => data5(0),
      S => cnt_dis_n_20
    );
\display_buffer_reg[17]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_40,
      Q => data5(1),
      S => cnt_dis_n_20
    );
\display_buffer_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_30,
      Q => data5(2),
      R => '0'
    );
\display_buffer_reg[19]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_41,
      Q => data5(3),
      S => cnt_dis_n_20
    );
\display_buffer_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_1,
      Q => \display_buffer_reg_n_0_[1]\,
      S => \display_buffer[39]_i_1_n_0\
    );
\display_buffer_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_29,
      Q => data5(4),
      R => '0'
    );
\display_buffer_reg[21]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_42,
      Q => data5(5),
      S => cnt_dis_n_20
    );
\display_buffer_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_28,
      Q => data5(6),
      R => '0'
    );
\display_buffer_reg[23]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_43,
      Q => data5(7),
      S => cnt_dis_n_20
    );
\display_buffer_reg[24]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_44,
      Q => data4(0),
      S => cnt_dis_n_20
    );
\display_buffer_reg[25]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_45,
      Q => data4(1),
      S => cnt_dis_n_20
    );
\display_buffer_reg[26]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_46,
      Q => data4(2),
      S => cnt_dis_n_19
    );
\display_buffer_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_27,
      Q => data4(3),
      R => '0'
    );
\display_buffer_reg[28]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_47,
      Q => data4(4),
      S => cnt_dis_n_19
    );
\display_buffer_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_26,
      Q => data4(5),
      R => '0'
    );
\display_buffer_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_2,
      Q => \display_buffer_reg_n_0_[2]\,
      S => \display_buffer[39]_i_1_n_0\
    );
\display_buffer_reg[30]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_48,
      Q => data4(6),
      S => cnt_dis_n_19
    );
\display_buffer_reg[31]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_49,
      Q => data4(7),
      S => cnt_dis_n_20
    );
\display_buffer_reg[32]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_8,
      Q => data3(0),
      S => \display_buffer[39]_i_1_n_0\
    );
\display_buffer_reg[33]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_9,
      Q => data3(1),
      S => \display_buffer[39]_i_1_n_0\
    );
\display_buffer_reg[34]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_10,
      Q => data3(2),
      S => \display_buffer[39]_i_1_n_0\
    );
\display_buffer_reg[35]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_11,
      Q => data3(3),
      S => \display_buffer[39]_i_1_n_0\
    );
\display_buffer_reg[36]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_12,
      Q => data3(4),
      S => \display_buffer[39]_i_1_n_0\
    );
\display_buffer_reg[37]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_13,
      Q => data3(5),
      S => \display_buffer[39]_i_1_n_0\
    );
\display_buffer_reg[38]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_14,
      Q => data3(6),
      S => \display_buffer[39]_i_1_n_0\
    );
\display_buffer_reg[39]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_15,
      Q => data3(7),
      S => \display_buffer[39]_i_1_n_0\
    );
\display_buffer_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_3,
      Q => \display_buffer_reg_n_0_[3]\,
      S => \display_buffer[39]_i_1_n_0\
    );
\display_buffer_reg[40]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_50,
      Q => data2(0),
      S => cnt_dis_n_0
    );
\display_buffer_reg[41]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_51,
      Q => data2(1),
      S => cnt_dis_n_0
    );
\display_buffer_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_25,
      Q => data2(2),
      R => '0'
    );
\display_buffer_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_24,
      Q => data2(3),
      R => '0'
    );
\display_buffer_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_23,
      Q => data2(4),
      R => '0'
    );
\display_buffer_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_22,
      Q => data2(5),
      R => '0'
    );
\display_buffer_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_21,
      Q => data2(6),
      R => '0'
    );
\display_buffer_reg[47]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_52,
      Q => data2(7),
      S => cnt_dis_n_0
    );
\display_buffer_reg[48]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_53,
      Q => data1(0),
      S => cnt_dis_n_0
    );
\display_buffer_reg[49]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_54,
      Q => data1(1),
      S => cnt_dis_n_0
    );
\display_buffer_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_4,
      Q => \display_buffer_reg_n_0_[4]\,
      S => \display_buffer[39]_i_1_n_0\
    );
\display_buffer_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_20,
      Q => data1(2),
      R => '0'
    );
\display_buffer_reg[51]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_55,
      Q => data1(3),
      S => cnt_dis_n_0
    );
\display_buffer_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_19,
      Q => data1(4),
      R => '0'
    );
\display_buffer_reg[53]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_56,
      Q => data1(5),
      S => cnt_dis_n_0
    );
\display_buffer_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_18,
      Q => data1(6),
      R => '0'
    );
\display_buffer_reg[55]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_57,
      Q => data1(7),
      S => cnt_dis_n_0
    );
\display_buffer_reg[56]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_58,
      Q => data0(0),
      S => cnt_dis_n_0
    );
\display_buffer_reg[57]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_59,
      Q => data0(1),
      S => cnt_dis_n_0
    );
\display_buffer_reg[58]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_60,
      Q => data0(2),
      S => cnt_dis_n_19
    );
\display_buffer_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_17,
      Q => data0(3),
      R => '0'
    );
\display_buffer_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_5,
      Q => \display_buffer_reg_n_0_[5]\,
      S => \display_buffer[39]_i_1_n_0\
    );
\display_buffer_reg[60]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_61,
      Q => data0(4),
      S => cnt_dis_n_19
    );
\display_buffer_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_16,
      Q => data0(5),
      R => '0'
    );
\display_buffer_reg[62]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_62,
      Q => data0(6),
      S => cnt_dis_n_19
    );
\display_buffer_reg[63]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_63,
      Q => data0(7),
      S => cnt_dis_n_0
    );
\display_buffer_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_6,
      Q => \display_buffer_reg_n_0_[6]\,
      S => \display_buffer[39]_i_1_n_0\
    );
\display_buffer_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_7,
      Q => \display_buffer_reg_n_0_[7]\,
      S => \display_buffer[39]_i_1_n_0\
    );
\display_buffer_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_36,
      Q => data6(0),
      S => cnt_dis_n_20
    );
\display_buffer_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => display_buffer,
      D => animation_n_37,
      Q => data6(1),
      S => cnt_dis_n_20
    );
\pre_leds[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \pre_leds[3]_i_2_n_0\,
      I1 => \^pre_leds_reg[0]_0\,
      O => \pre_leds[0]_i_1_n_0\
    );
\pre_leds[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \pre_leds[3]_i_2_n_0\,
      I1 => \^pre_leds_reg[0]_0\,
      I2 => \^pre_leds_reg[1]_0\,
      O => \pre_leds[1]_i_1_n_0\
    );
\pre_leds[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => \pre_leds[3]_i_2_n_0\,
      I1 => \^pre_leds_reg[1]_0\,
      I2 => \^pre_leds_reg[0]_0\,
      I3 => \^leds\(0),
      O => \pre_leds[2]_i_1_n_0\
    );
\pre_leds[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF4000"
    )
        port map (
      I0 => \pre_leds[3]_i_2_n_0\,
      I1 => \^pre_leds_reg[0]_0\,
      I2 => \^pre_leds_reg[1]_0\,
      I3 => \^leds\(0),
      I4 => \^leds\(1),
      O => \pre_leds[3]_i_1_n_0\
    );
\pre_leds[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \pre_leds[3]_i_3_n_0\,
      I1 => \pre_leds[3]_i_4_n_0\,
      I2 => \pre_leds[3]_i_5_n_0\,
      I3 => \pre_leds[3]_i_6_n_0\,
      I4 => \pre_leds[3]_i_7_n_0\,
      I5 => \pre_leds[3]_i_8_n_0\,
      O => \pre_leds[3]_i_2_n_0\
    );
\pre_leds[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => sec_cnt(16),
      I1 => sec_cnt(15),
      I2 => sec_cnt(18),
      I3 => sec_cnt(17),
      O => \pre_leds[3]_i_3_n_0\
    );
\pre_leds[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => sec_cnt(20),
      I1 => sec_cnt(19),
      I2 => sec_cnt(22),
      I3 => sec_cnt(21),
      O => \pre_leds[3]_i_4_n_0\
    );
\pre_leds[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sec_cnt(8),
      I1 => sec_cnt(7),
      I2 => sec_cnt(10),
      I3 => sec_cnt(9),
      O => \pre_leds[3]_i_5_n_0\
    );
\pre_leds[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => sec_cnt(12),
      I1 => sec_cnt(11),
      I2 => sec_cnt(14),
      I3 => sec_cnt(13),
      O => \pre_leds[3]_i_6_n_0\
    );
\pre_leds[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => sec_cnt(4),
      I1 => sec_cnt(3),
      I2 => sec_cnt(5),
      I3 => sec_cnt(6),
      O => \pre_leds[3]_i_7_n_0\
    );
\pre_leds[3]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFFFFF"
    )
        port map (
      I0 => sec_cnt(0),
      I1 => sec_cnt(23),
      I2 => sec_cnt(24),
      I3 => sec_cnt(2),
      I4 => sec_cnt(1),
      O => \pre_leds[3]_i_8_n_0\
    );
\pre_leds_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_leds[0]_i_1_n_0\,
      Q => \^pre_leds_reg[0]_0\,
      R => '0'
    );
\pre_leds_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_leds[1]_i_1_n_0\,
      Q => \^pre_leds_reg[1]_0\,
      R => '0'
    );
\pre_leds_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_leds[2]_i_1_n_0\,
      Q => \^leds\(0),
      R => '0'
    );
\pre_leds_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_leds[3]_i_1_n_0\,
      Q => \^leds\(1),
      R => '0'
    );
\scol[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(0),
      I1 => data2(0),
      I2 => col_indx(1),
      I3 => data1(0),
      I4 => col_indx(0),
      I5 => data0(0),
      O => \scol[0]_i_2_n_0\
    );
\scol[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \display_buffer_reg_n_0_[0]\,
      I1 => data6(0),
      I2 => col_indx(1),
      I3 => data5(0),
      I4 => col_indx(0),
      I5 => data4(0),
      O => \scol[0]_i_3_n_0\
    );
\scol[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(1),
      I1 => data2(1),
      I2 => col_indx(1),
      I3 => data1(1),
      I4 => col_indx(0),
      I5 => data0(1),
      O => \scol[1]_i_2_n_0\
    );
\scol[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \display_buffer_reg_n_0_[1]\,
      I1 => data6(1),
      I2 => col_indx(1),
      I3 => data5(1),
      I4 => col_indx(0),
      I5 => data4(1),
      O => \scol[1]_i_3_n_0\
    );
\scol[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(2),
      I1 => data2(2),
      I2 => col_indx(1),
      I3 => data1(2),
      I4 => col_indx(0),
      I5 => data0(2),
      O => \scol[2]_i_2_n_0\
    );
\scol[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \display_buffer_reg_n_0_[2]\,
      I1 => data6(2),
      I2 => col_indx(1),
      I3 => data5(2),
      I4 => col_indx(0),
      I5 => data4(2),
      O => \scol[2]_i_3_n_0\
    );
\scol[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(3),
      I1 => data2(3),
      I2 => col_indx(1),
      I3 => data1(3),
      I4 => col_indx(0),
      I5 => data0(3),
      O => \scol[3]_i_2_n_0\
    );
\scol[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \display_buffer_reg_n_0_[3]\,
      I1 => data6(3),
      I2 => col_indx(1),
      I3 => data5(3),
      I4 => col_indx(0),
      I5 => data4(3),
      O => \scol[3]_i_3_n_0\
    );
\scol[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(4),
      I1 => data2(4),
      I2 => col_indx(1),
      I3 => data1(4),
      I4 => col_indx(0),
      I5 => data0(4),
      O => \scol[4]_i_2_n_0\
    );
\scol[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \display_buffer_reg_n_0_[4]\,
      I1 => data6(4),
      I2 => col_indx(1),
      I3 => data5(4),
      I4 => col_indx(0),
      I5 => data4(4),
      O => \scol[4]_i_3_n_0\
    );
\scol[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(5),
      I1 => data2(5),
      I2 => col_indx(1),
      I3 => data1(5),
      I4 => col_indx(0),
      I5 => data0(5),
      O => \scol[5]_i_2_n_0\
    );
\scol[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \display_buffer_reg_n_0_[5]\,
      I1 => data6(5),
      I2 => col_indx(1),
      I3 => data5(5),
      I4 => col_indx(0),
      I5 => data4(5),
      O => \scol[5]_i_3_n_0\
    );
\scol[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(6),
      I1 => data2(6),
      I2 => col_indx(1),
      I3 => data1(6),
      I4 => col_indx(0),
      I5 => data0(6),
      O => \scol[6]_i_2_n_0\
    );
\scol[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \display_buffer_reg_n_0_[6]\,
      I1 => data6(6),
      I2 => col_indx(1),
      I3 => data5(6),
      I4 => col_indx(0),
      I5 => data4(6),
      O => \scol[6]_i_3_n_0\
    );
\scol[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(7),
      I1 => data2(7),
      I2 => col_indx(1),
      I3 => data1(7),
      I4 => col_indx(0),
      I5 => data0(7),
      O => \scol[7]_i_2_n_0\
    );
\scol[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \display_buffer_reg_n_0_[7]\,
      I1 => data6(7),
      I2 => col_indx(1),
      I3 => data5(7),
      I4 => col_indx(0),
      I5 => data4(7),
      O => \scol[7]_i_3_n_0\
    );
\scol_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => scol(0),
      Q => col(0),
      R => '0'
    );
\scol_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \scol[0]_i_2_n_0\,
      I1 => \scol[0]_i_3_n_0\,
      O => scol(0),
      S => col_indx(2)
    );
\scol_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => scol(1),
      Q => col(1),
      R => '0'
    );
\scol_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \scol[1]_i_2_n_0\,
      I1 => \scol[1]_i_3_n_0\,
      O => scol(1),
      S => col_indx(2)
    );
\scol_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => scol(2),
      Q => col(2),
      R => '0'
    );
\scol_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \scol[2]_i_2_n_0\,
      I1 => \scol[2]_i_3_n_0\,
      O => scol(2),
      S => col_indx(2)
    );
\scol_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => scol(3),
      Q => col(3),
      R => '0'
    );
\scol_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \scol[3]_i_2_n_0\,
      I1 => \scol[3]_i_3_n_0\,
      O => scol(3),
      S => col_indx(2)
    );
\scol_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => scol(4),
      Q => col(4),
      R => '0'
    );
\scol_reg[4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \scol[4]_i_2_n_0\,
      I1 => \scol[4]_i_3_n_0\,
      O => scol(4),
      S => col_indx(2)
    );
\scol_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => scol(5),
      Q => col(5),
      R => '0'
    );
\scol_reg[5]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \scol[5]_i_2_n_0\,
      I1 => \scol[5]_i_3_n_0\,
      O => scol(5),
      S => col_indx(2)
    );
\scol_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => scol(6),
      Q => col(6),
      R => '0'
    );
\scol_reg[6]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \scol[6]_i_2_n_0\,
      I1 => \scol[6]_i_3_n_0\,
      O => scol(6),
      S => col_indx(2)
    );
\scol_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => scol(7),
      Q => col(7),
      R => '0'
    );
\scol_reg[7]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \scol[7]_i_2_n_0\,
      I1 => \scol[7]_i_3_n_0\,
      O => scol(7),
      S => col_indx(2)
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
      O(3) => sec_cnt0_carry_n_4,
      O(2) => sec_cnt0_carry_n_5,
      O(1) => sec_cnt0_carry_n_6,
      O(0) => sec_cnt0_carry_n_7,
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
      O(3) => \sec_cnt0_carry__0_n_4\,
      O(2) => \sec_cnt0_carry__0_n_5\,
      O(1) => \sec_cnt0_carry__0_n_6\,
      O(0) => \sec_cnt0_carry__0_n_7\,
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
      O(3) => \sec_cnt0_carry__1_n_4\,
      O(2) => \sec_cnt0_carry__1_n_5\,
      O(1) => \sec_cnt0_carry__1_n_6\,
      O(0) => \sec_cnt0_carry__1_n_7\,
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
      O(3) => \sec_cnt0_carry__2_n_4\,
      O(2) => \sec_cnt0_carry__2_n_5\,
      O(1) => \sec_cnt0_carry__2_n_6\,
      O(0) => \sec_cnt0_carry__2_n_7\,
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
      O(3) => \sec_cnt0_carry__3_n_4\,
      O(2) => \sec_cnt0_carry__3_n_5\,
      O(1) => \sec_cnt0_carry__3_n_6\,
      O(0) => \sec_cnt0_carry__3_n_7\,
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
      O(3) => \sec_cnt0_carry__4_n_4\,
      O(2) => \sec_cnt0_carry__4_n_5\,
      O(1) => \sec_cnt0_carry__4_n_6\,
      O(0) => \sec_cnt0_carry__4_n_7\,
      S(3 downto 0) => sec_cnt(24 downto 21)
    );
\sec_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sec_cnt(0),
      O => \sec_cnt[0]_i_1_n_0\
    );
\sec_cnt[24]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pre_leds[3]_i_2_n_0\,
      O => p_0_in
    );
\sec_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \sec_cnt[0]_i_1_n_0\,
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
      D => \sec_cnt0_carry__1_n_6\,
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
      D => \sec_cnt0_carry__1_n_5\,
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
      D => \sec_cnt0_carry__1_n_4\,
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
      D => \sec_cnt0_carry__2_n_7\,
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
      D => \sec_cnt0_carry__2_n_6\,
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
      D => \sec_cnt0_carry__2_n_5\,
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
      D => \sec_cnt0_carry__2_n_4\,
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
      D => \sec_cnt0_carry__3_n_7\,
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
      D => \sec_cnt0_carry__3_n_6\,
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
      D => \sec_cnt0_carry__3_n_5\,
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
      D => sec_cnt0_carry_n_7,
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
      D => \sec_cnt0_carry__3_n_4\,
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
      D => \sec_cnt0_carry__4_n_7\,
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
      D => \sec_cnt0_carry__4_n_6\,
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
      D => \sec_cnt0_carry__4_n_5\,
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
      D => \sec_cnt0_carry__4_n_4\,
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
      D => sec_cnt0_carry_n_6,
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
      D => sec_cnt0_carry_n_5,
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
      D => sec_cnt0_carry_n_4,
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
      D => \sec_cnt0_carry__0_n_7\,
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
      D => \sec_cnt0_carry__0_n_6\,
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
      D => \sec_cnt0_carry__0_n_5\,
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
      D => \sec_cnt0_carry__0_n_4\,
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
      D => \sec_cnt0_carry__1_n_7\,
      Q => sec_cnt(9),
      R => p_0_in
    );
\srow[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \srow[7]_i_2_n_0\,
      O => display_buffer
    );
\srow[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \srow[7]_i_3_n_0\,
      I1 => \srow[7]_i_4_n_0\,
      I2 => \srow[7]_i_5_n_0\,
      I3 => cnt(0),
      O => \srow[7]_i_2_n_0\
    );
\srow[7]_i_3\: unisim.vcomponents.LUT6
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
      O => \srow[7]_i_3_n_0\
    );
\srow[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => cnt(3),
      I1 => cnt(4),
      I2 => cnt(5),
      I3 => cnt(6),
      O => \srow[7]_i_4_n_0\
    );
\srow[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => cnt(8),
      I1 => cnt(7),
      I2 => cnt(10),
      I3 => cnt(9),
      O => \srow[7]_i_5_n_0\
    );
\srow_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
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
      INIT => '1'
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
      INIT => X"F7FF00000000FFFF"
    )
        port map (
      I0 => time_from_start(5),
      I1 => time_from_start(3),
      I2 => \time_from_start[5]_i_4_n_0\,
      I3 => time_from_start(4),
      I4 => \pre_leds[3]_i_2_n_0\,
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
      I0 => time_from_start(4),
      I1 => \time_from_start[5]_i_4_n_0\,
      I2 => time_from_start(3),
      I3 => time_from_start(0),
      I4 => time_from_start(5),
      O => \time_from_start[5]_i_1_n_0\
    );
\time_from_start[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D55555555555555"
    )
        port map (
      I0 => \pre_leds[3]_i_2_n_0\,
      I1 => time_from_start(4),
      I2 => \time_from_start[5]_i_4_n_0\,
      I3 => time_from_start(3),
      I4 => time_from_start(0),
      I5 => time_from_start(5),
      O => time_from_start_0
    );
\time_from_start[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => time_from_start(4),
      I1 => time_from_start(1),
      I2 => time_from_start(2),
      I3 => time_from_start(3),
      I4 => time_from_start(0),
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
entity design_1_top_0_0 is
  port (
    clk : in STD_LOGIC;
    col : out STD_LOGIC_VECTOR ( 7 downto 0 );
    row : out STD_LOGIC_VECTOR ( 7 downto 0 );
    leds : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_top_0_0 : entity is "design_1_top_0_0,top,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_top_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_top_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_top_0_0 : entity is "top,Vivado 2023.2";
end design_1_top_0_0;

architecture STRUCTURE of design_1_top_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
begin
U0: entity work.design_1_top_0_0_top
     port map (
      clk => clk,
      col(7 downto 0) => col(7 downto 0),
      leds(1 downto 0) => leds(3 downto 2),
      \pre_leds_reg[0]_0\ => leds(0),
      \pre_leds_reg[1]_0\ => leds(1),
      row(7 downto 0) => row(7 downto 0)
    );
end STRUCTURE;
