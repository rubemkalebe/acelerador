-- Local register file with 34 x 32-bit general purpose registers (HIGH and LOW included).
-- It doesn't write at r0, but reads zero from there.
-- The read operation is not clocked -- it is combinational.
-- It has two inputs and two outputs.
-- Version: 04.22.2016.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity register_file is
  generic (
    DATA_WIDTH : natural := 32;
    ADDR_WIDTH : natural := 6;
    N : natural := 34
  );

  port (
    clk : in std_logic;
    enable_read : in std_logic;
    enable_write : in std_logic;

    write_address1 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    write_address2 : in std_logic_vector(ADDR_WIDTH-1 downto 0);

    input1 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input2 : in std_logic_vector(DATA_WIDTH-1 downto 0);

    read_address1 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    read_address2 : in std_logic_vector(ADDR_WIDTH-1 downto 0);

    output1 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output2 : out std_logic_vector(DATA_WIDTH-1 downto 0)
  );
end register_file;

architecture register_file of register_file is

  type reg_array is array (0 to N-1) of std_logic_vector(DATA_WIDTH-1 downto 0);
  signal reg_file : reg_array;

begin

  output1 <= "00000000000000000000000000000000" when (enable_read = '1' and to_integer(unsigned(read_address1)) = 0) else
              reg_file(to_integer(unsigned(read_address1)));

  output2 <= "00000000000000000000000000000000" when (enable_read = '1' and to_integer(unsigned(read_address2)) = 0) else
              reg_file(to_integer(unsigned(read_address2)));

  regFile : process(clk) is
  begin
    if(rising_edge(clk)) then
      if(enable_write = '1' and to_integer(unsigned(write_address1)) /= 0) then
          reg_file(to_integer(unsigned(write_address1))) <= input1;
      end if;

      if(enable_write = '1' and to_integer(unsigned(write_address2)) /= 0) then
          reg_file(to_integer(unsigned(write_address2))) <= input2;
      end if;
    end if;
  end process;

end register_file;
