-- Testbench for a cluster component.
-- Version: 07.12.2016.

library ieee;
use ieee.std_logic_1164.all;

entity cluster_tb is
  generic (
    DATA_WIDTH : natural := 32;
    ADDR_WIDTH : natural := 32;
    INST_WIDTH : natural := 36
  );
end cluster_tb;

architecture cluster_tb of cluster_tb is

  signal s_clk : std_logic := '0';
  signal s_enable_read : std_logic := '0';
  signal s_enable_write : std_logic := '0';

  signal s_input_reg1 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_input_reg2 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_input_reg3 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_input_reg4 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_input_reg5 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_input_reg6 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_input_reg7 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_input_reg8 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_input_reg9 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_input_reg10 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_input_reg11 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_input_reg12 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_input_reg13 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_input_reg14 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_input_reg15 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_input_reg16 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_input_reg17 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_input_reg18 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_input_reg19 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_input_reg20 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_input_reg21 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_input_reg22 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_input_reg23 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_input_reg24 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_input_reg25 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_input_reg26 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_input_reg27 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_input_reg28 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_input_reg29 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_input_reg30 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_input_reg31 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_input_reg32 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_input_reg33 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_input_reg34 : std_logic_vector(DATA_WIDTH-1 downto 0);

  signal s_write_reg1 : std_logic;
  signal s_write_reg2 : std_logic;
  signal s_write_reg3 : std_logic;
  signal s_write_reg4 : std_logic;
  signal s_write_reg5 : std_logic;
  signal s_write_reg6 : std_logic;
  signal s_write_reg7 : std_logic;
  signal s_write_reg8 : std_logic;
  signal s_write_reg9 : std_logic;
  signal s_write_reg10 : std_logic;
  signal s_write_reg11 : std_logic;
  signal s_write_reg12 : std_logic;
  signal s_write_reg13 : std_logic;
  signal s_write_reg14 : std_logic;
  signal s_write_reg15 : std_logic;
  signal s_write_reg16 : std_logic;
  signal s_write_reg17 : std_logic;
  signal s_write_reg18 : std_logic;
  signal s_write_reg19 : std_logic;
  signal s_write_reg20 : std_logic;
  signal s_write_reg21 : std_logic;
  signal s_write_reg22 : std_logic;
  signal s_write_reg23 : std_logic;
  signal s_write_reg24 : std_logic;
  signal s_write_reg25 : std_logic;
  signal s_write_reg26 : std_logic;
  signal s_write_reg27 : std_logic;
  signal s_write_reg28 : std_logic;
  signal s_write_reg29 : std_logic;
  signal s_write_reg30 : std_logic;
  signal s_write_reg31 : std_logic;
  signal s_write_reg32 : std_logic;
  signal s_write_reg33 : std_logic;
  signal s_write_reg34 : std_logic;

  signal s_read_reg1 : std_logic;
  signal s_read_reg2 : std_logic;
  signal s_read_reg3 : std_logic;
  signal s_read_reg4 : std_logic;
  signal s_read_reg5 : std_logic;
  signal s_read_reg6 : std_logic;
  signal s_read_reg7 : std_logic;
  signal s_read_reg8 : std_logic;
  signal s_read_reg9 : std_logic;
  signal s_read_reg10 : std_logic;
  signal s_read_reg11 : std_logic;
  signal s_read_reg12 : std_logic;
  signal s_read_reg13 : std_logic;
  signal s_read_reg14 : std_logic;
  signal s_read_reg15 : std_logic;
  signal s_read_reg16 : std_logic;
  signal s_read_reg17 : std_logic;
  signal s_read_reg18 : std_logic;
  signal s_read_reg19 : std_logic;
  signal s_read_reg20 : std_logic;
  signal s_read_reg21 : std_logic;
  signal s_read_reg22 : std_logic;
  signal s_read_reg23 : std_logic;
  signal s_read_reg24 : std_logic;
  signal s_read_reg25 : std_logic;
  signal s_read_reg26 : std_logic;
  signal s_read_reg27 : std_logic;
  signal s_read_reg28 : std_logic;
  signal s_read_reg29 : std_logic;
  signal s_read_reg30 : std_logic;
  signal s_read_reg31 : std_logic;
  signal s_read_reg32 : std_logic;
  signal s_read_reg33 : std_logic;
  signal s_read_reg34 : std_logic;

  signal s_inst5_rst : std_logic; -- reset for load_store
  signal s_inst5_enable_read : std_logic; -- for load store
  signal s_inst5_enable_write : std_logic; -- for load store

  signal s_inst10_rst : std_logic; -- reset for load_store
  signal s_inst10_enable_read : std_logic; -- for load store
  signal s_inst10_enable_write : std_logic; -- for load store

  signal s_inst15_rst : std_logic; -- reset for load_store
  signal s_inst15_enable_read : std_logic; -- for load store
  signal s_inst15_enable_write : std_logic; -- for load store

  signal s_instruction1 : std_logic_vector(INST_WIDTH-1 downto 0);
  signal s_instruction2 : std_logic_vector(INST_WIDTH-1 downto 0);
  signal s_instruction3 : std_logic_vector(INST_WIDTH-1 downto 0);
  signal s_instruction4 : std_logic_vector(INST_WIDTH-1 downto 0);
  signal s_instruction5 : std_logic_vector(INST_WIDTH-1 downto 0);
  signal s_instruction6 : std_logic_vector(INST_WIDTH-1 downto 0);
  signal s_instruction7 : std_logic_vector(INST_WIDTH-1 downto 0);
  signal s_instruction8 : std_logic_vector(INST_WIDTH-1 downto 0);
  signal s_instruction9 : std_logic_vector(INST_WIDTH-1 downto 0);
  signal s_instruction10 : std_logic_vector(INST_WIDTH-1 downto 0);
  signal s_instruction11 : std_logic_vector(INST_WIDTH-1 downto 0);
  signal s_instruction12 : std_logic_vector(INST_WIDTH-1 downto 0);
  signal s_instruction13 : std_logic_vector(INST_WIDTH-1 downto 0);
  signal s_instruction14 : std_logic_vector(INST_WIDTH-1 downto 0);
  signal s_instruction15 : std_logic_vector(INST_WIDTH-1 downto 0);

  constant num_cycles : integer := 60;

begin

  cluster_0 : entity work.cluster
  port map (
    clk => s_clk,
    enable_write => s_enable_write,
    enable_read => s_enable_read,

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

    inst5_rst => s_inst5_rst,
    inst5_enable_read => s_inst5_enable_read,
    inst5_enable_write => s_inst5_enable_write,

    inst10_rst => s_inst10_rst,
    inst10_enable_read => s_inst10_enable_read,
    inst10_enable_write => s_inst10_enable_write,

    inst15_rst => s_inst15_rst,
    inst15_enable_read => s_inst15_enable_read,
    inst15_enable_write => s_inst15_enable_write,

    instruction1 => s_instruction1,
    instruction2 => s_instruction2,
    instruction3 => s_instruction3,
    instruction4 => s_instruction4,
    instruction5 => s_instruction5,
    instruction6 => s_instruction6,
    instruction7 => s_instruction7,
    instruction8 => s_instruction8,
    instruction9 => s_instruction9,
    instruction10 => s_instruction10,
    instruction11 => s_instruction11,
    instruction12 => s_instruction12,
    instruction13 => s_instruction13,
    instruction14 => s_instruction14,
    instruction15 => s_instruction15
  );

  clock : process
	begin
    for i in 1 to num_cycles loop
        s_clk <= not s_clk;
        wait for 0.5 ns;
        s_clk <= not s_clk;
        wait for 0.5 ns;
        -- clock period = 1 ns
      end loop;
      wait;
	end process;

  write : process
	begin
		s_enable_write <= '1';
    s_enable_read <= '0';
		wait for 10 ns;
    s_enable_write <= '0';
    s_enable_read <= '1';
    wait for 10 ns;
    s_enable_write <= '1';
    s_enable_read <= '0';
    -- wait for 10 ns;
    -- s_enable_write <= '1';
    -- s_enable_read <= '0';
		-- wait for 10 ns;
    -- s_enable_write <= '0';
    -- s_enable_read <= '1';
    -- wait for 10 ns;
    -- s_enable_write <= '1';
    -- s_enable_read <= '0';
		-- wait for 50 ns;
    wait;
	end process;

  rf_write : process
	begin
		s_write_reg1 <= '1';
    s_write_reg2 <= '1';
    s_write_reg3 <= '1';
    s_write_reg4 <= '1';
    s_write_reg5 <= '1';
    s_write_reg6 <= '1';
    s_write_reg7 <= '1';
    s_write_reg8 <= '1';
    s_write_reg9 <= '1';
    s_write_reg10 <= '1';
    s_write_reg11 <= '1';
    s_write_reg12 <= '1';
    s_write_reg13 <= '1';
    s_write_reg14 <= '1';
    s_write_reg15 <= '1';
    s_write_reg16 <= '1';
    s_write_reg17 <= '1';
    s_write_reg18 <= '1';
    s_write_reg19 <= '1';
    s_write_reg20 <= '1';
    s_write_reg21 <= '1';
    s_write_reg22 <= '1';
    s_write_reg23 <= '1';
    s_write_reg24 <= '1';
    s_write_reg25 <= '1';
    s_write_reg26 <= '1';
    s_write_reg27 <= '1';
    s_write_reg28 <= '1';
    s_write_reg29 <= '1';
    s_write_reg30 <= '1';
    s_write_reg31 <= '1';
    s_write_reg32 <= '1';
    s_write_reg33 <= '1';
    s_write_reg34 <= '1';
		wait for 10 ns;

    s_write_reg1 <= '0';
    s_write_reg2 <= '0';
    s_write_reg3 <= '0';
    s_write_reg4 <= '0';
    s_write_reg5 <= '0';
    s_write_reg6 <= '0';
    s_write_reg7 <= '0';
    s_write_reg8 <= '0';
    s_write_reg9 <= '0';
    s_write_reg10 <= '0';
    s_write_reg11 <= '0';
    s_write_reg12 <= '0';
    s_write_reg13 <= '0';
    s_write_reg14 <= '0';
    s_write_reg15 <= '0';
    s_write_reg16 <= '0';
    s_write_reg17 <= '0';
    s_write_reg18 <= '0';
    s_write_reg19 <= '0';
    s_write_reg20 <= '0';
    s_write_reg21 <= '0';
    s_write_reg22 <= '0';
    s_write_reg23 <= '0';
    s_write_reg24 <= '0';
    s_write_reg25 <= '0';
    s_write_reg26 <= '0';
    s_write_reg27 <= '0';
    s_write_reg28 <= '0';
    s_write_reg29 <= '0';
    s_write_reg30 <= '0';
    s_write_reg31 <= '0';
    s_write_reg32 <= '0';
    s_write_reg33 <= '0';
    s_write_reg34 <= '0';
    wait for 10 ns;

    s_write_reg1 <= '1';
    s_write_reg2 <= '1';
    s_write_reg3 <= '1';
    s_write_reg4 <= '1';
    s_write_reg5 <= '1';
    s_write_reg6 <= '1';
    s_write_reg7 <= '1';
    s_write_reg8 <= '1';
    s_write_reg9 <= '1';
    s_write_reg10 <= '1';
    s_write_reg11 <= '1';
    s_write_reg12 <= '1';
    s_write_reg13 <= '1';
    s_write_reg14 <= '1';
    s_write_reg15 <= '1';
    s_write_reg16 <= '1';
    s_write_reg17 <= '1';
    s_write_reg18 <= '1';
    s_write_reg19 <= '1';
    s_write_reg20 <= '1';
    s_write_reg21 <= '1';
    s_write_reg22 <= '1';
    s_write_reg23 <= '1';
    s_write_reg24 <= '1';
    s_write_reg25 <= '1';
    s_write_reg26 <= '1';
    s_write_reg27 <= '1';
    s_write_reg28 <= '1';
    s_write_reg29 <= '1';
    s_write_reg30 <= '1';
    s_write_reg31 <= '1';
    s_write_reg32 <= '1';
    s_write_reg33 <= '1';
    s_write_reg34 <= '1';
		wait for 10 ns;

    s_write_reg1 <= '0';
    s_write_reg2 <= '0';
    s_write_reg3 <= '0';
    s_write_reg4 <= '0';
    s_write_reg5 <= '0';
    s_write_reg6 <= '0';
    s_write_reg7 <= '0';
    s_write_reg8 <= '0';
    s_write_reg9 <= '0';
    s_write_reg10 <= '0';
    s_write_reg11 <= '0';
    s_write_reg12 <= '0';
    s_write_reg13 <= '0';
    s_write_reg14 <= '0';
    s_write_reg15 <= '0';
    s_write_reg16 <= '0';
    s_write_reg17 <= '0';
    s_write_reg18 <= '0';
    s_write_reg19 <= '0';
    s_write_reg20 <= '0';
    s_write_reg21 <= '0';
    s_write_reg22 <= '0';
    s_write_reg23 <= '0';
    s_write_reg24 <= '0';
    s_write_reg25 <= '0';
    s_write_reg26 <= '0';
    s_write_reg27 <= '0';
    s_write_reg28 <= '0';
    s_write_reg29 <= '0';
    s_write_reg30 <= '0';
    s_write_reg31 <= '0';
    s_write_reg32 <= '0';
    s_write_reg33 <= '0';
    s_write_reg34 <= '0';

    wait;
	end process;

  rf_read : process
	begin
		s_read_reg1 <= '0';
    s_read_reg2 <= '0';
    s_read_reg3 <= '0';
    s_read_reg4 <= '0';
    s_read_reg5 <= '0';
    s_read_reg6 <= '0';
    s_read_reg7 <= '0';
    s_read_reg8 <= '0';
    s_read_reg9 <= '0';
    s_read_reg10 <= '0';
    s_read_reg11 <= '0';
    s_read_reg12 <= '0';
    s_read_reg13 <= '0';
    s_read_reg14 <= '0';
    s_read_reg15 <= '0';
    s_read_reg16 <= '0';
    s_read_reg17 <= '0';
    s_read_reg18 <= '0';
    s_read_reg19 <= '0';
    s_read_reg20 <= '0';
    s_read_reg21 <= '0';
    s_read_reg22 <= '0';
    s_read_reg23 <= '0';
    s_read_reg24 <= '0';
    s_read_reg25 <= '0';
    s_read_reg26 <= '0';
    s_read_reg27 <= '0';
    s_read_reg28 <= '0';
    s_read_reg29 <= '0';
    s_read_reg30 <= '0';
    s_read_reg31 <= '0';
    s_read_reg32 <= '0';
    s_read_reg33 <= '0';
    s_read_reg34 <= '0';
		wait for 10 ns;

    s_read_reg1 <= '1';
    s_read_reg2 <= '1';
    s_read_reg3 <= '1';
    s_read_reg4 <= '1';
    s_read_reg5 <= '1';
    s_read_reg6 <= '1';
    s_read_reg7 <= '1';
    s_read_reg8 <= '1';
    s_read_reg9 <= '1';
    s_read_reg10 <= '1';
    s_read_reg11 <= '1';
    s_read_reg12 <= '1';
    s_read_reg13 <= '1';
    s_read_reg14 <= '1';
    s_read_reg15 <= '1';
    s_read_reg16 <= '1';
    s_read_reg17 <= '1';
    s_read_reg18 <= '1';
    s_read_reg19 <= '1';
    s_read_reg20 <= '1';
    s_read_reg21 <= '1';
    s_read_reg22 <= '1';
    s_read_reg23 <= '1';
    s_read_reg24 <= '1';
    s_read_reg25 <= '1';
    s_read_reg26 <= '1';
    s_read_reg27 <= '1';
    s_read_reg28 <= '1';
    s_read_reg29 <= '1';
    s_read_reg30 <= '1';
    s_read_reg31 <= '1';
    s_read_reg32 <= '1';
    s_read_reg33 <= '1';
    s_read_reg34 <= '1';
    wait for 10 ns;

    s_read_reg1 <= '0';
    s_read_reg2 <= '0';
    s_read_reg3 <= '0';
    s_read_reg4 <= '0';
    s_read_reg5 <= '0';
    s_read_reg6 <= '0';
    s_read_reg7 <= '0';
    s_read_reg8 <= '0';
    s_read_reg9 <= '0';
    s_read_reg10 <= '0';
    s_read_reg11 <= '0';
    s_read_reg12 <= '0';
    s_read_reg13 <= '0';
    s_read_reg14 <= '0';
    s_read_reg15 <= '0';
    s_read_reg16 <= '0';
    s_read_reg17 <= '0';
    s_read_reg18 <= '0';
    s_read_reg19 <= '0';
    s_read_reg20 <= '0';
    s_read_reg21 <= '0';
    s_read_reg22 <= '0';
    s_read_reg23 <= '0';
    s_read_reg24 <= '0';
    s_read_reg25 <= '0';
    s_read_reg26 <= '0';
    s_read_reg27 <= '0';
    s_read_reg28 <= '0';
    s_read_reg29 <= '0';
    s_read_reg30 <= '0';
    s_read_reg31 <= '0';
    s_read_reg32 <= '0';
    s_read_reg33 <= '0';
    s_read_reg34 <= '0';
		wait for 10 ns;

    s_read_reg1 <= '1';
    s_read_reg2 <= '1';
    s_read_reg3 <= '1';
    s_read_reg4 <= '1';
    s_read_reg5 <= '1';
    s_read_reg6 <= '1';
    s_read_reg7 <= '1';
    s_read_reg8 <= '1';
    s_read_reg9 <= '1';
    s_read_reg10 <= '1';
    s_read_reg11 <= '1';
    s_read_reg12 <= '1';
    s_read_reg13 <= '1';
    s_read_reg14 <= '1';
    s_read_reg15 <= '1';
    s_read_reg16 <= '1';
    s_read_reg17 <= '1';
    s_read_reg18 <= '1';
    s_read_reg19 <= '1';
    s_read_reg20 <= '1';
    s_read_reg21 <= '1';
    s_read_reg22 <= '1';
    s_read_reg23 <= '1';
    s_read_reg24 <= '1';
    s_read_reg25 <= '1';
    s_read_reg26 <= '1';
    s_read_reg27 <= '1';
    s_read_reg28 <= '1';
    s_read_reg29 <= '1';
    s_read_reg30 <= '1';
    s_read_reg31 <= '1';
    s_read_reg32 <= '1';
    s_read_reg33 <= '1';
    s_read_reg34 <= '1';
    wait;
	end process;

  init_rf1 : process
  begin
    s_input_reg1     <= "00000000000000000000000000000001";
    s_input_reg2     <= "00000000000000000000000000000010";
    s_input_reg3     <= "00000000000000000000000000000011";
    s_input_reg4     <= "00000000000000000000000000000100";
    s_input_reg5     <= "00000000000000000000000000000101";
    s_input_reg6     <= "00000000000000000000000000000110";
    s_input_reg7     <= "00000000000000000000000000000111";
    s_input_reg8     <= "00000000000000000000000000001000";
    s_input_reg9     <= "00000000000000000000000000001001";
    s_input_reg10    <= "00000000000000000000000000001010";
    s_input_reg11    <= "00000000000000000000000000001011";
    s_input_reg12    <= "00000000000000000000000000001100";
    s_input_reg13    <= "00000000000000000000000000001101";
    s_input_reg14    <= "00000000000000000000000000001110";
    s_input_reg15    <= "00000000000000000000000000001111";
    s_input_reg16    <= "00000000000000000000000000010000";
    s_input_reg17    <= "00000000000000000000000000010001";
    s_input_reg18    <= "00000000000000000000000000010010";
    s_input_reg19    <= "00000000000000000000000000010011";
    s_input_reg20    <= "00000000000000000000000000010100";
    s_input_reg21    <= "00000000000000000000000000010101";
    s_input_reg22    <= "00000000000000000000000000010110";
    s_input_reg23    <= "00000000000000000000000000010111";
    s_input_reg24    <= "00000000000000000000000000011000";
    s_input_reg25    <= "00000000000000000000000000011001";
    s_input_reg26    <= "00000000000000000000000000011010";
    s_input_reg27    <= "00000000000000000000000000011011";
    s_input_reg28    <= "00000000000000000000000000011100";
    s_input_reg29    <= "00000000000000000000000000011101";
    s_input_reg30    <= "00000000000000000000000000011110";
    s_input_reg31    <= "00000000000000000000000000011111";
    s_input_reg32    <= "00000000000000000000000000100000";
    s_input_reg33    <= "00000000000000000000000000100001";
    s_input_reg34    <= "00000000000000000000000000100010";

                     -- RRIopcdOPER3DOPER1Soper2tOPER3Dshamt
    s_instruction1  <= "110100001010000010000011100000000000";
    s_instruction2  <= "100100001010100011000111100000000000";
    s_instruction3  <= "000100001011000100000000100000000000";
    s_instruction4  <= "110000101111000100000000101111100000";
    -- s_instruction1  <= "000000010000000010000011100000000000";
    -- s_instruction2  <= "001000101000000010000011100000000000";
    -- s_instruction3  <= "000100000010001000000011100000000000";
    -- s_instruction4  <= "000000010000000010000011100000000000";
    -- s_instruction5  <= "000000010000000010000011100000000000";
    -- s_instruction6  <= "000000010000000010000011100000000000";
    -- s_instruction7  <= "000000010000000010000011100000000000";
    -- s_instruction8  <= "000000010000000010000011100000000000";
    -- s_instruction9  <= "000000010000000010000011100000000000";
    -- s_instruction10 <= "000000010000000010000011100000000000";
    -- s_instruction11 <= "000000010000000010000011100000000000";
    -- s_instruction12 <= "000000010000000010000011100000000000";
    -- s_instruction13 <= "000000010000000010000011100000000000";
    -- s_instruction14 <= "000000010000000010000011100000000000";
    -- s_instruction15 <= "000000010000000010000011100000000000";
    wait;
  end process;

end cluster_tb;
