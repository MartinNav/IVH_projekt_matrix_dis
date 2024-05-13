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
constant frame_count: integer:=20;
signal frame_num: integer range 0 to frame_count :=0;

signal screen_buffer: std_logic_vector(63 downto 0);

begin

process(clk)
begin
    if rising_edge(clk) then
        if mode='0' then
            screen_buffer<=IMAGE;
            frame_num<=0;
            --vut_logo<=(others=>'0');
        else
            if en='1' then
                case frame_num is
                    when 0=>vut_logo<=(others=>'0');
                    when 1=>vut_logo(24)<='1';
                            vut_logo(32)<='1';
                            vut_logo(40)<='1';
                            vut_logo(48)<='1';
                            vut_logo(56)<='1';
                            
                    when 2=>vut_logo(25)<='1';
                            vut_logo(33)<='1';
                            vut_logo(41)<='1';
                            vut_logo(49)<='1';
                            vut_logo(57)<='1';
                            
                    when 3=>vut_logo(26)<='1';
                            vut_logo(34)<='1';
                            vut_logo(42)<='1';
                            vut_logo(50)<='1';
                            vut_logo(58)<='1';
                            vut_logo(40)<='0';
                            vut_logo(48)<='0';
                            vut_logo(56)<='0';
                            
                    when 4=>vut_logo(27)<='1';
                            vut_logo(35)<='1';
                            vut_logo(43)<='1';
                            vut_logo(51)<='1';
                            vut_logo(59)<='1';
                            vut_logo(41)<='0';
                            vut_logo(49)<='0';
                            vut_logo(57)<='0';
                            
                    when 5=>vut_logo(28)<='1';
                            vut_logo(36)<='1';
                            vut_logo(44)<='1';
                            vut_logo(52)<='1';
                            vut_logo(60)<='1';
                            vut_logo(42)<='0';
                            vut_logo(50)<='0';
                            vut_logo(58)<='0';
                    
                    when 6=>vut_logo(29)<='1';
                            vut_logo(37)<='1';
                            vut_logo(45)<='1';
                            vut_logo(53)<='1';
                            vut_logo(61)<='1';
                            vut_logo(43)<='0';
                            vut_logo(51)<='0';
                            vut_logo(59)<='0';

                    when 7=>vut_logo(30)<='1';
                            vut_logo(38)<='1';
                            vut_logo(46)<='1';
                            vut_logo(54)<='1';
                            vut_logo(62)<='1';
                            vut_logo(44)<='0';
                            vut_logo(52)<='0';
                            vut_logo(60)<='0';
                            
                    when 8=>vut_logo(7)<='1';--floating left side
                            vut_logo(6)<='1';
                            
                    when 9=>vut_logo(15)<='1';
                            vut_logo(14)<='1';
                            
                   when 10=>vut_logo(23)<='1';
                            vut_logo(22)<='1';
                            
                   when 15=> vut_logo<= not vut_logo;
                  
                   when others=>NULL;
                end case;
                frame_num<=frame_num+1;
            end if;
            screen_buffer<=VUT_LOGO;
        end if;
    end if;


end process;


OUTPUT<=screen_buffer;
end Behavioral;
