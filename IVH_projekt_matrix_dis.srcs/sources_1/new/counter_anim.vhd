----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.05.2024 11:28:55
-- Design Name: 
-- Module Name: counter_anim - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
--type T_DISPLAY is array (0 to 7) of std_logic_vector(7 downto 0);

entity counter_anim is
  Port (
           CLK   : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           EN    : in  STD_LOGIC;
           --OUTPUT: out T_DISPLAY := (others => (others => '0'))
           OUTPUT: out std_logic_vector(63 downto 0):=(others=>'0')-- by default it will not print anything
           );
end counter_anim;

architecture Behavioral of counter_anim is
 signal out_val: std_logic_vector(63 downto 0):=(others=>'0');
 constant char_table: std_logic_vector( 239 downto 0):=(
 -- this table contains all 10 digits that will fit on 3 cols
 --0= 239 to 215
 "01111100"& "01000100"&"01111100"& -- number zero 239-216
 "00000000"& "00000000"&"01111100"& -- one 215-192
 "01011100"& "01010100"&"01110100"& -- two 191-168
 "01010100"& "01010100"&"01111100"& --three 167-144
 "01110000"& "00010000"&"01111100"& --four 143-120
 "01110100"& "01010100"&"01011100"& --five 119-96
 "01111100"& "00010100"&"00011100"& --six 95-72
 "01000000"& "01000000"&"01111100"& --seven 71-48
 "01111100"& "01010100"&"01111100"& --eight 47-24
 "01110000"& "01010000"&"01111100" --nine 23-0

 );

begin
-- there will be 2 counters and one luckup table that will contain ways to draw the numbers



OUTPUT<=out_val;
end Behavioral;
