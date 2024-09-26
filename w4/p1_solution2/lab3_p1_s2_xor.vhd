library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lab3_p1_s2_xor is
	port(
		xor_in: 	in		STD_LOGIC_VECTOR(1 downto 0);		-- 2 inputs of xor
		xor_out:	out	STD_LOGIC
	);
end lab3_p1_s2_xor;

architecture behavioral of lab3_p1_s2_xor is
begin
	xor_out <= xor_in(0) xor xor_in(1);					-- xor
end behavioral;