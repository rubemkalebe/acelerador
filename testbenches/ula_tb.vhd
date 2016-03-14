-- Testbench for the ULA component.
-- Version: 03.14.2016.

library ieee;
use ieee.std_logic_1164.all;

entity ula_tb is
  generic (
    n         : natural := 32;
    opc_bits  : natural := 4
  );
end ula_tb;

architecture ula_tb of ula_tb is

  signal s_a, s_b, s_x : std_logic_vector(n-1 downto 0);
  signal s_opcode : std_logic_vector(opc_bits downto 0);

begin

  ula_0 : entity work.ula
  port map (
    a => s_a,
    b => s_b,
    opcode => s_opcode,
    x => s_x
  );

  process
  begin

    s_a <= "00000000000000000000000000000000";
		s_b <= "00000000000000000000000000000000";
    s_opcode <= "0000";
		wait for 1 ns;

    wait;
  end process;

end ula_tb;
