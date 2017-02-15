----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:52:47 11/26/2016 
-- Design Name: 
-- Module Name:    rc5 - Behavioral 
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
entity rc5dup is
    Port ( sw : in  STD_LOGIC_VECTOR (15 downto 0);
           val : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           inpaH, inpaL, inpbH, inpbL : in  STD_LOGIC;
           SSEG_AN, SSEG_CA : out STD_LOGIC_VECTOR (7 downto 0);
           led : out  STD_LOGIC_VECTOR (15 downto 0));
end rc5dup;

architecture Behavioral of rc5dup is

component Hex2LED 
port (CLK: in STD_LOGIC; X: in STD_LOGIC_VECTOR (3 downto 0); Y: out STD_LOGIC_VECTOR (7 downto 0)); 
end component; 

type arr is array(0 to 22) of std_logic_vector(7 downto 0);
signal NAME: arr;

constant CNTR_MAX : std_logic_vector(23 downto 0) := x"030D40"; --100,000,000 = clk cycles per second
constant VAL_MAX : std_logic_vector(3 downto 0) := "1001"; --9

constant RESET_CNTR_MAX : std_logic_vector(17 downto 0) := "110000110101000000";-- 100,000,000 * 0.002 = 200,000 = clk cycles per 2 ms
																	
signal Cntr : std_logic_vector(26 downto 0) := (others => '0');
signal hexval: std_logic_vector(31 downto 0):=x"0123ABCD";
signal clk_cntr_reg : std_logic_vector (4 downto 0) := (others=>'0'); 
signal Valb : std_logic_vector(3 downto 0) := (others => '0');

component roundkey is
    Port ( sw : in  STD_LOGIC_VECTOR (15 downto 0);
           val, btnl, btnr, out1 : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
			  sArr : inout  sArray;
           oled : out  STD_LOGIC_VECTOR (8 downto 0));
end component;
component encrypt is
    Port ( din : in  STD_LOGIC_VECTOR (63 downto 0);
				reset : in  STD_LOGIC;
				rom : in sArray;
           dout : out  STD_LOGIC_VECTOR (63 downto 0);
			  done : out STD_LOGIC;
           clk : in  STD_LOGIC);
end component;
component decrypt is
    Port ( din : in  STD_LOGIC_VECTOR (63 downto 0);
			  reset : in  STD_LOGIC;
			  dout : out STD_LOGIC_VECTOR (63 downto 0);
			  rom : in sArray;
			  done : out STD_LOGIC;
           clk : in  STD_LOGIC);
end component;

signal  enDout, deDout, din, dout : STD_LOGIC_VECTOR (63 downto 0);
signal KyRdy, KyClr, enRst, enDone, deRst, deDone : STD_LOGIC;
signal kyLed : STD_LOGIC_VECTOR (8 downto 0);

type statetype is (start, stKy, kyGn, load, stEn, encr, stDe, decr);
signal pr_st, nxt_st : statetype;

signal srom : sArray;

begin

key_gen_comp:  roundkey port map ( sw => sw,
           val => val, btnl => inpaH, btnr => inpaL, out1 => inpbH,
           clk => clk, 
           clr => kyclr,
			  sArr => srom,
           oled => Kyled);
encrypt_comp: encrypt port map ( din => din,
				reset => enRst,
				rom => srom,
           dout => endout,
			  done => enDone,
           clk => clk);
			  
decrypt_comp: decrypt port map ( din => din,
				reset => deRst,
				rom => srom,
           dout => dedout,
			  done => deDone,
           clk => clk);

--FSM register block
process ( clk, reset, nxt_st)
begin

	if ( reset = '0' ) then pr_st <= start;
		elsif ( clk' event and clk ='1' ) then 
		pr_st <= nxt_st;
	end if;
end process;

--nsl logic

nsl: process (pr_st, val, reset, kyRdy, enDone, deDone, sw(0))
begin

case pr_st is 

when start =>
	
	if ( reset = '0' ) then nxt_st <= start;
	else nxt_st <= stKy;
	end if;
	kyclr <= '0'; enRst <= '0'; deRst<= '0'; 
when stKy =>

	nxt_st <= kyGn;
	kyclr <= '1'; enRst <= '0'; deRst<= '0'; 
when kyGn =>
	if ( kyRdy = '0' ) then nxt_st <= kyGn;
	else nxt_st <= load;
	end if;
	
	kyclr <= '0'; enRst <= '0'; deRst<= '0'; 
when load =>
	if ( val = '1' and sw(0) = '0' ) then nxt_st <= stEn;
	elsif ( val = '1' and sw(0) = '1' ) then nxt_st <= stDe;	
	else nxt_st <= load;
	end if;
	
	kyclr <= '0'; enRst <= '0'; deRst<= '0'; 
when stEn =>
	if ( enDone = '0' ) then nxt_st <= stEn;
	else nxt_st <= encr;
	end if;
	
	kyclr <= '0'; enRst <= '1'; deRst<= '0'; 
when encr =>
		if ( inpbL = '1' ) then nxt_st <= load;
	else nxt_st <= encr;
	end if;
--	nxt_st <= load;
	kyclr <= '0'; enRst <= '1'; deRst<= '0'; 
	
when stDe =>
	if ( deDone = '0' ) then nxt_st <= stDe;
	else nxt_st <= decr;
	end if;
	
	kyclr <= '0'; enRst <= '0'; deRst<= '1'; 
when decr =>
--	nxt_st <= load;
	if ( inpbL = '1' ) then nxt_st <= load;
	else nxt_st <= decr;
	end if;
	kyclr <= '0'; enRst <= '0'; deRst<= '1'; 


end case;
end process nsl;
			  
process ( reset, clk, inpaH, inpaL, inpbH, inpbL, pr_st)
begin
	if ( reset = '0' ) then din <= x"0000000000000000";
	else
		if ( pr_st = load and inpaH ='1' and clk' event and clk ='1' ) then 
		din(63 downto 48) <= sw;
		end if;
		if ( pr_st = load and inpal ='1' and clk' event and clk ='1' ) then 
		din(47 downto 32) <= sw;
		end if;
		if ( pr_st = load and inpbH ='1' and clk' event and clk ='1' ) then 
		din(31 downto 16) <= sw;
		end if;
		if ( pr_st = load and inpbl ='1' and clk' event and clk ='1' ) then 
		din(15 downto 0) <= sw;
		end if;
	end if;
end process;

process ( pr_st)
begin
	
	if ( pr_St = load ) then led(15) <= '1'; else led (15) <= '0'; end if;
	if ( pr_St = encr ) then led(14) <= '1'; else led (14) <= '0'; end if;
	if ( pr_St = decr ) then led(13) <= '1'; else led (13) <= '0'; end if;
	if ( pr_St = kyGn ) then led(12) <= '1'; else led (12) <= '0'; end if;
	
	if ( pr_St = start ) then led(11) <= '1'; else led (11) <= '0'; end if;
	
end process;

led(10) <= enDone;
led(9)<= deDone;
kyRdy <= kyLed(8);
led( 8 downto 0) <= kyLed;

process (pr_st, enDout, deDout, reset)
begin
if (reset = '0') then dout <= x"0000000000000000";
elsif ( pr_st = encr ) then dout <= enDout;
elsif ( pr_st = decr ) then dout <= deDout;
end if;
end process;

with sw(15) select HexVal <= dout (63 downto 32) when '0', 
									dout (31 downto 0) when '1';
									
--process ( pr_st, sw(15 downto 14), enDout, deDout)
--begin
--
--if ( pr_st = load and sw(15 downto 14) = "00") then HexVal <= enDout (63 downto 32);
--elsif ( pr_st = load and sw(15 downto 14) = "01") then HexVal <= enDout (31 downto 0);
--elsif ( pr_st = load and sw(15 downto 14) = "10") then HexVal <= deDout (63 downto 32);
--elsif ( pr_st = load and sw(15 downto 14) = "11") then HexVal <= deDout (31 downto 0);
--else HexVal <= x"00000000";
--end if;
--
--end process;

timer_counter_process : process (CLK)
begin
	if (rising_edge(CLK)) then
		if ((Cntr = CNTR_MAX) or reset = '0') then
			Cntr <= (others => '0');
		else
			Cntr <= Cntr + 1;
		end if;
	end if;
end process;



--This process increments the digit being displayed on the 
--7-segment display every second.

timer_inc_process : process (CLK)
begin
	if (rising_edge(CLK)) then
		if (reset = '0') then
			Valb <= (others => '0');
		elsif (Cntr = CNTR_MAX) then
			if (Valb = VAL_MAX) then
				Valb <= (others => '0');
			else
				Valb <= Valb + 1;
			end if;
		end if;
	end if;
end process;

--This select statement selects the 7-segment diplay anode. 
with Valb select
	SSEG_AN <= "01111111" when "0001",
				  "10111111" when "0010",
				  "11011111" when "0011",
				  "11101111" when "0100",
				  "11110111" when "0101",
				  "11111011" when "0110",
				  "11111101" when "0111",
				  "11111110" when "1000",
				  "11111111" when others;

--This select statement selects the value of HexVal to the necessary
--cathode signals to display it on the 7-segment
with Valb select
	SSEG_CA <= NAME(0) when "0001",
				  NAME(1) when "0010",
				  NAME(2)when "0011",
				  NAME(3) when "0100",
				  NAME(4) when "0101",
				  NAME(5) when "0110",
				  NAME(6) when "0111",
				  NAME(7) when "1000",
				  NAME(0) when others;


CONV1: Hex2LED port map (CLK => CLK, X => HexVal(31 downto 28), Y => NAME(0));
CONV2: Hex2LED port map (CLK => CLK, X => HexVal(27 downto 24), Y => NAME(1));
CONV3: Hex2LED port map (CLK => CLK, X => HexVal(23 downto 20), Y => NAME(2));
CONV4: Hex2LED port map (CLK => CLK, X => HexVal(19 downto 16), Y => NAME(3));		
CONV5: Hex2LED port map (CLK => CLK, X => HexVal(15 downto 12), Y => NAME(4));
CONV6: Hex2LED port map (CLK => CLK, X => HexVal(11 downto 8), Y => NAME(5));
CONV7: Hex2LED port map (CLK => CLK, X => HexVal(7 downto 4), Y => NAME(6));
CONV8: Hex2LED port map (CLK => CLK, X => HexVal(3 downto 0), Y => NAME(7));

end Behavioral;

