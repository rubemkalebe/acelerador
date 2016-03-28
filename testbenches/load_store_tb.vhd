-- Testbench for a load/store component.
-- Version: 03.28.2016.

library ieee;
use ieee.std_logic_1164.all;

entity load_store_tb is
  generic (
    DATA_WIDTH : natural := 32;
    ADDR_WIDTH : natural := 32
  );
end load_store_tb;

architecture load_store_tb of load_store_tb is

  signal s_rddata, s_wrdata, s_mem_rddata, s_mem_wrdata : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_mem_addr, s_addr : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal s_clk, s_rst, s_wr, s_enable, s_mem_en, s_mem_wr : std_logic;

begin

  load_store_0 : entity work.load_store
  port map (
    rst => s_rst,
    clk => s_clk,
    rddata => s_rddata,
    wrdata => s_wrdata,
    mem_addr => s_mem_addr,
    mem_rddata => s_mem_rddata,
    mem_wrdata => s_mem_wrdata,
    mem_en => s_mem_en,
    mem_wr => s_mem_wr,
    addr => s_addr,
    wr => s_wr,
    enable => s_enable
  );

  clock : process
	begin
		s_clk <= '0', '1' after 10 ns;
		wait for 20 ns;
	end process;

end load_store_tb;
