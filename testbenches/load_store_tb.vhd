-- Testbench for a load/store component.
-- Version: 06.28.2016.

library ieee;
use ieee.std_logic_1164.all;

entity load_store_tb is
  generic (
    DATA_WIDTH : natural := 32;
    ADDR_WIDTH : natural := 32
  );
end load_store_tb;

architecture load_store_tb of load_store_tb is

  signal s_clk : std_logic := '0';
  signal s_rst : std_logic := '0';
  signal s_enable_read : std_logic := '0';
  signal s_enable_write : std_logic := '0';

  signal s_rf_data : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_wrdata : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_rddata : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_rf_wr : std_logic;
  signal s_offset : std_logic_vector(DATA_WIDTH-1 downto 0);

  signal s_mem_rd      : std_logic;
  signal s_mem_wr      : std_logic;
  signal s_mem_addr    : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal s_mem_rddata  : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_mem_wrdata  : std_logic_vector(DATA_WIDTH-1 downto 0);

  constant num_cycles : integer := 30;

begin

  load_store_0 : entity work.load_store
  port map (
    clk => s_clk,
    rst => s_rst,
    enable_read => s_enable_read,
    enable_write => s_enable_write,
    rf_data => s_rf_data,
    wrdata => s_wrdata,
    rddata => s_rddata,
    rf_wr => s_rf_wr,
    offset => s_offset,
    mem_rd => s_mem_rd,
    mem_wr => s_mem_wr,
    mem_addr => s_mem_addr,
    mem_rddata => s_mem_rddata,
    mem_wrdata => s_mem_wrdata
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
    s_enable_write <= '1';
    wait for 40 ns;
    s_enable_write <= '0';
    wait for 40 ns;
    s_enable_write <= '1';
    wait for 40 ns;
    s_enable_write <= '0';
    wait for 40 ns;
    s_enable_write <= '1';
    wait for 40 ns;
    s_enable_write <= '0';
    wait for 40 ns;
    s_enable_write <= '1';
    wait for 40 ns;
    s_enable_write <= '0';
    wait;
  end process;

  read : process
  begin
    s_enable_read <= '0';
    wait for 40 ns;
    s_enable_read <= '1';
    wait for 40 ns;
    s_enable_read <= '0';
    wait for 40 ns;
    s_enable_read <= '1';
    wait for 40 ns;
    s_enable_read <= '0';
    wait for 40 ns;
    s_enable_read <= '1';
    wait for 80 ns;
    s_enable_read <= '0';
    --wait for 40 ns;
    --s_enable_read <= '1';
    wait;
  end process;

  test : process
  begin
    s_rf_data <= "00100000000000000000000000000000";
    s_offset <= "00000000000000000000000000001000";
    s_wrdata <= "00000000000000000000000000000011";
		wait for 50 ns;

    s_rf_data <= "00000000100000000000000000000000";
    s_offset <= "00000000000000000000000000000010";
    s_mem_rddata <= "00000000000000000000000000000111";
    wait for 50 ns;

    s_rst <= '1';
		wait;
  end process;

end load_store_tb;
