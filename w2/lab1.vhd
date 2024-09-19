library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


----------------------------------------------------------------------
--task 2 NAND gate
----------------------------------------------------------------------

--entity lab1 is
--    Port ( 
--        SW : in STD_LOGIC_VECTOR(1 downto 0);  -- Switch 0 and Switch 1
--        LEDR : out STD_LOGIC_VECTOR(0 downto 0) -- LED0
--    );
--end lab1;
--
--
--architecture Behavioral of lab1 is
--begin
--    LEDR(0) <= not (SW(0) and SW(1));
--end Behavioral;


----------------------------------------------------------------------
--task 3 XOR gate
----------------------------------------------------------------------
entity lab1 is
    Port ( 
        SW : in STD_LOGIC_VECTOR(1 downto 0);  -- Switch 0 and Switch 1
        LEDR : out STD_LOGIC_VECTOR(0 downto 0) -- LED0
    );
end lab1;
   
architecture Behavioral of lab1 is
begin
    LEDR(0) <= SW(0) xor SW(1);
end Behavioral;
----------------------------------------------------------------------


----------------------------------------------------------------------
--task 4 Three AND gate
----------------------------------------------------------------------
--entity lab1 is
--    Port ( 
--        SW : in STD_LOGIC_VECTOR(9 downto 0);  -- Switches 0-9
--        LEDR : out STD_LOGIC_VECTOR(0 downto 0) -- LED0
--    );
--end lab1;
--
--architecture Behavioral of lab1 is
--begin
--    LEDR(0) <= SW(0) and SW(1) and SW(7);
--end Behavioral;
