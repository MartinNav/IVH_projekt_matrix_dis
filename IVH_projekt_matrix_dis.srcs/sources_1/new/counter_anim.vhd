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
begin


OUTPUT<=out_val;
end Behavioral;
