-- Local register file with 32-bit general purpose registers.
-- It can support 32 writing access and 30 reading access in parallel.
-- Version: 03.29.2016.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity register_file is
  generic (
    DATA_WIDTH : natural := 32;
    ADDR_WIDTH : natural := 5;
    N : natural := 32
  );

  port (
    clk : in std_logic;
    enable_read : in std_logic;
    enable_write : in std_logic;

    write_address1 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    write_address2 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    write_address3 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    write_address4 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    write_address5 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    write_address6 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    write_address7 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    write_address8 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    write_address9 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    write_address10 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    write_address11 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    write_address12 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    write_address13 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    write_address14 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    write_address15 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    write_address16 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    write_address17 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    write_address18 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    write_address19 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    write_address20 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    write_address21 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    write_address22 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    write_address23 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    write_address24 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    write_address25 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    write_address26 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    write_address27 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    write_address28 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    write_address29 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    write_address30 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    write_address31 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    write_address32 : in std_logic_vector(ADDR_WIDTH-1 downto 0);

    input1 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input2 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input3 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input4 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input5 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input6 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input7 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input8 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input9 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input10 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input11 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input12 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input13 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input14 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input15 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input16 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input17 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input18 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input19 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input20 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input21 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input22 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input23 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input24 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input25 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input26 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input27 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input28 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input29 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input30 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input31 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input32 : in std_logic_vector(DATA_WIDTH-1 downto 0);

    read_address1 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    read_address2 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    read_address3 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    read_address4 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    read_address5 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    read_address6 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    read_address7 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    read_address8 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    read_address9 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    read_address10 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    read_address11 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    read_address12 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    read_address13 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    read_address14 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    read_address15 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    read_address16 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    read_address17 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    read_address18 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    read_address19 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    read_address20 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    read_address21 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    read_address22 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    read_address23 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    read_address24 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    read_address25 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    read_address26 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    read_address27 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    read_address28 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    read_address29 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    read_address30 : in std_logic_vector(ADDR_WIDTH-1 downto 0);

    output1 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output2 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output3 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output4 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output5 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output6 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output7 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output8 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output9 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output10 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output11 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output12 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output13 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output14 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output15 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output16 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output17 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output18 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output19 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output20 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output21 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output22 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output23 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output24 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output25 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output26 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output27 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output28 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output29 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output30 : out std_logic_vector(DATA_WIDTH-1 downto 0)
  );
end register_file;

architecture register_file of register_file is

  type reg_array is array (0 to N-1) of std_logic_vector(DATA_WIDTH-1 downto 0);
  signal reg_file : reg_array;

begin

  writing : process(clk, enable_write)
  begin
    if(clk'event and clk = '1' and enable_write = '1') then
      reg_file(to_integer(unsigned(write_address1))) <= input1;
      reg_file(to_integer(unsigned(write_address2))) <= input2;
      reg_file(to_integer(unsigned(write_address3))) <= input3;
      reg_file(to_integer(unsigned(write_address4))) <= input4;
      reg_file(to_integer(unsigned(write_address5))) <= input5;
      reg_file(to_integer(unsigned(write_address6))) <= input6;
      reg_file(to_integer(unsigned(write_address7))) <= input7;
      reg_file(to_integer(unsigned(write_address8))) <= input8;
      reg_file(to_integer(unsigned(write_address9))) <= input9;
      reg_file(to_integer(unsigned(write_address10))) <= input10;
      reg_file(to_integer(unsigned(write_address11))) <= input11;
      reg_file(to_integer(unsigned(write_address12))) <= input12;
      reg_file(to_integer(unsigned(write_address13))) <= input13;
      reg_file(to_integer(unsigned(write_address14))) <= input14;
      reg_file(to_integer(unsigned(write_address15))) <= input15;
      reg_file(to_integer(unsigned(write_address16))) <= input16;
      reg_file(to_integer(unsigned(write_address17))) <= input17;
      reg_file(to_integer(unsigned(write_address18))) <= input18;
      reg_file(to_integer(unsigned(write_address19))) <= input19;
      reg_file(to_integer(unsigned(write_address20))) <= input20;
      reg_file(to_integer(unsigned(write_address21))) <= input21;
      reg_file(to_integer(unsigned(write_address22))) <= input22;
      reg_file(to_integer(unsigned(write_address23))) <= input23;
      reg_file(to_integer(unsigned(write_address24))) <= input24;
      reg_file(to_integer(unsigned(write_address25))) <= input25;
      reg_file(to_integer(unsigned(write_address26))) <= input26;
      reg_file(to_integer(unsigned(write_address27))) <= input27;
      reg_file(to_integer(unsigned(write_address28))) <= input28;
      reg_file(to_integer(unsigned(write_address29))) <= input29;
      reg_file(to_integer(unsigned(write_address30))) <= input30;
      reg_file(to_integer(unsigned(write_address31))) <= input31;
      reg_file(to_integer(unsigned(write_address32))) <= input32;
    end if;
  end process;

  reading1 : process(clk, enable_read)
  begin
    if(clk'event and clk = '1' and enable_read = '1') then
      output1 <= reg_file(to_integer(unsigned(read_address1)));
      output2 <= reg_file(to_integer(unsigned(read_address2)));
      output3 <= reg_file(to_integer(unsigned(read_address3)));
      output4 <= reg_file(to_integer(unsigned(read_address4)));
      output5 <= reg_file(to_integer(unsigned(read_address5)));
      output6 <= reg_file(to_integer(unsigned(read_address6)));
      output7 <= reg_file(to_integer(unsigned(read_address7)));
      output8 <= reg_file(to_integer(unsigned(read_address8)));
      output9 <= reg_file(to_integer(unsigned(read_address9)));
      output10 <= reg_file(to_integer(unsigned(read_address10)));
      output11 <= reg_file(to_integer(unsigned(read_address11)));
      output12 <= reg_file(to_integer(unsigned(read_address12)));
      output13 <= reg_file(to_integer(unsigned(read_address13)));
      output14 <= reg_file(to_integer(unsigned(read_address14)));
      output15 <= reg_file(to_integer(unsigned(read_address15)));
      output16 <= reg_file(to_integer(unsigned(read_address16)));
      output17 <= reg_file(to_integer(unsigned(read_address17)));
      output18 <= reg_file(to_integer(unsigned(read_address18)));
      output19 <= reg_file(to_integer(unsigned(read_address19)));
      output20 <= reg_file(to_integer(unsigned(read_address20)));
      output21 <= reg_file(to_integer(unsigned(read_address21)));
      output22 <= reg_file(to_integer(unsigned(read_address22)));
      output23 <= reg_file(to_integer(unsigned(read_address23)));
      output24 <= reg_file(to_integer(unsigned(read_address24)));
      output25 <= reg_file(to_integer(unsigned(read_address25)));
      output26 <= reg_file(to_integer(unsigned(read_address26)));
      output27 <= reg_file(to_integer(unsigned(read_address27)));
      output28 <= reg_file(to_integer(unsigned(read_address28)));
      output29 <= reg_file(to_integer(unsigned(read_address29)));
      output30 <= reg_file(to_integer(unsigned(read_address30)));
    end if;
  end process;

end register_file;
