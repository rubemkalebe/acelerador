-- A basic unit contains 3 ALUs, 1 multiplier and 1 load/store.
-- Version: 04.05.2016.

library ieee;
use ieee.std_logic_1164.all;

entity basic_unit is
  generic (
    n : natural := 32;
    opc_bits  : natural := 4
  );

  port (
    clk : in std_logic;
    enable_read  : in std_logic;
    enable_write : in std_logic;

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

component reg is
  generic (
    n : natural := 32
  );

  port (
      clk : in std_logic;
      enable_read : in std_logic;
      enable_write : in std_logic;
      reg_input : in std_logic_vector(n-1 downto 0);
      reg_output : out std_logic_vector(n-1 downto 0)
  );
end component;

component reg_64 is
  generic (
    n : natural := 64
  );

  port (
      clk : in std_logic;
      enable_read : in std_logic;
      enable_write : in std_logic;
      reg_input : in std_logic_vector(n-1 downto 0);
      reg_output : out std_logic_vector(n-1 downto 0)
  );
end component;

  signal r1_out, r2_out, r3_out : std_logic_vector(n-1 downto 0);
  signal r4_out : std_logic_vector(2*n-1 downto 0);

  signal s_output_ALU_1, s_output_ALU_2, s_output_ALU_3 : std_logic_vector(n-1 downto 0);
  signal s_output_MUL_1 : std_logic_vector(2*n-1 downto 0);

begin

  alu1 : alu port map(input_ALU_1A, input_ALU_1B, opcode_ALU_1, zero_ALU_1, s_output_ALU_1);
  alu2 : alu port map(input_ALU_2A, input_ALU_2B, opcode_ALU_2, zero_ALU_2, s_output_ALU_2);
  alu3 : alu port map(input_ALU_3A, input_ALU_3B, opcode_ALU_3, zero_ALU_3, s_output_ALU_3);
  mul1 : multiplier port map(input_MUL_1A, input_MUL_1B, op_MUL_1, s_output_MUL_1);

  re1 : reg port map(clk, enable_read, enable_write, s_output_ALU_1, r1_out);
  re2 : reg port map(clk, enable_read, enable_write, s_output_ALU_2, r2_out);
  re3 : reg port map(clk, enable_read, enable_write, s_output_ALU_3, r3_out);
  re4 : reg_64 port map(clk, enable_read, enable_write, s_output_MUL_1, r4_out);

  output_ALU_1 <= s_output_ALU_1;
  output_ALU_2 <= s_output_ALU_2;
  output_ALU_3 <= s_output_ALU_3;
  output_MUL_1 <= s_output_MUL_1;

end basic_unit;
