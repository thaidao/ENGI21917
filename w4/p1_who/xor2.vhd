library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xor2 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           output : out STD_LOGIC);
end xor2;

architecture Behavioral of xor2 is
begin
    output <= a xor b;
end Behavioral;