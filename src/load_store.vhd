-- Performs load and store from/to memory to the array.
-- Author: Wagner Muller Gegler.
-- Version: 03.28.2016.

library ieee;
use ieee.std_logic_1164.all;

entity load_store is
  generic (
    DATA_WIDTH : natural := 32;
    ADDR_WIDTH : natural := 32
  );

  port (
    rst         : in  std_logic;
    clk         : in  std_logic;

    -- array interface
    rddata      : out std_logic_vector(DATA_WIDTH-1 downto 0);
    wrdata      : in  std_logic_vector(DATA_WIDTH-1 downto 0);

    -- memory interface
    mem_addr    : out std_logic_vector(ADDR_WIDTH-1 downto 0);
    mem_rddata  : in  std_logic_vector(DATA_WIDTH-1 downto 0);
    mem_wrdata  : out std_logic_vector(DATA_WIDTH-1 downto 0);
    mem_en      : out std_logic;
    mem_wr      : out std_logic;

    -- configuration
    addr        : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
    wr          : in  std_logic;
    enable      : in  std_logic
  );

end load_store;

architecture load_store of load_store is

begin

mem_wr <= wr;
mem_addr <= addr;
mem_en <= enable;

mem_wrdata <= wrdata;

process (clk)
begin
	if(rst = '1') then
		rddata <= (others=>'0');
  elsif(rising_edge (clk)) then
        if(enable = '1') then
            rddata <= mem_rddata;
        end if;
    end if;
end process;

end load_store;
