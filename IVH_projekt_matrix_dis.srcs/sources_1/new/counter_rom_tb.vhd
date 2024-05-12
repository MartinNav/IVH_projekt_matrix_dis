----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.05.2024 21:33:19
-- Design Name: 
-- Module Name: counter_rom_tb - Behavioral
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

entity counter_rom_tb is
--  Port ( );
end counter_rom_tb;

architecture Behavioral of counter_rom_tb is
    signal ctr: integer:=0;
    signal output: std_logic_vector(63 downto 0):=(others=>'0');
begin
cnt_dis:entity xil_defaultlib.counter_anim 
port map(
clk=>clk,
reset=>'0',
en=>'1',
output=>output
);

process(clk)
begin
    if rising_edge(clk) then
        case ctr is
            when 1=>
            assert output = "01111100"& "01000100"&"01111100"&"00000000"&"01111100"& "01000100"&"01111100"&"00000000" report "first condition does not match";
            
            
            
            others=>NULL;
        
        end case;
        
        
        ctr<=ctr+1;
    end if;
end process;


end Behavioral;
