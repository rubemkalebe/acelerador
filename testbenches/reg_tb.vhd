-- Testbench for a register component.
-- Version: 04.19.2016.

library ieee;
use ieee.std_logic_1164.all;

entity reg_tb is
  generic (
    n : natural := 32
  );
end reg_tb;

architecture reg_tb of reg_tb is

  signal s_reg_input, s_reg_output : std_logic_vector(n-1 downto 0);
  signal s_enable_read : std_logic := '0';
  signal s_enable_write : std_logic := '0';
  signal s_clk : std_logic := '0';

  constant num_cycles : integer := 30;

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
    for i in 1 to num_cycles loop
        s_clk <= not s_clk;
        wait for 5 ns;
        s_clk <= not s_clk;
        wait for 5 ns;
        -- clock period = 10 ns
      end loop;
      wait;
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
    --s_enable_write <= '1';
    --wait for 10 ns;
    --s_enable_write <= '0';
		wait for 100 ns;

    s_reg_input <= "00000000000000000000000000000010";
    --s_enable_read <= '1';
    --wait for 10 ns;
    --s_enable_read <= '0';
		wait for 100 ns;
		wait;
  end process;

end reg_tb;
