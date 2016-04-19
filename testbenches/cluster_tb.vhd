-- Testbench for a cluster component.
-- Version: 04.19.2016.

library ieee;
use ieee.std_logic_1164.all;

entity cluster_tb is
  generic (
    DATA_WIDTH : natural := 32;
    INST_WIDTH : natural := 35;
    ADDR_RF_WIDTH : natural := 6
  );
end cluster_tb;

architecture cluster_tb of cluster_tb is

  signal s_clk : std_logic;
  signal s_enable_read  : std_logic;
  signal s_enable_write : std_logic;

  signal s_reg_input1 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_reg_input2 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_reg_input3 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_reg_input4 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_reg_input5 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_reg_input6 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_reg_input7 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_reg_input8 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_reg_input9 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_reg_input10 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_reg_input11 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_reg_input12 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_reg_input13 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_reg_input14 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_reg_input15 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_reg_input16 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_reg_input17 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_reg_input18 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_reg_input19 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_reg_input20 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_reg_input21 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_reg_input22 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_reg_input23 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_reg_input24 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_reg_input25 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_reg_input26 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_reg_input27 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_reg_input28 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_reg_input29 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_reg_input30 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_reg_input31 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_reg_input32 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_reg_input33 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_reg_input34 : std_logic_vector(DATA_WIDTH-1 downto 0);

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

  constant num_cycles : integer := 50;

begin

  cluster_0 : entity work.cluster
  port map (
    clk => s_clk,
    enable_read => s_enable_read,
    enable_write => s_enable_write,
    reg_input1 => s_reg_input1,
    reg_input2 => s_reg_input2,
    reg_input3 => s_reg_input3,
    reg_input4 => s_reg_input4,
    reg_input5 => s_reg_input5,
    reg_input6 => s_reg_input6,
    reg_input7 => s_reg_input7,
    reg_input8 => s_reg_input8,
    reg_input9 => s_reg_input9,
    reg_input10 => s_reg_input10,
    reg_input11 => s_reg_input11,
    reg_input12 => s_reg_input12,
    reg_input13 => s_reg_input13,
    reg_input14 => s_reg_input14,
    reg_input15 => s_reg_input15,
    reg_input16 => s_reg_input16,
    reg_input17 => s_reg_input17,
    reg_input18 => s_reg_input18,
    reg_input19 => s_reg_input19,
    reg_input20 => s_reg_input20,
    reg_input21 => s_reg_input21,
    reg_input22 => s_reg_input22,
    reg_input23 => s_reg_input23,
    reg_input24 => s_reg_input24,
    reg_input25 => s_reg_input25,
    reg_input26 => s_reg_input26,
    reg_input27 => s_reg_input27,
    reg_input28 => s_reg_input28,
    reg_input29 => s_reg_input29,
    reg_input30 => s_reg_input30,
    reg_input31 => s_reg_input31,
    reg_input32 => s_reg_input32,
    reg_input33 => s_reg_input33,
    reg_input34 => s_reg_input34,
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
        wait for 5 ns;
        s_clk <= not s_clk;
        wait for 5 ns;
        -- clock period = 10 ns
      end loop;
      wait;
	end process;

  write : process
	begin
		s_enable_write <= '0';
    s_enable_read <= '1';
		wait for 50 ns;
    s_enable_write <= '1';
    s_enable_read <= '0';
    wait for 100 ns;
    s_enable_write <= '0';
    s_enable_read <= '1';
		wait for 150 ns;
    s_enable_write <= '1';
    s_enable_read <= '0';
    wait for 100 ns;
    s_enable_write <= '0';
    s_enable_read <= '1';
		wait for 50 ns;
    wait;
	end process;

end cluster_tb;
