-- Testbench for the ALU component.
-- Version: 03.21.2016.

library ieee;
use ieee.std_logic_1164.all;

entity alu_tb is
  generic (
    n         : natural := 32;
    opc_bits  : natural := 4
  );
end alu_tb;

architecture alu_tb of alu_tb is

  signal s_a, s_b, s_x : std_logic_vector(n-1 downto 0);
  signal s_opcode : std_logic_vector(opc_bits-1 downto 0);

begin

  alu_0 : entity work.alu
  port map (
    a => s_a,
    b => s_b,
    opcode => s_opcode,
    x => s_x
  );

  process
  begin

    s_a <= "00000000000010000001110110011000"; -- 531864
    s_b <= "00000101101111111001101011100001"; -- 96443105
    s_opcode <= "0000";
    wait for 1 ns;

    s_a <= "00000000000010000001110110011000"; -- 531864
    s_b <= "00000101101111111001101011100001"; -- 96443105
    s_opcode <= "0001";
    wait for 1 ns;

    s_a <= "00000000000010000001110110011000"; -- 531864
    s_b <= "00000101101111111001101011100001"; -- 96443105
    s_opcode <= "0010";
    wait for 1 ns;

    s_a <= "00000000000010000001110110011000"; -- 531864
    s_b <= "00000101101111111001101011100001"; -- 96443105
    s_opcode <= "0011";
    wait for 1 ns;

    s_a <= "00000000000000000000000000010111"; -- 23
		s_b <= "00000000000000000000000000000001"; -- 1
    s_opcode <= "0100"; -- 23 shift left logical 1 = 46
		wait for 1 ns;

    s_a <= "00000000000000000000000000010111"; -- 23
		s_b <= "00000000000000000000000000000001"; -- 1
    s_opcode <= "0101"; -- 23 shift right logical 1 = 11
		wait for 1 ns;

    s_a <= "11111111111101111110001001101000"; -- -531864
    s_b <= "00000101101111111001101011100001"; -- 96443105
    s_opcode <= "0111";
    wait for 1 ns;

    s_a <= "00000000000010000001110110011000"; -- 531864
    s_b <= "00000101101111111001101011100001"; -- 96443105
    s_opcode <= "1000";
    wait for 1 ns;

    s_a <= "11111111111101111110001001101000"; -- -531864
    s_b <= "00000101101111111001101011100001"; -- -96443105
    s_opcode <= "1001";
    wait for 1 ns;

    s_a <= "00000101101111111001101011100001"; -- 96443105
    s_b <= "00000000000010000001110110011000"; -- 531864
    s_opcode <= "1010";
    wait for 1 ns;

    wait;
  end process;

end alu_tb;
