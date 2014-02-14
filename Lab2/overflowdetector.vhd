----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:16:00 02/13/2014 
-- Design Name: 
-- Module Name:    overflowdetector - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity overflowdetector is
    Port ( Amost : in  STD_LOGIC;
           Bmost : in  STD_LOGIC;
           Summost : in  STD_LOGIC;
           overflo : out  STD_LOGIC);
end overflowdetector;

architecture Behavioral of overflowdetector is

signal AmxnorBm, AmxorSu : std_logic;

begin

AmxnorBm <= Amost xnor Bmost;
AmxorSu <= Amost xor Summost;
overflo <= AmxnorBm and AmxorSu;


end Behavioral;

