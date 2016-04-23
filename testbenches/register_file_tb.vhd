-- Testbench for the local register file.
-- Version: 04.21.2016.

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

  signal s_write_address1, s_write_address2 : std_logic_vector(ADDR_WIDTH-1 downto 0) := (others => '0');

  signal s_input1, s_input2 : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');

  signal s_read_address1, s_read_address2 : std_logic_vector(ADDR_WIDTH-1 downto 0) := (others => '0');

  signal s_output1, s_output2 : std_logic_vector(DATA_WIDTH-1 downto 0);

  constant num_cycles : integer := 80;

begin

  rf_0 : entity work.register_file
  port map (
     clk => s_clk,
     enable_read => s_enable_read,
     enable_write => s_enable_write,
     write_address1 => s_write_address1,
     write_address2 => s_write_address2,
     input1 => s_input1,
     input2 => s_input2,
     read_address1 => s_read_address1,
     read_address2 => s_read_address2,
     output1 => s_output1,
     output2 => s_output2
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
