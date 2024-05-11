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
library xil_defaultlib;
use xil_defaultlib.all;

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
           OUTPUT: out std_logic_vector(63 downto 0):=(others=>'1')-- by default it will not print anything
           );
end counter_anim;

architecture Behavioral of counter_anim is
 --signal out_val: std_logic_vector(63 downto 0):=(others=>'0');
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
signal cnt1_value: std_logic_vector(3 downto 0):="0000";
signal en_2nd_ctr: std_logic:='0';
signal cnt2_value: std_logic_vector(3 downto 0):="0000";
signal cnt2_out_en: std_logic:='0';

signal first_value: std_logic_vector(23 downto 0):=(others=>'0');
signal second_value: std_logic_vector(23 downto 0):=(others=>'0');

signal screen_value: std_logic_vector(63 downto 0):=(others=>'0');

begin
-- there will be 2 counters and one luckup table that will contain ways to draw the numbers

cnt1: entity xil_defaultlib.counter
port map( clk=>clk,
          reset=>reset,
          en=>en,
		  q=>cnt1_value,
		   en_out=>en_2nd_ctr
		   );


cnt2: entity xil_defaultlib.counter
port map( clk=>clk,
          reset=>reset,
          en=>en_2nd_ctr,
		  q=>cnt2_value,
		   en_out=>cnt2_out_en
		   );
		   
    process (clk)--creating the first digit (in fact it is the right one  X | this_value)
    begin
        if rising_edge(clk) then
            case cnt1_value is
                when "0000"=>
                    first_value<=char_table(239 downto 216);
                when "0001"=>
                    first_value<=char_table(215 downto 192);
                when "0010"=>
                    first_value<=char_table(191 downto 168);
                when "0011"=>
                    first_value<=char_table(167 downto 144);
                when "0100"=>
                    first_value<=char_table(143 downto 120);
                when "0101"=>
                    first_value<=char_table(119 downto 96);
                when "0110"=>
                    first_value<=char_table(95 downto 72);
                when "0111"=>
                    first_value<=char_table(71 downto 48);
                when "1000"=>
                    first_value<=char_table(47 downto 24);
                when "1001"=>
                    first_value<=char_table(23 downto 0);
                when others=>
                    first_value<=(others=>'1');--this should be unreachable if it will be reachable it will be green
            end case;
        
        end if;
    end process;
    
    
    process (clk)--creating the second digit (in fact it is the right one  this_value| X)
    begin
        if rising_edge(clk) then
            case cnt2_value is
                when "0000"=>
                    second_value<=char_table(239 downto 216);
                when "0001"=>
                    second_value<=char_table(215 downto 192);
                when "0010"=>
                    second_value<=char_table(191 downto 168);
                when "0011"=>
                    second_value<=char_table(167 downto 144);
                when "0100"=>
                    second_value<=char_table(143 downto 120);
                when "0101"=>
                    second_value<=char_table(119 downto 96);
                when "0110"=>
                    second_value<=char_table(95 downto 72);
                when "0111"=>
                    second_value<=char_table(71 downto 48);
                when "1000"=>
                    second_value<=char_table(47 downto 24);
                when "1001"=>
                    second_value<=char_table(23 downto 0);
                when others=>
                    second_value<=(others=>'1');
            end case;
        
        end if;
    end process;
    
    
    
    process (clk)--combinator
    begin
        if rising_edge(clk) then
        screen_value<=second_value & "0000001110000000"& first_value;
        end if;
    
    end process;
    
    


--out_val<="00000000"&char_table(239 downto 192)&"00000000";--prototype
OUTPUT<=screen_value;
--OUTPUT<=out_val;
end Behavioral;
