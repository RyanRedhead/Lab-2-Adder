----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Ryan Redhead
-- 
-- Create Date:    21:07:44 02/09/2014 
-- Design Name: 1 bit adder
-- Module Name:    bitadder - Behavioral 
-- Project Name: Lab 2
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bitadder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end bitadder;

architecture Behavioral of bitadder is

signal I,J,K : std_logic;

begin

I <= A xor B;
S <= I xor Cin;
J <= A and B;
K <= I and Cin;
Cout <= J or K;

end Behavioral;

