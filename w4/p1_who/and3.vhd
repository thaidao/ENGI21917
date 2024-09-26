library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and3 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           output : out STD_LOGIC);
end and3;

architecture Behavioral of and3 is
begin
    output <= a and b and c;
end Behavioral;