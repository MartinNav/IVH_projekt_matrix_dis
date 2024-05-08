----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.05.2024 08:11:34
-- Design Name: 
-- Module Name: top - Behavioral
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

entity top is
    Port ( clk : in STD_LOGIC;
           col : out STD_LOGIC_VECTOR (7 downto 0);
           row : out STD_LOGIC_VECTOR (7 downto 0));
end top;

architecture Behavioral of top is
signal scol: std_logic_vector(7 downto 0):="01000111";
signal srow: std_logic_vector(7 downto 0):="01111111";
constant maxcnt: integer := 25_000_000 /2 -1;
signal cnt: integer range 0 to maxcnt :=0;
begin

process(clk) is

begin
    if rising_edge(clk) then
        if cnt = maxcnt then
            cnt<=0;
            scol<= not scol;
            srow <= srow(srow'high - 1 downto srow'low) & srow(srow'high);
        else
            cnt <= 1+cnt;
        end if;
    end if;


end process;


row<=srow;
col<=scol;


end Behavioral;
