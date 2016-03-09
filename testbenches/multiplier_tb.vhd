-- Testbench for the multiplier component.
-- Version: 03.08.2016.

library ieee;
use ieee.std_logic_1164.all;

entity multiplier_tb is
  generic (
    n : natural := 32
  );
end multiplier_tb;

architecture multiplier_tb of multiplier_tb is

  signal s_a, s_b, s_high, s_low : std_logic_vector(n-1 downto 0);

begin

  multiplier_0 : entity work.multiplier
  port map (
    a => s_a,
    b => s_b,
    high => s_high,
    low => s_low
  );

  process
  begin
    s_a <= "00000000000000000000000000000000";
		s_b <= "00000000000000000000000000000000";
		wait for 1 ns;

		s_a <= "00000000000000000000000000110010";
		s_b <= "00000000000000000000000001111111";
		wait for 1 ns;

		s_a <= "00000000000010000100001111110111";
		s_b <= "00000000000000000111110110010001";
		wait for 1 ns;

		s_a <= "00000000000000000000000000000001";
		s_b <= "00000000000000000000000000000000";
		wait for 1 ns;

		wait;
  end process;

end multiplier_tb;
