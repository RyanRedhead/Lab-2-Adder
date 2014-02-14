----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Ryan Redhead
-- 
-- Create Date:    20:55:44 02/13/2014 
-- Design Name: 
-- Module Name:    mux - Behavioral 
-- Project Name: Lab 2
-- Target Devices: 
-- Tool versions: 
-- Description: Mux Device
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux is
    Port ( D0 : in  STD_LOGIC_VECTOR (3 downto 0);
           D1 : in  STD_LOGIC_VECTOR (3 downto 0);
           S : in  STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR (3 downto 0));
end mux;

architecture Behavioral of mux is

begin
mux: process(D0,D1,S)
begin
if s = '0' then
Y <= D0;
else
Y <= D1;
end if;
end process mux;



end Behavioral;

