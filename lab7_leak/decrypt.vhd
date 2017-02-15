----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:31:10 10/09/2016 
-- Design Name: 
-- Module Name:    encrypt - Behavioral 
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

entity decrypt is
    Port ( din : in  STD_LOGIC_VECTOR (63 downto 0);
--				inpaH, inpaL, inpbH, inpbL : in  STD_LOGIC;
				reset : in  STD_LOGIC;
--           led : out  STD_LOGIC_VECTOR (15 downto 0);
			  dout : out STD_LOGIC_VECTOR (63 downto 0);
			  rom : in sArray;
			  done : out STD_LOGIC;
           clk : in  STD_LOGIC);
--           val : in  STD_LOGIC);
end decrypt;

architecture Behavioral of decrypt is



--TYPE sTable IS ARRAY (0 TO 25) OF STD_LOGIC_VECTOR(31 DOWNTO 0);
--CONSTANT rom: sTable := (X"9BBBD8C8", X"1A37F7FB", X"46F8E8C5", X"460C6085",
--X"70F83B8A", X"284B8303", X"513E1454", X"F621ED22",
--X"3125065D", X"11A83A5D", X"D427686B", X"713AD82D",
--X"4B792F99", X"2799A4DD", X"A7901C49", X"DEDE871A",
--X"36C03196", X"A7EFC249", X"61A78BB8", X"3B0A1D2B",
--X"4DBFCA76", X"AE162167", X"30D76B0A", X"43192304",
--X"F6CC1431", X"65046380");

--signal din : STD_LOGIC_VECTOR(63 DOWNTO 0);
signal aSig, aNxt, aXor, aRs, aSub, aZero, aStp : STD_LOGIC_VECTOR(31 DOWNTO 0);
signal bSig, bNxt, bXor, bRs, bSub, bZero, bStp : STD_LOGIC_VECTOR(31 DOWNTO 0);
signal sEvn, sOdd : STD_LOGIC_VECTOR(31 DOWNTO 0);
signal count : STD_LOGIC_VECTOR(3 DOWNTO 0);
--signal done : STD_LOGIC;

type statetype is (wt, lo, s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, dn);
signal pr_st, nxt_st : statetype;

begin
--
--process ( reset, clock)
--begin
--if ( reset = '1' ) then clk <= '0';
--		elsif ( clock' event and clock ='1' )
--		then clk <= not (clk);
--		end if;
--end process;		

--taking in inputs
--process ( clk, inpaH, inpaL, inpbH, inpbL)
--begin
--		if ( inpaH ='1' and clk' event and clk ='1' ) then 
--		din(63 downto 48) <= sw;
--		end if;
--		if ( inpal ='1' and clk' event and clk ='1' ) then 
--		din(47 downto 32) <= sw;
--		end if;
--		if ( inpbH ='1' and clk' event and clk ='1' ) then 
--		din(31 downto 16) <= sw;
--		end if;
--		if ( inpbl ='1' and clk' event and clk ='1' ) then 
--		din(15 downto 0) <= sw;
--		end if;
--end process;

--displaying outputs
--
--process ( inpaH, inpaL, inpbH, inpbL, dout)
--begin
--	if ( inpaH = '1' ) then led <= dout(63 downto 48); hexval <= dout(63 downto 32);
--	elsif ( inpaL = '1' ) then led <= dout(47 downto 32);
--	elsif ( inpbH = '1' ) then led <= dout(31 downto 16); hexval <= dout(31 downto 0);
--	elsif ( inpbL = '1' ) then led <= dout(15 downto 0);
--	else led <= X"0000"; hexval <= X"00000000";
--	end if;
--end process;


--FSM register block
process ( clk, reset)
begin

	if ( reset = '0' ) then pr_st <= wt;
		elsif ( clk' event and clk ='1' ) then 
		pr_st <= nxt_st;
	end if;
end process;

--nsl logic

nsl: process (pr_st)
begin

case pr_st is 

when wt =>
	nxt_st <= lo;
--	if ( val = '0' ) then nxt_st <= wt;
--	else nxt_st <= lo;
--	end if;
--	led <= din (15 downto 0);
when lo =>
--	if ( val = '0' ) then nxt_st <= s0;
--	else nxt_st <= lo;
--	end if;
--	led <= din (19 downto 4);
	nxt_st <= s0;
when s0 =>
	nxt_st <= s1;
	
	sEvn <= rom(24);
	sOdd <= rom(25);
when s1 =>
	nxt_st <= s2;
	
	sEvn <= rom(22);
	sOdd <= rom(23);
when s2 =>
	nxt_st <= s3;
	
	sEvn <= rom(20);
	sOdd <= rom(21);
when s3 =>
	nxt_st <= s4;
	
	sEvn <= rom(18);
	sOdd <= rom(19);
when s4 =>
	nxt_st <= s5;
	
	sEvn <= rom(16);
	sOdd <= rom(17);
when s5 =>
	nxt_st <= s6;
	
	sEvn <= rom(14);
	sOdd <= rom(15);
when s6 =>
	nxt_st <= s7;
	
	sEvn <= rom(12);
	sOdd <= rom(13);
when s7 =>
	nxt_st <= s8;
	
	sEvn <= rom(10);
	sOdd <= rom(11);
when s8 =>
	nxt_st <= s9;
	
	sEvn <= rom(8);
	sOdd <= rom(9);
when s9 =>
	nxt_st <= s10;
	
	sEvn <= rom(6);
	sOdd <= rom(7);
when s10 =>
	nxt_st <= s11;
	
	sEvn <= rom(4);
	sOdd <= rom(5);
when s11 =>
	nxt_st <= s12;
	
	sEvn <= rom(2);
	sOdd <= rom(3);
when s12 =>
	nxt_st <= dn;
	
	sEvn <= rom(0);
	sOdd <= rom(1);
when dn =>
--	if ( val = '0' ) then nxt_st <= dn;
--	else nxt_st <= wt;
--	end if;
	nxt_st <= wt;

end case;
end process nsl;



--outout registers

process ( clk, aNxt, bNxt, pr_st)
begin
if ( clk' event and clk = '1' ) then
aSig <= aNxt;
bSig <= bNxt;
end if;

if ( pr_st = dn and clk' event and clk = '1' ) then
dout(63 downto 32) <= aSig;
dout(31 downto 0)  <= bSig;
end if;

end process;


--output registers ends



--done signal
process ( pr_st )
begin
if ( pr_st = dn ) then done <= '1'; else done <= '0'; 
end if;
end process;



--mux before the reg

process ( pr_st, din, aSub, bSub, aXor, bXor )
begin
if ( pr_st = lo ) then aNxt <= din( 63 downto 32); bNxt <= din( 31 downto 0);
elsif  (pr_st = s12 ) then aNxt <= aSub; bNxt <= bSub;
else aNxt <= aXor; bNxt <= bXor;
end if;
end process;



--outout registers

process ( clk, aNxt, bNxt)
begin
if ( clk' event and clk = '1' ) then
aSig <= aNxt;
bSig <= bNxt;
end if;
end process;

--output asignment
--dout(31 downto 0) <= bSig;
--dout(63 downto 32) <= aSig;
--output registers ends

--xor gates
aXor <= aRS xor bNxt;
bXor <= aSig xor bRS;

--shift logic
with aSig( 4 downto 0) select
bRS <= bSub when "00000",
	bSub(0) & bSub(31 downto 1) when "00001",
	bSub(1 downto 0) & bSub(31 downto 2) when "00010",
	bSub(2 downto 0) & bSub(31 downto 3) when "00011",
	bSub(3 downto 0) & bSub(31 downto 4) when "00100",
	bSub(4 downto 0) & bSub(31 downto 5) when "00101",
	bSub(5 downto 0) & bSub(31 downto 6) when "00110",
	bSub(6 downto 0) & bSub(31 downto 7) when "00111",
	bSub(7 downto 0) & bSub(31 downto 8) when "01000",
	bSub(8 downto 0) & bSub(31 downto 9) when "01001",
	bSub(9 downto 0) & bSub(31 downto 10) when "01010",
	bSub(10 downto 0) & bSub(31 downto 11) when "01011",
	bSub(11 downto 0) & bSub(31 downto 12) when "01100",
	bSub(12 downto 0) & bSub(31 downto 13) when "01101",
	bSub(13 downto 0) & bSub(31 downto 14) when "01110",
	bSub(14 downto 0) & bSub(31 downto 15) when "01111",
	bSub(15 downto 0) & bSub(31 downto 16) when "10000",
	bSub(16 downto 0) & bSub(31 downto 17) when "10001",
	bSub(17 downto 0) & bSub(31 downto 18) when "10010",
	bSub(18 downto 0) & bSub(31 downto 19) when "10011",
	bSub(19 downto 0) & bSub(31 downto 20) when "10100",
	bSub(20 downto 0) & bSub(31 downto 21) when "10101",
	bSub(21 downto 0) & bSub(31 downto 22) when "10110",
	bSub(22 downto 0) & bSub(31 downto 23) when "10111",
	bSub(23 downto 0) & bSub(31 downto 24) when "11000",
	bSub(24 downto 0) & bSub(31 downto 25) when "11001",
	bSub(25 downto 0) & bSub(31 downto 26) when "11010",
	bSub(26 downto 0) & bSub(31 downto 27) when "11011",
	bSub(27 downto 0) & bSub(31 downto 28) when "11100",
	bSub(28 downto 0) & bSub(31 downto 29) when "11101",
	bSub(29 downto 0) & bSub(31 downto 30) when "11110",
	bSub(30 downto 0) & bSub(31) when "11111";
	
with bNxt( 4 downto 0) select
aRS <= aSub when "00000",
	aSub(0) & aSub(31 downto 1) when "00001",
	aSub(1 downto 0) & aSub(31 downto 2) when "00010",
	aSub(2 downto 0) & aSub(31 downto 3) when "00011",
	aSub(3 downto 0) & aSub(31 downto 4) when "00100",
	aSub(4 downto 0) & aSub(31 downto 5) when "00101",
	aSub(5 downto 0) & aSub(31 downto 6) when "00110",
	aSub(6 downto 0) & aSub(31 downto 7) when "00111",
	aSub(7 downto 0) & aSub(31 downto 8) when "01000",
	aSub(8 downto 0) & aSub(31 downto 9) when "01001",
	aSub(9 downto 0) & aSub(31 downto 10) when "01010",
	aSub(10 downto 0) & aSub(31 downto 11) when "01011",
	aSub(11 downto 0) & aSub(31 downto 12) when "01100",
	aSub(12 downto 0) & aSub(31 downto 13) when "01101",
	aSub(13 downto 0) & aSub(31 downto 14) when "01110",
	aSub(14 downto 0) & aSub(31 downto 15) when "01111",
	aSub(15 downto 0) & aSub(31 downto 16) when "10000",
	aSub(16 downto 0) & aSub(31 downto 17) when "10001",
	aSub(17 downto 0) & aSub(31 downto 18) when "10010",
	aSub(18 downto 0) & aSub(31 downto 19) when "10011",
	aSub(19 downto 0) & aSub(31 downto 20) when "10100",
	aSub(20 downto 0) & aSub(31 downto 21) when "10101",
	aSub(21 downto 0) & aSub(31 downto 22) when "10110",
	aSub(22 downto 0) & aSub(31 downto 23) when "10111",
	aSub(23 downto 0) & aSub(31 downto 24) when "11000",
	aSub(24 downto 0) & aSub(31 downto 25) when "11001",
	aSub(25 downto 0) & aSub(31 downto 26) when "11010",
	aSub(26 downto 0) & aSub(31 downto 27) when "11011",
	aSub(27 downto 0) & aSub(31 downto 28) when "11100",
	aSub(28 downto 0) & aSub(31 downto 29) when "11101",
	aSub(29 downto 0) & aSub(31 downto 30) when "11110",
	aSub(30 downto 0) & aSub(31) when "11111";

--end of shifting



--adder block

bSub <= bSig - sOdd;
aSub <= aSig - sEvn;

--end of adder block



end Behavioral;

