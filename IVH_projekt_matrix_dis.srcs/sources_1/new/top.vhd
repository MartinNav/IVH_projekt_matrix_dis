----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Martin Navratil
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

entity top is
    Port ( clk : in STD_LOGIC;
           col : out STD_LOGIC_VECTOR (7 downto 0);
           row : out STD_LOGIC_VECTOR (7 downto 0));
end top;

architecture Behavioral of top is
signal scol: std_logic_vector(7 downto 0):="11111111";
signal srow: std_logic_vector(7 downto 0):="01111111";
--constant maxcnt: integer := 25_000_000;--one second
constant maxcnt: integer := 25_000;--100 fps
signal cnt: integer range 0 to maxcnt :=0;
constant max_sec_cnt: integer := 25_000_000;--1 sec
--constant max_sec_cnt: integer := 250_000;--0.01 sec

signal sec_cnt: integer range 0 to max_sec_cnt :=0;




signal counter_display: std_logic_vector(63 downto 0);
signal cnt_dis_enable: std_logic:='0';
signal cnt_dis_rst: std_logic:='0';
signal col_indx: integer range 0 to 7:=0;

constant loop_t: integer:=63;
signal time_from_start: integer range 0 to loop_t:=0;

begin


cnt_dis:entity xil_defaultlib.counter_anim 
port map(
clk=>clk,
reset=>cnt_dis_rst,
en=>cnt_dis_enable,
output=>counter_display
);



process(clk) is
begin
    if rising_edge(clk) then
        if cnt = maxcnt then
            cnt<=0;
            
--            scol<= not scol;
            
            if time_from_start>20 then
            case col_indx is
                when 0 => scol<= not counter_display(63 downto 56);
                when 1 => scol<= not counter_display(55 downto 48);
                when 2 => scol<= not counter_display(47 downto 40);
                when 3 => scol<= not counter_display(39 downto 32);
                when 4 => scol<= not counter_display(31 downto 24);
                when 5 => scol<= not counter_display(23 downto 16);
                when 6 => scol<= not counter_display(15 downto 8);
                when 7 => scol<= not counter_display(7 downto 0);
                when others => scol<=(others=>'1');--this will make failure green
            end case;
            else
              case col_indx is
                when 0 => scol<=counter_display(63 downto 56);
                when 1 => scol<=counter_display(55 downto 48);
                when 2 => scol<=counter_display(47 downto 40);
                when 3 => scol<=counter_display(39 downto 32);
                when 4 => scol<=counter_display(31 downto 24);
                when 5 => scol<=counter_display(23 downto 16);
                when 6 => scol<=counter_display(15 downto 8);
                when 7 => scol<=counter_display(7 downto 0);
                when others => scol<=(others=>'1');--this will make failure green
            end case;
            end if;
            srow <= srow(srow'high - 1 downto srow'low) & srow(srow'high);
            
            if col_indx=7 then
                col_indx<=0;
                else
                col_indx<=col_indx+1;
            end if;
            
        else
            cnt <= 1+cnt;
        end if;

    end if;
end process;


process(clk)
begin
    if rising_edge(clk) then
        cnt_dis_rst<='0';
        if sec_cnt = max_sec_cnt-1 then
            sec_cnt<=0;
            cnt_dis_enable<='1';
            time_from_start<=time_from_start + 1;
            else
            sec_cnt<= sec_cnt + 1;
            cnt_dis_enable<='0';
        end if;
        if time_from_start=loop_t then
            cnt_dis_rst<='1';
            time_from_start<=0;
        end if;
    end if;

end process;




row<=srow;
col<=scol;


end Behavioral;
