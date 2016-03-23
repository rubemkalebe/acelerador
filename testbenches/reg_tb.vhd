-- Testbench for a register component.
-- Version: 03.23.2016.

library ieee;
use ieee.std_logic_1164.all;

entity reg_tb is
  generic (
    n : natural := 32
  );
end reg_tb;

architecture reg_tb of reg_tb is

  signal s_reg_input, s_reg_output : std_logic_vector(n-1 downto 0);
  signal s_clk, s_enable_read, s_enable_write : std_logic;

begin

  reg_0 : entity work.reg
  port map (
     clk => s_clk,
     enable_read => s_enable_read,
     enable_write => s_enable_write,
     reg_input => s_reg_input,
     reg_output => s_reg_output
  );

  clock : process
	begin
		s_clk <= '0', '1' after 10 ns;
		wait for 20 ns;
	end process;

  reg : process
  begin
    s_enable_write <= '1', '0' after 80 ns;
    s_enable_read <= '0', '1' after 240 ns;
    wait;
  end process;

  test : process
  begin
    s_reg_input <= "00100000000000000000000000000000";
		wait for 100 ns;

    s_reg_input <= "00000000000000000000000000000010";
		wait for 100 ns;
		wait;
  end process;

end reg_tb;
