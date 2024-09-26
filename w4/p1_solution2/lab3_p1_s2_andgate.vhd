library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


-- declaration of entity
entity lab3_p1_s2_andgate is
	port(
		andgate_in : 	in		STD_LOGIC_VECTOR(2 downto 0);	-- for a, b, c
		andgate_out:	out	STD_LOGIC
	);
end lab3_p1_s2_andgate;

architecture behavioral of lab3_p1_s2_andgate is
begin
	andgate_out <= andgate_in(0) and andgate_in(1) and andgate_in(2);
end behavioral;