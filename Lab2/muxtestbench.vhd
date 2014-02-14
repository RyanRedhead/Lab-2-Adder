--------------------------------------------------------------------------------
-- Company: 
-- Engineer: Ryan Redhead
--
-- Create Date:   21:22:39 02/13/2014
-- Design Name:   
-- Module Name:   C:/Users/C16Ryan.Redhead/Desktop/ECE 281/Lab2/muxtestbench.vhd
-- Project Name:  Lab2
-- Target Device:  
-- Tool versions:  
-- Description:   Mux Testbench
-- 
-- VHDL Test Bench Created by ISE for module: mux
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY muxtestbench IS
END muxtestbench;
 
ARCHITECTURE behavior OF muxtestbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux
    PORT(
         D0 : IN  std_logic_vector(3 downto 0);
         D1 : IN  std_logic_vector(3 downto 0);
         S : IN  std_logic;
         Y : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal D0 : std_logic_vector(3 downto 0) := (others => '0');
   signal D1 : std_logic_vector(3 downto 0) := (others => '0');
   signal S : std_logic := '0';

 	--Outputs
   signal Y : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux PORT MAP (
          D0 => D0,
          D1 => D1,
          S => S,
          Y => Y
        );

   -- Clock process definitions
   --<clock>_process :process
   --begin
	--	<clock> <= '0';
	--	wait for <clock>_period/2;
	--	<clock> <= '1';
	--	wait for <clock>_period/2;
  -- end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

     -- wait for <clock>_period*10;

      -- insert stimulus here 
D0 <= "0000";
D1 <= "1000";
S <= '0';
wait for 100 ns;
S <= '1';

      wait;
   end process;

END;
