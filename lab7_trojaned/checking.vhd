-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;
  use work.srom.all;

  ENTITY testbench IS
  END testbench;

  ARCHITECTURE behavior OF testbench IS 

-- Component Declaration
component rc5dup
    Port ( sw : in  STD_LOGIC_VECTOR (15 downto 0);
           val : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           inpaH, inpaL, inpbH, inpbL : in  STD_LOGIC;
           SSEG_AN, SSEG_CA : out STD_LOGIC_VECTOR (7 downto 0);
           led : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

--input
signal sw : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
signal val :  STD_LOGIC := '0';
signal clk :  STD_LOGIC := '0';
signal reset :  STD_LOGIC := '1';
signal inpaH :  STD_LOGIC := '0';
signal inpaL :  STD_LOGIC := '0';
signal inpbH :  STD_LOGIC := '0';
signal inpbL :   STD_LOGIC := '0';

--outputs
signal SSEG_AN  : STD_LOGIC_VECTOR (7 downto 0);
signal SSEG_CA : STD_LOGIC_VECTOR (7 downto 0);
signal led :  STD_LOGIC_VECTOR (15 downto 0);    

--constatnts
   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
   BEGIN

   -- Component Instantiation
          uut: rc5dup PORT MAP(
                  sw => sw,
                  val => val,
						clk => clk,
						reset => reset,
						inpaH => inpaH,
						inpaL => inpaL,
						inpbH => inpbH,
						inpbL => inpbL,
						SSEG_AN => SSEG_AN,
						SSEG_CA => SSEG_CA,
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
	
	--Test Bench Statements
   tstim_proc : PROCESS
   BEGIN

   wait for 100 ns; -- wait until global set/reset completes

        -- Add user defined stimulus here
   wait for clk_period*10;

        -- insert stimulus here 
	reset <= '0';
	wait for clk_period;
	reset <= '1';
	  
	  
wait for clk_period*30;

val <='1';
wait for clk_period;
val <= '0';

wait for clk_period;
sw<= x"0000";
inpaH <='1';
wait for clk_period;
inpaH <='0';
wait for clk_period;
sw<= x"0000";
inpaL <='1';
wait for clk_period;
inpaL <='0';
wait for clk_period;

inpbH <='1';
wait for clk_period;
inpbH <= '0';

wait for clk_period;
sw<= x"0000";
inpaH <='1';
wait for clk_period;
inpaH <='0';
wait for clk_period;
sw<= x"0000";
inpaL <='1';
wait for clk_period;
inpaL <='0';
wait for clk_period;

val <='1';
wait for clk_period;
val <= '0';

wait for clk_period;
sw<= x"0000";
inpaH <='1';
wait for clk_period;
inpaH <='0';
wait for clk_period;
sw<= x"0000";
inpaL <='1';
wait for clk_period;
inpaL <='0';
wait for clk_period;

inpbH <='1';
wait for clk_period;
inpbH <= '0';

wait for clk_period;
sw<= x"0000";
inpaH <='1';
wait for clk_period;
inpaH <='0';
wait for clk_period;
sw<= x"0000";
inpaL <='1';
wait for clk_period;
inpaL <='0';
wait for clk_period;

val <='1';
wait for clk_period;
val <= '0';

wait for clk_period*100;
---------------------------
--done key generation 
---------------------------

sw <= x"0000";
inpaH <= '1';
wait for clk_period;
inpaH <= '0';
wait for clk_period;
sw <= x"0000";
inpaL <= '1';
wait for clk_period;
inpaL <= '0';
wait for clk_period;
sw <= x"0000";
inpbH <= '1';
wait for clk_period;
inpbH <= '0';
wait for clk_period;
sw <= x"0000";
inpbL <= '1';
wait for clk_period;
inpbL <='0';
wait for clk_period;
val <= '1';
wait for clk_period;
val <='0';

wait for clk_period*15;

--val <= '1'; 
--wait for clk_period;
--val <='0';
--wait for clk_period;
--val <= '1'; sw(14) <='1';
--wait for clk_period;
--val <='0'; sw(14) <='0';
wait for clk_period*15;
---------------
--encrypt done
--------------
sw <= x"eedb";
inpaH <= '1';
wait for clk_period;
inpaH <= '0';
wait for clk_period;
sw <= x"a521";
inpaL <= '1';
wait for clk_period;
inpaL <= '0';
wait for clk_period;
sw <= x"6d8f";
inpbH <= '1';
wait for clk_period;
inpbH <= '0';
wait for clk_period;
sw <= x"4b15";
inpbL <= '1';
wait for clk_period;
inpbL <='0';
wait for clk_period;
val <= '1';
wait for clk_period;
val <='0';

wait for clk_period*15;


   wait;-- will wait forever
   END PROCESS;
	  
	-- End Test Bench 

   END;
