-- VHDL code to implement a gate with three inputs and two outputs
-- Output f is the NOR of inputs a and c
-- Output g is the XNOR of inputs b and c

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity declaration
entity lab2 is
    Port (
        a : in  STD_LOGIC; -- Input a
        b : in  STD_LOGIC; -- Input b
        c : in  STD_LOGIC; -- Input c
        f : out STD_LOGIC; -- Output f (NOR of a and c)
        g : out STD_LOGIC  -- Output g (XNOR of b and c)
    );
end lab2;

-- Architecture declaration
architecture Behavioral of lab2 is
begin
    -- Logic for output f: NOR of a and c
    f <= not (a or c);

    -- Logic for output g: XNOR of b and c
    g <= not (b xor c);
    
end Behavioral;


-----------------------------------------------------------------
-- [Method 2] Try to use array
-- VHDL code to implement a gate with three inputs and two outputs
-- Output f is the NOR of inputs a and c
-- Output g is the XNOR of inputs b and c

--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
--
---- Entity declaration
--entity lab2 is
--    Port (		  
--		  sw: in STD_LOGIC_VECTOR(2 downto 0);		--Try to use array, a,b,c
--		  led: out STD_LOGIC_VECTOR(1 downto 0)	-- f,g
--    );
--end lab2;
--
---- Architecture declaration
--architecture Behavioral of lab2 is
--begin
--    -- Logic for output f: NOR of a and c
--    led(0) <= not (sw(0) or sw(2));
--
--    -- Logic for output g: XNOR of b and c
--    led(1) <= not (sw(1) xor sw(2));
--    
--end Behavioral;