----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:30:00 02/10/2017 
-- Design Name: 
-- Module Name:    trojan2 - Behavioral 
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

entity trojan2 is
    Port ( sense : in  STD_LOGIC_VECTOR (4 downto 0);
           tri : out  STD_LOGIC);
end trojan2;

architecture Behavioral of trojan2 is

begin

process (sense)
begin
 if (sense = "11111" ) then tri <= '1'; else tri <= '0'; end if;
end process;

end Behavioral;

