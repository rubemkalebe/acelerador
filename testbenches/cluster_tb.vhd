-- Testbench for a cluster component.
-- Version: 04.22.2016.

library ieee;
use ieee.std_logic_1164.all;

entity cluster_tb is
  generic (
    DATA_WIDTH : natural := 32;
    INST_WIDTH : natural := 34;
    ADDR_RF_WIDTH : natural := 6
  );
end cluster_tb;

architecture cluster_tb of cluster_tb is

  signal s_clk : std_logic := '0';
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

  signal s_reg_addr1 : std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
  signal s_reg_addr2 : std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
  signal s_reg_addr3 : std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
  signal s_reg_addr4 : std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
  signal s_reg_addr5 : std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
  signal s_reg_addr6 : std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
  signal s_reg_addr7 : std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
  signal s_reg_addr8 : std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
  signal s_reg_addr9 : std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
  signal s_reg_addr10 : std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
  signal s_reg_addr11 : std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
  signal s_reg_addr12 : std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
  signal s_reg_addr13 : std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
  signal s_reg_addr14 : std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
  signal s_reg_addr15 : std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
  signal s_reg_addr16 : std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
  signal s_reg_addr17 : std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
  signal s_reg_addr18 : std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
  signal s_reg_addr19 : std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
  signal s_reg_addr20 : std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
  signal s_reg_addr21 : std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
  signal s_reg_addr22 : std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
  signal s_reg_addr23 : std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
  signal s_reg_addr24 : std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
  signal s_reg_addr25 : std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
  signal s_reg_addr26 : std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
  signal s_reg_addr27 : std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
  signal s_reg_addr28 : std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
  signal s_reg_addr29 : std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
  signal s_reg_addr30 : std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
  signal s_reg_addr31 : std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
  signal s_reg_addr32 : std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
  signal s_reg_addr33 : std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
  signal s_reg_addr34 : std_logic_vector(ADDR_RF_WIDTH-1 downto 0);

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
    reg_addr1 => s_reg_addr1,
    reg_addr2 => s_reg_addr2,
    reg_addr3 => s_reg_addr3,
    reg_addr4 => s_reg_addr4,
    reg_addr5 => s_reg_addr5,
    reg_addr6 => s_reg_addr6,
    reg_addr7 => s_reg_addr7,
    reg_addr8 => s_reg_addr8,
    reg_addr9 => s_reg_addr9,
    reg_addr10 => s_reg_addr10,
    reg_addr11 => s_reg_addr11,
    reg_addr12 => s_reg_addr12,
    reg_addr13 => s_reg_addr13,
    reg_addr14 => s_reg_addr14,
    reg_addr15 => s_reg_addr15,
    reg_addr16 => s_reg_addr16,
    reg_addr17 => s_reg_addr17,
    reg_addr18 => s_reg_addr18,
    reg_addr19 => s_reg_addr19,
    reg_addr20 => s_reg_addr20,
    reg_addr21 => s_reg_addr21,
    reg_addr22 => s_reg_addr22,
    reg_addr23 => s_reg_addr23,
    reg_addr24 => s_reg_addr24,
    reg_addr25 => s_reg_addr25,
    reg_addr26 => s_reg_addr26,
    reg_addr27 => s_reg_addr27,
    reg_addr28 => s_reg_addr28,
    reg_addr29 => s_reg_addr29,
    reg_addr30 => s_reg_addr30,
    reg_addr31 => s_reg_addr31,
    reg_addr32 => s_reg_addr32,
    reg_addr33 => s_reg_addr33,
    reg_addr34 => s_reg_addr34,
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
		s_enable_write <= '1';
    s_enable_read <= '0';
		wait for 200 ns;
    s_enable_write <= '0';
    s_enable_read <= '1';
    wait for 100 ns;
    s_enable_write <= '1';
    s_enable_read <= '0';
		wait for 50 ns;
    s_enable_write <= '0';
    s_enable_read <= '1';
    wait for 50 ns;
    s_enable_write <= '1';
    s_enable_read <= '0';
		wait for 50 ns;
    wait;
	end process;

  init_rf1 : process
  begin
    s_reg_input1     <= "00000000000000000000000000000001";
    s_reg_addr1      <= "000001";
    s_reg_input2     <= "00000000000000000000000000000010";
    s_reg_addr2      <= "000010";
    s_reg_input3     <= "00000000000000000000000000000011";
    s_reg_addr3      <= "000011";
    s_reg_input4     <= "00000000000000000000000000000100";
    s_reg_addr4      <= "000100";

    s_reg_input5     <= "00000000000000000000000000000101";
    s_reg_addr5      <= "000101";
    s_reg_input6     <= "00000000000000000000000000000110";
    s_reg_addr6      <= "000110";
    s_reg_input7     <= "00000000000000000000000000000111";
    s_reg_addr7      <= "000111";
    s_reg_input8     <= "00000000000000000000000000001000";
    s_reg_addr8      <= "001000";

    s_reg_input9     <= "00000000000000000000000000001001";
    s_reg_addr9      <= "001001";
    s_reg_input10    <= "00000000000000000000000000001010";
    s_reg_addr10     <= "001010";
    s_reg_input11    <= "00000000000000000000000000001011";
    s_reg_addr11     <= "001011";
    s_reg_input12    <= "00000000000000000000000000001100";
    s_reg_addr12     <= "001100";

    s_reg_input13    <= "00000000000000000000000000001101";
    s_reg_addr13     <= "001101";
    s_reg_input14    <= "00000000000000000000000000001110";
    s_reg_addr14     <= "001110";
    s_reg_input15    <= "00000000000000000000000000001111";
    s_reg_addr15     <= "001111";
    s_reg_input16    <= "00000000000000000000000000010000";
    s_reg_addr16     <= "010000";

    s_reg_input17    <= "00000000000000000000000000010001";
    s_reg_addr17     <= "010001";
    s_reg_input18    <= "00000000000000000000000000010010";
    s_reg_addr18     <= "010010";
    s_reg_input19    <= "00000000000000000000000000010011";
    s_reg_addr19     <= "010011";
    s_reg_input20    <= "00000000000000000000000000010100";
    s_reg_addr20     <= "010100";

    s_reg_input21    <= "00000000000000000000000000010101";
    s_reg_addr21     <= "010101";
    s_reg_input22    <= "00000000000000000000000000010110";
    s_reg_addr22     <= "010110";
    s_reg_input23    <= "00000000000000000000000000010111";
    s_reg_addr23     <= "010111";
    s_reg_input24    <= "00000000000000000000000000011000";
    s_reg_addr24     <= "011000";

    s_reg_input25    <= "00000000000000000000000000011001";
    s_reg_addr25     <= "011001";
    s_reg_input26    <= "00000000000000000000000000011010";
    s_reg_addr26     <= "011010";
    s_reg_input27    <= "00000000000000000000000000011011";
    s_reg_addr27     <= "011011";
    s_reg_input28    <= "00000000000000000000000000011100";
    s_reg_addr28     <= "011100";

    s_reg_input29    <= "00000000000000000000000000011101";
    s_reg_addr29     <= "011101";
    s_reg_input30    <= "00000000000000000000000000011110";
    s_reg_addr30     <= "011110";
    s_reg_input31    <= "00000000000000000000000000011111";
    s_reg_addr31     <= "011111";
    s_reg_input32    <= "00000000000000000000000000100000";
    s_reg_addr32     <= "100000";

    s_reg_input33    <= "00000000000000000000000000100001";
    s_reg_addr33     <= "100001";
    s_reg_input34    <= "00000000000000000000000000100010";
    s_reg_addr34     <= "100001";--"100010";

                     -- IopcdOPER3DOPER1Soper2tOPER3Dshamt
    s_instruction1  <= "0000010000000010000011100000000000";
    s_instruction2  <= "1000101000000010000011100000000000";
    s_instruction3  <= "0100000010001000000011100000000000";
    s_instruction4  <= "0000010000000010000011100000000000";
    s_instruction5  <= "0000010000000010000011100000000000";
    s_instruction6  <= "0000010000000010000011100000000000";
    s_instruction7  <= "0000010000000010000011100000000000";
    s_instruction8  <= "0000010000000010000011100000000000";
    s_instruction9  <= "0000010000000010000011100000000000";
    s_instruction10 <= "0000010000000010000011100000000000";
    s_instruction11 <= "0000010000000010000011100000000000";
    s_instruction12 <= "0000010000000010000011100000000000";
    s_instruction13 <= "0000010000000010000011100000000000";
    s_instruction14 <= "0000010000000010000011100000000000";
    s_instruction15 <= "0000010000000010000011100000000000";
    wait;
  end process;

end cluster_tb;
