--lab2_2
--full adder
--thaidao

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- declare entity
entity lab2_2 is
    Port ( a : in  STD_LOGIC;        -- Input a (Switch 0)
           b : in  STD_LOGIC;        -- Input b (Switch 1)
           c : in  STD_LOGIC;        -- Input c (Switch 2)		- Carry-in
           sum : out  STD_LOGIC;     -- Output sum (LED 0)	
           carry : out  STD_LOGIC);  -- Output carry (LED 1)	- carry-out
end lab2_2;

-- declare architecture
architecture Behavioral of lab2_2 is
begin
    -- Logical function for sum
    sum <= a XOR b XOR c;

    -- Logical function for carry
    carry <= (a AND b) OR (b AND c) OR (a AND c);

end Behavioral;
