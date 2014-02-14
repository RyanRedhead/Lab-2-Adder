--------------------------------------------------------------------------------
-- Company: 
-- Engineer: Ryan Redhead
--
-- Create Date:   21:27:43 02/13/2014
-- Design Name:   
-- Module Name:   C:/Users/C16Ryan.Redhead/Desktop/ECE 281/Lab2/overflowdetectortestbench.vhd
-- Project Name:  Lab2
-- Target Device:  
-- Tool versions:  
-- Description:   Over Flow Detector Testbench
-- 
-- VHDL Test Bench Created by ISE for module: overflowdetector
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
 
ENTITY overflowdetectortestbench IS
END overflowdetectortestbench;
 
ARCHITECTURE behavior OF overflowdetectortestbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT overflowdetector
    PORT(
         Amost : IN  std_logic;
         Bmost : IN  std_logic;
         Summost : IN  std_logic;
         overflo : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Amost : std_logic := '0';
   signal Bmost : std_logic := '0';
   signal Summost : std_logic := '0';

 	--Outputs
   signal overflo : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: overflowdetector PORT MAP (
          Amost => Amost,
          Bmost => Bmost,
          Summost => Summost,
          overflo => overflo
        );

   -- Clock process definitions
  -- <clock>_process :process
  -- begin
	--	<clock> <= '0';
--		wait for <clock>_period/2;
--		wait for <clock>_period/2;
 --  end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

    Amost <= '0';
	 Bmost <= '0';
	 Summost <= '0';
	 
	wait for 100 ns;
	
	 Amost <= '0';
	 Bmost <= '0';
	 Summost <= '1';
	 
	wait for 100 ns;
	
	 Amost <= '0';
	 Bmost <= '1';
	 Summost <= '0';
	 
	wait for 100 ns;
	
	 Amost <= '0';
	 Bmost <= '1';
	 Summost <= '1';
	 
	wait for 100 ns;
	
	 Amost <= '1';
	 Bmost <= '0';
	 Summost <= '0';
	 
	wait for 100 ns;
	
	 Amost <= '1';
	 Bmost <= '0';
	 Summost <= '1';
	 
	wait for 100 ns;
	
	 Amost <= '1';
	 Bmost <= '1';
	 Summost <= '0';
	 
	wait for 100 ns;
	
	 Amost <= '1';
	 Bmost <= '1';
	 Summost <= '1';
	 
	wait for 100 ns;
	
	
	
	 
	 -- wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
