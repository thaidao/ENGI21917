library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity declaration
entity lab3_p1_s2 is
	Port ( 
		a : in STD_LOGIC;
		b : in STD_LOGIC;
		c : in STD_LOGIC;
		d : in STD_LOGIC;
		f : out STD_LOGIC
	);
end lab3_p1_s2;

architecture behavioral of lab3_p1_s2 is

	 -- Component declarations
	 -- inverter (not)
    component lab3_p1_s2_inverter				
		port (
			inv_in 	: 	in 	STD_LOGIC;
			inv_out	:	out	STD_LOGIC
		);
    end component;
	 
	 -- and gate
	 component lab3_p1_s2_andgate				
		port(
			andgate_in : 	in		STD_LOGIC_VECTOR(2 downto 0);	-- for a, b, c
			andgate_out:	out	STD_LOGIC
		);
    end component;
	 
	-- xor gate
	component lab3_p1_s2_xor				
		port(
			xor_in: 	in		STD_LOGIC_VECTOR(1 downto 0);		-- 2 inputs of xor
			xor_out:	out	STD_LOGIC
		);
	end component;
	
	-- internal signal
	signal	andgate_out_intbus: 	STD_LOGIC;
	signal 	xorgate_out_intbus: 	STD_LOGIC;


-- Behavior
begin	
	ANDGATE: lab3_p1_s2_andgate port map (
		andgate_in(0) =>a,
		andgate_in(1) =>b,
		andgate_in(2) =>c,
		
		andgate_out => andgate_out_intbus
		);
		
	XORGATE: lab3_p1_s2_xor port map(
		xor_in(0) 	=> andgate_out_intbus,
		xor_in(1) 	=> d,
		xor_out		=> xorgate_out_intbus
	);
	
	INVERTER: lab3_p1_s2_inverter port map(
		inv_in =>xorgate_out_intbus,
		
--		--for part 2, using NAND instead of NOT
--		inv_in(0) => xorgate_out_intbus,
--		inv_in(1) => xorgate_out_intbus,
		
		inv_out 	=> f
	); 
		
	
end behavioral;