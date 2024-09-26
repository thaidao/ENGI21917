library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lab3_p1 is
	port (
		sw	: in 	STD_LOGIC_VECTOR ( 3 DOWNTO 0); -- input a,b,c is sw(0), sw(1), sw(2), sw(3)
		f	: out STD_LOGIC		-- f is output 
	);
end lab3_p1;

-- architechture declaration
architecture behavioral of lab3_p1 is
begin
	
	f <= not( (sw(0) and sw(1) and sw(2)) xor sw(3));
end behavioral;