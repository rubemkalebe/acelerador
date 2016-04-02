-- A basic unit contains 3 ALUs, 1 multiplier and 1 load/store.
-- Version: 04.01.2016.

library ieee;
use ieee.std_logic_1164.all;

entity basic_unit is
  generic (
    n : natural := 32;
    opc_bits  : natural := 4
  );

  port (
    input_ALU_1A : in std_logic_vector(n-1 downto 0);
    input_ALU_1B : in std_logic_vector(n-1 downto 0);
    input_ALU_2A : in std_logic_vector(n-1 downto 0);
    input_ALU_2B : in std_logic_vector(n-1 downto 0);
    input_ALU_3A : in std_logic_vector(n-1 downto 0);
    input_ALU_3B : in std_logic_vector(n-1 downto 0);
    opcode_ALU_1 : in std_logic_vector(opc_bits-1 downto 0);
    opcode_ALU_2 : in std_logic_vector(opc_bits-1 downto 0);
    opcode_ALU_3 : in std_logic_vector(opc_bits-1 downto 0);

    output_ALU_1 : out std_logic_vector(n-1 downto 0);
    output_ALU_2 : out std_logic_vector(n-1 downto 0);
    output_ALU_3 : out std_logic_vector(n-1 downto 0);
    zero_ALU_1 : out std_logic;
    zero_ALU_2 : out std_logic;
    zero_ALU_3 : out std_logic;

    input_MUL_1A : in std_logic_vector(n-1 downto 0);
    input_MUL_1B : in std_logic_vector(n-1 downto 0);
    op_MUL_1 : in std_logic;

    output_MUL_1 : out std_logic_vector(2*n-1 downto 0)
  );

end basic_unit;

architecture basic_unit of basic_unit is

component alu is
  generic (
    n         : natural := 32;
    opc_bits  : natural := 4
  );

  port (
    a       : in std_logic_vector(n-1 downto 0);
    b       : in std_logic_vector(n-1 downto 0);
    opcode  : in std_logic_vector(opc_bits-1 downto 0);
    zero    : out std_logic;
    x       : out std_logic_vector(n-1 downto 0)
  );
end component;

component multiplier is
  generic (
    n : natural := 32
  );

  port (
    a     : in std_logic_vector(n-1 downto 0);
    b     : in std_logic_vector(n-1 downto 0);
    op    : in std_logic;
    x     : out std_logic_vector(2*n-1 downto 0)
  );
end component;

begin

  alu1 : alu port map(input_ALU_1A, input_ALU_1B, opcode_ALU_1, zero_ALU_1, output_ALU_1);
  alu2 : alu port map(input_ALU_2A, input_ALU_2B, opcode_ALU_2, zero_ALU_2, output_ALU_2);
  alu3 : alu port map(input_ALU_3A, input_ALU_3B, opcode_ALU_3, zero_ALU_3, output_ALU_3);
  mul1 : multiplier port map(input_MUL_1A, input_MUL_1B, op_MUL_1, output_MUL_1);

end basic_unit;
