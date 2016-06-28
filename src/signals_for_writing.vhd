-- Short description...
-- Version: 06.27.2016.

library ieee;
use ieee.std_logic_1164.all;

entity signals_for_writing is
  generic (
    DATA_WIDTH : natural := 32;
    ADDR_WIDTH : natural := 6
  );

  port (
    inst1_out : in std_logic_vector(DATA_WIDTH-1 downto 0);
    inst2_out : in std_logic_vector(DATA_WIDTH-1 downto 0);
    inst3_out : in std_logic_vector(DATA_WIDTH-1 downto 0);
    inst4_out_HI : in std_logic_vector(DATA_WIDTH-1 downto 0);
    inst4_out_LO : in std_logic_vector(DATA_WIDTH-1 downto 0);

    dest_addr1 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    dest_addr2 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    dest_addr3 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    dest_addr4_HI : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    dest_addr4_LO : in std_logic_vector(ADDR_WIDTH-1 downto 0);

    signal_reg1 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    signal_reg2 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    signal_reg3 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    signal_reg4 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    signal_reg5 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    signal_reg6 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    signal_reg7 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    signal_reg8 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    signal_reg9 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    signal_reg10 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    signal_reg11 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    signal_reg12 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    signal_reg13 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    signal_reg14 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    signal_reg15 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    signal_reg16 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    signal_reg17 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    signal_reg18 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    signal_reg19 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    signal_reg20 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    signal_reg21 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    signal_reg22 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    signal_reg23 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    signal_reg24 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    signal_reg25 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    signal_reg26 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    signal_reg27 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    signal_reg28 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    signal_reg29 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    signal_reg30 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    signal_reg31 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    signal_reg32 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    signal_reg33 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    signal_reg34 : out std_logic_vector(DATA_WIDTH-1 downto 0)
  );
end entity;

architecture signals_for_writing of signals_for_writing is

  constant reg_addr1 : std_logic_vector := "000000";
  constant reg_addr2 : std_logic_vector := "000001";
  constant reg_addr3 : std_logic_vector := "000010";
  constant reg_addr4 : std_logic_vector := "000011";
  constant reg_addr5 : std_logic_vector := "000100";
  constant reg_addr6 : std_logic_vector := "000101";
  constant reg_addr7 : std_logic_vector := "000110";
  constant reg_addr8 : std_logic_vector := "000111";
  constant reg_addr9 : std_logic_vector := "001000";
  constant reg_addr10 : std_logic_vector := "001001";
  constant reg_addr11 : std_logic_vector := "001010";
  constant reg_addr12 : std_logic_vector := "001011";
  constant reg_addr13 : std_logic_vector := "001100";
  constant reg_addr14 : std_logic_vector := "001101";
  constant reg_addr15 : std_logic_vector := "001110";
  constant reg_addr16 : std_logic_vector := "001111";
  constant reg_addr17 : std_logic_vector := "010000";
  constant reg_addr18 : std_logic_vector := "010001";
  constant reg_addr19 : std_logic_vector := "010010";
  constant reg_addr20 : std_logic_vector := "010011";
  constant reg_addr21 : std_logic_vector := "010100";
  constant reg_addr22 : std_logic_vector := "010101";
  constant reg_addr23 : std_logic_vector := "010110";
  constant reg_addr24 : std_logic_vector := "010111";
  constant reg_addr25 : std_logic_vector := "011000";
  constant reg_addr26 : std_logic_vector := "011001";
  constant reg_addr27 : std_logic_vector := "011010";
  constant reg_addr28 : std_logic_vector := "011011";
  constant reg_addr29 : std_logic_vector := "011100";
  constant reg_addr30 : std_logic_vector := "011101";
  constant reg_addr31 : std_logic_vector := "011110";
  constant reg_addr32 : std_logic_vector := "011111";
  constant reg_addr33 : std_logic_vector := "100000";
  constant reg_addr34 : std_logic_vector := "100001";

begin

  signal_reg1 <= inst1_out when (dest_addr1 = reg_addr1) else
                 inst2_out when (dest_addr2 = reg_addr1) else
                 inst3_out when (dest_addr3 = reg_addr1) else
                 inst4_out_HI when (dest_addr4_HI = reg_addr1) else
                 inst4_out_LO when (dest_addr4_LO = reg_addr1) else
                 (others => '0');

  signal_reg2 <= inst1_out when (dest_addr1 = reg_addr2) else
                 inst2_out when (dest_addr2 = reg_addr2) else
                 inst3_out when (dest_addr3 = reg_addr2) else
                 inst4_out_HI when (dest_addr4_HI = reg_addr2) else
                 inst4_out_LO when (dest_addr4_LO = reg_addr2) else
                 (others => '0');

  signal_reg3 <= inst1_out when (dest_addr1 = reg_addr3) else
                 inst2_out when (dest_addr2 = reg_addr3) else
                 inst3_out when (dest_addr3 = reg_addr3) else
                 inst4_out_HI when (dest_addr4_HI = reg_addr3) else
                 inst4_out_LO when (dest_addr4_LO = reg_addr3) else
                 (others => '0');

  signal_reg4 <= inst1_out when (dest_addr1 = reg_addr4) else
                 inst2_out when (dest_addr2 = reg_addr4) else
                 inst3_out when (dest_addr3 = reg_addr4) else
                 inst4_out_HI when (dest_addr4_HI = reg_addr4) else
                 inst4_out_LO when (dest_addr4_LO = reg_addr4) else
                 (others => '0');

  signal_reg5 <= inst1_out when (dest_addr1 = reg_addr5) else
                 inst2_out when (dest_addr2 = reg_addr5) else
                 inst3_out when (dest_addr3 = reg_addr5) else
                 inst4_out_HI when (dest_addr4_HI = reg_addr5) else
                 inst4_out_LO when (dest_addr4_LO = reg_addr5) else
                 (others => '0');

  signal_reg6 <= inst1_out when (dest_addr1 = reg_addr6) else
                 inst2_out when (dest_addr2 = reg_addr6) else
                 inst3_out when (dest_addr3 = reg_addr6) else
                 inst4_out_HI when (dest_addr4_HI = reg_addr6) else
                 inst4_out_LO when (dest_addr4_LO = reg_addr6) else
                 (others => '0');

  signal_reg7 <= inst1_out when (dest_addr1 = reg_addr7) else
                 inst2_out when (dest_addr2 = reg_addr7) else
                 inst3_out when (dest_addr3 = reg_addr7) else
                 inst4_out_HI when (dest_addr4_HI = reg_addr7) else
                 inst4_out_LO when (dest_addr4_LO = reg_addr7) else
                 (others => '0');

  signal_reg8 <= inst1_out when (dest_addr1 = reg_addr8) else
                 inst2_out when (dest_addr2 = reg_addr8) else
                 inst3_out when (dest_addr3 = reg_addr8) else
                 inst4_out_HI when (dest_addr4_HI = reg_addr8) else
                 inst4_out_LO when (dest_addr4_LO = reg_addr8) else
                 (others => '0');

  signal_reg9 <= inst1_out when (dest_addr1 = reg_addr9) else
                 inst2_out when (dest_addr2 = reg_addr9) else
                 inst3_out when (dest_addr3 = reg_addr9) else
                 inst4_out_HI when (dest_addr4_HI = reg_addr9) else
                 inst4_out_LO when (dest_addr4_LO = reg_addr9) else
                 (others => '0');

  signal_reg10 <= inst1_out when (dest_addr1 = reg_addr10) else
                 inst2_out when (dest_addr2 = reg_addr10) else
                 inst3_out when (dest_addr3 = reg_addr10) else
                 inst4_out_HI when (dest_addr4_HI = reg_addr10) else
                 inst4_out_LO when (dest_addr4_LO = reg_addr10) else
                 (others => '0');

  signal_reg11 <= inst1_out when (dest_addr1 = reg_addr11) else
                 inst2_out when (dest_addr2 = reg_addr11) else
                 inst3_out when (dest_addr3 = reg_addr11) else
                 inst4_out_HI when (dest_addr4_HI = reg_addr11) else
                 inst4_out_LO when (dest_addr4_LO = reg_addr11) else
                 (others => '0');

  signal_reg12 <= inst1_out when (dest_addr1 = reg_addr12) else
                 inst2_out when (dest_addr2 = reg_addr12) else
                 inst3_out when (dest_addr3 = reg_addr12) else
                 inst4_out_HI when (dest_addr4_HI = reg_addr12) else
                 inst4_out_LO when (dest_addr4_LO = reg_addr12) else
                 (others => '0');

  signal_reg13 <= inst1_out when (dest_addr1 = reg_addr13) else
                 inst2_out when (dest_addr2 = reg_addr13) else
                 inst3_out when (dest_addr3 = reg_addr13) else
                 inst4_out_HI when (dest_addr4_HI = reg_addr13) else
                 inst4_out_LO when (dest_addr4_LO = reg_addr13) else
                 (others => '0');

  signal_reg14 <= inst1_out when (dest_addr1 = reg_addr14) else
                 inst2_out when (dest_addr2 = reg_addr14) else
                 inst3_out when (dest_addr3 = reg_addr14) else
                 inst4_out_HI when (dest_addr4_HI = reg_addr14) else
                 inst4_out_LO when (dest_addr4_LO = reg_addr14) else
                 (others => '0');

  signal_reg15 <= inst1_out when (dest_addr1 = reg_addr15) else
                 inst2_out when (dest_addr2 = reg_addr15) else
                 inst3_out when (dest_addr3 = reg_addr15) else
                 inst4_out_HI when (dest_addr4_HI = reg_addr15) else
                 inst4_out_LO when (dest_addr4_LO = reg_addr15) else
                 (others => '0');

  signal_reg16 <= inst1_out when (dest_addr1 = reg_addr16) else
                 inst2_out when (dest_addr2 = reg_addr16) else
                 inst3_out when (dest_addr3 = reg_addr16) else
                 inst4_out_HI when (dest_addr4_HI = reg_addr16) else
                 inst4_out_LO when (dest_addr4_LO = reg_addr16) else
                 (others => '0');

  signal_reg17 <= inst1_out when (dest_addr1 = reg_addr17) else
                 inst2_out when (dest_addr2 = reg_addr17) else
                 inst3_out when (dest_addr3 = reg_addr17) else
                 inst4_out_HI when (dest_addr4_HI = reg_addr17) else
                 inst4_out_LO when (dest_addr4_LO = reg_addr17) else
                 (others => '0');

  signal_reg18 <= inst1_out when (dest_addr1 = reg_addr18) else
                 inst2_out when (dest_addr2 = reg_addr18) else
                 inst3_out when (dest_addr3 = reg_addr18) else
                 inst4_out_HI when (dest_addr4_HI = reg_addr18) else
                 inst4_out_LO when (dest_addr4_LO = reg_addr18) else
                 (others => '0');

  signal_reg19 <= inst1_out when (dest_addr1 = reg_addr19) else
                 inst2_out when (dest_addr2 = reg_addr19) else
                 inst3_out when (dest_addr3 = reg_addr19) else
                 inst4_out_HI when (dest_addr4_HI = reg_addr19) else
                 inst4_out_LO when (dest_addr4_LO = reg_addr19) else
                 (others => '0');

  signal_reg20 <= inst1_out when (dest_addr1 = reg_addr20) else
                 inst2_out when (dest_addr2 = reg_addr20) else
                 inst3_out when (dest_addr3 = reg_addr20) else
                 inst4_out_HI when (dest_addr4_HI = reg_addr20) else
                 inst4_out_LO when (dest_addr4_LO = reg_addr20) else
                 (others => '0');

  signal_reg21 <= inst1_out when (dest_addr1 = reg_addr21) else
                 inst2_out when (dest_addr2 = reg_addr21) else
                 inst3_out when (dest_addr3 = reg_addr21) else
                 inst4_out_HI when (dest_addr4_HI = reg_addr21) else
                 inst4_out_LO when (dest_addr4_LO = reg_addr21) else
                 (others => '0');

  signal_reg22 <= inst1_out when (dest_addr1 = reg_addr22) else
                 inst2_out when (dest_addr2 = reg_addr22) else
                 inst3_out when (dest_addr3 = reg_addr22) else
                 inst4_out_HI when (dest_addr4_HI = reg_addr22) else
                 inst4_out_LO when (dest_addr4_LO = reg_addr22) else
                 (others => '0');

  signal_reg23 <= inst1_out when (dest_addr1 = reg_addr23) else
                 inst2_out when (dest_addr2 = reg_addr23) else
                 inst3_out when (dest_addr3 = reg_addr23) else
                 inst4_out_HI when (dest_addr4_HI = reg_addr23) else
                 inst4_out_LO when (dest_addr4_LO = reg_addr23) else
                 (others => '0');

  signal_reg24 <= inst1_out when (dest_addr1 = reg_addr24) else
                 inst2_out when (dest_addr2 = reg_addr24) else
                 inst3_out when (dest_addr3 = reg_addr24) else
                 inst4_out_HI when (dest_addr4_HI = reg_addr24) else
                 inst4_out_LO when (dest_addr4_LO = reg_addr24) else
                 (others => '0');

  signal_reg25 <= inst1_out when (dest_addr1 = reg_addr25) else
                 inst2_out when (dest_addr2 = reg_addr25) else
                 inst3_out when (dest_addr3 = reg_addr25) else
                 inst4_out_HI when (dest_addr4_HI = reg_addr25) else
                 inst4_out_LO when (dest_addr4_LO = reg_addr25) else
                 (others => '0');

  signal_reg26 <= inst1_out when (dest_addr1 = reg_addr26) else
                 inst2_out when (dest_addr2 = reg_addr26) else
                 inst3_out when (dest_addr3 = reg_addr26) else
                 inst4_out_HI when (dest_addr4_HI = reg_addr26) else
                 inst4_out_LO when (dest_addr4_LO = reg_addr26) else
                 (others => '0');

  signal_reg27 <= inst1_out when (dest_addr1 = reg_addr27) else
                 inst2_out when (dest_addr2 = reg_addr27) else
                 inst3_out when (dest_addr3 = reg_addr27) else
                 inst4_out_HI when (dest_addr4_HI = reg_addr27) else
                 inst4_out_LO when (dest_addr4_LO = reg_addr27) else
                 (others => '0');

  signal_reg28 <= inst1_out when (dest_addr1 = reg_addr28) else
                 inst2_out when (dest_addr2 = reg_addr28) else
                 inst3_out when (dest_addr3 = reg_addr28) else
                 inst4_out_HI when (dest_addr4_HI = reg_addr28) else
                 inst4_out_LO when (dest_addr4_LO = reg_addr28) else
                 (others => '0');

  signal_reg29 <= inst1_out when (dest_addr1 = reg_addr29) else
                 inst2_out when (dest_addr2 = reg_addr29) else
                 inst3_out when (dest_addr3 = reg_addr29) else
                 inst4_out_HI when (dest_addr4_HI = reg_addr29) else
                 inst4_out_LO when (dest_addr4_LO = reg_addr29) else
                 (others => '0');

  signal_reg30 <= inst1_out when (dest_addr1 = reg_addr30) else
                 inst2_out when (dest_addr2 = reg_addr30) else
                 inst3_out when (dest_addr3 = reg_addr30) else
                 inst4_out_HI when (dest_addr4_HI = reg_addr30) else
                 inst4_out_LO when (dest_addr4_LO = reg_addr30) else
                 (others => '0');

  signal_reg31 <= inst1_out when (dest_addr1 = reg_addr31) else
                 inst2_out when (dest_addr2 = reg_addr31) else
                 inst3_out when (dest_addr3 = reg_addr31) else
                 inst4_out_HI when (dest_addr4_HI = reg_addr31) else
                 inst4_out_LO when (dest_addr4_LO = reg_addr31) else
                 (others => '0');

  signal_reg32 <= inst1_out when (dest_addr1 = reg_addr32) else
                 inst2_out when (dest_addr2 = reg_addr32) else
                 inst3_out when (dest_addr3 = reg_addr32) else
                 inst4_out_HI when (dest_addr4_HI = reg_addr32) else
                 inst4_out_LO when (dest_addr4_LO = reg_addr32) else
                 (others => '0');

  signal_reg33 <= inst1_out when (dest_addr1 = reg_addr33) else
                 inst2_out when (dest_addr2 = reg_addr33) else
                 inst3_out when (dest_addr3 = reg_addr33) else
                 inst4_out_HI when (dest_addr4_HI = reg_addr33) else
                 inst4_out_LO when (dest_addr4_LO = reg_addr33) else
                 (others => '0');

  signal_reg34 <= inst1_out when (dest_addr1 = reg_addr34) else
                 inst2_out when (dest_addr2 = reg_addr34) else
                 inst3_out when (dest_addr3 = reg_addr34) else
                 inst4_out_HI when (dest_addr4_HI = reg_addr34) else
                 inst4_out_LO when (dest_addr4_LO = reg_addr34) else
                 (others => '0');

end architecture;
