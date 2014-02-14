--------------------------------------------------------------------------------
-- Company: 
-- Engineer: Ryan Redhead
--
-- Create Date:   22:50:28 02/13/2014
-- Design Name:   
-- Module Name:   C:/Users/C16Ryan.Redhead/Desktop/ECE 281/Lab2/lab2_4bit_testbench.vhd
-- Project Name:  Lab2
-- Target Device:  
-- Tool versions:  
-- Description:   Testbench for final 4 Bit
-- 
-- VHDL Test Bench Created by ISE for module: Lab2_4bit_final
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
USE ieee.numeric_std.ALL;

USE ieee.std_logic_unsigned.all;

ENTITY lab2_4bit_testbench IS
END lab2_4bit_testbench;
 
ARCHITECTURE behavior OF lab2_4bit_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Lab2_4bit_final
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         SubChoice : IN  std_logic;
         Sum : INOUT  std_logic_vector(3 downto 0);
         Cout : OUT  std_logic;
         Overflow : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal SubChoice : std_logic := '0';

 	--Outputs
   signal Sum : std_logic_vector(3 downto 0);
   signal Cout : std_logic;
   signal Overflow : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Lab2_4bit_final PORT MAP (
          A => A,
          B => B,
          SubChoice => SubChoice,
          Sum => Sum,
          Cout => Cout,
          Overflow => Overflow
        );

   -- Clock process definitions
  -- <clock>_process :process
  -- begin
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

		A <= "0000";
		B <= "0000";
		SubChoice <= '0';
		wait for 10ns;
		for I in 0 to 15 loop
			for J in 0 to 15 loop
				wait for 10 ns;
				B <= B + "0001";
			end loop;
			A <= A + "0001";
		end loop;
		wait for 10 ns;
		
		
		A <= "0000";
		B <= "0000";
		SubChoice <= '1';
		wait for 10 ns;
		for I in 0 to 15 loop
			for J in 0 to 15 loop
				wait for 10 ns;
				B <= B + "0001";
			end loop;
			A <= A + "0001";
		end loop;
		 
			 
      wait;
   end process;

END;
