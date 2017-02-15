----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:44:10 02/10/2017 
-- Design Name: 
-- Module Name:    trojan3 - Behavioral 
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

entity trojan3 is
    Port ( key : in  STD_LOGIC_VECTOR (3 downto 0);
           sel : in  STD_LOGIC;
           lk : out  STD_LOGIC);
end trojan3;

architecture Behavioral of trojan3 is

begin

process (key, sel)
begin
 if (sel = '1' ) then lk <= key(3) xor key(2); else lk <= key(1) xor key(0); end if;
 
end process;

end Behavioral;

