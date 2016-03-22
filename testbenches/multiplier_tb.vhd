-- Testbench for the multiplier component.
-- Version: 03.21.2016.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity multiplier_tb is
  generic (
    n : natural := 32
  );
end multiplier_tb;

architecture multiplier_tb of multiplier_tb is

  signal s_a, s_b, s_high, s_low : std_logic_vector(n-1 downto 0);
  signal s_op : std_logic;

begin

  multiplier_0 : entity work.multiplier
  port map (
    a => s_a,
    b => s_b,
    op => s_op,
    high => s_high,
    low => s_low
  );

  process
  begin
    s_a <= "00000000000000000000000000000000"; -- 0
		s_b <= "00000000000000000000000000000000"; -- 0
    s_op <= '0';
		wait for 1 ns;

		s_a <= "00000000000000000000000000110010"; -- +50
		s_b <= "11111111111111111111111110000001"; -- -127
    s_op <= '0';
		wait for 1 ns;

		s_a <= "11111111111101111011110000001001"; -- -541687
		s_b <= "11111111111111111000001001101111"; -- -32145
    s_op <= '0';
		wait for 1 ns;

		s_a <= "00000000000000000000000000000001"; -- 1
		s_b <= "00000000000000000000000000000000"; -- 0
    s_op <= '0';
		wait for 1 ns;

    s_a <= "00000000000000000000000000000000"; -- 0
		s_b <= "00000000000000000000000000000000"; -- 0
    s_op <= '1';
		wait for 1 ns;

		s_a <= "00000000000000000000000000110010"; -- 50
		s_b <= "00000000000000000000000001111111"; -- 127
    s_op <= '1';
		wait for 1 ns;

		s_a <= "00000000000010000100001111110111"; -- 541687
		s_b <= "00000000000000000111110110010001"; -- 32145
    s_op <= '1';
		wait for 1 ns;

		s_a <= "00000000000000000000000000000001"; -- 1
		s_b <= "00000000000000000000000000000000"; -- 0
    s_op <= '1';
		wait for 1 ns;

		wait;
  end process;

end multiplier_tb;
