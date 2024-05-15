----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.05.2024 17:19:43
-- Design Name: 
-- Module Name: fsm_top_tb - Behavioral
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

entity fsm_top_tb is
    Port ( clk : in STD_LOGIC);
end fsm_top_tb;

architecture Behavioral of fsm_top_tb is
    --signal clk: std_logic;
    signal row: std_logic_vector(7 downto 0);
    signal col: std_logic_vector(7 downto 0);
    signal leds: std_logic_vector(3 downto 0);
    signal btns: std_logic_vector(3 downto 0):="0000";
    signal clk_cntr: integer :=0;
begin
-- TOP is basically the FSM but named differently
    fsm: entity xil_defaultlib.top
    port map(
        clk=>clk,
        btns=>btns,
        col=>col,
        row=>row,
        leds=>leds
    ); 
process(clk)
begin
    if rising_edge(clk) then

        case clk_cntr is
            when 1 =>
                assert row = "11111110" report "incorrect value in row in 1. test case";
                assert col = "00000000" report "incorrect value in col in 1. test case";
             when 30300 =>
                assert row = "11111101" report "incorrect value in row in 2. test case";
                assert col = "01000100" report "incorrect value in col in 2. test case ";
             when 25010000=>
                assert row = "11111110" report "incorrect value in row in 3. test case";--first switch from 00 to 01
                assert col = "01111100" report "incorrect value in col in 3. test case ";
             when 50011000 =>
                assert row = "11111110" report "incorrect value in row in 4. test case";--switch from 01 to 02
                assert col = "01110100" report "incorrect value in col in 4. test case ";
            --when 2 => wait;
        
        
           when others => NULL;
        end case;

    clk_cntr<=clk_cntr+1;
    end if;
   -- clk<= not clk after 16ns;
end process;


end Behavioral;
