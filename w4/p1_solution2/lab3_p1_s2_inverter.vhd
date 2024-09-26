library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity declaration
entity lab3_p1_s2_inverter is
	port (
		inv_in 	: 	in 	STD_LOGIC;
		
--		--for part 2, using NAND instead of NOT
--		inv_in 	: 	in 	STD_LOGIC_VECTOR(1 downto 0);

		inv_out	:	out	STD_LOGIC
	);
end lab3_p1_s2_inverter;

architecture behavioral of lab3_p1_s2_inverter is
begin
	inv_out <= not inv_in;
	
--	--for part 2, using NAND instead of NOT
	--inv_out <= not (inv_in(0) and inv_in(1));
	
end behavioral;