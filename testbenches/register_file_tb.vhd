-- Testbench for the local register file.
-- Version: 05.21.2016.

library ieee;
use ieee.std_logic_1164.all;

entity register_file_tb is
  generic (
  DATA_WIDTH : natural := 32;
  ADDR_WIDTH : natural := 6;
  N : natural := 34
  );
end register_file_tb;

architecture register_file_tb of register_file_tb is

  signal s_clk : std_logic := '0';
  signal s_enable_read, s_enable_write : std_logic;

  signal s_write_address1, s_write_address2, s_write_address3, s_write_address4, s_write_address5, s_write_address6,
  s_write_address7, s_write_address8, s_write_address9, s_write_address10, s_write_address11, s_write_address12,
  s_write_address13, s_write_address14, s_write_address15, s_write_address16, s_write_address17, s_write_address18,
  s_write_address19, s_write_address20, s_write_address21, s_write_address22, s_write_address23, s_write_address24,
  s_write_address25, s_write_address26, s_write_address27, s_write_address28, s_write_address29, s_write_address30,
  s_write_address31, s_write_address32, s_write_address33,
  s_write_address34 : std_logic_vector(ADDR_WIDTH-1 downto 0) := (others => '0');

  signal s_input1, s_input2, s_input3, s_input4, s_input5, s_input6, s_input7, s_input8, s_input9, s_input10,
  s_input11, s_input12, s_input13, s_input14, s_input15, s_input16, s_input17, s_input18, s_input19, s_input20,
  s_input21, s_input22, s_input23, s_input24, s_input25, s_input26, s_input27, s_input28, s_input29, s_input30,
  s_input31, s_input32, s_input33, s_input34 : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');

  signal s_read_address1, s_read_address2, s_read_address3, s_read_address4, s_read_address5, s_read_address6,
  s_read_address7, s_read_address8, s_read_address9, s_read_address10, s_read_address11, s_read_address12,
  s_read_address13, s_read_address14, s_read_address15, s_read_address16, s_read_address17, s_read_address18,
  s_read_address19, s_read_address20, s_read_address21, s_read_address22, s_read_address23, s_read_address24,
  s_read_address25, s_read_address26, s_read_address27, s_read_address28, s_read_address29,
  s_read_address30 : std_logic_vector(ADDR_WIDTH-1 downto 0) := (others => '0');

  signal s_output1, s_output2, s_output3, s_output4, s_output5, s_output6, s_output7, s_output8, s_output9,
  s_output10, s_output11, s_output12, s_output13, s_output14, s_output15, s_output16, s_output17, s_output18,
  s_output19, s_output20, s_output21, s_output22, s_output23, s_output24, s_output25, s_output26, s_output27,
  s_output28, s_output29, s_output30 : std_logic_vector(DATA_WIDTH-1 downto 0);

  constant num_cycles : integer := 80;

begin

  rf_0 : entity work.register_file
  port map (
     clk => s_clk,
     enable_read => s_enable_read,
     enable_write => s_enable_write,
     write_address1 => s_write_address1,
    write_address2 => s_write_address2,
    write_address3 => s_write_address3,
    write_address4 => s_write_address4,
    write_address5 => s_write_address5,
    write_address6 => s_write_address6,
    write_address7 => s_write_address7,
    write_address8 => s_write_address8,
    write_address9 => s_write_address9,
    write_address10 => s_write_address10,
    write_address11 => s_write_address11,
    write_address12 => s_write_address12,
    write_address13 => s_write_address13,
    write_address14 => s_write_address14,
    write_address15 => s_write_address15,
    write_address16 => s_write_address16,
    write_address17 => s_write_address17,
    write_address18 => s_write_address18,
    write_address19 => s_write_address19,
    write_address20 => s_write_address20,
    write_address21 => s_write_address21,
    write_address22 => s_write_address22,
    write_address23 => s_write_address23,
    write_address24 => s_write_address24,
    write_address25 => s_write_address25,
    write_address26 => s_write_address26,
    write_address27 => s_write_address27,
    write_address28 => s_write_address28,
    write_address29 => s_write_address29,
    write_address30 => s_write_address30,
    write_address31 => s_write_address31,
    write_address32 => s_write_address32,
    write_address33 => s_write_address33,
    write_address34 => s_write_address34,
    input1 => s_input1,
    input2 => s_input2,
    input3 => s_input3,
    input4 => s_input4,
    input5 => s_input5,
    input6 => s_input6,
    input7 => s_input7,
    input8 => s_input8,
    input9 => s_input9,
    input10 => s_input10,
    input11 => s_input11,
    input12 => s_input12,
    input13 => s_input13,
    input14 => s_input14,
    input15 => s_input15,
    input16 => s_input16,
    input17 => s_input17,
    input18 => s_input18,
    input19 => s_input19,
    input20 => s_input20,
    input21 => s_input21,
    input22 => s_input22,
    input23 => s_input23,
    input24 => s_input24,
    input25 => s_input25,
    input26 => s_input26,
    input27 => s_input27,
    input28 => s_input28,
    input29 => s_input29,
    input30 => s_input30,
    input31 => s_input31,
    input32 => s_input32,
    input33 => s_input33,
    input34 => s_input34,
    read_address1 => s_read_address1,
    read_address2 => s_read_address2,
    read_address3 => s_read_address3,
    read_address4 => s_read_address4,
    read_address5 => s_read_address5,
    read_address6 => s_read_address6,
    read_address7 => s_read_address7,
    read_address8 => s_read_address8,
    read_address9 => s_read_address9,
    read_address10 => s_read_address10,
    read_address11 => s_read_address11,
    read_address12 => s_read_address12,
    read_address13 => s_read_address13,
    read_address14 => s_read_address14,
    read_address15 => s_read_address15,
    read_address16 => s_read_address16,
    read_address17 => s_read_address17,
    read_address18 => s_read_address18,
    read_address19 => s_read_address19,
    read_address20 => s_read_address20,
    read_address21 => s_read_address21,
    read_address22 => s_read_address22,
    read_address23 => s_read_address23,
    read_address24 => s_read_address24,
    read_address25 => s_read_address25,
    read_address26 => s_read_address26,
    read_address27 => s_read_address27,
    read_address28 => s_read_address28,
    read_address29 => s_read_address29,
    read_address30 => s_read_address30,
    output1 => s_output1,
    output2 => s_output2,
    output3 => s_output3,
    output4 => s_output4,
    output5 => s_output5,
    output6 => s_output6,
    output7 => s_output7,
    output8 => s_output8,
    output9 => s_output9,
    output10 => s_output10,
    output11 => s_output11,
    output12 => s_output12,
    output13 => s_output13,
    output14 => s_output14,
    output15 => s_output15,
    output16 => s_output16,
    output17 => s_output17,
    output18 => s_output18,
    output19 => s_output19,
    output20 => s_output20,
    output21 => s_output21,
    output22 => s_output22,
    output23 => s_output23,
    output24 => s_output24,
    output25 => s_output25,
    output26 => s_output26,
    output27 => s_output27,
    output28 => s_output28,
    output29 => s_output29,
    output30 => s_output30
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

  control : process
	begin
		s_enable_write <= '0';
    s_enable_read <= '1';
		wait for 50 ns;
    s_enable_write <= '1';
    s_enable_read <= '0';
    wait for 250 ns;
    s_enable_write <= '0';
    s_enable_read <= '1';
    wait for 260 ns;
    s_enable_write <= '1', '0' after 200 ns;
    s_enable_read <= '1', '0' after 200 ns;
    wait;
	end process;

  rf : process
  begin
    s_input1         <= "00000000000000000000000000000001";
    s_write_address1 <= "011111";
    s_input2         <= "00000000000000000000000000000010";
    s_write_address2 <= "011110";
    wait for 100 ns;

    s_input1         <= "00000000000000000000000000000011";
    s_write_address1 <= "011101";
    s_input2         <= "00000000000000000000000000000100";
    s_write_address2 <= "011100";
    wait for 50 ns;

    s_input1         <= "00000000000000000000000000000101";
    s_write_address1 <= "011011";
    s_input2         <= "00000000000000000000000000000110";
    s_write_address2 <= "011010";
    wait for 50 ns;

    s_input1         <= "00000000000000000000000000000111";
    s_write_address1 <= "011001";
    s_input2         <= "00000000000000000000000000001000";
    s_write_address2 <= "011000";
    wait for 50 ns;

    s_input1         <= "00000000000000000000000000001001";
    s_write_address1 <= "010111";
    s_input2         <= "00000000000000000000000000001010";
    s_write_address2 <= "010110";
    wait for 50 ns;

    s_read_address1 <= "011111";
    s_read_address2 <= "000000";--"011110";
    wait for 50 ns;

    s_read_address1 <= "011101";
    s_read_address2 <= "011100";
    wait for 50 ns;

    s_read_address1 <= "011011";
    s_read_address2 <= "011010";
    wait for 50 ns;

    s_read_address1 <= "011001";
    s_read_address2 <= "011000";
    wait for 50 ns;

    s_read_address1 <= "010111";
    s_read_address2 <= "010110";
    wait for 100 ns;

    s_input1         <= "00000000000000000000000100000000";
    s_write_address1 <= "011111";
    s_input2         <= "00000000000000000000001000000010";
    s_write_address2 <= "011110";

    s_read_address1 <= "011111";
    s_read_address2 <= "011110";

    wait;
  end process;

end register_file_tb;
