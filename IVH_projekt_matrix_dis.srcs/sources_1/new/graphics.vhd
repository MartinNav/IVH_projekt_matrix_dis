----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.05.2024 09:08:45
-- Design Name: 
-- Module Name: graphics - Behavioral
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

entity graphics is
Port (
    CLK: in std_logic;
    EN: in std_logic;
    MODE: in std_logic :='0';-- 0=image 1=animation
    OUTPUT: out std_logic_vector(63 downto 0):=(others=>'1')-- by default it will not print anything

 );
end graphics;

architecture Behavioral of graphics is
constant IMAGE: std_logic_vector(63 downto 0):=
"00000000" & "11111110" & "01000000" & "00100000" & "00100000"&"01000000"& "11111110"&"00000000";


signal VUT_LOGO: std_logic_vector(63 downto 0):=(others=>'0');
constant frame_count: integer:=16;
signal frame_num: integer range 0 to frame_count :=0;

signal screen_buffer: std_logic_vector(63 downto 0);

begin

process(clk)
begin
    if rising_edge(clk) then
        if mode='0' then
            screen_buffer<=IMAGE;
        else
            if en='1' then
                case frame_num is
                    when 0=>vut_logo<=(others=>'0');
                    when 1=>vut_logo(39)<='1';-- bottom 0001 1111
                            vut_logo(31)<='1';
                            vut_logo(23)<='1';
                            vut_logo(15)<='1';
                            vut_logo(7)<='1';
                            vut_logo(0)<='1';
                    
                end case;
            end if;
            screen_buffer<=VUT_LOGO;
        end if;
    end if;


end process;


OUTPUT<=screen_buffer;
end Behavioral;
