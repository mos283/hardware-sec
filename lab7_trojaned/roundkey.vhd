----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:23:03 11/20/2016 
-- Design Name: 
-- Module Name:    roundkey - Behavioral 
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
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.srom.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity roundkey is
    Port ( sw : in  STD_LOGIC_VECTOR (15 downto 0);
           val, btnl, btnr, out1 : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
			  sArr : inout  sArray;
           led : out  STD_LOGIC_VECTOR (8 downto 0));
end roundkey;

architecture Behavioral of roundkey is



TYPE   lArray IS ARRAY (0 TO 3) OF STD_LOGIC_VECTOR(31 DOWNTO 0);
--signal sArr : sArray;
signal lArr : lArray;
TYPE StTyp is (strt, sInit, WtKy, l0ld, l1ld, l2ld, l3ld, KyExp, KyRdy);
signal prSt, nxtSt : StTyp;
signal a : STD_LOGIC_VECTOR(31 DOWNTO 0);
signal b : STD_LOGIC_VECTOR(31 DOWNTO 0);
signal sAdd, sReg : STD_LOGIC_VECTOR(31 DOWNTO 0);
signal lAdd : STD_LOGIC_VECTOR(31 DOWNTO 0);
signal sShf : STD_LOGIC_VECTOR(31 DOWNTO 0);
signal lShf : STD_LOGIC_VECTOR(31 DOWNTO 0);
signal abAdd, bAShAdd : STD_LOGIC_VECTOR(31 DOWNTO 0);
signal iCnt : STD_LOGIC_VECTOR(1 DOWNTO 0);
signal jCnt : STD_LOGIC_VECTOR(4 DOWNTO 0);
signal kCnt : STD_LOGIC_VECTOR(1 DOWNTO 0);
signal cnt77, cnt25 : STD_LOGIC;
begin

--fsm

--FSM register block
process ( clk, clr)
begin

	
	if ( clk' event and clk ='1' ) then 
			if ( clr = '1' ) then prSt <= strt;
			else prSt <= nxtSt;
			end if;
	end if;
end process;

--nsl logic

nsl: process (prSt, val, out1, clr, cnt25, cnt77)
begin

case prSt is 

when strt =>
	if ( clr = '0' ) then nxtSt <= Sinit;
	else nxtSt <= strt;
	end if;


when SInit =>
	if ( cnt25 = '1' ) then nxtSt <= WtKy;
	else nxtSt <= SInit;
	end if;

when WtKy =>
	if ( val = '1' ) then nxtSt <= l0ld;
	else nxtSt <= WtKy;
	end if;

when l0ld =>
	if ( out1 = '1' ) then nxtSt <= l1ld;
	else nxtSt <= l0ld;
	end if;

when l1ld =>
	if ( val = '1' ) then nxtSt <= l2ld;
	else nxtSt <= l1ld;
	end if;

when l2ld =>
	if ( out1 = '1' ) then nxtSt <= l3ld;
	else nxtSt <= l2ld;
	end if;
	
when l3ld =>
	if ( val = '1' ) then nxtSt <= KyExp;
	else nxtSt <= l3ld;
	end if;

when KyExp =>
	if ( cnt77 = '1' ) then nxtSt <= KyRdy;
	else nxtSt <= KyExp;
	end if;

when KyRdy =>
	if ( clr = '1' ) then nxtSt <= strt;
	else nxtSt <= KyRdy;
	end if;

end case;
end process nsl;

--counters
--counter i
process ( clk, clr)
begin
	
	if ( clk' event and clk ='1' ) then 
			if ( clr = '1' ) then icnt <= "00";
			elsif ( prSt = KyExp ) then icnt <= icnt + '1';
			end if;
	end if;
end process;

--counter j
process ( clk, clr, prSt, jcnt)
begin
	
	if ( clk' event and clk ='1' ) then 
			if ( clr = '1' ) then jcnt <= "00000"; 
			elsif ( (prSt = KyExp) or (prSt = SInit) ) then 
				if ( jcnt = "11001" ) then jcnt <= "00000"; 
				else jcnt <= jcnt + '1'; 
				end if;
			end if;
	end if;
end process;

--counter k
process ( prSt, cnt25)
begin
	
	 
			if ( (prst = strt) or (prst = KyRdy) ) then kcnt <= "00"; 
			elsif ( prSt = KyExp ) then 
						if (cnt25' event and cnt25 = '1' ) then 
							if ( kcnt = "11" ) then kcnt <= "00"; 
							else kcnt <= kcnt + '1'; 
							end if;
						end if;
			end if;

end process;

-- comparators
process (  jCnt, kCnt)
begin

if (jCnt = "11001" ) then cnt25 <= '1'; else cnt25 <= '0'; end if;
if (kCnt = "11" ) then cnt77 <= '1'; else cnt77 <= '0'; end if;
end process;

--s init logic

process ( clk, clr, prSt)
begin
	
	if ( clk' event and clk ='1' ) then 
			if ( clr = '1' ) then sReg <= X"B7E15163";
			elsif ( prSt = SInit ) then
			
				sReg <= sReg + X"9E3779B9";
			end if;
	end if;
end process;

--L init logic

process ( clk, clr, prSt, btnl, btnr, iCnt, lShf)
begin
	
	
		if ( clk' event and clk ='1' ) then
			if ( clr = '1' ) then lArr(0) <= X"00000000";
			elsif ( prSt = l0ld ) then 
				if ( btnl = '1' ) then lArr(0) ( 15 downto 0 ) <= sw; end if;
				if ( btnr = '1' ) then lArr(0) ( 31 downto 16 ) <= sw; end if;
			elsif ( prSt = KyExp and iCnt = "00" ) then
			lArr (0) <= lShf;	
			end if;
		end if;
		
			if ( clk' event and clk ='1' ) then
			if ( clr = '1' ) then lArr(1) <= X"00000000";
			elsif ( prSt = l1ld ) then 
				if ( btnl = '1' ) then lArr(1) ( 15 downto 0 ) <= sw; end if;
				if ( btnr = '1' ) then lArr(1) ( 31 downto 16 ) <= sw; end if;
			elsif ( prSt = KyExp and iCnt = "01" ) then
			lArr (1) <= lShf;	
			end if;
		end if;	
		
		if ( clk' event and clk ='1' ) then
			if ( clr = '1' ) then lArr(2) <= X"00000000";
			elsif ( prSt = l2ld ) then 
				if ( btnl = '1' ) then lArr(2) ( 15 downto 0 ) <= sw; end if;
				if ( btnr = '1' ) then lArr(2) ( 31 downto 16 ) <= sw; end if;
			elsif ( prSt = KyExp and iCnt = "10" ) then
			lArr (2) <= lShf;	
			end if;
		end if;
		
			if ( clk' event and clk ='1' ) then
			if ( clr = '1' ) then lArr(3) <= X"00000000";
			elsif ( prSt = l0ld ) then 
				if ( btnl = '1' ) then lArr(3) ( 15 downto 0 ) <= sw; end if;
				if ( btnr = '1' ) then lArr(3) ( 31 downto 16 ) <= sw; end if;
			elsif ( prSt = KyExp and iCnt = "11" ) then
			lArr (3) <= lShf;	
			end if;
		end if;
end process;

--the key logic

process ( clk, clr, prSt, jCnt, iCnt, kCnt)
begin
	
	if ( clk' event and clk ='1' ) then 
			if ( clr = '1' ) then  a <= X"00000000"; b <= X"00000000";
			elsif ( prSt = KyExp ) then
				a <= sAdd(28 DOWNTO 0) & sAdd(31 DOWNTO 29); 
				b <= lShf;
				 
				
			end if;
	end if;
end process;

abAdd <= a + b;
sAdd <= abAdd + sArr (conv_integer (jCnt));
sShf <= sAdd(28 DOWNTO 0) & sAdd(31 DOWNTO 29);
bAShAdd <= b + sShf;
lAdd <= bAShAdd + lArr (conv_integer (iCnt));

with bAshAdd(4 downto 0) select
lShf <= lAdd when "00000",
	lAdd( 30 downto 0 ) & lAdd(31) when "00001",
	lAdd(29 downto 0) & lAdd(31 downto 30) when "00010",
	lAdd(28 downto 0) & lAdd(31 downto 29) when "00011",
	lAdd(27 downto 0) & lAdd(31 downto 28) when "00100",
	lAdd(26 downto 0) & lAdd(31 downto 27) when "00101",
	lAdd(25 downto 0) & lAdd(31 downto 26) when "00110",
	lAdd(24 downto 0) & lAdd(31 downto 25) when "00111",
	lAdd(23 downto 0) & lAdd(31 downto 24) when "01000",
	lAdd(22 downto 0) & lAdd(31 downto 23) when "01001",
	lAdd(21 downto 0) & lAdd(31 downto 22) when "01010",
	lAdd(20 downto 0) & lAdd(31 downto 21) when "01011",
	lAdd(19 downto 0) & lAdd(31 downto 20) when "01100",
	lAdd(18 downto 0) & lAdd(31 downto 19) when "01101",
	lAdd(17 downto 0) & lAdd(31 downto 18) when "01110",
	lAdd(16 downto 0) & lAdd(31 downto 17) when "01111",
	lAdd(15 downto 0) & lAdd(31 downto 16) when "10000",
	lAdd(14 downto 0) & lAdd(31 downto 15) when "10001",
	lAdd(13 downto 0) & lAdd(31 downto 14) when "10010",
	lAdd(12 downto 0) & lAdd(31 downto 13) when "10011",
	lAdd(11 downto 0) & lAdd(31 downto 12) when "10100",
	lAdd(10 downto 0) & lAdd(31 downto 11) when "10101",
	lAdd(9 downto 0) & lAdd(31 downto 10) when "10110",
	lAdd(8 downto 0) & lAdd(31 downto 9) when "10111",
	lAdd(7 downto 0) & lAdd(31 downto 8) when "11000",
	lAdd(6 downto 0) & lAdd(31 downto 7) when "11001",
	lAdd(5 downto 0) & lAdd(31 downto 6) when "11010",
	lAdd(4 downto 0) & lAdd(31 downto 5) when "11011",
	lAdd(3 downto 0) & lAdd(31 downto 4) when "11100",
	lAdd(2 downto 0) & lAdd(31 downto 3) when "11101",
	lAdd(1 downto 0) & lAdd(31 downto 2) when "11110",
	lAdd(0) & lAdd(31 downto 1) when "11111";
	
--led ouputs

process ( prSt)
begin
	
	if ( prSt = strt ) then led(0) <= '1'; else led (0) <= '0'; end if;
	if ( prSt = SInit ) then led(1) <= '1'; else led (1) <= '0'; end if;
	if ( prSt = wtKy ) then led(2) <= '1'; else led (2) <= '0'; end if;
	if ( prSt = l0ld ) then led(3) <= '1'; else led (3) <= '0'; end if;
	
	if ( prSt = l1ld ) then led(4) <= '1'; else led (4) <= '0'; end if;
	if ( prSt = l2ld ) then led(5) <= '1'; else led (5) <= '0';end if;
	if ( prSt = l3ld ) then led(6) <= '1'; else led (6) <= '0'; end if;
	if ( prSt = kyExp ) then led(7) <= '1'; else led (7) <= '0'; end if;
	
	if ( prSt = kyRdy ) then led(8) <= '1'; else led (8) <= '0'; end if;
end process;

--lcd outputs
--sRom <= sArr;

process ( prSt, sReg, clk, jCnt, sAdd)
begin

	if ( clk' event and clk ='1' ) then 
		if ( prSt = sInit ) then sArr (conv_integer (jCnt)) <= sReg;
		elsif ( prSt = KyExp ) then
		sArr (conv_integer (jCnt)) <= sAdd(28 DOWNTO 0) & sAdd(31 DOWNTO 29);
		end if;
	end if;

end process;





end Behavioral;

