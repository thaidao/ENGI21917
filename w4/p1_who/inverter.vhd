library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity inverter is
    Port ( input : in STD_LOGIC;
           output : out STD_LOGIC);
end inverter;

architecture Behavioral of inverter is
begin
    output <= not input;
end Behavioral;