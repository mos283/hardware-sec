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

entity encrypt is
    Port ( din : in  STD_LOGIC_VECTOR (63 downto 0);
--				inpaH, inpaL, inpbH, inpbL : in  STD_LOGIC;
				reset : in  STD_LOGIC;
				rom : in sArray;
           dout : out  STD_LOGIC_VECTOR (63 downto 0);
			  done : out STD_LOGIC;
           clk : in  STD_LOGIC);
--         val : in  STD_LOGIC);
end encrypt;

architecture Behavioral of encrypt is

--TYPE sTable IS ARRAY (0 TO 25) OF STD_LOGIC_VECTOR(31 DOWNTO 0);
--CONSTANT rom: sTable := (X"9BBBD8C8", X"1A37F7FB", X"46F8E8C5", X"460C6085",
--X"70F83B8A", X"284B8303", X"513E1454", X"F621ED22",
--X"3125065D", X"11A83A5D", X"D427686B", X"713AD82D",
--X"4B792F99", X"2799A4DD", X"A7901C49", X"DEDE871A",
--X"36C03196", X"A7EFC249", X"61A78BB8", X"3B0A1D2B",
--X"4DBFCA76", X"AE162167", X"30D76B0A", X"43192304",
--X"F6CC1431", X"65046380");

--signal din : STD_LOGIC_VECTOR(63 DOWNTO 0);
signal aSig, aNxt, aXor, aShft, aAdd, aZero, aStp : STD_LOGIC_VECTOR(31 DOWNTO 0);
signal bSig, bNxt, bXor, bShft, bAdd, bZero, bStp : STD_LOGIC_VECTOR(31 DOWNTO 0);
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
--process ( inpaH, inpaL, inpbH, inpbL)
--begin
--	if ( inpaH = '1' ) then led <= dout(63 downto 48);
--	elsif ( inpaL = '1' ) then led <= dout(47 downto 32);
--	elsif ( inpbH = '1' ) then led <= dout(31 downto 16);
--	elsif ( inpbL = '1' ) then led <= dout(15 downto 0);
--	else led <= X"0000";
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

nsl: process (pr_st, aSig, bSig, aShft, bShft)
begin

case pr_st is 

when wt =>
	nxt_st <= lo;
--	if ( val = '0' ) then nxt_st <= wt;
--	else nxt_st <= lo;
--	end if;
----	led <= din (15 downto 0);
when lo =>
	nxt_st <= s0;
--	if ( val = '0' ) then nxt_st <= s0;
--	else nxt_st <= lo;
--	end if;
----	led <= din (19 downto 4);
when s0 =>
	nxt_st <= s1;
	aStp <= aSig; bStp <= bSig;
	sEvn <= rom(0);
	sOdd <= rom(1);
when s1 =>
	nxt_st <= s2;
	aStp <= aShft; bStp <= bShft;
	sEvn <= rom(2);
	sOdd <= rom(3);
when s2 =>
	nxt_st <= s3;
	aStp <= aShft; bStp <= bShft;
	sEvn <= rom(4);
	sOdd <= rom(5);
when s3 =>
	nxt_st <= s4;
	aStp <= aShft; bStp <= bShft;
	sEvn <= rom(6);
	sOdd <= rom(7);
when s4 =>
	nxt_st <= s5;
	aStp <= aShft; bStp <= bShft;
	sEvn <= rom(8);
	sOdd <= rom(9);
when s5 =>
	nxt_st <= s6;
	aStp <= aShft; bStp <= bShft;
	sEvn <= rom(10);
	sOdd <= rom(11);
when s6 =>
	nxt_st <= s7;
	aStp <= aShft; bStp <= bShft;
	sEvn <= rom(12);
	sOdd <= rom(13);
when s7 =>
	nxt_st <= s8;
	aStp <= aShft; bStp <= bShft;
	sEvn <= rom(14);
	sOdd <= rom(15);
when s8 =>
	nxt_st <= s9;
	aStp <= aShft; bStp <= bShft;
	sEvn <= rom(16);
	sOdd <= rom(17);
when s9 =>
	nxt_st <= s10;
	aStp <= aShft; bStp <= bShft;
	sEvn <= rom(18);
	sOdd <= rom(19);
when s10 =>
	nxt_st <= s11;
	aStp <= aShft; bStp <= bShft;
	sEvn <= rom(20);
	sOdd <= rom(21);
when s11 =>
	nxt_st <= s12;
	aStp <= aShft; bStp <= bShft;
	sEvn <= rom(22);
	sOdd <= rom(23);
when s12 =>
	nxt_st <= dn;
	aStp <= aShft; bStp <= bShft;
	sEvn <= rom(24);
	sOdd <= rom(25);
when dn =>
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


--xor gates
aXor <= aSig xor bSig;
bXor <= aNxt xor bSig;

-- shift logic
with bSig( 4 downto 0) select
aShft <= aXor when "00000",
	aXor( 30 downto 0 ) & aXor(31) when "00001",
	aXor(29 downto 0) & aXor(31 downto 30) when "00010",
	aXor(28 downto 0) & aXor(31 downto 29) when "00011",
	aXor(27 downto 0) & aXor(31 downto 28) when "00100",
	aXor(26 downto 0) & aXor(31 downto 27) when "00101",
	aXor(25 downto 0) & aXor(31 downto 26) when "00110",
	aXor(24 downto 0) & aXor(31 downto 25) when "00111",
	aXor(23 downto 0) & aXor(31 downto 24) when "01000",
	aXor(22 downto 0) & aXor(31 downto 23) when "01001",
	aXor(21 downto 0) & aXor(31 downto 22) when "01010",
	aXor(20 downto 0) & aXor(31 downto 21) when "01011",
	aXor(19 downto 0) & aXor(31 downto 20) when "01100",
	aXor(18 downto 0) & aXor(31 downto 19) when "01101",
	aXor(17 downto 0) & aXor(31 downto 18) when "01110",
	aXor(16 downto 0) & aXor(31 downto 17) when "01111",
	aXor(15 downto 0) & aXor(31 downto 16) when "10000",
	aXor(14 downto 0) & aXor(31 downto 15) when "10001",
	aXor(13 downto 0) & aXor(31 downto 14) when "10010",
	aXor(12 downto 0) & aXor(31 downto 13) when "10011",
	aXor(11 downto 0) & aXor(31 downto 12) when "10100",
	aXor(10 downto 0) & aXor(31 downto 11) when "10101",
	aXor(9 downto 0) & aXor(31 downto 10) when "10110",
	aXor(8 downto 0) & aXor(31 downto 9) when "10111",
	aXor(7 downto 0) & aXor(31 downto 8) when "11000",
	aXor(6 downto 0) & aXor(31 downto 7) when "11001",
	aXor(5 downto 0) & aXor(31 downto 6) when "11010",
	aXor(4 downto 0) & aXor(31 downto 5) when "11011",
	aXor(3 downto 0) & aXor(31 downto 4) when "11100",
	aXor(2 downto 0) & aXor(31 downto 3) when "11101",
	aXor(1 downto 0) & aXor(31 downto 2) when "11110",
	aXor(0) & aXor(31 downto 1) when "11111";

with aNxt( 4 downto 0) select
bShft <= bXor when "00000",
	bXor( 30 downto 0 ) & bXor(31) when "00001",
	bXor(29 downto 0) & bXor(31 downto 30) when "00010",
	bXor(28 downto 0) & bXor(31 downto 29) when "00011",
	bXor(27 downto 0) & bXor(31 downto 28) when "00100",
	bXor(26 downto 0) & bXor(31 downto 27) when "00101",
	bXor(25 downto 0) & bXor(31 downto 26) when "00110",
	bXor(24 downto 0) & bXor(31 downto 25) when "00111",
	bXor(23 downto 0) & bXor(31 downto 24) when "01000",
	bXor(22 downto 0) & bXor(31 downto 23) when "01001",
	bXor(21 downto 0) & bXor(31 downto 22) when "01010",
	bXor(20 downto 0) & bXor(31 downto 21) when "01011",
	bXor(19 downto 0) & bXor(31 downto 20) when "01100",
	bXor(18 downto 0) & bXor(31 downto 19) when "01101",
	bXor(17 downto 0) & bXor(31 downto 18) when "01110",
	bXor(16 downto 0) & bXor(31 downto 17) when "01111",
	bXor(15 downto 0) & bXor(31 downto 16) when "10000",
	bXor(14 downto 0) & bXor(31 downto 15) when "10001",
	bXor(13 downto 0) & bXor(31 downto 14) when "10010",
	bXor(12 downto 0) & bXor(31 downto 13) when "10011",
	bXor(11 downto 0) & bXor(31 downto 12) when "10100",
	bXor(10 downto 0) & bXor(31 downto 11) when "10101",
	bXor(9 downto 0) & bXor(31 downto 10) when "10110",
	bXor(8 downto 0) & bXor(31 downto 9) when "10111",
	bXor(7 downto 0) & bXor(31 downto 8) when "11000",
	bXor(6 downto 0) & bXor(31 downto 7) when "11001",
	bXor(5 downto 0) & bXor(31 downto 6) when "11010",
	bXor(4 downto 0) & bXor(31 downto 5) when "11011",
	bXor(3 downto 0) & bXor(31 downto 4) when "11100",
	bXor(2 downto 0) & bXor(31 downto 3) when "11101",
	bXor(1 downto 0) & bXor(31 downto 2) when "11110",
	bXor(0) & bXor(31 downto 1) when "11111";

--end of shifting

--done signal
process ( pr_st )
begin
if ( pr_st = dn ) then done <= '1'; else done <= '0'; 
end if;
end process;

--adder block

aAdd <= aStp + sEvn;
bAdd <= bStp + sOdd;

--end of adder block

--mux before the reg

process ( pr_st, din, aAdd, bAdd )
begin
if ( pr_st = lo ) then aNxt <= din( 63 downto 32); bNxt <= din( 31 downto 0);
else aNxt <= aAdd; bNxt <= bAdd;
end if;
end process;




end Behavioral;

