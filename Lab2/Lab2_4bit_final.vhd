----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Ryan Redhead
-- 
-- Create Date:    22:03:33 02/13/2014 
-- Design Name: 
-- Module Name:    Lab2_4bit_final - Structural 
-- Project Name: Lab 2
-- Target Devices: 
-- Tool versions: 
-- Description: Final 4 Bit Adder with all functionality
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Lab2_4bit_final is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           SubChoice : in  STD_LOGIC;
           Sum : inout  STD_LOGIC_VECTOR (3 downto 0);
           Cout : out  STD_LOGIC;
           Overflow : out  STD_LOGIC);
end Lab2_4bit_final;

architecture Structural of Lab2_4bit_final is

component bitadder
port(A: IN STD_LOGIC;
B: IN STD_LOGIC;
Cin: IN STD_LOGIC;
Sum: INOUT STD_LOGIC;
Cout: OUT STD_LOGIC
);
end component;

component mux
port(
D0 : IN STD_LOGIC_VECTOR (3 downto 0);
D1 : IN STD_LOGIC_VECTOR (3 downto 0);
S : IN STD_LOGIC;
Y : OUT STD_LOGIC_VECTOR (3 downto 0)
);
end component;

component overflowdetector
port(
Amost : in  STD_LOGIC;
Bmost : in  STD_LOGIC;
Summost : in  STD_LOGIC;
overflo : out  STD_LOGIC
);
end component;

signal Cin1, Cin2, Cin3 : STD_LOGIC;
signal B_NOT, Bother : STD_LOGIC_VECTOR (3 downto 0);

begin

B_NOT <= not B;

Mux1 : mux port map(
D0 => B,
D1 => B_NOT,
S =>SubChoice,
Y => Bother
);

OverfloDetect : overflowdetector port map(
Amost => A(3),
Bmost => Bother(3),
Summost => Sum(3),
overflo => Overflow
);

bit0 : bitadder port map(
A => A(0),
B => B(0),
Cin => SubChoice,
Sum => Sum(0),
Cout => Cin1
);

bit1 : bitadder port map(
A => A(1),
B => B(1),
Cin => Cin1,
Sum => Sum(1),
Cout => Cin2
);

bit2 : bitadder port map(
A => A(2),
B => B(2),
Cin => Cin2,
Sum => Sum(2),
Cout => Cin3
);

bit3 : bitadder port map(
A => A(3),
B => B(3),
Cin => Cin3,
Sum => Sum(3),
Cout => Cout
);

end Structural;
