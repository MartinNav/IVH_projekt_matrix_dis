-- BCD citac
-- IVH projekt - ukol2
-- autor: Martin Navrátil (xnavram00)

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;
-- v pripade nutnosti muzete nacist dalsi knihovny

entity counter is
    Port ( CLK   : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           EN    : in  STD_LOGIC;
		   Q     : out STD_LOGIC_VECTOR(3 downto 0):=(others=>'0');
		   EN_OUT: out STD_LOGIC
		   );
end counter;

architecture Behavioral of counter is
signal bcd_value: std_logic_vector(3 downto 0):="0000";
--signal carry: std_logic;-- :='0'; 
begin

-- Citac v BCD kodu (0 - 9) s resetem a enable vstupem
-- vse je rizeno synchronne, signaly jsou aktivni v logicke 1
-- signal en_out rika, ze doslo k preteceni (Q = 9) a dalsi hodnota bude 0 a 
-- ma se inkrementovat citac o cifru vyse
process(CLK,RESET,EN)
variable carry: std_logic;-- := '0';
begin
if CLK'event and CLK = '1'then
if EN = '1' then
if bcd_value = "1001" then
bcd_value <= (others => '0');
carry:='1';
else
bcd_value <= std_logic_vector(unsigned(bcd_value)+1);
carry :='0';
end if;
--if bcd_value = "1000" then
--EN_OUT <= '1';
--end if;
end if;
end if;
if RESET = '1' then
bcd_value<=(others => '0');
--carry<='0';
--EN_OUT <= '0';
end if;

EN_OUT<=carry;
end process; 
--EN_OUT <= carry;
Q<= bcd_value;
-- pri spravne implementaci a spojeni en_out na en druheho citace bude 
-- soustava citacu dobre pocitat 0 - 99. en_out musi byt aktivni pouze jeden takt
-- tzn pokud en je neaktvni, en_out musi byt take neaktivni (jinak dojde k nevhodnemu)
-- chovani

end Behavioral;