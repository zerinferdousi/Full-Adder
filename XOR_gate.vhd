library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity XOR_gate is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Y : out STD_LOGIC);
end XOR_gate;

architecture Structural of XOR_gate is

   
    component NAND_gate is
        Port ( A : in  STD_LOGIC;
               B : in  STD_LOGIC;
               Y : out STD_LOGIC);
    end component;

    signal w1, w2, w3 : STD_LOGIC;

begin
  
    NAND1: NAND_gate port map (A => A,  B => B,  Y => w1);
    NAND2: NAND_gate port map (A => A,  B => w1, Y => w2);
    NAND3: NAND_gate port map (A => w1, B => B,  Y => w3);
    NAND4: NAND_gate port map (A => w2, B => w3, Y => Y);

end Structural;