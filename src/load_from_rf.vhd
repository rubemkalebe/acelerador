-- Load signals from local register file.
-- Version: 06.07.2016.

library ieee;
use ieee.std_logic_1164.all;

entity load_from_rf is
  generic (
    DATA_WIDTH : natural := 32;
    INST_WIDTH : natural := 36;
    ADDR_RF_WIDTH : natural := 6
  );

  port (
    reg1 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg2 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg3 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg4 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg5 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg6 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg7 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg8 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg9 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg10 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg11 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg12 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg13 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg14 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg15 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg16 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg17 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg18 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg19 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg20 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg21 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg22 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg23 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg24 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg25 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg26 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg27 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg28 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg29 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg30 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg31 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg32 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg33 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg34 : in std_logic_vector(DATA_WIDTH-1 downto 0);

    instruction1 : in std_logic_vector(INST_WIDTH-1 downto 0);
    instruction2 : in std_logic_vector(INST_WIDTH-1 downto 0);
    instruction3 : in std_logic_vector(INST_WIDTH-1 downto 0);
    instruction4 : in std_logic_vector(INST_WIDTH-1 downto 0);
    instruction5 : in std_logic_vector(INST_WIDTH-1 downto 0);
    instruction6 : in std_logic_vector(INST_WIDTH-1 downto 0);
    instruction7 : in std_logic_vector(INST_WIDTH-1 downto 0);
    instruction8 : in std_logic_vector(INST_WIDTH-1 downto 0);
    instruction9 : in std_logic_vector(INST_WIDTH-1 downto 0);
    instruction10 : in std_logic_vector(INST_WIDTH-1 downto 0);
    instruction11 : in std_logic_vector(INST_WIDTH-1 downto 0);
    instruction12 : in std_logic_vector(INST_WIDTH-1 downto 0);
    instruction13 : in std_logic_vector(INST_WIDTH-1 downto 0);
    instruction14 : in std_logic_vector(INST_WIDTH-1 downto 0);
    instruction15 : in std_logic_vector(INST_WIDTH-1 downto 0);

    inst1_aux_rf_A : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst1_aux_rf_B : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst2_aux_rf_A : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst2_aux_rf_B : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst3_aux_rf_A : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst3_aux_rf_B : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst4_aux_rf_A : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst4_aux_rf_B : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst5_aux_rf_A : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst5_aux_rf_B : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst6_aux_rf_A : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst6_aux_rf_B : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst7_aux_rf_A : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst7_aux_rf_B : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst8_aux_rf_A : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst8_aux_rf_B : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst9_aux_rf_A : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst9_aux_rf_B : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst10_aux_rf_A : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst10_aux_rf_B : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst11_aux_rf_A : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst11_aux_rf_B : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst12_aux_rf_A : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst12_aux_rf_B : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst13_aux_rf_A : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst13_aux_rf_B : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst14_aux_rf_A : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst14_aux_rf_B : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst15_aux_rf_A : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst15_aux_rf_B : out std_logic_vector(DATA_WIDTH-1 downto 0)
  );
end load_from_rf;

architecture load_from_rf of load_from_rf is

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

  -- Loading auxiliar input signals
  inst1_aux_rf_A <= reg1 when (instruction1(22 downto 17) = reg_addr1) else
                    reg2 when (instruction1(22 downto 17) = reg_addr2) else
                    reg3 when (instruction1(22 downto 17) = reg_addr3) else
                    reg4 when (instruction1(22 downto 17) = reg_addr4) else
                    reg5 when (instruction1(22 downto 17) = reg_addr5) else
                    reg6 when (instruction1(22 downto 17) = reg_addr6) else
                    reg7 when (instruction1(22 downto 17) = reg_addr7) else
                    reg8 when (instruction1(22 downto 17) = reg_addr8) else
                    reg9 when (instruction1(22 downto 17) = reg_addr9) else
                    reg10 when (instruction1(22 downto 17) = reg_addr10) else
                    reg11 when (instruction1(22 downto 17) = reg_addr11) else
                    reg12 when (instruction1(22 downto 17) = reg_addr12) else
                    reg13 when (instruction1(22 downto 17) = reg_addr13) else
                    reg14 when (instruction1(22 downto 17) = reg_addr14) else
                    reg15 when (instruction1(22 downto 17) = reg_addr15) else
                    reg16 when (instruction1(22 downto 17) = reg_addr16) else
                    reg17 when (instruction1(22 downto 17) = reg_addr17) else
                    reg18 when (instruction1(22 downto 17) = reg_addr18) else
                    reg19 when (instruction1(22 downto 17) = reg_addr19) else
                    reg20 when (instruction1(22 downto 17) = reg_addr20) else
                    reg21 when (instruction1(22 downto 17) = reg_addr21) else
                    reg22 when (instruction1(22 downto 17) = reg_addr22) else
                    reg23 when (instruction1(22 downto 17) = reg_addr23) else
                    reg24 when (instruction1(22 downto 17) = reg_addr24) else
                    reg25 when (instruction1(22 downto 17) = reg_addr25) else
                    reg26 when (instruction1(22 downto 17) = reg_addr26) else
                    reg27 when (instruction1(22 downto 17) = reg_addr27) else
                    reg28 when (instruction1(22 downto 17) = reg_addr28) else
                    reg29 when (instruction1(22 downto 17) = reg_addr29) else
                    reg30 when (instruction1(22 downto 17) = reg_addr30) else
                    reg31 when (instruction1(22 downto 17) = reg_addr31) else
                    reg32 when (instruction1(22 downto 17) = reg_addr32) else
                    reg33 when (instruction1(22 downto 17) = reg_addr33) else
                    reg34 when (instruction1(22 downto 17) = reg_addr34) else
                    (others => '0');

  inst1_aux_rf_B <= reg1 when (instruction1(16 downto 11) = reg_addr1) else
                    reg2 when (instruction1(16 downto 11) = reg_addr2) else
                    reg3 when (instruction1(16 downto 11) = reg_addr3) else
                    reg4 when (instruction1(16 downto 11) = reg_addr4) else
                    reg5 when (instruction1(16 downto 11) = reg_addr5) else
                    reg6 when (instruction1(16 downto 11) = reg_addr6) else
                    reg7 when (instruction1(16 downto 11) = reg_addr7) else
                    reg8 when (instruction1(16 downto 11) = reg_addr8) else
                    reg9 when (instruction1(16 downto 11) = reg_addr9) else
                    reg10 when (instruction1(16 downto 11) = reg_addr10) else
                    reg11 when (instruction1(16 downto 11) = reg_addr11) else
                    reg12 when (instruction1(16 downto 11) = reg_addr12) else
                    reg13 when (instruction1(16 downto 11) = reg_addr13) else
                    reg14 when (instruction1(16 downto 11) = reg_addr14) else
                    reg15 when (instruction1(16 downto 11) = reg_addr15) else
                    reg16 when (instruction1(16 downto 11) = reg_addr16) else
                    reg17 when (instruction1(16 downto 11) = reg_addr17) else
                    reg18 when (instruction1(16 downto 11) = reg_addr18) else
                    reg19 when (instruction1(16 downto 11) = reg_addr19) else
                    reg20 when (instruction1(16 downto 11) = reg_addr20) else
                    reg21 when (instruction1(16 downto 11) = reg_addr21) else
                    reg22 when (instruction1(16 downto 11) = reg_addr22) else
                    reg23 when (instruction1(16 downto 11) = reg_addr23) else
                    reg24 when (instruction1(16 downto 11) = reg_addr24) else
                    reg25 when (instruction1(16 downto 11) = reg_addr25) else
                    reg26 when (instruction1(16 downto 11) = reg_addr26) else
                    reg27 when (instruction1(16 downto 11) = reg_addr27) else
                    reg28 when (instruction1(16 downto 11) = reg_addr28) else
                    reg29 when (instruction1(16 downto 11) = reg_addr29) else
                    reg30 when (instruction1(16 downto 11) = reg_addr30) else
                    reg31 when (instruction1(16 downto 11) = reg_addr31) else
                    reg32 when (instruction1(16 downto 11) = reg_addr32) else
                    reg33 when (instruction1(16 downto 11) = reg_addr33) else
                    reg34 when (instruction1(16 downto 11) = reg_addr34) else
                    (others => '0');

  inst2_aux_rf_A <= reg1 when (instruction2(22 downto 17) = reg_addr1) else
                    reg2 when (instruction2(22 downto 17) = reg_addr2) else
                    reg3 when (instruction2(22 downto 17) = reg_addr3) else
                    reg4 when (instruction2(22 downto 17) = reg_addr4) else
                    reg5 when (instruction2(22 downto 17) = reg_addr5) else
                    reg6 when (instruction2(22 downto 17) = reg_addr6) else
                    reg7 when (instruction2(22 downto 17) = reg_addr7) else
                    reg8 when (instruction2(22 downto 17) = reg_addr8) else
                    reg9 when (instruction2(22 downto 17) = reg_addr9) else
                    reg10 when (instruction2(22 downto 17) = reg_addr10) else
                    reg11 when (instruction2(22 downto 17) = reg_addr11) else
                    reg12 when (instruction2(22 downto 17) = reg_addr12) else
                    reg13 when (instruction2(22 downto 17) = reg_addr13) else
                    reg14 when (instruction2(22 downto 17) = reg_addr14) else
                    reg15 when (instruction2(22 downto 17) = reg_addr15) else
                    reg16 when (instruction2(22 downto 17) = reg_addr16) else
                    reg17 when (instruction2(22 downto 17) = reg_addr17) else
                    reg18 when (instruction2(22 downto 17) = reg_addr18) else
                    reg19 when (instruction2(22 downto 17) = reg_addr19) else
                    reg20 when (instruction2(22 downto 17) = reg_addr20) else
                    reg21 when (instruction2(22 downto 17) = reg_addr21) else
                    reg22 when (instruction2(22 downto 17) = reg_addr22) else
                    reg23 when (instruction2(22 downto 17) = reg_addr23) else
                    reg24 when (instruction2(22 downto 17) = reg_addr24) else
                    reg25 when (instruction2(22 downto 17) = reg_addr25) else
                    reg26 when (instruction2(22 downto 17) = reg_addr26) else
                    reg27 when (instruction2(22 downto 17) = reg_addr27) else
                    reg28 when (instruction2(22 downto 17) = reg_addr28) else
                    reg29 when (instruction2(22 downto 17) = reg_addr29) else
                    reg30 when (instruction2(22 downto 17) = reg_addr30) else
                    reg31 when (instruction2(22 downto 17) = reg_addr31) else
                    reg32 when (instruction2(22 downto 17) = reg_addr32) else
                    reg33 when (instruction2(22 downto 17) = reg_addr33) else
                    reg34 when (instruction2(22 downto 17) = reg_addr34) else
                    (others => '0');

  inst2_aux_rf_B <= reg1 when (instruction2(16 downto 11) = reg_addr1) else
                    reg2 when (instruction2(16 downto 11) = reg_addr2) else
                    reg3 when (instruction2(16 downto 11) = reg_addr3) else
                    reg4 when (instruction2(16 downto 11) = reg_addr4) else
                    reg5 when (instruction2(16 downto 11) = reg_addr5) else
                    reg6 when (instruction2(16 downto 11) = reg_addr6) else
                    reg7 when (instruction2(16 downto 11) = reg_addr7) else
                    reg8 when (instruction2(16 downto 11) = reg_addr8) else
                    reg9 when (instruction2(16 downto 11) = reg_addr9) else
                    reg10 when (instruction2(16 downto 11) = reg_addr10) else
                    reg11 when (instruction2(16 downto 11) = reg_addr11) else
                    reg12 when (instruction2(16 downto 11) = reg_addr12) else
                    reg13 when (instruction2(16 downto 11) = reg_addr13) else
                    reg14 when (instruction2(16 downto 11) = reg_addr14) else
                    reg15 when (instruction2(16 downto 11) = reg_addr15) else
                    reg16 when (instruction2(16 downto 11) = reg_addr16) else
                    reg17 when (instruction2(16 downto 11) = reg_addr17) else
                    reg18 when (instruction2(16 downto 11) = reg_addr18) else
                    reg19 when (instruction2(16 downto 11) = reg_addr19) else
                    reg20 when (instruction2(16 downto 11) = reg_addr20) else
                    reg21 when (instruction2(16 downto 11) = reg_addr21) else
                    reg22 when (instruction2(16 downto 11) = reg_addr22) else
                    reg23 when (instruction2(16 downto 11) = reg_addr23) else
                    reg24 when (instruction2(16 downto 11) = reg_addr24) else
                    reg25 when (instruction2(16 downto 11) = reg_addr25) else
                    reg26 when (instruction2(16 downto 11) = reg_addr26) else
                    reg27 when (instruction2(16 downto 11) = reg_addr27) else
                    reg28 when (instruction2(16 downto 11) = reg_addr28) else
                    reg29 when (instruction2(16 downto 11) = reg_addr29) else
                    reg30 when (instruction2(16 downto 11) = reg_addr30) else
                    reg31 when (instruction2(16 downto 11) = reg_addr31) else
                    reg32 when (instruction2(16 downto 11) = reg_addr32) else
                    reg33 when (instruction2(16 downto 11) = reg_addr33) else
                    reg34 when (instruction2(16 downto 11) = reg_addr34) else
                    (others => '0');

  inst3_aux_rf_A <= reg1 when (instruction3(22 downto 17) = reg_addr1) else
                  reg2 when (instruction3(22 downto 17) = reg_addr2) else
                  reg3 when (instruction3(22 downto 17) = reg_addr3) else
                  reg4 when (instruction3(22 downto 17) = reg_addr4) else
                  reg5 when (instruction3(22 downto 17) = reg_addr5) else
                  reg6 when (instruction3(22 downto 17) = reg_addr6) else
                  reg7 when (instruction3(22 downto 17) = reg_addr7) else
                  reg8 when (instruction3(22 downto 17) = reg_addr8) else
                  reg9 when (instruction3(22 downto 17) = reg_addr9) else
                  reg10 when (instruction3(22 downto 17) = reg_addr10) else
                  reg11 when (instruction3(22 downto 17) = reg_addr11) else
                  reg12 when (instruction3(22 downto 17) = reg_addr12) else
                  reg13 when (instruction3(22 downto 17) = reg_addr13) else
                  reg14 when (instruction3(22 downto 17) = reg_addr14) else
                  reg15 when (instruction3(22 downto 17) = reg_addr15) else
                  reg16 when (instruction3(22 downto 17) = reg_addr16) else
                  reg17 when (instruction3(22 downto 17) = reg_addr17) else
                  reg18 when (instruction3(22 downto 17) = reg_addr18) else
                  reg19 when (instruction3(22 downto 17) = reg_addr19) else
                  reg20 when (instruction3(22 downto 17) = reg_addr20) else
                  reg21 when (instruction3(22 downto 17) = reg_addr21) else
                  reg22 when (instruction3(22 downto 17) = reg_addr22) else
                  reg23 when (instruction3(22 downto 17) = reg_addr23) else
                  reg24 when (instruction3(22 downto 17) = reg_addr24) else
                  reg25 when (instruction3(22 downto 17) = reg_addr25) else
                  reg26 when (instruction3(22 downto 17) = reg_addr26) else
                  reg27 when (instruction3(22 downto 17) = reg_addr27) else
                  reg28 when (instruction3(22 downto 17) = reg_addr28) else
                  reg29 when (instruction3(22 downto 17) = reg_addr29) else
                  reg30 when (instruction3(22 downto 17) = reg_addr30) else
                  reg31 when (instruction3(22 downto 17) = reg_addr31) else
                  reg32 when (instruction3(22 downto 17) = reg_addr32) else
                  reg33 when (instruction3(22 downto 17) = reg_addr33) else
                  reg34 when (instruction3(22 downto 17) = reg_addr34) else
                  (others => '0');

  inst3_aux_rf_B <= reg1 when (instruction3(16 downto 11) = reg_addr1) else
                  reg2 when (instruction3(16 downto 11) = reg_addr2) else
                  reg3 when (instruction3(16 downto 11) = reg_addr3) else
                  reg4 when (instruction3(16 downto 11) = reg_addr4) else
                  reg5 when (instruction3(16 downto 11) = reg_addr5) else
                  reg6 when (instruction3(16 downto 11) = reg_addr6) else
                  reg7 when (instruction3(16 downto 11) = reg_addr7) else
                  reg8 when (instruction3(16 downto 11) = reg_addr8) else
                  reg9 when (instruction3(16 downto 11) = reg_addr9) else
                  reg10 when (instruction3(16 downto 11) = reg_addr10) else
                  reg11 when (instruction3(16 downto 11) = reg_addr11) else
                  reg12 when (instruction3(16 downto 11) = reg_addr12) else
                  reg13 when (instruction3(16 downto 11) = reg_addr13) else
                  reg14 when (instruction3(16 downto 11) = reg_addr14) else
                  reg15 when (instruction3(16 downto 11) = reg_addr15) else
                  reg16 when (instruction3(16 downto 11) = reg_addr16) else
                  reg17 when (instruction3(16 downto 11) = reg_addr17) else
                  reg18 when (instruction3(16 downto 11) = reg_addr18) else
                  reg19 when (instruction3(16 downto 11) = reg_addr19) else
                  reg20 when (instruction3(16 downto 11) = reg_addr20) else
                  reg21 when (instruction3(16 downto 11) = reg_addr21) else
                  reg22 when (instruction3(16 downto 11) = reg_addr22) else
                  reg23 when (instruction3(16 downto 11) = reg_addr23) else
                  reg24 when (instruction3(16 downto 11) = reg_addr24) else
                  reg25 when (instruction3(16 downto 11) = reg_addr25) else
                  reg26 when (instruction3(16 downto 11) = reg_addr26) else
                  reg27 when (instruction3(16 downto 11) = reg_addr27) else
                  reg28 when (instruction3(16 downto 11) = reg_addr28) else
                  reg29 when (instruction3(16 downto 11) = reg_addr29) else
                  reg30 when (instruction3(16 downto 11) = reg_addr30) else
                  reg31 when (instruction3(16 downto 11) = reg_addr31) else
                  reg32 when (instruction3(16 downto 11) = reg_addr32) else
                  reg33 when (instruction3(16 downto 11) = reg_addr33) else
                  reg34 when (instruction3(16 downto 11) = reg_addr34) else
                  (others => '0');

  inst4_aux_rf_A <= reg1 when (instruction4(22 downto 17) = reg_addr1) else
                  reg2 when (instruction4(22 downto 17) = reg_addr2) else
                  reg3 when (instruction4(22 downto 17) = reg_addr3) else
                  reg4 when (instruction4(22 downto 17) = reg_addr4) else
                  reg5 when (instruction4(22 downto 17) = reg_addr5) else
                  reg6 when (instruction4(22 downto 17) = reg_addr6) else
                  reg7 when (instruction4(22 downto 17) = reg_addr7) else
                  reg8 when (instruction4(22 downto 17) = reg_addr8) else
                  reg9 when (instruction4(22 downto 17) = reg_addr9) else
                  reg10 when (instruction4(22 downto 17) = reg_addr10) else
                  reg11 when (instruction4(22 downto 17) = reg_addr11) else
                  reg12 when (instruction4(22 downto 17) = reg_addr12) else
                  reg13 when (instruction4(22 downto 17) = reg_addr13) else
                  reg14 when (instruction4(22 downto 17) = reg_addr14) else
                  reg15 when (instruction4(22 downto 17) = reg_addr15) else
                  reg16 when (instruction4(22 downto 17) = reg_addr16) else
                  reg17 when (instruction4(22 downto 17) = reg_addr17) else
                  reg18 when (instruction4(22 downto 17) = reg_addr18) else
                  reg19 when (instruction4(22 downto 17) = reg_addr19) else
                  reg20 when (instruction4(22 downto 17) = reg_addr20) else
                  reg21 when (instruction4(22 downto 17) = reg_addr21) else
                  reg22 when (instruction4(22 downto 17) = reg_addr22) else
                  reg23 when (instruction4(22 downto 17) = reg_addr23) else
                  reg24 when (instruction4(22 downto 17) = reg_addr24) else
                  reg25 when (instruction4(22 downto 17) = reg_addr25) else
                  reg26 when (instruction4(22 downto 17) = reg_addr26) else
                  reg27 when (instruction4(22 downto 17) = reg_addr27) else
                  reg28 when (instruction4(22 downto 17) = reg_addr28) else
                  reg29 when (instruction4(22 downto 17) = reg_addr29) else
                  reg30 when (instruction4(22 downto 17) = reg_addr30) else
                  reg31 when (instruction4(22 downto 17) = reg_addr31) else
                  reg32 when (instruction4(22 downto 17) = reg_addr32) else
                  reg33 when (instruction4(22 downto 17) = reg_addr33) else
                  reg34 when (instruction4(22 downto 17) = reg_addr34) else
                  (others => '0');

  inst4_aux_rf_B <= reg1 when (instruction4(16 downto 11) = reg_addr1) else
                  reg2 when (instruction4(16 downto 11) = reg_addr2) else
                  reg3 when (instruction4(16 downto 11) = reg_addr3) else
                  reg4 when (instruction4(16 downto 11) = reg_addr4) else
                  reg5 when (instruction4(16 downto 11) = reg_addr5) else
                  reg6 when (instruction4(16 downto 11) = reg_addr6) else
                  reg7 when (instruction4(16 downto 11) = reg_addr7) else
                  reg8 when (instruction4(16 downto 11) = reg_addr8) else
                  reg9 when (instruction4(16 downto 11) = reg_addr9) else
                  reg10 when (instruction4(16 downto 11) = reg_addr10) else
                  reg11 when (instruction4(16 downto 11) = reg_addr11) else
                  reg12 when (instruction4(16 downto 11) = reg_addr12) else
                  reg13 when (instruction4(16 downto 11) = reg_addr13) else
                  reg14 when (instruction4(16 downto 11) = reg_addr14) else
                  reg15 when (instruction4(16 downto 11) = reg_addr15) else
                  reg16 when (instruction4(16 downto 11) = reg_addr16) else
                  reg17 when (instruction4(16 downto 11) = reg_addr17) else
                  reg18 when (instruction4(16 downto 11) = reg_addr18) else
                  reg19 when (instruction4(16 downto 11) = reg_addr19) else
                  reg20 when (instruction4(16 downto 11) = reg_addr20) else
                  reg21 when (instruction4(16 downto 11) = reg_addr21) else
                  reg22 when (instruction4(16 downto 11) = reg_addr22) else
                  reg23 when (instruction4(16 downto 11) = reg_addr23) else
                  reg24 when (instruction4(16 downto 11) = reg_addr24) else
                  reg25 when (instruction4(16 downto 11) = reg_addr25) else
                  reg26 when (instruction4(16 downto 11) = reg_addr26) else
                  reg27 when (instruction4(16 downto 11) = reg_addr27) else
                  reg28 when (instruction4(16 downto 11) = reg_addr28) else
                  reg29 when (instruction4(16 downto 11) = reg_addr29) else
                  reg30 when (instruction4(16 downto 11) = reg_addr30) else
                  reg31 when (instruction4(16 downto 11) = reg_addr31) else
                  reg32 when (instruction4(16 downto 11) = reg_addr32) else
                  reg33 when (instruction4(16 downto 11) = reg_addr33) else
                  reg34 when (instruction4(16 downto 11) = reg_addr34) else
                  (others => '0');

  inst5_aux_rf_A <= reg1 when (instruction5(22 downto 17) = reg_addr1) else
                    reg2 when (instruction5(22 downto 17) = reg_addr2) else
                    reg3 when (instruction5(22 downto 17) = reg_addr3) else
                    reg4 when (instruction5(22 downto 17) = reg_addr4) else
                    reg5 when (instruction5(22 downto 17) = reg_addr5) else
                    reg6 when (instruction5(22 downto 17) = reg_addr6) else
                    reg7 when (instruction5(22 downto 17) = reg_addr7) else
                    reg8 when (instruction5(22 downto 17) = reg_addr8) else
                    reg9 when (instruction5(22 downto 17) = reg_addr9) else
                    reg10 when (instruction5(22 downto 17) = reg_addr10) else
                    reg11 when (instruction5(22 downto 17) = reg_addr11) else
                    reg12 when (instruction5(22 downto 17) = reg_addr12) else
                    reg13 when (instruction5(22 downto 17) = reg_addr13) else
                    reg14 when (instruction5(22 downto 17) = reg_addr14) else
                    reg15 when (instruction5(22 downto 17) = reg_addr15) else
                    reg16 when (instruction5(22 downto 17) = reg_addr16) else
                    reg17 when (instruction5(22 downto 17) = reg_addr17) else
                    reg18 when (instruction5(22 downto 17) = reg_addr18) else
                    reg19 when (instruction5(22 downto 17) = reg_addr19) else
                    reg20 when (instruction5(22 downto 17) = reg_addr20) else
                    reg21 when (instruction5(22 downto 17) = reg_addr21) else
                    reg22 when (instruction5(22 downto 17) = reg_addr22) else
                    reg23 when (instruction5(22 downto 17) = reg_addr23) else
                    reg24 when (instruction5(22 downto 17) = reg_addr24) else
                    reg25 when (instruction5(22 downto 17) = reg_addr25) else
                    reg26 when (instruction5(22 downto 17) = reg_addr26) else
                    reg27 when (instruction5(22 downto 17) = reg_addr27) else
                    reg28 when (instruction5(22 downto 17) = reg_addr28) else
                    reg29 when (instruction5(22 downto 17) = reg_addr29) else
                    reg30 when (instruction5(22 downto 17) = reg_addr30) else
                    reg31 when (instruction5(22 downto 17) = reg_addr31) else
                    reg32 when (instruction5(22 downto 17) = reg_addr32) else
                    reg33 when (instruction5(22 downto 17) = reg_addr33) else
                    reg34 when (instruction5(22 downto 17) = reg_addr34) else
                    (others => '0');

  inst5_aux_rf_B <= reg1 when (instruction5(16 downto 11) = reg_addr1) else
                    reg2 when (instruction5(16 downto 11) = reg_addr2) else
                    reg3 when (instruction5(16 downto 11) = reg_addr3) else
                    reg4 when (instruction5(16 downto 11) = reg_addr4) else
                    reg5 when (instruction5(16 downto 11) = reg_addr5) else
                    reg6 when (instruction5(16 downto 11) = reg_addr6) else
                    reg7 when (instruction5(16 downto 11) = reg_addr7) else
                    reg8 when (instruction5(16 downto 11) = reg_addr8) else
                    reg9 when (instruction5(16 downto 11) = reg_addr9) else
                    reg10 when (instruction5(16 downto 11) = reg_addr10) else
                    reg11 when (instruction5(16 downto 11) = reg_addr11) else
                    reg12 when (instruction5(16 downto 11) = reg_addr12) else
                    reg13 when (instruction5(16 downto 11) = reg_addr13) else
                    reg14 when (instruction5(16 downto 11) = reg_addr14) else
                    reg15 when (instruction5(16 downto 11) = reg_addr15) else
                    reg16 when (instruction5(16 downto 11) = reg_addr16) else
                    reg17 when (instruction5(16 downto 11) = reg_addr17) else
                    reg18 when (instruction5(16 downto 11) = reg_addr18) else
                    reg19 when (instruction5(16 downto 11) = reg_addr19) else
                    reg20 when (instruction5(16 downto 11) = reg_addr20) else
                    reg21 when (instruction5(16 downto 11) = reg_addr21) else
                    reg22 when (instruction5(16 downto 11) = reg_addr22) else
                    reg23 when (instruction5(16 downto 11) = reg_addr23) else
                    reg24 when (instruction5(16 downto 11) = reg_addr24) else
                    reg25 when (instruction5(16 downto 11) = reg_addr25) else
                    reg26 when (instruction5(16 downto 11) = reg_addr26) else
                    reg27 when (instruction5(16 downto 11) = reg_addr27) else
                    reg28 when (instruction5(16 downto 11) = reg_addr28) else
                    reg29 when (instruction5(16 downto 11) = reg_addr29) else
                    reg30 when (instruction5(16 downto 11) = reg_addr30) else
                    reg31 when (instruction5(16 downto 11) = reg_addr31) else
                    reg32 when (instruction5(16 downto 11) = reg_addr32) else
                    reg33 when (instruction5(16 downto 11) = reg_addr33) else
                    reg34 when (instruction5(16 downto 11) = reg_addr34) else
                    (others => '0');

  inst6_aux_rf_A <= reg1 when (instruction6(22 downto 17) = reg_addr1) else
                    reg2 when (instruction6(22 downto 17) = reg_addr2) else
                    reg3 when (instruction6(22 downto 17) = reg_addr3) else
                    reg4 when (instruction6(22 downto 17) = reg_addr4) else
                    reg5 when (instruction6(22 downto 17) = reg_addr5) else
                    reg6 when (instruction6(22 downto 17) = reg_addr6) else
                    reg7 when (instruction6(22 downto 17) = reg_addr7) else
                    reg8 when (instruction6(22 downto 17) = reg_addr8) else
                    reg9 when (instruction6(22 downto 17) = reg_addr9) else
                    reg10 when (instruction6(22 downto 17) = reg_addr10) else
                    reg11 when (instruction6(22 downto 17) = reg_addr11) else
                    reg12 when (instruction6(22 downto 17) = reg_addr12) else
                    reg13 when (instruction6(22 downto 17) = reg_addr13) else
                    reg14 when (instruction6(22 downto 17) = reg_addr14) else
                    reg15 when (instruction6(22 downto 17) = reg_addr15) else
                    reg16 when (instruction6(22 downto 17) = reg_addr16) else
                    reg17 when (instruction6(22 downto 17) = reg_addr17) else
                    reg18 when (instruction6(22 downto 17) = reg_addr18) else
                    reg19 when (instruction6(22 downto 17) = reg_addr19) else
                    reg20 when (instruction6(22 downto 17) = reg_addr20) else
                    reg21 when (instruction6(22 downto 17) = reg_addr21) else
                    reg22 when (instruction6(22 downto 17) = reg_addr22) else
                    reg23 when (instruction6(22 downto 17) = reg_addr23) else
                    reg24 when (instruction6(22 downto 17) = reg_addr24) else
                    reg25 when (instruction6(22 downto 17) = reg_addr25) else
                    reg26 when (instruction6(22 downto 17) = reg_addr26) else
                    reg27 when (instruction6(22 downto 17) = reg_addr27) else
                    reg28 when (instruction6(22 downto 17) = reg_addr28) else
                    reg29 when (instruction6(22 downto 17) = reg_addr29) else
                    reg30 when (instruction6(22 downto 17) = reg_addr30) else
                    reg31 when (instruction6(22 downto 17) = reg_addr31) else
                    reg32 when (instruction6(22 downto 17) = reg_addr32) else
                    reg33 when (instruction6(22 downto 17) = reg_addr33) else
                    reg34 when (instruction6(22 downto 17) = reg_addr34) else
                    (others => '0');

  inst6_aux_rf_B <= reg1 when (instruction6(16 downto 11) = reg_addr1) else
                    reg2 when (instruction6(16 downto 11) = reg_addr2) else
                    reg3 when (instruction6(16 downto 11) = reg_addr3) else
                    reg4 when (instruction6(16 downto 11) = reg_addr4) else
                    reg5 when (instruction6(16 downto 11) = reg_addr5) else
                    reg6 when (instruction6(16 downto 11) = reg_addr6) else
                    reg7 when (instruction6(16 downto 11) = reg_addr7) else
                    reg8 when (instruction6(16 downto 11) = reg_addr8) else
                    reg9 when (instruction6(16 downto 11) = reg_addr9) else
                    reg10 when (instruction6(16 downto 11) = reg_addr10) else
                    reg11 when (instruction6(16 downto 11) = reg_addr11) else
                    reg12 when (instruction6(16 downto 11) = reg_addr12) else
                    reg13 when (instruction6(16 downto 11) = reg_addr13) else
                    reg14 when (instruction6(16 downto 11) = reg_addr14) else
                    reg15 when (instruction6(16 downto 11) = reg_addr15) else
                    reg16 when (instruction6(16 downto 11) = reg_addr16) else
                    reg17 when (instruction6(16 downto 11) = reg_addr17) else
                    reg18 when (instruction6(16 downto 11) = reg_addr18) else
                    reg19 when (instruction6(16 downto 11) = reg_addr19) else
                    reg20 when (instruction6(16 downto 11) = reg_addr20) else
                    reg21 when (instruction6(16 downto 11) = reg_addr21) else
                    reg22 when (instruction6(16 downto 11) = reg_addr22) else
                    reg23 when (instruction6(16 downto 11) = reg_addr23) else
                    reg24 when (instruction6(16 downto 11) = reg_addr24) else
                    reg25 when (instruction6(16 downto 11) = reg_addr25) else
                    reg26 when (instruction6(16 downto 11) = reg_addr26) else
                    reg27 when (instruction6(16 downto 11) = reg_addr27) else
                    reg28 when (instruction6(16 downto 11) = reg_addr28) else
                    reg29 when (instruction6(16 downto 11) = reg_addr29) else
                    reg30 when (instruction6(16 downto 11) = reg_addr30) else
                    reg31 when (instruction6(16 downto 11) = reg_addr31) else
                    reg32 when (instruction6(16 downto 11) = reg_addr32) else
                    reg33 when (instruction6(16 downto 11) = reg_addr33) else
                    reg34 when (instruction6(16 downto 11) = reg_addr34) else
                    (others => '0');

  inst7_aux_rf_A <= reg1 when (instruction7(22 downto 17) = reg_addr1) else
                  reg2 when (instruction7(22 downto 17) = reg_addr2) else
                  reg3 when (instruction7(22 downto 17) = reg_addr3) else
                  reg4 when (instruction7(22 downto 17) = reg_addr4) else
                  reg5 when (instruction7(22 downto 17) = reg_addr5) else
                  reg6 when (instruction7(22 downto 17) = reg_addr6) else
                  reg7 when (instruction7(22 downto 17) = reg_addr7) else
                  reg8 when (instruction7(22 downto 17) = reg_addr8) else
                  reg9 when (instruction7(22 downto 17) = reg_addr9) else
                  reg10 when (instruction7(22 downto 17) = reg_addr10) else
                  reg11 when (instruction7(22 downto 17) = reg_addr11) else
                  reg12 when (instruction7(22 downto 17) = reg_addr12) else
                  reg13 when (instruction7(22 downto 17) = reg_addr13) else
                  reg14 when (instruction7(22 downto 17) = reg_addr14) else
                  reg15 when (instruction7(22 downto 17) = reg_addr15) else
                  reg16 when (instruction7(22 downto 17) = reg_addr16) else
                  reg17 when (instruction7(22 downto 17) = reg_addr17) else
                  reg18 when (instruction7(22 downto 17) = reg_addr18) else
                  reg19 when (instruction7(22 downto 17) = reg_addr19) else
                  reg20 when (instruction7(22 downto 17) = reg_addr20) else
                  reg21 when (instruction7(22 downto 17) = reg_addr21) else
                  reg22 when (instruction7(22 downto 17) = reg_addr22) else
                  reg23 when (instruction7(22 downto 17) = reg_addr23) else
                  reg24 when (instruction7(22 downto 17) = reg_addr24) else
                  reg25 when (instruction7(22 downto 17) = reg_addr25) else
                  reg26 when (instruction7(22 downto 17) = reg_addr26) else
                  reg27 when (instruction7(22 downto 17) = reg_addr27) else
                  reg28 when (instruction7(22 downto 17) = reg_addr28) else
                  reg29 when (instruction7(22 downto 17) = reg_addr29) else
                  reg30 when (instruction7(22 downto 17) = reg_addr30) else
                  reg31 when (instruction7(22 downto 17) = reg_addr31) else
                  reg32 when (instruction7(22 downto 17) = reg_addr32) else
                  reg33 when (instruction7(22 downto 17) = reg_addr33) else
                  reg34 when (instruction7(22 downto 17) = reg_addr34) else
                  (others => '0');

  inst7_aux_rf_B <= reg1 when (instruction7(16 downto 11) = reg_addr1) else
                  reg2 when (instruction7(16 downto 11) = reg_addr2) else
                  reg3 when (instruction7(16 downto 11) = reg_addr3) else
                  reg4 when (instruction7(16 downto 11) = reg_addr4) else
                  reg5 when (instruction7(16 downto 11) = reg_addr5) else
                  reg6 when (instruction7(16 downto 11) = reg_addr6) else
                  reg7 when (instruction7(16 downto 11) = reg_addr7) else
                  reg8 when (instruction7(16 downto 11) = reg_addr8) else
                  reg9 when (instruction7(16 downto 11) = reg_addr9) else
                  reg10 when (instruction7(16 downto 11) = reg_addr10) else
                  reg11 when (instruction7(16 downto 11) = reg_addr11) else
                  reg12 when (instruction7(16 downto 11) = reg_addr12) else
                  reg13 when (instruction7(16 downto 11) = reg_addr13) else
                  reg14 when (instruction7(16 downto 11) = reg_addr14) else
                  reg15 when (instruction7(16 downto 11) = reg_addr15) else
                  reg16 when (instruction7(16 downto 11) = reg_addr16) else
                  reg17 when (instruction7(16 downto 11) = reg_addr17) else
                  reg18 when (instruction7(16 downto 11) = reg_addr18) else
                  reg19 when (instruction7(16 downto 11) = reg_addr19) else
                  reg20 when (instruction7(16 downto 11) = reg_addr20) else
                  reg21 when (instruction7(16 downto 11) = reg_addr21) else
                  reg22 when (instruction7(16 downto 11) = reg_addr22) else
                  reg23 when (instruction7(16 downto 11) = reg_addr23) else
                  reg24 when (instruction7(16 downto 11) = reg_addr24) else
                  reg25 when (instruction7(16 downto 11) = reg_addr25) else
                  reg26 when (instruction7(16 downto 11) = reg_addr26) else
                  reg27 when (instruction7(16 downto 11) = reg_addr27) else
                  reg28 when (instruction7(16 downto 11) = reg_addr28) else
                  reg29 when (instruction7(16 downto 11) = reg_addr29) else
                  reg30 when (instruction7(16 downto 11) = reg_addr30) else
                  reg31 when (instruction7(16 downto 11) = reg_addr31) else
                  reg32 when (instruction7(16 downto 11) = reg_addr32) else
                  reg33 when (instruction7(16 downto 11) = reg_addr33) else
                  reg34 when (instruction7(16 downto 11) = reg_addr34) else
                  (others => '0');

  inst8_aux_rf_A <= reg1 when (instruction8(22 downto 17) = reg_addr1) else
                  reg2 when (instruction8(22 downto 17) = reg_addr2) else
                  reg3 when (instruction8(22 downto 17) = reg_addr3) else
                  reg4 when (instruction8(22 downto 17) = reg_addr4) else
                  reg5 when (instruction8(22 downto 17) = reg_addr5) else
                  reg6 when (instruction8(22 downto 17) = reg_addr6) else
                  reg7 when (instruction8(22 downto 17) = reg_addr7) else
                  reg8 when (instruction8(22 downto 17) = reg_addr8) else
                  reg9 when (instruction8(22 downto 17) = reg_addr9) else
                  reg10 when (instruction8(22 downto 17) = reg_addr10) else
                  reg11 when (instruction8(22 downto 17) = reg_addr11) else
                  reg12 when (instruction8(22 downto 17) = reg_addr12) else
                  reg13 when (instruction8(22 downto 17) = reg_addr13) else
                  reg14 when (instruction8(22 downto 17) = reg_addr14) else
                  reg15 when (instruction8(22 downto 17) = reg_addr15) else
                  reg16 when (instruction8(22 downto 17) = reg_addr16) else
                  reg17 when (instruction8(22 downto 17) = reg_addr17) else
                  reg18 when (instruction8(22 downto 17) = reg_addr18) else
                  reg19 when (instruction8(22 downto 17) = reg_addr19) else
                  reg20 when (instruction8(22 downto 17) = reg_addr20) else
                  reg21 when (instruction8(22 downto 17) = reg_addr21) else
                  reg22 when (instruction8(22 downto 17) = reg_addr22) else
                  reg23 when (instruction8(22 downto 17) = reg_addr23) else
                  reg24 when (instruction8(22 downto 17) = reg_addr24) else
                  reg25 when (instruction8(22 downto 17) = reg_addr25) else
                  reg26 when (instruction8(22 downto 17) = reg_addr26) else
                  reg27 when (instruction8(22 downto 17) = reg_addr27) else
                  reg28 when (instruction8(22 downto 17) = reg_addr28) else
                  reg29 when (instruction8(22 downto 17) = reg_addr29) else
                  reg30 when (instruction8(22 downto 17) = reg_addr30) else
                  reg31 when (instruction8(22 downto 17) = reg_addr31) else
                  reg32 when (instruction8(22 downto 17) = reg_addr32) else
                  reg33 when (instruction8(22 downto 17) = reg_addr33) else
                  reg34 when (instruction8(22 downto 17) = reg_addr34) else
                  (others => '0');

  inst8_aux_rf_B <= reg1 when (instruction8(16 downto 11) = reg_addr1) else
                  reg2 when (instruction8(16 downto 11) = reg_addr2) else
                  reg3 when (instruction8(16 downto 11) = reg_addr3) else
                  reg4 when (instruction8(16 downto 11) = reg_addr4) else
                  reg5 when (instruction8(16 downto 11) = reg_addr5) else
                  reg6 when (instruction8(16 downto 11) = reg_addr6) else
                  reg7 when (instruction8(16 downto 11) = reg_addr7) else
                  reg8 when (instruction8(16 downto 11) = reg_addr8) else
                  reg9 when (instruction8(16 downto 11) = reg_addr9) else
                  reg10 when (instruction8(16 downto 11) = reg_addr10) else
                  reg11 when (instruction8(16 downto 11) = reg_addr11) else
                  reg12 when (instruction8(16 downto 11) = reg_addr12) else
                  reg13 when (instruction8(16 downto 11) = reg_addr13) else
                  reg14 when (instruction8(16 downto 11) = reg_addr14) else
                  reg15 when (instruction8(16 downto 11) = reg_addr15) else
                  reg16 when (instruction8(16 downto 11) = reg_addr16) else
                  reg17 when (instruction8(16 downto 11) = reg_addr17) else
                  reg18 when (instruction8(16 downto 11) = reg_addr18) else
                  reg19 when (instruction8(16 downto 11) = reg_addr19) else
                  reg20 when (instruction8(16 downto 11) = reg_addr20) else
                  reg21 when (instruction8(16 downto 11) = reg_addr21) else
                  reg22 when (instruction8(16 downto 11) = reg_addr22) else
                  reg23 when (instruction8(16 downto 11) = reg_addr23) else
                  reg24 when (instruction8(16 downto 11) = reg_addr24) else
                  reg25 when (instruction8(16 downto 11) = reg_addr25) else
                  reg26 when (instruction8(16 downto 11) = reg_addr26) else
                  reg27 when (instruction8(16 downto 11) = reg_addr27) else
                  reg28 when (instruction8(16 downto 11) = reg_addr28) else
                  reg29 when (instruction8(16 downto 11) = reg_addr29) else
                  reg30 when (instruction8(16 downto 11) = reg_addr30) else
                  reg31 when (instruction8(16 downto 11) = reg_addr31) else
                  reg32 when (instruction8(16 downto 11) = reg_addr32) else
                  reg33 when (instruction8(16 downto 11) = reg_addr33) else
                  reg34 when (instruction8(16 downto 11) = reg_addr34) else
                  (others => '0');

  inst9_aux_rf_A <= reg1 when (instruction9(22 downto 17) = reg_addr1) else
                    reg2 when (instruction9(22 downto 17) = reg_addr2) else
                    reg3 when (instruction9(22 downto 17) = reg_addr3) else
                    reg4 when (instruction9(22 downto 17) = reg_addr4) else
                    reg5 when (instruction9(22 downto 17) = reg_addr5) else
                    reg6 when (instruction9(22 downto 17) = reg_addr6) else
                    reg7 when (instruction9(22 downto 17) = reg_addr7) else
                    reg8 when (instruction9(22 downto 17) = reg_addr8) else
                    reg9 when (instruction9(22 downto 17) = reg_addr9) else
                    reg10 when (instruction9(22 downto 17) = reg_addr10) else
                    reg11 when (instruction9(22 downto 17) = reg_addr11) else
                    reg12 when (instruction9(22 downto 17) = reg_addr12) else
                    reg13 when (instruction9(22 downto 17) = reg_addr13) else
                    reg14 when (instruction9(22 downto 17) = reg_addr14) else
                    reg15 when (instruction9(22 downto 17) = reg_addr15) else
                    reg16 when (instruction9(22 downto 17) = reg_addr16) else
                    reg17 when (instruction9(22 downto 17) = reg_addr17) else
                    reg18 when (instruction9(22 downto 17) = reg_addr18) else
                    reg19 when (instruction9(22 downto 17) = reg_addr19) else
                    reg20 when (instruction9(22 downto 17) = reg_addr20) else
                    reg21 when (instruction9(22 downto 17) = reg_addr21) else
                    reg22 when (instruction9(22 downto 17) = reg_addr22) else
                    reg23 when (instruction9(22 downto 17) = reg_addr23) else
                    reg24 when (instruction9(22 downto 17) = reg_addr24) else
                    reg25 when (instruction9(22 downto 17) = reg_addr25) else
                    reg26 when (instruction9(22 downto 17) = reg_addr26) else
                    reg27 when (instruction9(22 downto 17) = reg_addr27) else
                    reg28 when (instruction9(22 downto 17) = reg_addr28) else
                    reg29 when (instruction9(22 downto 17) = reg_addr29) else
                    reg30 when (instruction9(22 downto 17) = reg_addr30) else
                    reg31 when (instruction9(22 downto 17) = reg_addr31) else
                    reg32 when (instruction9(22 downto 17) = reg_addr32) else
                    reg33 when (instruction9(22 downto 17) = reg_addr33) else
                    reg34 when (instruction9(22 downto 17) = reg_addr34) else
                    (others => '0');

  inst9_aux_rf_B <= reg1 when (instruction9(16 downto 11) = reg_addr1) else
                    reg2 when (instruction9(16 downto 11) = reg_addr2) else
                    reg3 when (instruction9(16 downto 11) = reg_addr3) else
                    reg4 when (instruction9(16 downto 11) = reg_addr4) else
                    reg5 when (instruction9(16 downto 11) = reg_addr5) else
                    reg6 when (instruction9(16 downto 11) = reg_addr6) else
                    reg7 when (instruction9(16 downto 11) = reg_addr7) else
                    reg8 when (instruction9(16 downto 11) = reg_addr8) else
                    reg9 when (instruction9(16 downto 11) = reg_addr9) else
                    reg10 when (instruction9(16 downto 11) = reg_addr10) else
                    reg11 when (instruction9(16 downto 11) = reg_addr11) else
                    reg12 when (instruction9(16 downto 11) = reg_addr12) else
                    reg13 when (instruction9(16 downto 11) = reg_addr13) else
                    reg14 when (instruction9(16 downto 11) = reg_addr14) else
                    reg15 when (instruction9(16 downto 11) = reg_addr15) else
                    reg16 when (instruction9(16 downto 11) = reg_addr16) else
                    reg17 when (instruction9(16 downto 11) = reg_addr17) else
                    reg18 when (instruction9(16 downto 11) = reg_addr18) else
                    reg19 when (instruction9(16 downto 11) = reg_addr19) else
                    reg20 when (instruction9(16 downto 11) = reg_addr20) else
                    reg21 when (instruction9(16 downto 11) = reg_addr21) else
                    reg22 when (instruction9(16 downto 11) = reg_addr22) else
                    reg23 when (instruction9(16 downto 11) = reg_addr23) else
                    reg24 when (instruction9(16 downto 11) = reg_addr24) else
                    reg25 when (instruction9(16 downto 11) = reg_addr25) else
                    reg26 when (instruction9(16 downto 11) = reg_addr26) else
                    reg27 when (instruction9(16 downto 11) = reg_addr27) else
                    reg28 when (instruction9(16 downto 11) = reg_addr28) else
                    reg29 when (instruction9(16 downto 11) = reg_addr29) else
                    reg30 when (instruction9(16 downto 11) = reg_addr30) else
                    reg31 when (instruction9(16 downto 11) = reg_addr31) else
                    reg32 when (instruction9(16 downto 11) = reg_addr32) else
                    reg33 when (instruction9(16 downto 11) = reg_addr33) else
                    reg34 when (instruction9(16 downto 11) = reg_addr34) else
                    (others => '0');

  inst10_aux_rf_A <= reg1 when (instruction10(22 downto 17) = reg_addr1) else
                    reg2 when (instruction10(22 downto 17) = reg_addr2) else
                    reg3 when (instruction10(22 downto 17) = reg_addr3) else
                    reg4 when (instruction10(22 downto 17) = reg_addr4) else
                    reg5 when (instruction10(22 downto 17) = reg_addr5) else
                    reg6 when (instruction10(22 downto 17) = reg_addr6) else
                    reg7 when (instruction10(22 downto 17) = reg_addr7) else
                    reg8 when (instruction10(22 downto 17) = reg_addr8) else
                    reg9 when (instruction10(22 downto 17) = reg_addr9) else
                    reg10 when (instruction10(22 downto 17) = reg_addr10) else
                    reg11 when (instruction10(22 downto 17) = reg_addr11) else
                    reg12 when (instruction10(22 downto 17) = reg_addr12) else
                    reg13 when (instruction10(22 downto 17) = reg_addr13) else
                    reg14 when (instruction10(22 downto 17) = reg_addr14) else
                    reg15 when (instruction10(22 downto 17) = reg_addr15) else
                    reg16 when (instruction10(22 downto 17) = reg_addr16) else
                    reg17 when (instruction10(22 downto 17) = reg_addr17) else
                    reg18 when (instruction10(22 downto 17) = reg_addr18) else
                    reg19 when (instruction10(22 downto 17) = reg_addr19) else
                    reg20 when (instruction10(22 downto 17) = reg_addr20) else
                    reg21 when (instruction10(22 downto 17) = reg_addr21) else
                    reg22 when (instruction10(22 downto 17) = reg_addr22) else
                    reg23 when (instruction10(22 downto 17) = reg_addr23) else
                    reg24 when (instruction10(22 downto 17) = reg_addr24) else
                    reg25 when (instruction10(22 downto 17) = reg_addr25) else
                    reg26 when (instruction10(22 downto 17) = reg_addr26) else
                    reg27 when (instruction10(22 downto 17) = reg_addr27) else
                    reg28 when (instruction10(22 downto 17) = reg_addr28) else
                    reg29 when (instruction10(22 downto 17) = reg_addr29) else
                    reg30 when (instruction10(22 downto 17) = reg_addr30) else
                    reg31 when (instruction10(22 downto 17) = reg_addr31) else
                    reg32 when (instruction10(22 downto 17) = reg_addr32) else
                    reg33 when (instruction10(22 downto 17) = reg_addr33) else
                    reg34 when (instruction10(22 downto 17) = reg_addr34) else
                    (others => '0');

  inst10_aux_rf_B <= reg1 when (instruction10(16 downto 11) = reg_addr1) else
                    reg2 when (instruction10(16 downto 11) = reg_addr2) else
                    reg3 when (instruction10(16 downto 11) = reg_addr3) else
                    reg4 when (instruction10(16 downto 11) = reg_addr4) else
                    reg5 when (instruction10(16 downto 11) = reg_addr5) else
                    reg6 when (instruction10(16 downto 11) = reg_addr6) else
                    reg7 when (instruction10(16 downto 11) = reg_addr7) else
                    reg8 when (instruction10(16 downto 11) = reg_addr8) else
                    reg9 when (instruction10(16 downto 11) = reg_addr9) else
                    reg10 when (instruction10(16 downto 11) = reg_addr10) else
                    reg11 when (instruction10(16 downto 11) = reg_addr11) else
                    reg12 when (instruction10(16 downto 11) = reg_addr12) else
                    reg13 when (instruction10(16 downto 11) = reg_addr13) else
                    reg14 when (instruction10(16 downto 11) = reg_addr14) else
                    reg15 when (instruction10(16 downto 11) = reg_addr15) else
                    reg16 when (instruction10(16 downto 11) = reg_addr16) else
                    reg17 when (instruction10(16 downto 11) = reg_addr17) else
                    reg18 when (instruction10(16 downto 11) = reg_addr18) else
                    reg19 when (instruction10(16 downto 11) = reg_addr19) else
                    reg20 when (instruction10(16 downto 11) = reg_addr20) else
                    reg21 when (instruction10(16 downto 11) = reg_addr21) else
                    reg22 when (instruction10(16 downto 11) = reg_addr22) else
                    reg23 when (instruction10(16 downto 11) = reg_addr23) else
                    reg24 when (instruction10(16 downto 11) = reg_addr24) else
                    reg25 when (instruction10(16 downto 11) = reg_addr25) else
                    reg26 when (instruction10(16 downto 11) = reg_addr26) else
                    reg27 when (instruction10(16 downto 11) = reg_addr27) else
                    reg28 when (instruction10(16 downto 11) = reg_addr28) else
                    reg29 when (instruction10(16 downto 11) = reg_addr29) else
                    reg30 when (instruction10(16 downto 11) = reg_addr30) else
                    reg31 when (instruction10(16 downto 11) = reg_addr31) else
                    reg32 when (instruction10(16 downto 11) = reg_addr32) else
                    reg33 when (instruction10(16 downto 11) = reg_addr33) else
                    reg34 when (instruction10(16 downto 11) = reg_addr34) else
                    (others => '0');

  inst11_aux_rf_A <= reg1 when (instruction11(22 downto 17) = reg_addr1) else
                  reg2 when (instruction11(22 downto 17) = reg_addr2) else
                  reg3 when (instruction11(22 downto 17) = reg_addr3) else
                  reg4 when (instruction11(22 downto 17) = reg_addr4) else
                  reg5 when (instruction11(22 downto 17) = reg_addr5) else
                  reg6 when (instruction11(22 downto 17) = reg_addr6) else
                  reg7 when (instruction11(22 downto 17) = reg_addr7) else
                  reg8 when (instruction11(22 downto 17) = reg_addr8) else
                  reg9 when (instruction11(22 downto 17) = reg_addr9) else
                  reg10 when (instruction11(22 downto 17) = reg_addr10) else
                  reg11 when (instruction11(22 downto 17) = reg_addr11) else
                  reg12 when (instruction11(22 downto 17) = reg_addr12) else
                  reg13 when (instruction11(22 downto 17) = reg_addr13) else
                  reg14 when (instruction11(22 downto 17) = reg_addr14) else
                  reg15 when (instruction11(22 downto 17) = reg_addr15) else
                  reg16 when (instruction11(22 downto 17) = reg_addr16) else
                  reg17 when (instruction11(22 downto 17) = reg_addr17) else
                  reg18 when (instruction11(22 downto 17) = reg_addr18) else
                  reg19 when (instruction11(22 downto 17) = reg_addr19) else
                  reg20 when (instruction11(22 downto 17) = reg_addr20) else
                  reg21 when (instruction11(22 downto 17) = reg_addr21) else
                  reg22 when (instruction11(22 downto 17) = reg_addr22) else
                  reg23 when (instruction11(22 downto 17) = reg_addr23) else
                  reg24 when (instruction11(22 downto 17) = reg_addr24) else
                  reg25 when (instruction11(22 downto 17) = reg_addr25) else
                  reg26 when (instruction11(22 downto 17) = reg_addr26) else
                  reg27 when (instruction11(22 downto 17) = reg_addr27) else
                  reg28 when (instruction11(22 downto 17) = reg_addr28) else
                  reg29 when (instruction11(22 downto 17) = reg_addr29) else
                  reg30 when (instruction11(22 downto 17) = reg_addr30) else
                  reg31 when (instruction11(22 downto 17) = reg_addr31) else
                  reg32 when (instruction11(22 downto 17) = reg_addr32) else
                  reg33 when (instruction11(22 downto 17) = reg_addr33) else
                  reg34 when (instruction11(22 downto 17) = reg_addr34) else
                  (others => '0');

  inst11_aux_rf_B <= reg1 when (instruction11(16 downto 11) = reg_addr1) else
                  reg2 when (instruction11(16 downto 11) = reg_addr2) else
                  reg3 when (instruction11(16 downto 11) = reg_addr3) else
                  reg4 when (instruction11(16 downto 11) = reg_addr4) else
                  reg5 when (instruction11(16 downto 11) = reg_addr5) else
                  reg6 when (instruction11(16 downto 11) = reg_addr6) else
                  reg7 when (instruction11(16 downto 11) = reg_addr7) else
                  reg8 when (instruction11(16 downto 11) = reg_addr8) else
                  reg9 when (instruction11(16 downto 11) = reg_addr9) else
                  reg10 when (instruction11(16 downto 11) = reg_addr10) else
                  reg11 when (instruction11(16 downto 11) = reg_addr11) else
                  reg12 when (instruction11(16 downto 11) = reg_addr12) else
                  reg13 when (instruction11(16 downto 11) = reg_addr13) else
                  reg14 when (instruction11(16 downto 11) = reg_addr14) else
                  reg15 when (instruction11(16 downto 11) = reg_addr15) else
                  reg16 when (instruction11(16 downto 11) = reg_addr16) else
                  reg17 when (instruction11(16 downto 11) = reg_addr17) else
                  reg18 when (instruction11(16 downto 11) = reg_addr18) else
                  reg19 when (instruction11(16 downto 11) = reg_addr19) else
                  reg20 when (instruction11(16 downto 11) = reg_addr20) else
                  reg21 when (instruction11(16 downto 11) = reg_addr21) else
                  reg22 when (instruction11(16 downto 11) = reg_addr22) else
                  reg23 when (instruction11(16 downto 11) = reg_addr23) else
                  reg24 when (instruction11(16 downto 11) = reg_addr24) else
                  reg25 when (instruction11(16 downto 11) = reg_addr25) else
                  reg26 when (instruction11(16 downto 11) = reg_addr26) else
                  reg27 when (instruction11(16 downto 11) = reg_addr27) else
                  reg28 when (instruction11(16 downto 11) = reg_addr28) else
                  reg29 when (instruction11(16 downto 11) = reg_addr29) else
                  reg30 when (instruction11(16 downto 11) = reg_addr30) else
                  reg31 when (instruction11(16 downto 11) = reg_addr31) else
                  reg32 when (instruction11(16 downto 11) = reg_addr32) else
                  reg33 when (instruction11(16 downto 11) = reg_addr33) else
                  reg34 when (instruction11(16 downto 11) = reg_addr34) else
                  (others => '0');

  inst12_aux_rf_A <= reg1 when (instruction12(22 downto 17) = reg_addr1) else
                  reg2 when (instruction12(22 downto 17) = reg_addr2) else
                  reg3 when (instruction12(22 downto 17) = reg_addr3) else
                  reg4 when (instruction12(22 downto 17) = reg_addr4) else
                  reg5 when (instruction12(22 downto 17) = reg_addr5) else
                  reg6 when (instruction12(22 downto 17) = reg_addr6) else
                  reg7 when (instruction12(22 downto 17) = reg_addr7) else
                  reg8 when (instruction12(22 downto 17) = reg_addr8) else
                  reg9 when (instruction12(22 downto 17) = reg_addr9) else
                  reg10 when (instruction12(22 downto 17) = reg_addr10) else
                  reg11 when (instruction12(22 downto 17) = reg_addr11) else
                  reg12 when (instruction12(22 downto 17) = reg_addr12) else
                  reg13 when (instruction12(22 downto 17) = reg_addr13) else
                  reg14 when (instruction12(22 downto 17) = reg_addr14) else
                  reg15 when (instruction12(22 downto 17) = reg_addr15) else
                  reg16 when (instruction12(22 downto 17) = reg_addr16) else
                  reg17 when (instruction12(22 downto 17) = reg_addr17) else
                  reg18 when (instruction12(22 downto 17) = reg_addr18) else
                  reg19 when (instruction12(22 downto 17) = reg_addr19) else
                  reg20 when (instruction12(22 downto 17) = reg_addr20) else
                  reg21 when (instruction12(22 downto 17) = reg_addr21) else
                  reg22 when (instruction12(22 downto 17) = reg_addr22) else
                  reg23 when (instruction12(22 downto 17) = reg_addr23) else
                  reg24 when (instruction12(22 downto 17) = reg_addr24) else
                  reg25 when (instruction12(22 downto 17) = reg_addr25) else
                  reg26 when (instruction12(22 downto 17) = reg_addr26) else
                  reg27 when (instruction12(22 downto 17) = reg_addr27) else
                  reg28 when (instruction12(22 downto 17) = reg_addr28) else
                  reg29 when (instruction12(22 downto 17) = reg_addr29) else
                  reg30 when (instruction12(22 downto 17) = reg_addr30) else
                  reg31 when (instruction12(22 downto 17) = reg_addr31) else
                  reg32 when (instruction12(22 downto 17) = reg_addr32) else
                  reg33 when (instruction12(22 downto 17) = reg_addr33) else
                  reg34 when (instruction12(22 downto 17) = reg_addr34) else
                  (others => '0');

  inst12_aux_rf_B <= reg1 when (instruction12(16 downto 11) = reg_addr1) else
                  reg2 when (instruction12(16 downto 11) = reg_addr2) else
                  reg3 when (instruction12(16 downto 11) = reg_addr3) else
                  reg4 when (instruction12(16 downto 11) = reg_addr4) else
                  reg5 when (instruction12(16 downto 11) = reg_addr5) else
                  reg6 when (instruction12(16 downto 11) = reg_addr6) else
                  reg7 when (instruction12(16 downto 11) = reg_addr7) else
                  reg8 when (instruction12(16 downto 11) = reg_addr8) else
                  reg9 when (instruction12(16 downto 11) = reg_addr9) else
                  reg10 when (instruction12(16 downto 11) = reg_addr10) else
                  reg11 when (instruction12(16 downto 11) = reg_addr11) else
                  reg12 when (instruction12(16 downto 11) = reg_addr12) else
                  reg13 when (instruction12(16 downto 11) = reg_addr13) else
                  reg14 when (instruction12(16 downto 11) = reg_addr14) else
                  reg15 when (instruction12(16 downto 11) = reg_addr15) else
                  reg16 when (instruction12(16 downto 11) = reg_addr16) else
                  reg17 when (instruction12(16 downto 11) = reg_addr17) else
                  reg18 when (instruction12(16 downto 11) = reg_addr18) else
                  reg19 when (instruction12(16 downto 11) = reg_addr19) else
                  reg20 when (instruction12(16 downto 11) = reg_addr20) else
                  reg21 when (instruction12(16 downto 11) = reg_addr21) else
                  reg22 when (instruction12(16 downto 11) = reg_addr22) else
                  reg23 when (instruction12(16 downto 11) = reg_addr23) else
                  reg24 when (instruction12(16 downto 11) = reg_addr24) else
                  reg25 when (instruction12(16 downto 11) = reg_addr25) else
                  reg26 when (instruction12(16 downto 11) = reg_addr26) else
                  reg27 when (instruction12(16 downto 11) = reg_addr27) else
                  reg28 when (instruction12(16 downto 11) = reg_addr28) else
                  reg29 when (instruction12(16 downto 11) = reg_addr29) else
                  reg30 when (instruction12(16 downto 11) = reg_addr30) else
                  reg31 when (instruction12(16 downto 11) = reg_addr31) else
                  reg32 when (instruction12(16 downto 11) = reg_addr32) else
                  reg33 when (instruction12(16 downto 11) = reg_addr33) else
                  reg34 when (instruction12(16 downto 11) = reg_addr34) else
                  (others => '0');

  inst13_aux_rf_A <= reg1 when (instruction13(22 downto 17) = reg_addr1) else
                reg2 when (instruction13(22 downto 17) = reg_addr2) else
                reg3 when (instruction13(22 downto 17) = reg_addr3) else
                reg4 when (instruction13(22 downto 17) = reg_addr4) else
                reg5 when (instruction13(22 downto 17) = reg_addr5) else
                reg6 when (instruction13(22 downto 17) = reg_addr6) else
                reg7 when (instruction13(22 downto 17) = reg_addr7) else
                reg8 when (instruction13(22 downto 17) = reg_addr8) else
                reg9 when (instruction13(22 downto 17) = reg_addr9) else
                reg10 when (instruction13(22 downto 17) = reg_addr10) else
                reg11 when (instruction13(22 downto 17) = reg_addr11) else
                reg12 when (instruction13(22 downto 17) = reg_addr12) else
                reg13 when (instruction13(22 downto 17) = reg_addr13) else
                reg14 when (instruction13(22 downto 17) = reg_addr14) else
                reg15 when (instruction13(22 downto 17) = reg_addr15) else
                reg16 when (instruction13(22 downto 17) = reg_addr16) else
                reg17 when (instruction13(22 downto 17) = reg_addr17) else
                reg18 when (instruction13(22 downto 17) = reg_addr18) else
                reg19 when (instruction13(22 downto 17) = reg_addr19) else
                reg20 when (instruction13(22 downto 17) = reg_addr20) else
                reg21 when (instruction13(22 downto 17) = reg_addr21) else
                reg22 when (instruction13(22 downto 17) = reg_addr22) else
                reg23 when (instruction13(22 downto 17) = reg_addr23) else
                reg24 when (instruction13(22 downto 17) = reg_addr24) else
                reg25 when (instruction13(22 downto 17) = reg_addr25) else
                reg26 when (instruction13(22 downto 17) = reg_addr26) else
                reg27 when (instruction13(22 downto 17) = reg_addr27) else
                reg28 when (instruction13(22 downto 17) = reg_addr28) else
                reg29 when (instruction13(22 downto 17) = reg_addr29) else
                reg30 when (instruction13(22 downto 17) = reg_addr30) else
                reg31 when (instruction13(22 downto 17) = reg_addr31) else
                reg32 when (instruction13(22 downto 17) = reg_addr32) else
                reg33 when (instruction13(22 downto 17) = reg_addr33) else
                reg34 when (instruction13(22 downto 17) = reg_addr34) else
                (others => '0');

  inst13_aux_rf_B <= reg1 when (instruction13(16 downto 11) = reg_addr1) else
                reg2 when (instruction13(16 downto 11) = reg_addr2) else
                reg3 when (instruction13(16 downto 11) = reg_addr3) else
                reg4 when (instruction13(16 downto 11) = reg_addr4) else
                reg5 when (instruction13(16 downto 11) = reg_addr5) else
                reg6 when (instruction13(16 downto 11) = reg_addr6) else
                reg7 when (instruction13(16 downto 11) = reg_addr7) else
                reg8 when (instruction13(16 downto 11) = reg_addr8) else
                reg9 when (instruction13(16 downto 11) = reg_addr9) else
                reg10 when (instruction13(16 downto 11) = reg_addr10) else
                reg11 when (instruction13(16 downto 11) = reg_addr11) else
                reg12 when (instruction13(16 downto 11) = reg_addr12) else
                reg13 when (instruction13(16 downto 11) = reg_addr13) else
                reg14 when (instruction13(16 downto 11) = reg_addr14) else
                reg15 when (instruction13(16 downto 11) = reg_addr15) else
                reg16 when (instruction13(16 downto 11) = reg_addr16) else
                reg17 when (instruction13(16 downto 11) = reg_addr17) else
                reg18 when (instruction13(16 downto 11) = reg_addr18) else
                reg19 when (instruction13(16 downto 11) = reg_addr19) else
                reg20 when (instruction13(16 downto 11) = reg_addr20) else
                reg21 when (instruction13(16 downto 11) = reg_addr21) else
                reg22 when (instruction13(16 downto 11) = reg_addr22) else
                reg23 when (instruction13(16 downto 11) = reg_addr23) else
                reg24 when (instruction13(16 downto 11) = reg_addr24) else
                reg25 when (instruction13(16 downto 11) = reg_addr25) else
                reg26 when (instruction13(16 downto 11) = reg_addr26) else
                reg27 when (instruction13(16 downto 11) = reg_addr27) else
                reg28 when (instruction13(16 downto 11) = reg_addr28) else
                reg29 when (instruction13(16 downto 11) = reg_addr29) else
                reg30 when (instruction13(16 downto 11) = reg_addr30) else
                reg31 when (instruction13(16 downto 11) = reg_addr31) else
                reg32 when (instruction13(16 downto 11) = reg_addr32) else
                reg33 when (instruction13(16 downto 11) = reg_addr33) else
                reg34 when (instruction13(16 downto 11) = reg_addr34) else
                (others => '0');

  inst14_aux_rf_A <= reg1 when (instruction14(22 downto 17) = reg_addr1) else
                reg2 when (instruction14(22 downto 17) = reg_addr2) else
                reg3 when (instruction14(22 downto 17) = reg_addr3) else
                reg4 when (instruction14(22 downto 17) = reg_addr4) else
                reg5 when (instruction14(22 downto 17) = reg_addr5) else
                reg6 when (instruction14(22 downto 17) = reg_addr6) else
                reg7 when (instruction14(22 downto 17) = reg_addr7) else
                reg8 when (instruction14(22 downto 17) = reg_addr8) else
                reg9 when (instruction14(22 downto 17) = reg_addr9) else
                reg10 when (instruction14(22 downto 17) = reg_addr10) else
                reg11 when (instruction14(22 downto 17) = reg_addr11) else
                reg12 when (instruction14(22 downto 17) = reg_addr12) else
                reg13 when (instruction14(22 downto 17) = reg_addr13) else
                reg14 when (instruction14(22 downto 17) = reg_addr14) else
                reg15 when (instruction14(22 downto 17) = reg_addr15) else
                reg16 when (instruction14(22 downto 17) = reg_addr16) else
                reg17 when (instruction14(22 downto 17) = reg_addr17) else
                reg18 when (instruction14(22 downto 17) = reg_addr18) else
                reg19 when (instruction14(22 downto 17) = reg_addr19) else
                reg20 when (instruction14(22 downto 17) = reg_addr20) else
                reg21 when (instruction14(22 downto 17) = reg_addr21) else
                reg22 when (instruction14(22 downto 17) = reg_addr22) else
                reg23 when (instruction14(22 downto 17) = reg_addr23) else
                reg24 when (instruction14(22 downto 17) = reg_addr24) else
                reg25 when (instruction14(22 downto 17) = reg_addr25) else
                reg26 when (instruction14(22 downto 17) = reg_addr26) else
                reg27 when (instruction14(22 downto 17) = reg_addr27) else
                reg28 when (instruction14(22 downto 17) = reg_addr28) else
                reg29 when (instruction14(22 downto 17) = reg_addr29) else
                reg30 when (instruction14(22 downto 17) = reg_addr30) else
                reg31 when (instruction14(22 downto 17) = reg_addr31) else
                reg32 when (instruction14(22 downto 17) = reg_addr32) else
                reg33 when (instruction14(22 downto 17) = reg_addr33) else
                reg34 when (instruction14(22 downto 17) = reg_addr34) else
                (others => '0');

  inst14_aux_rf_B <= reg1 when (instruction14(16 downto 11) = reg_addr1) else
                reg2 when (instruction14(16 downto 11) = reg_addr2) else
                reg3 when (instruction14(16 downto 11) = reg_addr3) else
                reg4 when (instruction14(16 downto 11) = reg_addr4) else
                reg5 when (instruction14(16 downto 11) = reg_addr5) else
                reg6 when (instruction14(16 downto 11) = reg_addr6) else
                reg7 when (instruction14(16 downto 11) = reg_addr7) else
                reg8 when (instruction14(16 downto 11) = reg_addr8) else
                reg9 when (instruction14(16 downto 11) = reg_addr9) else
                reg10 when (instruction14(16 downto 11) = reg_addr10) else
                reg11 when (instruction14(16 downto 11) = reg_addr11) else
                reg12 when (instruction14(16 downto 11) = reg_addr12) else
                reg13 when (instruction14(16 downto 11) = reg_addr13) else
                reg14 when (instruction14(16 downto 11) = reg_addr14) else
                reg15 when (instruction14(16 downto 11) = reg_addr15) else
                reg16 when (instruction14(16 downto 11) = reg_addr16) else
                reg17 when (instruction14(16 downto 11) = reg_addr17) else
                reg18 when (instruction14(16 downto 11) = reg_addr18) else
                reg19 when (instruction14(16 downto 11) = reg_addr19) else
                reg20 when (instruction14(16 downto 11) = reg_addr20) else
                reg21 when (instruction14(16 downto 11) = reg_addr21) else
                reg22 when (instruction14(16 downto 11) = reg_addr22) else
                reg23 when (instruction14(16 downto 11) = reg_addr23) else
                reg24 when (instruction14(16 downto 11) = reg_addr24) else
                reg25 when (instruction14(16 downto 11) = reg_addr25) else
                reg26 when (instruction14(16 downto 11) = reg_addr26) else
                reg27 when (instruction14(16 downto 11) = reg_addr27) else
                reg28 when (instruction14(16 downto 11) = reg_addr28) else
                reg29 when (instruction14(16 downto 11) = reg_addr29) else
                reg30 when (instruction14(16 downto 11) = reg_addr30) else
                reg31 when (instruction14(16 downto 11) = reg_addr31) else
                reg32 when (instruction14(16 downto 11) = reg_addr32) else
                reg33 when (instruction14(16 downto 11) = reg_addr33) else
                reg34 when (instruction14(16 downto 11) = reg_addr34) else
                (others => '0');

  inst15_aux_rf_A <= reg1 when (instruction15(22 downto 17) = reg_addr1) else
                reg2 when (instruction15(22 downto 17) = reg_addr2) else
                reg3 when (instruction15(22 downto 17) = reg_addr3) else
                reg4 when (instruction15(22 downto 17) = reg_addr4) else
                reg5 when (instruction15(22 downto 17) = reg_addr5) else
                reg6 when (instruction15(22 downto 17) = reg_addr6) else
                reg7 when (instruction15(22 downto 17) = reg_addr7) else
                reg8 when (instruction15(22 downto 17) = reg_addr8) else
                reg9 when (instruction15(22 downto 17) = reg_addr9) else
                reg10 when (instruction15(22 downto 17) = reg_addr10) else
                reg11 when (instruction15(22 downto 17) = reg_addr11) else
                reg12 when (instruction15(22 downto 17) = reg_addr12) else
                reg13 when (instruction15(22 downto 17) = reg_addr13) else
                reg14 when (instruction15(22 downto 17) = reg_addr14) else
                reg15 when (instruction15(22 downto 17) = reg_addr15) else
                reg16 when (instruction15(22 downto 17) = reg_addr16) else
                reg17 when (instruction15(22 downto 17) = reg_addr17) else
                reg18 when (instruction15(22 downto 17) = reg_addr18) else
                reg19 when (instruction15(22 downto 17) = reg_addr19) else
                reg20 when (instruction15(22 downto 17) = reg_addr20) else
                reg21 when (instruction15(22 downto 17) = reg_addr21) else
                reg22 when (instruction15(22 downto 17) = reg_addr22) else
                reg23 when (instruction15(22 downto 17) = reg_addr23) else
                reg24 when (instruction15(22 downto 17) = reg_addr24) else
                reg25 when (instruction15(22 downto 17) = reg_addr25) else
                reg26 when (instruction15(22 downto 17) = reg_addr26) else
                reg27 when (instruction15(22 downto 17) = reg_addr27) else
                reg28 when (instruction15(22 downto 17) = reg_addr28) else
                reg29 when (instruction15(22 downto 17) = reg_addr29) else
                reg30 when (instruction15(22 downto 17) = reg_addr30) else
                reg31 when (instruction15(22 downto 17) = reg_addr31) else
                reg32 when (instruction15(22 downto 17) = reg_addr32) else
                reg33 when (instruction15(22 downto 17) = reg_addr33) else
                reg34 when (instruction15(22 downto 17) = reg_addr34) else
                (others => '0');

  inst15_aux_rf_B <= reg1 when (instruction15(16 downto 11) = reg_addr1) else
                reg2 when (instruction15(16 downto 11) = reg_addr2) else
                reg3 when (instruction15(16 downto 11) = reg_addr3) else
                reg4 when (instruction15(16 downto 11) = reg_addr4) else
                reg5 when (instruction15(16 downto 11) = reg_addr5) else
                reg6 when (instruction15(16 downto 11) = reg_addr6) else
                reg7 when (instruction15(16 downto 11) = reg_addr7) else
                reg8 when (instruction15(16 downto 11) = reg_addr8) else
                reg9 when (instruction15(16 downto 11) = reg_addr9) else
                reg10 when (instruction15(16 downto 11) = reg_addr10) else
                reg11 when (instruction15(16 downto 11) = reg_addr11) else
                reg12 when (instruction15(16 downto 11) = reg_addr12) else
                reg13 when (instruction15(16 downto 11) = reg_addr13) else
                reg14 when (instruction15(16 downto 11) = reg_addr14) else
                reg15 when (instruction15(16 downto 11) = reg_addr15) else
                reg16 when (instruction15(16 downto 11) = reg_addr16) else
                reg17 when (instruction15(16 downto 11) = reg_addr17) else
                reg18 when (instruction15(16 downto 11) = reg_addr18) else
                reg19 when (instruction15(16 downto 11) = reg_addr19) else
                reg20 when (instruction15(16 downto 11) = reg_addr20) else
                reg21 when (instruction15(16 downto 11) = reg_addr21) else
                reg22 when (instruction15(16 downto 11) = reg_addr22) else
                reg23 when (instruction15(16 downto 11) = reg_addr23) else
                reg24 when (instruction15(16 downto 11) = reg_addr24) else
                reg25 when (instruction15(16 downto 11) = reg_addr25) else
                reg26 when (instruction15(16 downto 11) = reg_addr26) else
                reg27 when (instruction15(16 downto 11) = reg_addr27) else
                reg28 when (instruction15(16 downto 11) = reg_addr28) else
                reg29 when (instruction15(16 downto 11) = reg_addr29) else
                reg30 when (instruction15(16 downto 11) = reg_addr30) else
                reg31 when (instruction15(16 downto 11) = reg_addr31) else
                reg32 when (instruction15(16 downto 11) = reg_addr32) else
                reg33 when (instruction15(16 downto 11) = reg_addr33) else
                reg34 when (instruction15(16 downto 11) = reg_addr34) else
                (others => '0');

end load_from_rf;
