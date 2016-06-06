-- Testbench for a basic unit component.
-- Version: 05.29.2016.

library ieee;
use ieee.std_logic_1164.all;

entity basic_unit_tb is
  generic (
    n         : natural := 32;
    opc_bits  : natural := 4
  );
end basic_unit_tb;

architecture basic_unit_tb of basic_unit_tb is

  signal s_input_ALU_1A : std_logic_vector(n-1 downto 0);
  signal s_input_ALU_1B : std_logic_vector(n-1 downto 0);
  signal s_input_ALU_2A : std_logic_vector(n-1 downto 0);
  signal s_input_ALU_2B : std_logic_vector(n-1 downto 0);
  signal s_input_ALU_3A : std_logic_vector(n-1 downto 0);
  signal s_input_ALU_3B : std_logic_vector(n-1 downto 0);
  signal s_opcode_ALU_1 : std_logic_vector(opc_bits-1 downto 0);
  signal s_opcode_ALU_2 : std_logic_vector(opc_bits-1 downto 0);
  signal s_opcode_ALU_3 : std_logic_vector(opc_bits-1 downto 0);
  signal s_output_ALU_1 : std_logic_vector(n-1 downto 0);
  signal s_output_ALU_2 : std_logic_vector(n-1 downto 0);
  signal s_output_ALU_3 : std_logic_vector(n-1 downto 0);
  signal s_zero_ALU_1 : std_logic;
  signal s_zero_ALU_2 : std_logic;
  signal s_zero_ALU_3 : std_logic;
  signal s_input_MUL_1A : std_logic_vector(n-1 downto 0);
  signal s_input_MUL_1B : std_logic_vector(n-1 downto 0);
  signal s_op_MUL_1 : std_logic;
  signal s_output_MUL_HI : std_logic_vector(n-1 downto 0);
  signal s_output_MUL_LO : std_logic_vector(n-1 downto 0);

  constant num_cycles : integer := 50;

begin

  basic_unit_0 : entity work.basic_unit
  port map (
    input_ALU_1A => s_input_ALU_1A,
    input_ALU_1B => s_input_ALU_1B,
    input_ALU_2A => s_input_ALU_2A,
    input_ALU_2B => s_input_ALU_2B,
    input_ALU_3A => s_input_ALU_3A,
    input_ALU_3B => s_input_ALU_3B,
    opcode_ALU_1 => s_opcode_ALU_1,
    opcode_ALU_2 => s_opcode_ALU_2,
    opcode_ALU_3 => s_opcode_ALU_3,
    output_ALU_1 => s_output_ALU_1,
    output_ALU_2 => s_output_ALU_2,
    output_ALU_3 => s_output_ALU_3,
    zero_ALU_1 => s_zero_ALU_1,
    zero_ALU_2 => s_zero_ALU_2,
    zero_ALU_3 => s_zero_ALU_3,
    input_MUL_1A => s_input_MUL_1A,
    input_MUL_1B => s_input_MUL_1B,
    op_MUL_1 => s_op_MUL_1,
    output_MUL_HI => s_output_MUL_HI,
    output_MUL_LO => s_output_MUL_LO
  );

  process
  begin

    s_input_ALU_1A <= "00000000000010000001110110011000"; -- 531864
    s_input_ALU_1B <= "00000101101111111001101011100001"; -- 96443105
    s_opcode_ALU_1 <= "1000";
    s_input_ALU_2A <= "11111111111101111110001001101000"; -- -531864
    s_input_ALU_2B <= "00000101101111111001101011100001"; -- -96443105
    s_opcode_ALU_2 <= "1001";
    s_input_ALU_3A <= "00000000000010000001110110011000"; -- 531864
    s_input_ALU_3B <= "00000101101111111001101011100001"; -- 96443105
    s_opcode_ALU_3 <= "1100";
    s_input_MUL_1A <= "00000000000010000100001111110111"; -- 541687
		s_input_MUL_1B <= "00000000000000000111110110010001"; -- 32145
    s_op_MUL_1 <= '1';
    wait for 200 ns;

    s_input_ALU_1A <= "00000000000000000000000000010111"; -- 23
    s_input_ALU_1B <= "00000000000000000000000000000001"; -- 1
    s_opcode_ALU_1 <= "0100";
    s_input_ALU_2A <= "00000000000000000000000000010111"; -- 23
    s_input_ALU_2B <= "00000000000000000000000000000001"; -- 1
    s_opcode_ALU_2 <= "0101";
    s_input_ALU_3A <= "00000101101111111001101011100001"; -- 96443105
    s_input_ALU_3B <= "00000000000010000001110110011000"; -- 531864
    s_opcode_ALU_3 <= "1000";
    s_input_MUL_1A <= "11111111111101111011110000001001"; -- -541687
		s_input_MUL_1B <= "11111111111111111000001001101111"; -- -32145
    s_op_MUL_1 <= '0';
    wait for 200 ns;

    wait;
  end process;

end basic_unit_tb;
