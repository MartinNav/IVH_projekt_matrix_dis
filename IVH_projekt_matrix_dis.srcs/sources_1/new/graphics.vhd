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
            frame_num<=0;
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
                            
                    when 2=>vut_logo(40)<='1';
                            vut_logo(32)<='1';
                            vut_logo(24)<='1';
                            vut_logo(16)<='1';
                            vut_logo(8)<='1';
                            vut_logo(1)<='1';
                            
                    when 3=>vut_logo(41)<='1';
                            vut_logo(33)<='1';
                            vut_logo(25)<='1';
                            vut_logo(17)<='1';
                            vut_logo(9)<='1';
                            vut_logo(2)<='1';
                            vut_logo(23)<='0';
                            vut_logo(15)<='0';
                            vut_logo(7)<='0';
                            vut_logo(0)<='0';
                            
                    when 4=>vut_logo(42)<='1';
                            vut_logo(34)<='1';
                            vut_logo(26)<='1';
                            vut_logo(18)<='1';
                            vut_logo(10)<='1';
                            vut_logo(3)<='1';
                            vut_logo(24)<='0';
                            vut_logo(16)<='0';
                            vut_logo(8)<='0';
                            vut_logo(1)<='0';
                            
                    when 5=>vut_logo(43)<='1';
                            vut_logo(35)<='1';
                            vut_logo(27)<='1';
                            vut_logo(19)<='1';
                            vut_logo(11)<='1';
                            vut_logo(4)<='1';
                            vut_logo(25)<='0';
                            vut_logo(17)<='0';
                            vut_logo(9)<='0';
                            vut_logo(2)<='0';
                    
                    when 6=>vut_logo(44)<='1';
                            vut_logo(36)<='1';
                            vut_logo(28)<='1';
                            vut_logo(20)<='1';
                            vut_logo(12)<='1';
                            vut_logo(5)<='1';
                            vut_logo(26)<='0';
                            vut_logo(18)<='0';
                            vut_logo(10)<='0';
                            vut_logo(3)<='0';

                    when 7=>vut_logo(45)<='1';
                            vut_logo(37)<='1';
                            vut_logo(29)<='1';
                            vut_logo(21)<='1';
                            vut_logo(13)<='1';
                            vut_logo(6)<='1';
                            vut_logo(27)<='0';
                            vut_logo(19)<='0';
                            vut_logo(11)<='0';
                            vut_logo(4)<='0';
                            
                    when 8=>vut_logo(63)<='1';--floating left side
                            vut_logo(62)<='1';
                            
                    when 9=>vut_logo(55)<='1';
                            vut_logo(54)<='1';
                            
                   when 10=>vut_logo(47)<='1';
                            vut_logo(46)<='1';
                end case;
                frame_num<=frame_num+1;
            end if;
            screen_buffer<=VUT_LOGO;
        end if;
    end if;


end process;


OUTPUT<=screen_buffer;
end Behavioral;
