-- Performs load and store from/to memory to the register file.
-- Operations supported: lw, lh, lhu, lb, lbu, sw, sh, sb.
-- Version: 07.14.2016.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity load_store is
  generic (
    WORD_WIDTH : natural := 32;
    ADDR_WIDTH : natural := 32;
    HALF_WIDTH : natural := 16;
    BYTE_WIDTH : natural := 8;
    OPCD_WIDTH : natural := 4
  );

  port (
    clk : in std_logic;
    rst : in std_logic;
    enable_read : in std_logic;
    enable_write : in std_logic;

    opcode : in std_logic_vector(OPCD_WIDTH-1 downto 0);

    -- RF interface
    offset : in std_logic_vector(WORD_WIDTH-1 downto 0);
    rf_data : in std_logic_vector(WORD_WIDTH-1 downto 0); -- value from register file for sum with offset
    wrdata : in std_logic_vector(WORD_WIDTH-1 downto 0); -- value to be written in memory
    rddata : out std_logic_vector(WORD_WIDTH-1 downto 0); -- value read from memory going out to register file
    rf_wr : out std_logic; -- bit that indicates if output should be written or not in register file

    -- Memory interface
    mem_addr    : out std_logic_vector(ADDR_WIDTH-1 downto 0); -- memory address for operation
    mem_rddata  : in  std_logic_vector(WORD_WIDTH-1 downto 0); -- value read from memory
    mem_wrdata  : out std_logic_vector(WORD_WIDTH-1 downto 0); -- value to be written in memory going out to memory
    mem_rd      : out std_logic;
    mem_wr      : out std_logic
  );

end load_store;

architecture load_store of load_store is

begin

mem_wr <= enable_write;
mem_rd <= enable_read;

-- writes in register file when reads from memory
rf_wr <= enable_read;

-- sends out value that should be written
mem_wrdata <= wrdata when (opcode = "0101") else -- sw
          ("0000000000000000" & wrdata(HALF_WIDTH-1 downto 0)) when (opcode = "0110") else -- sh
          ("000000000000000000000000" & wrdata(BYTE_WIDTH-1 downto 0)) when (opcode = "0111") else -- sb
          (others => '0');

-- calculates memory address
mem_addr <= std_logic_vector(unsigned(rf_data) + unsigned(offset));

process(clk, rst)
begin
	if(rst = '1') then
    rddata <= (others => '0');
  elsif(rising_edge(clk) and enable_read = '1' and opcode = "0000") then -- lw
    rddata <= mem_rddata;
  elsif(rising_edge(clk) and enable_read = '1' and opcode = "0001" and mem_rddata(HALF_WIDTH-1) = '0') then -- lh (signed)
    rddata <= ("0000000000000000" & mem_rddata(HALF_WIDTH-1 downto 0));
  elsif(rising_edge(clk) and enable_read = '1' and opcode = "0001" and mem_rddata(HALF_WIDTH-1) = '1') then -- lh (signed)
    rddata <= ("1111111111111111" & mem_rddata(HALF_WIDTH-1 downto 0));
  elsif(rising_edge(clk) and enable_read = '1' and opcode = "0010") then -- lhu (unsigned)
    rddata <= ("0000000000000000" & mem_rddata(HALF_WIDTH-1 downto 0));
  elsif(rising_edge(clk) and enable_read = '1' and opcode = "0011" and mem_rddata(BYTE_WIDTH-1) = '0') then -- lb (signed)
    rddata <= ("000000000000000000000000" & mem_rddata(BYTE_WIDTH-1 downto 0));
  elsif(rising_edge(clk) and enable_read = '1' and opcode = "0011" and mem_rddata(BYTE_WIDTH-1) = '1') then -- lb (signed)
    rddata <= ("111111111111111111111111" & mem_rddata(BYTE_WIDTH-1 downto 0));
  elsif(rising_edge(clk) and enable_read = '1' and opcode = "0100") then -- lbu (unsigned)
    rddata <= ("000000000000000000000000" & mem_rddata(BYTE_WIDTH-1 downto 0));
  end if;
end process;

end load_store;
