library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Full_Adder is
    Port ( A    : in  STD_LOGIC;
           B    : in  STD_LOGIC;
           Cin  : in  STD_LOGIC;
           S    : out STD_LOGIC;
           Cout : out STD_LOGIC);
end Full_Adder;

architecture Structural of Full_Adder is

   
    component AND_gate is
        Port ( A : in  STD_LOGIC;
               B : in  STD_LOGIC;
               Y : out STD_LOGIC);
    end component;

   
    component OR_gate is
        Port ( A : in  STD_LOGIC;
               B : in  STD_LOGIC;
               Y : out STD_LOGIC);
    end component;

   
    component XOR_gate is
        Port ( A : in  STD_LOGIC;
               B : in  STD_LOGIC;
               Y : out STD_LOGIC);
    end component;

   
    signal s_xor1 : STD_LOGIC;
    signal s_and1 : STD_LOGIC;
    signal s_and2 : STD_LOGIC;

begin

 
    XOR1: XOR_gate port map (
        A => A,
        B => B,
        Y => s_xor1
    );

    
    XOR2: XOR_gate port map (
        A => s_xor1,
        B => Cin,
        Y => S
    );

   
    AND1: AND_gate port map (
        A => A,
        B => B,
        Y => s_and1
    );

   
    AND2: AND_gate port map (
        A => s_xor1,
        B => Cin,
        Y => s_and2
    );

   
    OR1: OR_gate port map (
        A => s_and1,
        B => s_and2,
        Y => Cout
    );

end Structural;