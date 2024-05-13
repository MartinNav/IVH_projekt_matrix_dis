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
    signal row: std_ulogic_vector(7 downto 0);
    signal col: std_ulogic_vector(7 downto 0);
    signal leds: std_logic_vector(3 downto 0);
    signal clk_cntr: integer :=0;
begin
-- TOP is basically the FSM but named differently
    fsm: entity xil_defaultlib.top
    port map(
        clk=>clk,
        col=>col,
        row=>row,
        leds=>leds
    ); 
process(clk)
begin
    if rising_edge(clk)




    clk_cntr<=clk+1;
    end if;

end process;


end Behavioral;
