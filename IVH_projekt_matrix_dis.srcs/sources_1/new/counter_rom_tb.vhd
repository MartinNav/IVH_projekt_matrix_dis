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
 -- Port ( clk:in std_logic);
end counter_rom_tb;

architecture Behavioral of counter_rom_tb is
    signal clk: std_logic:=0;
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

process
begin
    if rising_edge(clk) then
    -- these values may seem weird but they are not it is because I am using little endian to represen the display instead of big endian
    -- v mojí implementaci není ROM oddìlená od èítaèù
        case ctr is
           --starting from 2 because counter will take its time 
            when 2=>
                assert output = x"7c0000007c447c00" report "case 1 does not equal 01";
            when 3=>
                assert output = x"74545c007c447c00" report "case 2 does not equal 02";
            when 4=>
                assert output = x"7c5454007c447c00" report "case 3 does not equal 03";
            when 5=>
                assert output = x"7c1070007c447c00" report "case 4 does not equal 04";
            when 6=>
                assert output = x"5c5474007c447c00" report "case 5 does not equal 05";
            when 7=>
                assert output = x"5c547c007c447c00" report "case 6 does not equal 06";
            when 8=>
                assert output = x"7c4040007c447c00" report "case 7 does not equal 07";
            when 9=>
                assert output = x"7c547c007c447c00" report "case 8 does not equal 08";
            when 10=>
                assert output = x"7c5070007c447c00" report "case 9 does not equal 09";
            when 11=>
                assert output = x"7c447c007c447c00" report "case 10 does not equal 10";
           when 17=> 
                assert output = x"5c547c007c000000" report "case 16 does not equal 16";
                --wait;
            
            when others=>NULL;
            
           
        
        end case;
        
        
        ctr<=ctr+1;
        
    end if;
    clk<= not clk after 16ns;
end process;


end Behavioral;
