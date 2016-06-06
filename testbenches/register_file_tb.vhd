-- Testbench for the local register file.
-- Version: 06.06.2016.

library ieee;
use ieee.std_logic_1164.all;

entity register_file_tb is
  generic (
    DATA_WIDTH : natural := 32
  );
end register_file_tb;

architecture register_file_tb of register_file_tb is

  signal s_clk : std_logic := '0';

  signal s_input_reg1, s_input_reg2, s_input_reg3, s_input_reg4, s_input_reg5, s_input_reg6,
    s_input_reg7, s_input_reg8, s_input_reg9, s_input_reg10, s_input_reg11, s_input_reg12,
    s_input_reg13, s_input_reg14, s_input_reg15, s_input_reg16, s_input_reg17, s_input_reg18,
    s_input_reg19, s_input_reg20, s_input_reg21, s_input_reg22, s_input_reg23, s_input_reg24,
    s_input_reg25, s_input_reg26, s_input_reg27, s_input_reg28, s_input_reg29, s_input_reg30,
    s_input_reg31, s_input_reg32, s_input_reg33, s_input_reg34 : std_logic_vector(DATA_WIDTH-1 downto 0);

  signal s_write_reg1, s_write_reg2, s_write_reg3, s_write_reg4, s_write_reg5, s_write_reg6,
    s_write_reg7, s_write_reg8, s_write_reg9, s_write_reg10, s_write_reg11, s_write_reg12,
    s_write_reg13, s_write_reg14, s_write_reg15, s_write_reg16, s_write_reg17, s_write_reg18,
    s_write_reg19, s_write_reg20, s_write_reg21, s_write_reg22, s_write_reg23, s_write_reg24,
    s_write_reg25, s_write_reg26, s_write_reg27, s_write_reg28, s_write_reg29, s_write_reg30,
    s_write_reg31, s_write_reg32, s_write_reg33, s_write_reg34 : std_logic;

  signal s_read_reg1, s_read_reg2, s_read_reg3, s_read_reg4, s_read_reg5, s_read_reg6,
    s_read_reg7, s_read_reg8, s_read_reg9, s_read_reg10, s_read_reg11, s_read_reg12,
    s_read_reg13, s_read_reg14, s_read_reg15, s_read_reg16, s_read_reg17, s_read_reg18,
    s_read_reg19, s_read_reg20, s_read_reg21, s_read_reg22, s_read_reg23, s_read_reg24,
    s_read_reg25, s_read_reg26, s_read_reg27, s_read_reg28, s_read_reg29, s_read_reg30,
    s_read_reg31, s_read_reg32, s_read_reg33, s_read_reg34 : std_logic;

  signal s_output_reg1, s_output_reg2, s_output_reg3, s_output_reg4, s_output_reg5, s_output_reg6,
    s_output_reg7, s_output_reg8, s_output_reg9, s_output_reg10, s_output_reg11, s_output_reg12,
    s_output_reg13, s_output_reg14, s_output_reg15, s_output_reg16, s_output_reg17, s_output_reg18,
    s_output_reg19, s_output_reg20, s_output_reg21, s_output_reg22, s_output_reg23, s_output_reg24,
    s_output_reg25, s_output_reg26, s_output_reg27, s_output_reg28, s_output_reg29, s_output_reg30,
    s_output_reg31, s_output_reg32, s_output_reg33, s_output_reg34 : std_logic_vector(DATA_WIDTH-1 downto 0);

  constant num_cycles : integer := 30;

begin

  rf_0 : entity work.register_file
  port map (
    clk => s_clk,
    input_reg1 => s_input_reg1,
    input_reg2 => s_input_reg2,
    input_reg3 => s_input_reg3,
    input_reg4 => s_input_reg4,
    input_reg5 => s_input_reg5,
    input_reg6 => s_input_reg6,
    input_reg7 => s_input_reg7,
    input_reg8 => s_input_reg8,
    input_reg9 => s_input_reg9,
    input_reg10 => s_input_reg10,
    input_reg11 => s_input_reg11,
    input_reg12 => s_input_reg12,
    input_reg13 => s_input_reg13,
    input_reg14 => s_input_reg14,
    input_reg15 => s_input_reg15,
    input_reg16 => s_input_reg16,
    input_reg17 => s_input_reg17,
    input_reg18 => s_input_reg18,
    input_reg19 => s_input_reg19,
    input_reg20 => s_input_reg20,
    input_reg21 => s_input_reg21,
    input_reg22 => s_input_reg22,
    input_reg23 => s_input_reg23,
    input_reg24 => s_input_reg24,
    input_reg25 => s_input_reg25,
    input_reg26 => s_input_reg26,
    input_reg27 => s_input_reg27,
    input_reg28 => s_input_reg28,
    input_reg29 => s_input_reg29,
    input_reg30 => s_input_reg30,
    input_reg31 => s_input_reg31,
    input_reg32 => s_input_reg32,
    input_reg33 => s_input_reg33,
    input_reg34 => s_input_reg34,
    write_reg1 => s_write_reg1,
    write_reg2 => s_write_reg2,
    write_reg3 => s_write_reg3,
    write_reg4 => s_write_reg4,
    write_reg5 => s_write_reg5,
    write_reg6 => s_write_reg6,
    write_reg7 => s_write_reg7,
    write_reg8 => s_write_reg8,
    write_reg9 => s_write_reg9,
    write_reg10 => s_write_reg10,
    write_reg11 => s_write_reg11,
    write_reg12 => s_write_reg12,
    write_reg13 => s_write_reg13,
    write_reg14 => s_write_reg14,
    write_reg15 => s_write_reg15,
    write_reg16 => s_write_reg16,
    write_reg17 => s_write_reg17,
    write_reg18 => s_write_reg18,
    write_reg19 => s_write_reg19,
    write_reg20 => s_write_reg20,
    write_reg21 => s_write_reg21,
    write_reg22 => s_write_reg22,
    write_reg23 => s_write_reg23,
    write_reg24 => s_write_reg24,
    write_reg25 => s_write_reg25,
    write_reg26 => s_write_reg26,
    write_reg27 => s_write_reg27,
    write_reg28 => s_write_reg28,
    write_reg29 => s_write_reg29,
    write_reg30 => s_write_reg30,
    write_reg31 => s_write_reg31,
    write_reg32 => s_write_reg32,
    write_reg33 => s_write_reg33,
    write_reg34 => s_write_reg34,
    read_reg1 => s_read_reg1,
    read_reg2 => s_read_reg2,
    read_reg3 => s_read_reg3,
    read_reg4 => s_read_reg4,
    read_reg5 => s_read_reg5,
    read_reg6 => s_read_reg6,
    read_reg7 => s_read_reg7,
    read_reg8 => s_read_reg8,
    read_reg9 => s_read_reg9,
    read_reg10 => s_read_reg10,
    read_reg11 => s_read_reg11,
    read_reg12 => s_read_reg12,
    read_reg13 => s_read_reg13,
    read_reg14 => s_read_reg14,
    read_reg15 => s_read_reg15,
    read_reg16 => s_read_reg16,
    read_reg17 => s_read_reg17,
    read_reg18 => s_read_reg18,
    read_reg19 => s_read_reg19,
    read_reg20 => s_read_reg20,
    read_reg21 => s_read_reg21,
    read_reg22 => s_read_reg22,
    read_reg23 => s_read_reg23,
    read_reg24 => s_read_reg24,
    read_reg25 => s_read_reg25,
    read_reg26 => s_read_reg26,
    read_reg27 => s_read_reg27,
    read_reg28 => s_read_reg28,
    read_reg29 => s_read_reg29,
    read_reg30 => s_read_reg30,
    read_reg31 => s_read_reg31,
    read_reg32 => s_read_reg32,
    read_reg33 => s_read_reg33,
    read_reg34 => s_read_reg34,
    output_reg1 => s_output_reg1,
    output_reg2 => s_output_reg2,
    output_reg3 => s_output_reg3,
    output_reg4 => s_output_reg4,
    output_reg5 => s_output_reg5,
    output_reg6 => s_output_reg6,
    output_reg7 => s_output_reg7,
    output_reg8 => s_output_reg8,
    output_reg9 => s_output_reg9,
    output_reg10 => s_output_reg10,
    output_reg11 => s_output_reg11,
    output_reg12 => s_output_reg12,
    output_reg13 => s_output_reg13,
    output_reg14 => s_output_reg14,
    output_reg15 => s_output_reg15,
    output_reg16 => s_output_reg16,
    output_reg17 => s_output_reg17,
    output_reg18 => s_output_reg18,
    output_reg19 => s_output_reg19,
    output_reg20 => s_output_reg20,
    output_reg21 => s_output_reg21,
    output_reg22 => s_output_reg22,
    output_reg23 => s_output_reg23,
    output_reg24 => s_output_reg24,
    output_reg25 => s_output_reg25,
    output_reg26 => s_output_reg26,
    output_reg27 => s_output_reg27,
    output_reg28 => s_output_reg28,
    output_reg29 => s_output_reg29,
    output_reg30 => s_output_reg30,
    output_reg31 => s_output_reg31,
    output_reg32 => s_output_reg32,
    output_reg33 => s_output_reg33,
    output_reg34 => s_output_reg34
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

  write1 : process
  begin
    s_write_reg1 <= '1';
    wait for 40 ns;
    s_write_reg1 <= '0';
    wait for 40 ns;
    s_write_reg1 <= '1';
    wait for 40 ns;
    s_write_reg1 <= '0';
    wait for 40 ns;
    s_write_reg1 <= '1';
    wait for 40 ns;
    s_write_reg1 <= '0';
    wait for 40 ns;
    s_write_reg1 <= '1';
    wait for 40 ns;
    s_write_reg1 <= '0';
    wait;
  end process;

  read1 : process
  begin
    s_read_reg1 <= '0';
    wait for 40 ns;
    s_read_reg1 <= '1';
    wait for 40 ns;
    s_read_reg1 <= '0';
    wait for 40 ns;
    s_read_reg1 <= '1';
    wait for 40 ns;
    s_read_reg1 <= '0';
    wait for 40 ns;
    s_read_reg1 <= '1';
    wait for 80 ns;
    s_read_reg1 <= '0';
    --wait for 40 ns;
    --s_read_reg1 <= '1';
    wait;
  end process;

  write2 : process
  begin
    s_write_reg2 <= '1';
    wait for 40 ns;
    s_write_reg2 <= '0';
    wait for 40 ns;
    s_write_reg2 <= '1';
    wait for 40 ns;
    s_write_reg2 <= '0';
    wait for 40 ns;
    s_write_reg2 <= '1';
    wait for 40 ns;
    s_write_reg2 <= '0';
    wait for 40 ns;
    s_write_reg2 <= '1';
    wait for 40 ns;
    s_write_reg2 <= '0';
    wait;
  end process;

  read2 : process
  begin
    s_read_reg2 <= '0';
    wait for 40 ns;
    s_read_reg2 <= '1';
    wait for 40 ns;
    s_read_reg2 <= '0';
    wait for 40 ns;
    s_read_reg2 <= '1';
    wait for 40 ns;
    s_read_reg2 <= '0';
    wait for 40 ns;
    s_read_reg2 <= '1';
    wait for 80 ns;
    s_read_reg2 <= '0';
    --wait for 40 ns;
    --s_read_reg1 <= '1';
    wait;
  end process;

  rf : process
  begin
    s_input_reg1 <= "00100000000000000000000000000000";
    s_input_reg2 <= "00000000000000000000000000000000";
		wait for 50 ns;

    s_input_reg1 <= "00000000000000000000000000000010";
    s_input_reg2 <= "00000000000000000000000000000001";
		wait for 50 ns;

    s_input_reg1 <= "00010000000000000000000000000000";
    s_input_reg2 <= "00000000000000000000000000000010";
		wait for 50 ns;

    s_input_reg1 <= "00000000000000000000000000000100";
    s_input_reg2 <= "00000000000000000000000000000011";
		wait for 90 ns;

    s_input_reg1 <= "00000000000000000100000000000000";
    s_input_reg2 <= "00000000000000000000000000000100";
		wait for 50 ns;
		wait;
  end process;

end register_file_tb;
