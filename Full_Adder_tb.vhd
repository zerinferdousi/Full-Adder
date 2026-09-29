library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Full_Adder_tb is
end Full_Adder_tb;

architecture behavior of Full_Adder_tb is 

    component Full_Adder
    port(
         A    : in  std_logic;
         B    : in  std_logic;
         Cin  : in  std_logic;
         S    : out std_logic;
         Cout : out std_logic
        );
    end component;

   signal A    : std_logic := '0';
   signal B    : std_logic := '0';
   signal Cin  : std_logic := '0';

   signal S    : std_logic;
   signal Cout : std_logic;

begin

   uut: Full_Adder port map (
          A => A,
          B => B,
          Cin => Cin,
          S => S,
          Cout => Cout
        );

   stim_proc: process
   begin		
      A <= '0'; B <= '0'; Cin <= '0'; wait for 50 ns;
      A <= '0'; B <= '0'; Cin <= '1'; wait for 50 ns;
      A <= '0'; B <= '1'; Cin <= '0'; wait for 50 ns;
      A <= '0'; B <= '1'; Cin <= '1'; wait for 50 ns;
      A <= '1'; B <= '0'; Cin <= '0'; wait for 50 ns;
      A <= '1'; B <= '0'; Cin <= '1'; wait for 50 ns;
      A <= '1'; B <= '1'; Cin <= '0'; wait for 50 ns;
      A <= '1'; B <= '1'; Cin <= '1'; wait for 50 ns;
      wait;
   end process;

end behavior;