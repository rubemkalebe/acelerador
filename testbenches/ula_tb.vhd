-- Testbench for the ULA component.
-- Version: 03.08.2016.

library ieee;
use ieee.std_logic_1164.all;

entity ula_tb is
  generic (
    n         : natural := 32;
    opc_bits  : natural := 3
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

    wait;
  end process;

end ula_tb;
