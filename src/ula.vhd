-- Short description...
-- Version: 03.08.2016.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ula is
  generic (
    n         : natural := 32;
    opc_bits  : natural := 3
  );

  port (
    a       : in std_logic_vector(n-1 downto 0);
    b       : in std_logic_vector(n-1 downto 0);
    opcode  : in std_logic_vector(opc_bits downto 0);
    x       : out std_logic_vector(n-1 downto 0)
  );
end ula;

architecture ula of ula is

begin

  process(a, b, opcode)
  begin
    x <= a and b when (opcode = "000") else
        a or b when (opcode = "001") else
        a xor b when (opcode = "010") else
        std_logic_vector(unsigned(a) + unsigned(b)) when (opcode = "011") else
        std_logic_vector(unsigned(a) - unsigned(b)) when (opcode = "100") else
        "00000000000000000000000000000000";
  end process;

end ula;
