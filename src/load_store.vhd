-- Performs load and store from/to memory to the register file.
-- Version: 06.28.2016.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity load_store is
  generic (
    DATA_WIDTH : natural := 32;
    ADDR_WIDTH : natural := 32
  );

  port (
    clk : in std_logic;
    rst : in std_logic;
    enable_read : in std_logic;
    enable_write : in std_logic;

    -- RF interface
    offset : in std_logic_vector(DATA_WIDTH-1 downto 0);
    rf_data : in std_logic_vector(DATA_WIDTH-1 downto 0); -- value from register file for sum with offset
    wrdata : in std_logic_vector(DATA_WIDTH-1 downto 0); -- value to be written in memory
    rddata : out std_logic_vector(DATA_WIDTH-1 downto 0); -- value read from memory going out to register file
    rf_wr : out std_logic; -- bit that indicates if output should be written or not in register file

    -- Memory interface
    mem_addr    : out std_logic_vector(ADDR_WIDTH-1 downto 0); -- memory address for operation
    mem_rddata  : in  std_logic_vector(DATA_WIDTH-1 downto 0); -- value read from memory
    mem_wrdata  : out std_logic_vector(DATA_WIDTH-1 downto 0); -- value to be written in memory going out to memory
    mem_rd      : out std_logic;
    mem_wr      : out std_logic
  );

end load_store;

architecture load_store of load_store is

begin

mem_wr <= enable_write;
mem_rd <= enable_read;
rf_wr <= enable_read; -- writes in register file when reads from memory
mem_wrdata <= wrdata; -- sends out value that should be written

-- calculates memory address
mem_addr <= std_logic_vector(unsigned(rf_data) + unsigned(offset));

process(clk)
begin
	if(rst = '1') then
    rddata <= (others => '0');
  elsif(rising_edge(clk)) then
    if(enable_read = '1') then
      rddata <= mem_rddata;
    end if;
  end if;
end process;

end load_store;
