----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.05.2024 07:10:48
-- Design Name: 
-- Module Name: functions - Behavioral
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

package matrix_pack is

function GETROW ( signal DATA : in std_logic_vector; COL : in integer; N : in integer) return std_logic_vector;
end matrix_pack;
--architecture Behavioral of matrix_pack is
package body matrix_pack is
function GETROW ( signal DATA : in std_logic_vector; COL : in integer; N : in integer) return std_logic_vector is
variable res : std_logic_vector(0 to (DATA'LENGTH/N)-1):=(others => '0');
begin
for i in 0 to res'length-1 loop
   res(i):= DATA((i*n)+COL);
end loop;

return res;
end;

end matrix_pack;
