library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity logic_gate is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           d : in STD_LOGIC;
           f : out STD_LOGIC);
end logic_gate;

architecture Structural of logic_gate is
    -- Component declarations
    component inverter
        Port ( input : in STD_LOGIC;
               output : out STD_LOGIC);
    end component;
    
    component and3
        Port ( a : in STD_LOGIC;
               b : in STD_LOGIC;
               c : in STD_LOGIC;
               output : out STD_LOGIC);
    end component;
    
    component xor2
        Port ( a : in STD_LOGIC;
               b : in STD_LOGIC;
               output : out STD_LOGIC);
    end component;
    
    -- Internal signals
    signal and_out : STD_LOGIC;
    signal xor_out : STD_LOGIC;
    
begin
    -- Component instantiations
    AND_GATE: and3 port map (a => a, b => b, c => c, output => and_out);
    XOR_GATE: xor2 port map (a => and_out, b => d, output => xor_out);
    INVERTER: inverter port map (input => xor_out, output => f);
    
end Structural;