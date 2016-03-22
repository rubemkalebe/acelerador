-- A 32-bit ALU. Uses features from the standard library.
-- Uses 4 bits for operations: and, or, xor, nor, sll, sla, sra, add, addu, sub, subu.
-- Version: 03.21.2016.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu is
  generic (
    n         : natural := 32;
    opc_bits  : natural := 4
  );

  port (
    a       : in std_logic_vector(n-1 downto 0);
    b       : in std_logic_vector(n-1 downto 0);
    opcode  : in std_logic_vector(opc_bits-1 downto 0);
    x       : out std_logic_vector(n-1 downto 0)
  );
end alu;

architecture alu of alu is

begin

  x <= a and b when (opcode = "0000") else
      a or b when (opcode = "0001") else
      a xor b when (opcode = "0010") else
      a nor b when (opcode = "0011") else
      std_logic_vector(unsigned(a) sll to_integer(unsigned(b))) when (opcode = "0100") else -- shift left logical
      std_logic_vector(unsigned(a) srl to_integer(unsigned(b))) when (opcode = "0101") else -- shift right logical
      std_logic_vector(shift_right(signed(a), to_integer(unsigned(b)))) when (opcode = "0110") else -- shift right arithmetic
      std_logic_vector(signed(a) + signed(b)) when (opcode = "0111") else
      std_logic_vector(unsigned(a) + unsigned(b)) when (opcode = "1000") else
      std_logic_vector(signed(a) - signed(b)) when (opcode = "1001") else
      std_logic_vector(unsigned(a) - unsigned(b)) when (opcode = "1010") else
      "00000000000000000000000000000000";

end alu;
