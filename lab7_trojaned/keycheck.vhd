--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:27:54 11/27/2016
-- Design Name:   
-- Module Name:   C:/Users/mos28/Documents/xilinx proj/lab7/keycheck.vhd
-- Project Name:  lab7
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: roundkey
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use work.srom.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY keycheck IS
END keycheck;
 
ARCHITECTURE behavior OF keycheck IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT roundkey
    PORT(
         sw : IN  std_logic_vector(15 downto 0);
         val : IN  std_logic;
         btnl : IN  std_logic;
         btnr : IN  std_logic;
         out1 : IN  std_logic;
         clk : IN  std_logic;
         clr : IN  std_logic;
         sArr : INOUT  sArray;
         led : OUT  std_logic_vector(8 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal sw : std_logic_vector(15 downto 0) := (others => '0');
   signal val : std_logic := '0';
   signal btnl : std_logic := '0';
   signal btnr : std_logic := '0';
   signal out1 : std_logic := '0';
   signal clk : std_logic := '0';
   signal clr : std_logic := '0';

	--BiDirs
   signal sArr : sArray;

 	--Outputs
   signal led : std_logic_vector(8 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: roundkey PORT MAP (
          sw => sw,
          val => val,
          btnl => btnl,
          btnr => btnr,
          out1 => out1,
          clk => clk,
          clr => clr,
          sArr => sArr,
          led => led
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

clr <= '1';
wait for clk_period;
clr <= '0';
wait for clk_period*30;

val <='1';
wait for clk_period;
val <= '0';

wait for clk_period;
sw<= x"0000";
btnl <='1';
wait for clk_period;
btnl <='0';
wait for clk_period;
sw<= x"0000";
btnr <='1';
wait for clk_period;
btnr <='0';
wait for clk_period;

out1 <='1';
wait for clk_period;
out1 <= '0';

wait for clk_period;
sw<= x"0000";
btnl <='1';
wait for clk_period;
btnl <='0';
wait for clk_period;
sw<= x"0000";
btnr <='1';
wait for clk_period;
btnr <='0';
wait for clk_period;

val <='1';
wait for clk_period;
val <= '0';

wait for clk_period;
sw<= x"0000";
btnl <='1';
wait for clk_period;
btnl <='0';
wait for clk_period;
sw<= x"0000";
btnr <='1';
wait for clk_period;
btnr <='0';
wait for clk_period;

out1 <='1';
wait for clk_period;
out1 <= '0';

wait for clk_period;
sw<= x"0000";
btnl <='1';
wait for clk_period;
btnl <='0';
wait for clk_period;
sw<= x"0000";
btnr <='1';
wait for clk_period;
btnr <='0';
wait for clk_period;

val <='1';
wait for clk_period;
val <= '0';

      wait;
   end process;


END;
