-- Testbench for a basic unit component.
-- Version: 07.06.2016.

library ieee;
use ieee.std_logic_1164.all;

entity basic_unit_tb is
  generic (
    DATA_WIDTH : natural := 32;
    ADDR_WIDTH : natural := 32;
    HALF_WIDTH : natural := 16;
    OPCD_WIDTH : natural := 4
  );
end basic_unit_tb;

architecture basic_unit_tb of basic_unit_tb is

  signal s_input_ALU_1A : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_input_ALU_1B : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_input_ALU_2A : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_input_ALU_2B : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_input_ALU_3A : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_input_ALU_3B : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_opcode_ALU_1 : std_logic_vector(OPCD_WIDTH-1 downto 0);
  signal s_opcode_ALU_2 : std_logic_vector(OPCD_WIDTH-1 downto 0);
  signal s_opcode_ALU_3 : std_logic_vector(OPCD_WIDTH-1 downto 0);
  signal s_output_ALU_1 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_output_ALU_2 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_output_ALU_3 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_zero_ALU_1 : std_logic;
  signal s_zero_ALU_2 : std_logic;
  signal s_zero_ALU_3 : std_logic;
  signal s_input_MUL_1A : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_input_MUL_1B : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_op_MUL_1 : std_logic;
  signal s_output_MUL_HI : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_output_MUL_LO : std_logic_vector(DATA_WIDTH-1 downto 0);

  signal s_mem_addr_LS1 : std_logic_vector(ADDR_WIDTH-1 downto 0);

  signal s_opcode_LS1 : std_logic_vector(OPCD_WIDTH-1 downto 0);

  signal s_offset_LS1 : std_logic_vector(HALF_WIDTH-1 downto 0);

  signal s_rf_data_LS1, s_wrdata_LS1, s_rddata_LS1, s_mem_rddata_LS1,
    s_mem_wrdata_LS1 : std_logic_vector(DATA_WIDTH-1 downto 0);

  signal s_clk : std_logic := '0';
  signal s_rst_LS1 : std_logic := '0';
  signal s_enable_read_LS1, s_enable_write_LS1, s_rf_wr_LS1, s_mem_rd_LS1, s_mem_wr_LS1 : std_logic;

  constant num_cycles : integer := 50;

begin

  basic_unit_0 : entity work.basic_unit
  port map (
    clk => s_clk,
    rst_LS1 => s_rst_LS1,
    enable_read_LS1 => s_enable_read_LS1,
    enable_write_LS1 => s_enable_write_LS1,
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
    output_MUL_LO => s_output_MUL_LO,
    mem_addr_LS1 => s_mem_addr_LS1,
    opcode_LS1 => s_opcode_LS1,
    offset_LS1 => s_offset_LS1,
    rf_data_LS1 => s_rf_data_LS1,
    wrdata_LS1 => s_wrdata_LS1,
    rddata_LS1 => s_rddata_LS1,
    mem_rddata_LS1 => s_mem_rddata_LS1,
    mem_wrdata_LS1 => s_mem_wrdata_LS1,
    rf_wr_LS1 => s_rf_wr_LS1,
    mem_rd_LS1 => s_mem_rd_LS1,
    mem_wr_LS1 => s_mem_wr_LS1
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

  write_LS1 : process
  begin
    s_enable_write_LS1 <= '0';
    wait for 80 ns;
    s_enable_write_LS1 <= '1';
    wait for 40 ns;
    s_enable_write_LS1 <= '0';
    wait for 80 ns;
    s_enable_write_LS1 <= '1';
    wait;
  end process;

  read_LS1 : process
  begin
    s_enable_read_LS1 <= '1';
    wait for 80 ns;
    s_enable_read_LS1 <= '0';
    wait for 40 ns;
    s_enable_read_LS1 <= '1';
    wait for 80 ns;
    s_enable_read_LS1 <= '0';
    wait;
  end process;

  test_LS1 : process
  begin
    s_rf_data_LS1 <= "00100000000000000000000000000000";
    s_offset_LS1 <= "0000000000001000";
    s_mem_rddata_LS1 <= "00000000000000000000000000000111";
    s_opcode_LS1 <= "0000"; -- lw
		wait for 10 ns;
    s_rf_data_LS1 <= "00100000000000000000000000000000";
    s_offset_LS1 <= "0000000000001000";
    s_mem_rddata_LS1 <= "00000000000000000000000000000011";
    s_opcode_LS1 <= "0001"; -- lh (signed)
		wait for 10 ns;
    s_rf_data_LS1 <= "00100000000000000000000000000000";
    s_offset_LS1 <= "0000000000001000";
    s_mem_rddata_LS1 <= "00000000000000001000000000000011";
    s_opcode_LS1 <= "0001"; -- lh (signed)
		wait for 10 ns;
    s_rf_data_LS1 <= "00100000000000000000000000000000";
    s_offset_LS1 <= "0000000000001000";
    s_mem_rddata_LS1 <= "00000000000000001000000000000011";
    s_opcode_LS1 <= "0010"; -- lhu (unsigned)
		wait for 10 ns;
    s_rf_data_LS1 <= "00100000000000000000000000000000";
    s_offset_LS1 <= "0000000000001000";
    s_mem_rddata_LS1 <= "00000000000000000000000000000011";
    s_opcode_LS1 <= "0011"; -- lb (signed)
		wait for 10 ns;
    s_rf_data_LS1 <= "00100000000000000000000000000000";
    s_offset_LS1 <= "0000000000001000";
    s_mem_rddata_LS1 <= "00000000000000000000000010000011";
    s_opcode_LS1 <= "0011"; -- lb (signed)
		wait for 10 ns;
    s_rf_data_LS1 <= "00100000000000000000000000000000";
    s_offset_LS1 <= "0000000000001000";
    s_mem_rddata_LS1 <= "00000000000000000000000010000011";
    s_opcode_LS1 <= "0100"; -- lbu (unsigned)
		wait for 20 ns;

    s_rf_data_LS1 <= "00000000100000000000000000000000";
    s_offset_LS1 <= "0000000000000010";
    s_wrdata_LS1 <= "01000000000000000000000000000111";
    s_opcode_LS1 <= "0101"; -- sw
    wait for 10 ns;
    s_rf_data_LS1 <= "00000000100000000000000000000000";
    s_offset_LS1 <= "0000000000000010";
    s_wrdata_LS1 <= "00000000000000011000000000000111";
    s_opcode_LS1 <= "0110"; -- sh
    wait for 10 ns;
    s_rf_data_LS1 <= "00000000100000000000000000000000";
    s_offset_LS1 <= "0000000000000010";
    s_wrdata_LS1 <= "00000000000000000000000110000111";
    s_opcode_LS1 <= "0111"; -- sb
    wait for 10 ns;

    s_rst_LS1 <= '1';
		wait;
  end process;

end basic_unit_tb;
