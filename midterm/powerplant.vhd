library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--declare entity
entity powerplant is
port(
	motor: 		in			std_logic_vector(2 downto 0);
	alarm: 		out		std_logic;
	shutdown:	out		std_logic	
);
end powerplant;

--declare behavioural

architecture sysbhv of powerplant is
begin
	with motor select
		alarm <= '0' when "111",
					'1' when others;
				
	with motor select
		shutdown <= '1' when ("000" or "001" or "010" or "100"),
						'0' when others;
end sysbhv;