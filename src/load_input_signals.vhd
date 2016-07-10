-- Load directly auxiliar signals for component inputs.
-- Value from register_file or immediate.
-- Version: 07.10.2016.

library ieee;
use ieee.std_logic_1164.all;

entity load_input_signals is
  generic (
    DATA_WIDTH : natural := 32;
    INST_WIDTH : natural := 36;
    ADDR_RF_WIDTH : natural := 6
  );

  port (
    reg_input1 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg_input2 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg_input3 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg_input4 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg_input5 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg_input6 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg_input7 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg_input8 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg_input9 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg_input10 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg_input11 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg_input12 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg_input13 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg_input14 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg_input15 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg_input16 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg_input17 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg_input18 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg_input19 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg_input20 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg_input21 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg_input22 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg_input23 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg_input24 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg_input25 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg_input26 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg_input27 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg_input28 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg_input29 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg_input30 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg_input31 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg_input32 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg_input33 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    reg_input34 : in std_logic_vector(DATA_WIDTH-1 downto 0);

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

    inst1_aux_A : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst1_aux_B : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst2_aux_A : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst2_aux_B : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst3_aux_A : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst3_aux_B : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst4_aux_A : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst4_aux_B : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst5_aux_A : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst5_aux_B : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst6_aux_A : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst6_aux_B : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst7_aux_A : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst7_aux_B : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst8_aux_A : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst8_aux_B : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst9_aux_A : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst9_aux_B : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst10_aux_A : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst10_aux_B : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst11_aux_A : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst11_aux_B : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst12_aux_A : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst12_aux_B : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst13_aux_A : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst13_aux_B : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst14_aux_A : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst14_aux_B : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst15_aux_A : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst15_aux_B : out std_logic_vector(DATA_WIDTH-1 downto 0)
  );
end load_input_signals;

architecture load_input_signals of load_input_signals is

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
  inst1_aux_A <= reg_input1 when (instruction1(22 downto 17) = reg_addr1) else
                reg_input2 when (instruction1(22 downto 17) = reg_addr2) else
                reg_input3 when (instruction1(22 downto 17) = reg_addr3) else
                reg_input4 when (instruction1(22 downto 17) = reg_addr4) else
                reg_input5 when (instruction1(22 downto 17) = reg_addr5) else
                reg_input6 when (instruction1(22 downto 17) = reg_addr6) else
                reg_input7 when (instruction1(22 downto 17) = reg_addr7) else
                reg_input8 when (instruction1(22 downto 17) = reg_addr8) else
                reg_input9 when (instruction1(22 downto 17) = reg_addr9) else
                reg_input10 when (instruction1(22 downto 17) = reg_addr10) else
                reg_input11 when (instruction1(22 downto 17) = reg_addr11) else
                reg_input12 when (instruction1(22 downto 17) = reg_addr12) else
                reg_input13 when (instruction1(22 downto 17) = reg_addr13) else
                reg_input14 when (instruction1(22 downto 17) = reg_addr14) else
                reg_input15 when (instruction1(22 downto 17) = reg_addr15) else
                reg_input16 when (instruction1(22 downto 17) = reg_addr16) else
                reg_input17 when (instruction1(22 downto 17) = reg_addr17) else
                reg_input18 when (instruction1(22 downto 17) = reg_addr18) else
                reg_input19 when (instruction1(22 downto 17) = reg_addr19) else
                reg_input20 when (instruction1(22 downto 17) = reg_addr20) else
                reg_input21 when (instruction1(22 downto 17) = reg_addr21) else
                reg_input22 when (instruction1(22 downto 17) = reg_addr22) else
                reg_input23 when (instruction1(22 downto 17) = reg_addr23) else
                reg_input24 when (instruction1(22 downto 17) = reg_addr24) else
                reg_input25 when (instruction1(22 downto 17) = reg_addr25) else
                reg_input26 when (instruction1(22 downto 17) = reg_addr26) else
                reg_input27 when (instruction1(22 downto 17) = reg_addr27) else
                reg_input28 when (instruction1(22 downto 17) = reg_addr28) else
                reg_input29 when (instruction1(22 downto 17) = reg_addr29) else
                reg_input30 when (instruction1(22 downto 17) = reg_addr30) else
                reg_input31 when (instruction1(22 downto 17) = reg_addr31) else
                reg_input32 when (instruction1(22 downto 17) = reg_addr32) else
                reg_input33 when (instruction1(22 downto 17) = reg_addr33) else
                reg_input34 when (instruction1(22 downto 17) = reg_addr34) else
                (others => '0');

  inst1_aux_B <= ("000000000000000000000000000" & instruction1(4 downto 0)) -- take shamt when bitshift
                    when (instruction1(33) = '1' and
                    (instruction1(32 downto 29) >= "0100" and instruction1(32 downto 29) <= "0110")) else
                ("0000000000000000" & instruction1(15 downto 0)) when (instruction1(33) = '1') else -- take immediate
                reg_input1 when (instruction1(16 downto 11) = reg_addr1) else
                reg_input2 when (instruction1(16 downto 11) = reg_addr2) else
                reg_input3 when (instruction1(16 downto 11) = reg_addr3) else
                reg_input4 when (instruction1(16 downto 11) = reg_addr4) else
                reg_input5 when (instruction1(16 downto 11) = reg_addr5) else
                reg_input6 when (instruction1(16 downto 11) = reg_addr6) else
                reg_input7 when (instruction1(16 downto 11) = reg_addr7) else
                reg_input8 when (instruction1(16 downto 11) = reg_addr8) else
                reg_input9 when (instruction1(16 downto 11) = reg_addr9) else
                reg_input10 when (instruction1(16 downto 11) = reg_addr10) else
                reg_input11 when (instruction1(16 downto 11) = reg_addr11) else
                reg_input12 when (instruction1(16 downto 11) = reg_addr12) else
                reg_input13 when (instruction1(16 downto 11) = reg_addr13) else
                reg_input14 when (instruction1(16 downto 11) = reg_addr14) else
                reg_input15 when (instruction1(16 downto 11) = reg_addr15) else
                reg_input16 when (instruction1(16 downto 11) = reg_addr16) else
                reg_input17 when (instruction1(16 downto 11) = reg_addr17) else
                reg_input18 when (instruction1(16 downto 11) = reg_addr18) else
                reg_input19 when (instruction1(16 downto 11) = reg_addr19) else
                reg_input20 when (instruction1(16 downto 11) = reg_addr20) else
                reg_input21 when (instruction1(16 downto 11) = reg_addr21) else
                reg_input22 when (instruction1(16 downto 11) = reg_addr22) else
                reg_input23 when (instruction1(16 downto 11) = reg_addr23) else
                reg_input24 when (instruction1(16 downto 11) = reg_addr24) else
                reg_input25 when (instruction1(16 downto 11) = reg_addr25) else
                reg_input26 when (instruction1(16 downto 11) = reg_addr26) else
                reg_input27 when (instruction1(16 downto 11) = reg_addr27) else
                reg_input28 when (instruction1(16 downto 11) = reg_addr28) else
                reg_input29 when (instruction1(16 downto 11) = reg_addr29) else
                reg_input30 when (instruction1(16 downto 11) = reg_addr30) else
                reg_input31 when (instruction1(16 downto 11) = reg_addr31) else
                reg_input32 when (instruction1(16 downto 11) = reg_addr32) else
                reg_input33 when (instruction1(16 downto 11) = reg_addr33) else
                reg_input34 when (instruction1(16 downto 11) = reg_addr34) else
                (others => '0');

  inst2_aux_A <= reg_input1 when (instruction2(22 downto 17) = reg_addr1) else
                reg_input2 when (instruction2(22 downto 17) = reg_addr2) else
                reg_input3 when (instruction2(22 downto 17) = reg_addr3) else
                reg_input4 when (instruction2(22 downto 17) = reg_addr4) else
                reg_input5 when (instruction2(22 downto 17) = reg_addr5) else
                reg_input6 when (instruction2(22 downto 17) = reg_addr6) else
                reg_input7 when (instruction2(22 downto 17) = reg_addr7) else
                reg_input8 when (instruction2(22 downto 17) = reg_addr8) else
                reg_input9 when (instruction2(22 downto 17) = reg_addr9) else
                reg_input10 when (instruction2(22 downto 17) = reg_addr10) else
                reg_input11 when (instruction2(22 downto 17) = reg_addr11) else
                reg_input12 when (instruction2(22 downto 17) = reg_addr12) else
                reg_input13 when (instruction2(22 downto 17) = reg_addr13) else
                reg_input14 when (instruction2(22 downto 17) = reg_addr14) else
                reg_input15 when (instruction2(22 downto 17) = reg_addr15) else
                reg_input16 when (instruction2(22 downto 17) = reg_addr16) else
                reg_input17 when (instruction2(22 downto 17) = reg_addr17) else
                reg_input18 when (instruction2(22 downto 17) = reg_addr18) else
                reg_input19 when (instruction2(22 downto 17) = reg_addr19) else
                reg_input20 when (instruction2(22 downto 17) = reg_addr20) else
                reg_input21 when (instruction2(22 downto 17) = reg_addr21) else
                reg_input22 when (instruction2(22 downto 17) = reg_addr22) else
                reg_input23 when (instruction2(22 downto 17) = reg_addr23) else
                reg_input24 when (instruction2(22 downto 17) = reg_addr24) else
                reg_input25 when (instruction2(22 downto 17) = reg_addr25) else
                reg_input26 when (instruction2(22 downto 17) = reg_addr26) else
                reg_input27 when (instruction2(22 downto 17) = reg_addr27) else
                reg_input28 when (instruction2(22 downto 17) = reg_addr28) else
                reg_input29 when (instruction2(22 downto 17) = reg_addr29) else
                reg_input30 when (instruction2(22 downto 17) = reg_addr30) else
                reg_input31 when (instruction2(22 downto 17) = reg_addr31) else
                reg_input32 when (instruction2(22 downto 17) = reg_addr32) else
                reg_input33 when (instruction2(22 downto 17) = reg_addr33) else
                reg_input34 when (instruction2(22 downto 17) = reg_addr34) else
                (others => '0');

  inst2_aux_B <= ("000000000000000000000000000" & instruction2(4 downto 0))
                    when (instruction2(33) = '1' and
                    (instruction2(32 downto 29) >= "0100" and instruction2(32 downto 29) <= "0110")) else
                ("0000000000000000" & instruction2(15 downto 0)) when (instruction2(33) = '1') else -- take immediate
                reg_input1 when (instruction2(16 downto 11) = reg_addr1) else
                reg_input2 when (instruction2(16 downto 11) = reg_addr2) else
                reg_input3 when (instruction2(16 downto 11) = reg_addr3) else
                reg_input4 when (instruction2(16 downto 11) = reg_addr4) else
                reg_input5 when (instruction2(16 downto 11) = reg_addr5) else
                reg_input6 when (instruction2(16 downto 11) = reg_addr6) else
                reg_input7 when (instruction2(16 downto 11) = reg_addr7) else
                reg_input8 when (instruction2(16 downto 11) = reg_addr8) else
                reg_input9 when (instruction2(16 downto 11) = reg_addr9) else
                reg_input10 when (instruction2(16 downto 11) = reg_addr10) else
                reg_input11 when (instruction2(16 downto 11) = reg_addr11) else
                reg_input12 when (instruction2(16 downto 11) = reg_addr12) else
                reg_input13 when (instruction2(16 downto 11) = reg_addr13) else
                reg_input14 when (instruction2(16 downto 11) = reg_addr14) else
                reg_input15 when (instruction2(16 downto 11) = reg_addr15) else
                reg_input16 when (instruction2(16 downto 11) = reg_addr16) else
                reg_input17 when (instruction2(16 downto 11) = reg_addr17) else
                reg_input18 when (instruction2(16 downto 11) = reg_addr18) else
                reg_input19 when (instruction2(16 downto 11) = reg_addr19) else
                reg_input20 when (instruction2(16 downto 11) = reg_addr20) else
                reg_input21 when (instruction2(16 downto 11) = reg_addr21) else
                reg_input22 when (instruction2(16 downto 11) = reg_addr22) else
                reg_input23 when (instruction2(16 downto 11) = reg_addr23) else
                reg_input24 when (instruction2(16 downto 11) = reg_addr24) else
                reg_input25 when (instruction2(16 downto 11) = reg_addr25) else
                reg_input26 when (instruction2(16 downto 11) = reg_addr26) else
                reg_input27 when (instruction2(16 downto 11) = reg_addr27) else
                reg_input28 when (instruction2(16 downto 11) = reg_addr28) else
                reg_input29 when (instruction2(16 downto 11) = reg_addr29) else
                reg_input30 when (instruction2(16 downto 11) = reg_addr30) else
                reg_input31 when (instruction2(16 downto 11) = reg_addr31) else
                reg_input32 when (instruction2(16 downto 11) = reg_addr32) else
                reg_input33 when (instruction2(16 downto 11) = reg_addr33) else
                reg_input34 when (instruction2(16 downto 11) = reg_addr34) else
                (others => '0');

  inst3_aux_A <= reg_input1 when (instruction3(22 downto 17) = reg_addr1) else
              reg_input2 when (instruction3(22 downto 17) = reg_addr2) else
              reg_input3 when (instruction3(22 downto 17) = reg_addr3) else
              reg_input4 when (instruction3(22 downto 17) = reg_addr4) else
              reg_input5 when (instruction3(22 downto 17) = reg_addr5) else
              reg_input6 when (instruction3(22 downto 17) = reg_addr6) else
              reg_input7 when (instruction3(22 downto 17) = reg_addr7) else
              reg_input8 when (instruction3(22 downto 17) = reg_addr8) else
              reg_input9 when (instruction3(22 downto 17) = reg_addr9) else
              reg_input10 when (instruction3(22 downto 17) = reg_addr10) else
              reg_input11 when (instruction3(22 downto 17) = reg_addr11) else
              reg_input12 when (instruction3(22 downto 17) = reg_addr12) else
              reg_input13 when (instruction3(22 downto 17) = reg_addr13) else
              reg_input14 when (instruction3(22 downto 17) = reg_addr14) else
              reg_input15 when (instruction3(22 downto 17) = reg_addr15) else
              reg_input16 when (instruction3(22 downto 17) = reg_addr16) else
              reg_input17 when (instruction3(22 downto 17) = reg_addr17) else
              reg_input18 when (instruction3(22 downto 17) = reg_addr18) else
              reg_input19 when (instruction3(22 downto 17) = reg_addr19) else
              reg_input20 when (instruction3(22 downto 17) = reg_addr20) else
              reg_input21 when (instruction3(22 downto 17) = reg_addr21) else
              reg_input22 when (instruction3(22 downto 17) = reg_addr22) else
              reg_input23 when (instruction3(22 downto 17) = reg_addr23) else
              reg_input24 when (instruction3(22 downto 17) = reg_addr24) else
              reg_input25 when (instruction3(22 downto 17) = reg_addr25) else
              reg_input26 when (instruction3(22 downto 17) = reg_addr26) else
              reg_input27 when (instruction3(22 downto 17) = reg_addr27) else
              reg_input28 when (instruction3(22 downto 17) = reg_addr28) else
              reg_input29 when (instruction3(22 downto 17) = reg_addr29) else
              reg_input30 when (instruction3(22 downto 17) = reg_addr30) else
              reg_input31 when (instruction3(22 downto 17) = reg_addr31) else
              reg_input32 when (instruction3(22 downto 17) = reg_addr32) else
              reg_input33 when (instruction3(22 downto 17) = reg_addr33) else
              reg_input34 when (instruction3(22 downto 17) = reg_addr34) else
              (others => '0');

  inst3_aux_B <= ("000000000000000000000000000" & instruction3(4 downto 0)) -- take shamt when bitshift
                    when (instruction3(33) = '1' and
                    (instruction3(32 downto 29) >= "0100" and instruction3(32 downto 29) <= "0110")) else
              ("0000000000000000" & instruction3(15 downto 0)) when (instruction3(33) = '1') else -- take immediate
              reg_input1 when (instruction3(16 downto 11) = reg_addr1) else
              reg_input2 when (instruction3(16 downto 11) = reg_addr2) else
              reg_input3 when (instruction3(16 downto 11) = reg_addr3) else
              reg_input4 when (instruction3(16 downto 11) = reg_addr4) else
              reg_input5 when (instruction3(16 downto 11) = reg_addr5) else
              reg_input6 when (instruction3(16 downto 11) = reg_addr6) else
              reg_input7 when (instruction3(16 downto 11) = reg_addr7) else
              reg_input8 when (instruction3(16 downto 11) = reg_addr8) else
              reg_input9 when (instruction3(16 downto 11) = reg_addr9) else
              reg_input10 when (instruction3(16 downto 11) = reg_addr10) else
              reg_input11 when (instruction3(16 downto 11) = reg_addr11) else
              reg_input12 when (instruction3(16 downto 11) = reg_addr12) else
              reg_input13 when (instruction3(16 downto 11) = reg_addr13) else
              reg_input14 when (instruction3(16 downto 11) = reg_addr14) else
              reg_input15 when (instruction3(16 downto 11) = reg_addr15) else
              reg_input16 when (instruction3(16 downto 11) = reg_addr16) else
              reg_input17 when (instruction3(16 downto 11) = reg_addr17) else
              reg_input18 when (instruction3(16 downto 11) = reg_addr18) else
              reg_input19 when (instruction3(16 downto 11) = reg_addr19) else
              reg_input20 when (instruction3(16 downto 11) = reg_addr20) else
              reg_input21 when (instruction3(16 downto 11) = reg_addr21) else
              reg_input22 when (instruction3(16 downto 11) = reg_addr22) else
              reg_input23 when (instruction3(16 downto 11) = reg_addr23) else
              reg_input24 when (instruction3(16 downto 11) = reg_addr24) else
              reg_input25 when (instruction3(16 downto 11) = reg_addr25) else
              reg_input26 when (instruction3(16 downto 11) = reg_addr26) else
              reg_input27 when (instruction3(16 downto 11) = reg_addr27) else
              reg_input28 when (instruction3(16 downto 11) = reg_addr28) else
              reg_input29 when (instruction3(16 downto 11) = reg_addr29) else
              reg_input30 when (instruction3(16 downto 11) = reg_addr30) else
              reg_input31 when (instruction3(16 downto 11) = reg_addr31) else
              reg_input32 when (instruction3(16 downto 11) = reg_addr32) else
              reg_input33 when (instruction3(16 downto 11) = reg_addr33) else
              reg_input34 when (instruction3(16 downto 11) = reg_addr34) else
              (others => '0');

  inst4_aux_A <= reg_input1 when (instruction4(22 downto 17) = reg_addr1) else
              reg_input2 when (instruction4(22 downto 17) = reg_addr2) else
              reg_input3 when (instruction4(22 downto 17) = reg_addr3) else
              reg_input4 when (instruction4(22 downto 17) = reg_addr4) else
              reg_input5 when (instruction4(22 downto 17) = reg_addr5) else
              reg_input6 when (instruction4(22 downto 17) = reg_addr6) else
              reg_input7 when (instruction4(22 downto 17) = reg_addr7) else
              reg_input8 when (instruction4(22 downto 17) = reg_addr8) else
              reg_input9 when (instruction4(22 downto 17) = reg_addr9) else
              reg_input10 when (instruction4(22 downto 17) = reg_addr10) else
              reg_input11 when (instruction4(22 downto 17) = reg_addr11) else
              reg_input12 when (instruction4(22 downto 17) = reg_addr12) else
              reg_input13 when (instruction4(22 downto 17) = reg_addr13) else
              reg_input14 when (instruction4(22 downto 17) = reg_addr14) else
              reg_input15 when (instruction4(22 downto 17) = reg_addr15) else
              reg_input16 when (instruction4(22 downto 17) = reg_addr16) else
              reg_input17 when (instruction4(22 downto 17) = reg_addr17) else
              reg_input18 when (instruction4(22 downto 17) = reg_addr18) else
              reg_input19 when (instruction4(22 downto 17) = reg_addr19) else
              reg_input20 when (instruction4(22 downto 17) = reg_addr20) else
              reg_input21 when (instruction4(22 downto 17) = reg_addr21) else
              reg_input22 when (instruction4(22 downto 17) = reg_addr22) else
              reg_input23 when (instruction4(22 downto 17) = reg_addr23) else
              reg_input24 when (instruction4(22 downto 17) = reg_addr24) else
              reg_input25 when (instruction4(22 downto 17) = reg_addr25) else
              reg_input26 when (instruction4(22 downto 17) = reg_addr26) else
              reg_input27 when (instruction4(22 downto 17) = reg_addr27) else
              reg_input28 when (instruction4(22 downto 17) = reg_addr28) else
              reg_input29 when (instruction4(22 downto 17) = reg_addr29) else
              reg_input30 when (instruction4(22 downto 17) = reg_addr30) else
              reg_input31 when (instruction4(22 downto 17) = reg_addr31) else
              reg_input32 when (instruction4(22 downto 17) = reg_addr32) else
              reg_input33 when (instruction4(22 downto 17) = reg_addr33) else
              reg_input34 when (instruction4(22 downto 17) = reg_addr34) else
              (others => '0');

  inst4_aux_B <= reg_input1 when (instruction4(16 downto 11) = reg_addr1) else
              reg_input2 when (instruction4(16 downto 11) = reg_addr2) else
              reg_input3 when (instruction4(16 downto 11) = reg_addr3) else
              reg_input4 when (instruction4(16 downto 11) = reg_addr4) else
              reg_input5 when (instruction4(16 downto 11) = reg_addr5) else
              reg_input6 when (instruction4(16 downto 11) = reg_addr6) else
              reg_input7 when (instruction4(16 downto 11) = reg_addr7) else
              reg_input8 when (instruction4(16 downto 11) = reg_addr8) else
              reg_input9 when (instruction4(16 downto 11) = reg_addr9) else
              reg_input10 when (instruction4(16 downto 11) = reg_addr10) else
              reg_input11 when (instruction4(16 downto 11) = reg_addr11) else
              reg_input12 when (instruction4(16 downto 11) = reg_addr12) else
              reg_input13 when (instruction4(16 downto 11) = reg_addr13) else
              reg_input14 when (instruction4(16 downto 11) = reg_addr14) else
              reg_input15 when (instruction4(16 downto 11) = reg_addr15) else
              reg_input16 when (instruction4(16 downto 11) = reg_addr16) else
              reg_input17 when (instruction4(16 downto 11) = reg_addr17) else
              reg_input18 when (instruction4(16 downto 11) = reg_addr18) else
              reg_input19 when (instruction4(16 downto 11) = reg_addr19) else
              reg_input20 when (instruction4(16 downto 11) = reg_addr20) else
              reg_input21 when (instruction4(16 downto 11) = reg_addr21) else
              reg_input22 when (instruction4(16 downto 11) = reg_addr22) else
              reg_input23 when (instruction4(16 downto 11) = reg_addr23) else
              reg_input24 when (instruction4(16 downto 11) = reg_addr24) else
              reg_input25 when (instruction4(16 downto 11) = reg_addr25) else
              reg_input26 when (instruction4(16 downto 11) = reg_addr26) else
              reg_input27 when (instruction4(16 downto 11) = reg_addr27) else
              reg_input28 when (instruction4(16 downto 11) = reg_addr28) else
              reg_input29 when (instruction4(16 downto 11) = reg_addr29) else
              reg_input30 when (instruction4(16 downto 11) = reg_addr30) else
              reg_input31 when (instruction4(16 downto 11) = reg_addr31) else
              reg_input32 when (instruction4(16 downto 11) = reg_addr32) else
              reg_input33 when (instruction4(16 downto 11) = reg_addr33) else
              reg_input34 when (instruction4(16 downto 11) = reg_addr34) else
              (others => '0');

  inst5_aux_A <= reg_input1 when (instruction5(22 downto 17) = reg_addr1) else
                reg_input2 when (instruction5(22 downto 17) = reg_addr2) else
                reg_input3 when (instruction5(22 downto 17) = reg_addr3) else
                reg_input4 when (instruction5(22 downto 17) = reg_addr4) else
                reg_input5 when (instruction5(22 downto 17) = reg_addr5) else
                reg_input6 when (instruction5(22 downto 17) = reg_addr6) else
                reg_input7 when (instruction5(22 downto 17) = reg_addr7) else
                reg_input8 when (instruction5(22 downto 17) = reg_addr8) else
                reg_input9 when (instruction5(22 downto 17) = reg_addr9) else
                reg_input10 when (instruction5(22 downto 17) = reg_addr10) else
                reg_input11 when (instruction5(22 downto 17) = reg_addr11) else
                reg_input12 when (instruction5(22 downto 17) = reg_addr12) else
                reg_input13 when (instruction5(22 downto 17) = reg_addr13) else
                reg_input14 when (instruction5(22 downto 17) = reg_addr14) else
                reg_input15 when (instruction5(22 downto 17) = reg_addr15) else
                reg_input16 when (instruction5(22 downto 17) = reg_addr16) else
                reg_input17 when (instruction5(22 downto 17) = reg_addr17) else
                reg_input18 when (instruction5(22 downto 17) = reg_addr18) else
                reg_input19 when (instruction5(22 downto 17) = reg_addr19) else
                reg_input20 when (instruction5(22 downto 17) = reg_addr20) else
                reg_input21 when (instruction5(22 downto 17) = reg_addr21) else
                reg_input22 when (instruction5(22 downto 17) = reg_addr22) else
                reg_input23 when (instruction5(22 downto 17) = reg_addr23) else
                reg_input24 when (instruction5(22 downto 17) = reg_addr24) else
                reg_input25 when (instruction5(22 downto 17) = reg_addr25) else
                reg_input26 when (instruction5(22 downto 17) = reg_addr26) else
                reg_input27 when (instruction5(22 downto 17) = reg_addr27) else
                reg_input28 when (instruction5(22 downto 17) = reg_addr28) else
                reg_input29 when (instruction5(22 downto 17) = reg_addr29) else
                reg_input30 when (instruction5(22 downto 17) = reg_addr30) else
                reg_input31 when (instruction5(22 downto 17) = reg_addr31) else
                reg_input32 when (instruction5(22 downto 17) = reg_addr32) else
                reg_input33 when (instruction5(22 downto 17) = reg_addr33) else
                reg_input34 when (instruction5(22 downto 17) = reg_addr34) else
                (others => '0');

  inst5_aux_B <= ("0000000000000000" & instruction5(15 downto 0)) when (instruction5(33) = '1') else -- take immediate
                (others => '0');

  inst6_aux_A <= reg_input1 when (instruction6(22 downto 17) = reg_addr1) else
                reg_input2 when (instruction6(22 downto 17) = reg_addr2) else
                reg_input3 when (instruction6(22 downto 17) = reg_addr3) else
                reg_input4 when (instruction6(22 downto 17) = reg_addr4) else
                reg_input5 when (instruction6(22 downto 17) = reg_addr5) else
                reg_input6 when (instruction6(22 downto 17) = reg_addr6) else
                reg_input7 when (instruction6(22 downto 17) = reg_addr7) else
                reg_input8 when (instruction6(22 downto 17) = reg_addr8) else
                reg_input9 when (instruction6(22 downto 17) = reg_addr9) else
                reg_input10 when (instruction6(22 downto 17) = reg_addr10) else
                reg_input11 when (instruction6(22 downto 17) = reg_addr11) else
                reg_input12 when (instruction6(22 downto 17) = reg_addr12) else
                reg_input13 when (instruction6(22 downto 17) = reg_addr13) else
                reg_input14 when (instruction6(22 downto 17) = reg_addr14) else
                reg_input15 when (instruction6(22 downto 17) = reg_addr15) else
                reg_input16 when (instruction6(22 downto 17) = reg_addr16) else
                reg_input17 when (instruction6(22 downto 17) = reg_addr17) else
                reg_input18 when (instruction6(22 downto 17) = reg_addr18) else
                reg_input19 when (instruction6(22 downto 17) = reg_addr19) else
                reg_input20 when (instruction6(22 downto 17) = reg_addr20) else
                reg_input21 when (instruction6(22 downto 17) = reg_addr21) else
                reg_input22 when (instruction6(22 downto 17) = reg_addr22) else
                reg_input23 when (instruction6(22 downto 17) = reg_addr23) else
                reg_input24 when (instruction6(22 downto 17) = reg_addr24) else
                reg_input25 when (instruction6(22 downto 17) = reg_addr25) else
                reg_input26 when (instruction6(22 downto 17) = reg_addr26) else
                reg_input27 when (instruction6(22 downto 17) = reg_addr27) else
                reg_input28 when (instruction6(22 downto 17) = reg_addr28) else
                reg_input29 when (instruction6(22 downto 17) = reg_addr29) else
                reg_input30 when (instruction6(22 downto 17) = reg_addr30) else
                reg_input31 when (instruction6(22 downto 17) = reg_addr31) else
                reg_input32 when (instruction6(22 downto 17) = reg_addr32) else
                reg_input33 when (instruction6(22 downto 17) = reg_addr33) else
                reg_input34 when (instruction6(22 downto 17) = reg_addr34) else
                (others => '0');

  inst6_aux_B <= ("000000000000000000000000000" & instruction6(4 downto 0)) -- take shamt when bitshift
                    when (instruction6(33) = '1' and
                    (instruction6(32 downto 29) >= "0100" and instruction6(32 downto 29) <= "0110")) else
                ("0000000000000000" & instruction6(15 downto 0)) when (instruction6(33) = '1') else -- take immediate
                reg_input1 when (instruction6(16 downto 11) = reg_addr1) else
                reg_input2 when (instruction6(16 downto 11) = reg_addr2) else
                reg_input3 when (instruction6(16 downto 11) = reg_addr3) else
                reg_input4 when (instruction6(16 downto 11) = reg_addr4) else
                reg_input5 when (instruction6(16 downto 11) = reg_addr5) else
                reg_input6 when (instruction6(16 downto 11) = reg_addr6) else
                reg_input7 when (instruction6(16 downto 11) = reg_addr7) else
                reg_input8 when (instruction6(16 downto 11) = reg_addr8) else
                reg_input9 when (instruction6(16 downto 11) = reg_addr9) else
                reg_input10 when (instruction6(16 downto 11) = reg_addr10) else
                reg_input11 when (instruction6(16 downto 11) = reg_addr11) else
                reg_input12 when (instruction6(16 downto 11) = reg_addr12) else
                reg_input13 when (instruction6(16 downto 11) = reg_addr13) else
                reg_input14 when (instruction6(16 downto 11) = reg_addr14) else
                reg_input15 when (instruction6(16 downto 11) = reg_addr15) else
                reg_input16 when (instruction6(16 downto 11) = reg_addr16) else
                reg_input17 when (instruction6(16 downto 11) = reg_addr17) else
                reg_input18 when (instruction6(16 downto 11) = reg_addr18) else
                reg_input19 when (instruction6(16 downto 11) = reg_addr19) else
                reg_input20 when (instruction6(16 downto 11) = reg_addr20) else
                reg_input21 when (instruction6(16 downto 11) = reg_addr21) else
                reg_input22 when (instruction6(16 downto 11) = reg_addr22) else
                reg_input23 when (instruction6(16 downto 11) = reg_addr23) else
                reg_input24 when (instruction6(16 downto 11) = reg_addr24) else
                reg_input25 when (instruction6(16 downto 11) = reg_addr25) else
                reg_input26 when (instruction6(16 downto 11) = reg_addr26) else
                reg_input27 when (instruction6(16 downto 11) = reg_addr27) else
                reg_input28 when (instruction6(16 downto 11) = reg_addr28) else
                reg_input29 when (instruction6(16 downto 11) = reg_addr29) else
                reg_input30 when (instruction6(16 downto 11) = reg_addr30) else
                reg_input31 when (instruction6(16 downto 11) = reg_addr31) else
                reg_input32 when (instruction6(16 downto 11) = reg_addr32) else
                reg_input33 when (instruction6(16 downto 11) = reg_addr33) else
                reg_input34 when (instruction6(16 downto 11) = reg_addr34) else
                (others => '0');

  inst7_aux_A <= reg_input1 when (instruction7(22 downto 17) = reg_addr1) else
              reg_input2 when (instruction7(22 downto 17) = reg_addr2) else
              reg_input3 when (instruction7(22 downto 17) = reg_addr3) else
              reg_input4 when (instruction7(22 downto 17) = reg_addr4) else
              reg_input5 when (instruction7(22 downto 17) = reg_addr5) else
              reg_input6 when (instruction7(22 downto 17) = reg_addr6) else
              reg_input7 when (instruction7(22 downto 17) = reg_addr7) else
              reg_input8 when (instruction7(22 downto 17) = reg_addr8) else
              reg_input9 when (instruction7(22 downto 17) = reg_addr9) else
              reg_input10 when (instruction7(22 downto 17) = reg_addr10) else
              reg_input11 when (instruction7(22 downto 17) = reg_addr11) else
              reg_input12 when (instruction7(22 downto 17) = reg_addr12) else
              reg_input13 when (instruction7(22 downto 17) = reg_addr13) else
              reg_input14 when (instruction7(22 downto 17) = reg_addr14) else
              reg_input15 when (instruction7(22 downto 17) = reg_addr15) else
              reg_input16 when (instruction7(22 downto 17) = reg_addr16) else
              reg_input17 when (instruction7(22 downto 17) = reg_addr17) else
              reg_input18 when (instruction7(22 downto 17) = reg_addr18) else
              reg_input19 when (instruction7(22 downto 17) = reg_addr19) else
              reg_input20 when (instruction7(22 downto 17) = reg_addr20) else
              reg_input21 when (instruction7(22 downto 17) = reg_addr21) else
              reg_input22 when (instruction7(22 downto 17) = reg_addr22) else
              reg_input23 when (instruction7(22 downto 17) = reg_addr23) else
              reg_input24 when (instruction7(22 downto 17) = reg_addr24) else
              reg_input25 when (instruction7(22 downto 17) = reg_addr25) else
              reg_input26 when (instruction7(22 downto 17) = reg_addr26) else
              reg_input27 when (instruction7(22 downto 17) = reg_addr27) else
              reg_input28 when (instruction7(22 downto 17) = reg_addr28) else
              reg_input29 when (instruction7(22 downto 17) = reg_addr29) else
              reg_input30 when (instruction7(22 downto 17) = reg_addr30) else
              reg_input31 when (instruction7(22 downto 17) = reg_addr31) else
              reg_input32 when (instruction7(22 downto 17) = reg_addr32) else
              reg_input33 when (instruction7(22 downto 17) = reg_addr33) else
              reg_input34 when (instruction7(22 downto 17) = reg_addr34) else
              (others => '0');

  inst7_aux_B <= ("000000000000000000000000000" & instruction7(4 downto 0)) -- take shamt when bitshift
                    when (instruction7(33) = '1' and
                    (instruction7(32 downto 29) >= "0100" and instruction7(32 downto 29) <= "0110")) else
              ("0000000000000000" & instruction7(15 downto 0)) when (instruction7(33) = '1') else -- take immediate
              reg_input1 when (instruction7(16 downto 11) = reg_addr1) else
              reg_input2 when (instruction7(16 downto 11) = reg_addr2) else
              reg_input3 when (instruction7(16 downto 11) = reg_addr3) else
              reg_input4 when (instruction7(16 downto 11) = reg_addr4) else
              reg_input5 when (instruction7(16 downto 11) = reg_addr5) else
              reg_input6 when (instruction7(16 downto 11) = reg_addr6) else
              reg_input7 when (instruction7(16 downto 11) = reg_addr7) else
              reg_input8 when (instruction7(16 downto 11) = reg_addr8) else
              reg_input9 when (instruction7(16 downto 11) = reg_addr9) else
              reg_input10 when (instruction7(16 downto 11) = reg_addr10) else
              reg_input11 when (instruction7(16 downto 11) = reg_addr11) else
              reg_input12 when (instruction7(16 downto 11) = reg_addr12) else
              reg_input13 when (instruction7(16 downto 11) = reg_addr13) else
              reg_input14 when (instruction7(16 downto 11) = reg_addr14) else
              reg_input15 when (instruction7(16 downto 11) = reg_addr15) else
              reg_input16 when (instruction7(16 downto 11) = reg_addr16) else
              reg_input17 when (instruction7(16 downto 11) = reg_addr17) else
              reg_input18 when (instruction7(16 downto 11) = reg_addr18) else
              reg_input19 when (instruction7(16 downto 11) = reg_addr19) else
              reg_input20 when (instruction7(16 downto 11) = reg_addr20) else
              reg_input21 when (instruction7(16 downto 11) = reg_addr21) else
              reg_input22 when (instruction7(16 downto 11) = reg_addr22) else
              reg_input23 when (instruction7(16 downto 11) = reg_addr23) else
              reg_input24 when (instruction7(16 downto 11) = reg_addr24) else
              reg_input25 when (instruction7(16 downto 11) = reg_addr25) else
              reg_input26 when (instruction7(16 downto 11) = reg_addr26) else
              reg_input27 when (instruction7(16 downto 11) = reg_addr27) else
              reg_input28 when (instruction7(16 downto 11) = reg_addr28) else
              reg_input29 when (instruction7(16 downto 11) = reg_addr29) else
              reg_input30 when (instruction7(16 downto 11) = reg_addr30) else
              reg_input31 when (instruction7(16 downto 11) = reg_addr31) else
              reg_input32 when (instruction7(16 downto 11) = reg_addr32) else
              reg_input33 when (instruction7(16 downto 11) = reg_addr33) else
              reg_input34 when (instruction7(16 downto 11) = reg_addr34) else
              (others => '0');

  inst8_aux_A <= reg_input1 when (instruction8(22 downto 17) = reg_addr1) else
              reg_input2 when (instruction8(22 downto 17) = reg_addr2) else
              reg_input3 when (instruction8(22 downto 17) = reg_addr3) else
              reg_input4 when (instruction8(22 downto 17) = reg_addr4) else
              reg_input5 when (instruction8(22 downto 17) = reg_addr5) else
              reg_input6 when (instruction8(22 downto 17) = reg_addr6) else
              reg_input7 when (instruction8(22 downto 17) = reg_addr7) else
              reg_input8 when (instruction8(22 downto 17) = reg_addr8) else
              reg_input9 when (instruction8(22 downto 17) = reg_addr9) else
              reg_input10 when (instruction8(22 downto 17) = reg_addr10) else
              reg_input11 when (instruction8(22 downto 17) = reg_addr11) else
              reg_input12 when (instruction8(22 downto 17) = reg_addr12) else
              reg_input13 when (instruction8(22 downto 17) = reg_addr13) else
              reg_input14 when (instruction8(22 downto 17) = reg_addr14) else
              reg_input15 when (instruction8(22 downto 17) = reg_addr15) else
              reg_input16 when (instruction8(22 downto 17) = reg_addr16) else
              reg_input17 when (instruction8(22 downto 17) = reg_addr17) else
              reg_input18 when (instruction8(22 downto 17) = reg_addr18) else
              reg_input19 when (instruction8(22 downto 17) = reg_addr19) else
              reg_input20 when (instruction8(22 downto 17) = reg_addr20) else
              reg_input21 when (instruction8(22 downto 17) = reg_addr21) else
              reg_input22 when (instruction8(22 downto 17) = reg_addr22) else
              reg_input23 when (instruction8(22 downto 17) = reg_addr23) else
              reg_input24 when (instruction8(22 downto 17) = reg_addr24) else
              reg_input25 when (instruction8(22 downto 17) = reg_addr25) else
              reg_input26 when (instruction8(22 downto 17) = reg_addr26) else
              reg_input27 when (instruction8(22 downto 17) = reg_addr27) else
              reg_input28 when (instruction8(22 downto 17) = reg_addr28) else
              reg_input29 when (instruction8(22 downto 17) = reg_addr29) else
              reg_input30 when (instruction8(22 downto 17) = reg_addr30) else
              reg_input31 when (instruction8(22 downto 17) = reg_addr31) else
              reg_input32 when (instruction8(22 downto 17) = reg_addr32) else
              reg_input33 when (instruction8(22 downto 17) = reg_addr33) else
              reg_input34 when (instruction8(22 downto 17) = reg_addr34) else
              (others => '0');

  inst8_aux_B <= ("000000000000000000000000000" & instruction8(4 downto 0)) -- take shamt when bitshift
                    when (instruction8(33) = '1' and
                    (instruction8(32 downto 29) >= "0100" and instruction8(32 downto 29) <= "0110")) else
              ("0000000000000000" & instruction8(15 downto 0)) when (instruction8(33) = '1') else -- take immediate
              reg_input1 when (instruction8(16 downto 11) = reg_addr1) else
              reg_input2 when (instruction8(16 downto 11) = reg_addr2) else
              reg_input3 when (instruction8(16 downto 11) = reg_addr3) else
              reg_input4 when (instruction8(16 downto 11) = reg_addr4) else
              reg_input5 when (instruction8(16 downto 11) = reg_addr5) else
              reg_input6 when (instruction8(16 downto 11) = reg_addr6) else
              reg_input7 when (instruction8(16 downto 11) = reg_addr7) else
              reg_input8 when (instruction8(16 downto 11) = reg_addr8) else
              reg_input9 when (instruction8(16 downto 11) = reg_addr9) else
              reg_input10 when (instruction8(16 downto 11) = reg_addr10) else
              reg_input11 when (instruction8(16 downto 11) = reg_addr11) else
              reg_input12 when (instruction8(16 downto 11) = reg_addr12) else
              reg_input13 when (instruction8(16 downto 11) = reg_addr13) else
              reg_input14 when (instruction8(16 downto 11) = reg_addr14) else
              reg_input15 when (instruction8(16 downto 11) = reg_addr15) else
              reg_input16 when (instruction8(16 downto 11) = reg_addr16) else
              reg_input17 when (instruction8(16 downto 11) = reg_addr17) else
              reg_input18 when (instruction8(16 downto 11) = reg_addr18) else
              reg_input19 when (instruction8(16 downto 11) = reg_addr19) else
              reg_input20 when (instruction8(16 downto 11) = reg_addr20) else
              reg_input21 when (instruction8(16 downto 11) = reg_addr21) else
              reg_input22 when (instruction8(16 downto 11) = reg_addr22) else
              reg_input23 when (instruction8(16 downto 11) = reg_addr23) else
              reg_input24 when (instruction8(16 downto 11) = reg_addr24) else
              reg_input25 when (instruction8(16 downto 11) = reg_addr25) else
              reg_input26 when (instruction8(16 downto 11) = reg_addr26) else
              reg_input27 when (instruction8(16 downto 11) = reg_addr27) else
              reg_input28 when (instruction8(16 downto 11) = reg_addr28) else
              reg_input29 when (instruction8(16 downto 11) = reg_addr29) else
              reg_input30 when (instruction8(16 downto 11) = reg_addr30) else
              reg_input31 when (instruction8(16 downto 11) = reg_addr31) else
              reg_input32 when (instruction8(16 downto 11) = reg_addr32) else
              reg_input33 when (instruction8(16 downto 11) = reg_addr33) else
              reg_input34 when (instruction8(16 downto 11) = reg_addr34) else
              (others => '0');

  inst9_aux_A <= reg_input1 when (instruction9(22 downto 17) = reg_addr1) else
                reg_input2 when (instruction9(22 downto 17) = reg_addr2) else
                reg_input3 when (instruction9(22 downto 17) = reg_addr3) else
                reg_input4 when (instruction9(22 downto 17) = reg_addr4) else
                reg_input5 when (instruction9(22 downto 17) = reg_addr5) else
                reg_input6 when (instruction9(22 downto 17) = reg_addr6) else
                reg_input7 when (instruction9(22 downto 17) = reg_addr7) else
                reg_input8 when (instruction9(22 downto 17) = reg_addr8) else
                reg_input9 when (instruction9(22 downto 17) = reg_addr9) else
                reg_input10 when (instruction9(22 downto 17) = reg_addr10) else
                reg_input11 when (instruction9(22 downto 17) = reg_addr11) else
                reg_input12 when (instruction9(22 downto 17) = reg_addr12) else
                reg_input13 when (instruction9(22 downto 17) = reg_addr13) else
                reg_input14 when (instruction9(22 downto 17) = reg_addr14) else
                reg_input15 when (instruction9(22 downto 17) = reg_addr15) else
                reg_input16 when (instruction9(22 downto 17) = reg_addr16) else
                reg_input17 when (instruction9(22 downto 17) = reg_addr17) else
                reg_input18 when (instruction9(22 downto 17) = reg_addr18) else
                reg_input19 when (instruction9(22 downto 17) = reg_addr19) else
                reg_input20 when (instruction9(22 downto 17) = reg_addr20) else
                reg_input21 when (instruction9(22 downto 17) = reg_addr21) else
                reg_input22 when (instruction9(22 downto 17) = reg_addr22) else
                reg_input23 when (instruction9(22 downto 17) = reg_addr23) else
                reg_input24 when (instruction9(22 downto 17) = reg_addr24) else
                reg_input25 when (instruction9(22 downto 17) = reg_addr25) else
                reg_input26 when (instruction9(22 downto 17) = reg_addr26) else
                reg_input27 when (instruction9(22 downto 17) = reg_addr27) else
                reg_input28 when (instruction9(22 downto 17) = reg_addr28) else
                reg_input29 when (instruction9(22 downto 17) = reg_addr29) else
                reg_input30 when (instruction9(22 downto 17) = reg_addr30) else
                reg_input31 when (instruction9(22 downto 17) = reg_addr31) else
                reg_input32 when (instruction9(22 downto 17) = reg_addr32) else
                reg_input33 when (instruction9(22 downto 17) = reg_addr33) else
                reg_input34 when (instruction9(22 downto 17) = reg_addr34) else
                (others => '0');

  inst9_aux_B <= reg_input1 when (instruction9(16 downto 11) = reg_addr1) else
                reg_input2 when (instruction9(16 downto 11) = reg_addr2) else
                reg_input3 when (instruction9(16 downto 11) = reg_addr3) else
                reg_input4 when (instruction9(16 downto 11) = reg_addr4) else
                reg_input5 when (instruction9(16 downto 11) = reg_addr5) else
                reg_input6 when (instruction9(16 downto 11) = reg_addr6) else
                reg_input7 when (instruction9(16 downto 11) = reg_addr7) else
                reg_input8 when (instruction9(16 downto 11) = reg_addr8) else
                reg_input9 when (instruction9(16 downto 11) = reg_addr9) else
                reg_input10 when (instruction9(16 downto 11) = reg_addr10) else
                reg_input11 when (instruction9(16 downto 11) = reg_addr11) else
                reg_input12 when (instruction9(16 downto 11) = reg_addr12) else
                reg_input13 when (instruction9(16 downto 11) = reg_addr13) else
                reg_input14 when (instruction9(16 downto 11) = reg_addr14) else
                reg_input15 when (instruction9(16 downto 11) = reg_addr15) else
                reg_input16 when (instruction9(16 downto 11) = reg_addr16) else
                reg_input17 when (instruction9(16 downto 11) = reg_addr17) else
                reg_input18 when (instruction9(16 downto 11) = reg_addr18) else
                reg_input19 when (instruction9(16 downto 11) = reg_addr19) else
                reg_input20 when (instruction9(16 downto 11) = reg_addr20) else
                reg_input21 when (instruction9(16 downto 11) = reg_addr21) else
                reg_input22 when (instruction9(16 downto 11) = reg_addr22) else
                reg_input23 when (instruction9(16 downto 11) = reg_addr23) else
                reg_input24 when (instruction9(16 downto 11) = reg_addr24) else
                reg_input25 when (instruction9(16 downto 11) = reg_addr25) else
                reg_input26 when (instruction9(16 downto 11) = reg_addr26) else
                reg_input27 when (instruction9(16 downto 11) = reg_addr27) else
                reg_input28 when (instruction9(16 downto 11) = reg_addr28) else
                reg_input29 when (instruction9(16 downto 11) = reg_addr29) else
                reg_input30 when (instruction9(16 downto 11) = reg_addr30) else
                reg_input31 when (instruction9(16 downto 11) = reg_addr31) else
                reg_input32 when (instruction9(16 downto 11) = reg_addr32) else
                reg_input33 when (instruction9(16 downto 11) = reg_addr33) else
                reg_input34 when (instruction9(16 downto 11) = reg_addr34) else
                (others => '0');

  inst10_aux_A <= reg_input1 when (instruction10(22 downto 17) = reg_addr1) else
                reg_input2 when (instruction10(22 downto 17) = reg_addr2) else
                reg_input3 when (instruction10(22 downto 17) = reg_addr3) else
                reg_input4 when (instruction10(22 downto 17) = reg_addr4) else
                reg_input5 when (instruction10(22 downto 17) = reg_addr5) else
                reg_input6 when (instruction10(22 downto 17) = reg_addr6) else
                reg_input7 when (instruction10(22 downto 17) = reg_addr7) else
                reg_input8 when (instruction10(22 downto 17) = reg_addr8) else
                reg_input9 when (instruction10(22 downto 17) = reg_addr9) else
                reg_input10 when (instruction10(22 downto 17) = reg_addr10) else
                reg_input11 when (instruction10(22 downto 17) = reg_addr11) else
                reg_input12 when (instruction10(22 downto 17) = reg_addr12) else
                reg_input13 when (instruction10(22 downto 17) = reg_addr13) else
                reg_input14 when (instruction10(22 downto 17) = reg_addr14) else
                reg_input15 when (instruction10(22 downto 17) = reg_addr15) else
                reg_input16 when (instruction10(22 downto 17) = reg_addr16) else
                reg_input17 when (instruction10(22 downto 17) = reg_addr17) else
                reg_input18 when (instruction10(22 downto 17) = reg_addr18) else
                reg_input19 when (instruction10(22 downto 17) = reg_addr19) else
                reg_input20 when (instruction10(22 downto 17) = reg_addr20) else
                reg_input21 when (instruction10(22 downto 17) = reg_addr21) else
                reg_input22 when (instruction10(22 downto 17) = reg_addr22) else
                reg_input23 when (instruction10(22 downto 17) = reg_addr23) else
                reg_input24 when (instruction10(22 downto 17) = reg_addr24) else
                reg_input25 when (instruction10(22 downto 17) = reg_addr25) else
                reg_input26 when (instruction10(22 downto 17) = reg_addr26) else
                reg_input27 when (instruction10(22 downto 17) = reg_addr27) else
                reg_input28 when (instruction10(22 downto 17) = reg_addr28) else
                reg_input29 when (instruction10(22 downto 17) = reg_addr29) else
                reg_input30 when (instruction10(22 downto 17) = reg_addr30) else
                reg_input31 when (instruction10(22 downto 17) = reg_addr31) else
                reg_input32 when (instruction10(22 downto 17) = reg_addr32) else
                reg_input33 when (instruction10(22 downto 17) = reg_addr33) else
                reg_input34 when (instruction10(22 downto 17) = reg_addr34) else
                (others => '0');

  inst10_aux_B <= ("0000000000000000" & instruction10(15 downto 0)) when (instruction10(33) = '1') else -- take immediate
                (others => '0');

  inst11_aux_A <= reg_input1 when (instruction11(22 downto 17) = reg_addr1) else
              reg_input2 when (instruction11(22 downto 17) = reg_addr2) else
              reg_input3 when (instruction11(22 downto 17) = reg_addr3) else
              reg_input4 when (instruction11(22 downto 17) = reg_addr4) else
              reg_input5 when (instruction11(22 downto 17) = reg_addr5) else
              reg_input6 when (instruction11(22 downto 17) = reg_addr6) else
              reg_input7 when (instruction11(22 downto 17) = reg_addr7) else
              reg_input8 when (instruction11(22 downto 17) = reg_addr8) else
              reg_input9 when (instruction11(22 downto 17) = reg_addr9) else
              reg_input10 when (instruction11(22 downto 17) = reg_addr10) else
              reg_input11 when (instruction11(22 downto 17) = reg_addr11) else
              reg_input12 when (instruction11(22 downto 17) = reg_addr12) else
              reg_input13 when (instruction11(22 downto 17) = reg_addr13) else
              reg_input14 when (instruction11(22 downto 17) = reg_addr14) else
              reg_input15 when (instruction11(22 downto 17) = reg_addr15) else
              reg_input16 when (instruction11(22 downto 17) = reg_addr16) else
              reg_input17 when (instruction11(22 downto 17) = reg_addr17) else
              reg_input18 when (instruction11(22 downto 17) = reg_addr18) else
              reg_input19 when (instruction11(22 downto 17) = reg_addr19) else
              reg_input20 when (instruction11(22 downto 17) = reg_addr20) else
              reg_input21 when (instruction11(22 downto 17) = reg_addr21) else
              reg_input22 when (instruction11(22 downto 17) = reg_addr22) else
              reg_input23 when (instruction11(22 downto 17) = reg_addr23) else
              reg_input24 when (instruction11(22 downto 17) = reg_addr24) else
              reg_input25 when (instruction11(22 downto 17) = reg_addr25) else
              reg_input26 when (instruction11(22 downto 17) = reg_addr26) else
              reg_input27 when (instruction11(22 downto 17) = reg_addr27) else
              reg_input28 when (instruction11(22 downto 17) = reg_addr28) else
              reg_input29 when (instruction11(22 downto 17) = reg_addr29) else
              reg_input30 when (instruction11(22 downto 17) = reg_addr30) else
              reg_input31 when (instruction11(22 downto 17) = reg_addr31) else
              reg_input32 when (instruction11(22 downto 17) = reg_addr32) else
              reg_input33 when (instruction11(22 downto 17) = reg_addr33) else
              reg_input34 when (instruction11(22 downto 17) = reg_addr34) else
              (others => '0');

  inst11_aux_B <= ("000000000000000000000000000" & instruction11(4 downto 0)) -- take shamt when bitshift
                    when (instruction11(33) = '1' and
                    (instruction11(32 downto 29) >= "0100" and instruction11(32 downto 29) <= "0110")) else
              ("0000000000000000" & instruction11(15 downto 0)) when (instruction11(33) = '1') else -- take immediate
              reg_input1 when (instruction11(16 downto 11) = reg_addr1) else
              reg_input2 when (instruction11(16 downto 11) = reg_addr2) else
              reg_input3 when (instruction11(16 downto 11) = reg_addr3) else
              reg_input4 when (instruction11(16 downto 11) = reg_addr4) else
              reg_input5 when (instruction11(16 downto 11) = reg_addr5) else
              reg_input6 when (instruction11(16 downto 11) = reg_addr6) else
              reg_input7 when (instruction11(16 downto 11) = reg_addr7) else
              reg_input8 when (instruction11(16 downto 11) = reg_addr8) else
              reg_input9 when (instruction11(16 downto 11) = reg_addr9) else
              reg_input10 when (instruction11(16 downto 11) = reg_addr10) else
              reg_input11 when (instruction11(16 downto 11) = reg_addr11) else
              reg_input12 when (instruction11(16 downto 11) = reg_addr12) else
              reg_input13 when (instruction11(16 downto 11) = reg_addr13) else
              reg_input14 when (instruction11(16 downto 11) = reg_addr14) else
              reg_input15 when (instruction11(16 downto 11) = reg_addr15) else
              reg_input16 when (instruction11(16 downto 11) = reg_addr16) else
              reg_input17 when (instruction11(16 downto 11) = reg_addr17) else
              reg_input18 when (instruction11(16 downto 11) = reg_addr18) else
              reg_input19 when (instruction11(16 downto 11) = reg_addr19) else
              reg_input20 when (instruction11(16 downto 11) = reg_addr20) else
              reg_input21 when (instruction11(16 downto 11) = reg_addr21) else
              reg_input22 when (instruction11(16 downto 11) = reg_addr22) else
              reg_input23 when (instruction11(16 downto 11) = reg_addr23) else
              reg_input24 when (instruction11(16 downto 11) = reg_addr24) else
              reg_input25 when (instruction11(16 downto 11) = reg_addr25) else
              reg_input26 when (instruction11(16 downto 11) = reg_addr26) else
              reg_input27 when (instruction11(16 downto 11) = reg_addr27) else
              reg_input28 when (instruction11(16 downto 11) = reg_addr28) else
              reg_input29 when (instruction11(16 downto 11) = reg_addr29) else
              reg_input30 when (instruction11(16 downto 11) = reg_addr30) else
              reg_input31 when (instruction11(16 downto 11) = reg_addr31) else
              reg_input32 when (instruction11(16 downto 11) = reg_addr32) else
              reg_input33 when (instruction11(16 downto 11) = reg_addr33) else
              reg_input34 when (instruction11(16 downto 11) = reg_addr34) else
              (others => '0');

  inst12_aux_A <= reg_input1 when (instruction12(22 downto 17) = reg_addr1) else
              reg_input2 when (instruction12(22 downto 17) = reg_addr2) else
              reg_input3 when (instruction12(22 downto 17) = reg_addr3) else
              reg_input4 when (instruction12(22 downto 17) = reg_addr4) else
              reg_input5 when (instruction12(22 downto 17) = reg_addr5) else
              reg_input6 when (instruction12(22 downto 17) = reg_addr6) else
              reg_input7 when (instruction12(22 downto 17) = reg_addr7) else
              reg_input8 when (instruction12(22 downto 17) = reg_addr8) else
              reg_input9 when (instruction12(22 downto 17) = reg_addr9) else
              reg_input10 when (instruction12(22 downto 17) = reg_addr10) else
              reg_input11 when (instruction12(22 downto 17) = reg_addr11) else
              reg_input12 when (instruction12(22 downto 17) = reg_addr12) else
              reg_input13 when (instruction12(22 downto 17) = reg_addr13) else
              reg_input14 when (instruction12(22 downto 17) = reg_addr14) else
              reg_input15 when (instruction12(22 downto 17) = reg_addr15) else
              reg_input16 when (instruction12(22 downto 17) = reg_addr16) else
              reg_input17 when (instruction12(22 downto 17) = reg_addr17) else
              reg_input18 when (instruction12(22 downto 17) = reg_addr18) else
              reg_input19 when (instruction12(22 downto 17) = reg_addr19) else
              reg_input20 when (instruction12(22 downto 17) = reg_addr20) else
              reg_input21 when (instruction12(22 downto 17) = reg_addr21) else
              reg_input22 when (instruction12(22 downto 17) = reg_addr22) else
              reg_input23 when (instruction12(22 downto 17) = reg_addr23) else
              reg_input24 when (instruction12(22 downto 17) = reg_addr24) else
              reg_input25 when (instruction12(22 downto 17) = reg_addr25) else
              reg_input26 when (instruction12(22 downto 17) = reg_addr26) else
              reg_input27 when (instruction12(22 downto 17) = reg_addr27) else
              reg_input28 when (instruction12(22 downto 17) = reg_addr28) else
              reg_input29 when (instruction12(22 downto 17) = reg_addr29) else
              reg_input30 when (instruction12(22 downto 17) = reg_addr30) else
              reg_input31 when (instruction12(22 downto 17) = reg_addr31) else
              reg_input32 when (instruction12(22 downto 17) = reg_addr32) else
              reg_input33 when (instruction12(22 downto 17) = reg_addr33) else
              reg_input34 when (instruction12(22 downto 17) = reg_addr34) else
              (others => '0');

  inst12_aux_B <= ("000000000000000000000000000" & instruction12(4 downto 0)) -- take shamt when bitshift
                    when (instruction12(33) = '1' and
                    (instruction12(32 downto 29) >= "0100" and instruction12(32 downto 29) <= "0110")) else
              ("0000000000000000" & instruction12(15 downto 0)) when (instruction12(33) = '1') else -- take immediate
              reg_input1 when (instruction12(16 downto 11) = reg_addr1) else
              reg_input2 when (instruction12(16 downto 11) = reg_addr2) else
              reg_input3 when (instruction12(16 downto 11) = reg_addr3) else
              reg_input4 when (instruction12(16 downto 11) = reg_addr4) else
              reg_input5 when (instruction12(16 downto 11) = reg_addr5) else
              reg_input6 when (instruction12(16 downto 11) = reg_addr6) else
              reg_input7 when (instruction12(16 downto 11) = reg_addr7) else
              reg_input8 when (instruction12(16 downto 11) = reg_addr8) else
              reg_input9 when (instruction12(16 downto 11) = reg_addr9) else
              reg_input10 when (instruction12(16 downto 11) = reg_addr10) else
              reg_input11 when (instruction12(16 downto 11) = reg_addr11) else
              reg_input12 when (instruction12(16 downto 11) = reg_addr12) else
              reg_input13 when (instruction12(16 downto 11) = reg_addr13) else
              reg_input14 when (instruction12(16 downto 11) = reg_addr14) else
              reg_input15 when (instruction12(16 downto 11) = reg_addr15) else
              reg_input16 when (instruction12(16 downto 11) = reg_addr16) else
              reg_input17 when (instruction12(16 downto 11) = reg_addr17) else
              reg_input18 when (instruction12(16 downto 11) = reg_addr18) else
              reg_input19 when (instruction12(16 downto 11) = reg_addr19) else
              reg_input20 when (instruction12(16 downto 11) = reg_addr20) else
              reg_input21 when (instruction12(16 downto 11) = reg_addr21) else
              reg_input22 when (instruction12(16 downto 11) = reg_addr22) else
              reg_input23 when (instruction12(16 downto 11) = reg_addr23) else
              reg_input24 when (instruction12(16 downto 11) = reg_addr24) else
              reg_input25 when (instruction12(16 downto 11) = reg_addr25) else
              reg_input26 when (instruction12(16 downto 11) = reg_addr26) else
              reg_input27 when (instruction12(16 downto 11) = reg_addr27) else
              reg_input28 when (instruction12(16 downto 11) = reg_addr28) else
              reg_input29 when (instruction12(16 downto 11) = reg_addr29) else
              reg_input30 when (instruction12(16 downto 11) = reg_addr30) else
              reg_input31 when (instruction12(16 downto 11) = reg_addr31) else
              reg_input32 when (instruction12(16 downto 11) = reg_addr32) else
              reg_input33 when (instruction12(16 downto 11) = reg_addr33) else
              reg_input34 when (instruction12(16 downto 11) = reg_addr34) else
              (others => '0');

  inst13_aux_A <= reg_input1 when (instruction13(22 downto 17) = reg_addr1) else
                reg_input2 when (instruction13(22 downto 17) = reg_addr2) else
                reg_input3 when (instruction13(22 downto 17) = reg_addr3) else
                reg_input4 when (instruction13(22 downto 17) = reg_addr4) else
                reg_input5 when (instruction13(22 downto 17) = reg_addr5) else
                reg_input6 when (instruction13(22 downto 17) = reg_addr6) else
                reg_input7 when (instruction13(22 downto 17) = reg_addr7) else
                reg_input8 when (instruction13(22 downto 17) = reg_addr8) else
                reg_input9 when (instruction13(22 downto 17) = reg_addr9) else
                reg_input10 when (instruction13(22 downto 17) = reg_addr10) else
                reg_input11 when (instruction13(22 downto 17) = reg_addr11) else
                reg_input12 when (instruction13(22 downto 17) = reg_addr12) else
                reg_input13 when (instruction13(22 downto 17) = reg_addr13) else
                reg_input14 when (instruction13(22 downto 17) = reg_addr14) else
                reg_input15 when (instruction13(22 downto 17) = reg_addr15) else
                reg_input16 when (instruction13(22 downto 17) = reg_addr16) else
                reg_input17 when (instruction13(22 downto 17) = reg_addr17) else
                reg_input18 when (instruction13(22 downto 17) = reg_addr18) else
                reg_input19 when (instruction13(22 downto 17) = reg_addr19) else
                reg_input20 when (instruction13(22 downto 17) = reg_addr20) else
                reg_input21 when (instruction13(22 downto 17) = reg_addr21) else
                reg_input22 when (instruction13(22 downto 17) = reg_addr22) else
                reg_input23 when (instruction13(22 downto 17) = reg_addr23) else
                reg_input24 when (instruction13(22 downto 17) = reg_addr24) else
                reg_input25 when (instruction13(22 downto 17) = reg_addr25) else
                reg_input26 when (instruction13(22 downto 17) = reg_addr26) else
                reg_input27 when (instruction13(22 downto 17) = reg_addr27) else
                reg_input28 when (instruction13(22 downto 17) = reg_addr28) else
                reg_input29 when (instruction13(22 downto 17) = reg_addr29) else
                reg_input30 when (instruction13(22 downto 17) = reg_addr30) else
                reg_input31 when (instruction13(22 downto 17) = reg_addr31) else
                reg_input32 when (instruction13(22 downto 17) = reg_addr32) else
                reg_input33 when (instruction13(22 downto 17) = reg_addr33) else
                reg_input34 when (instruction13(22 downto 17) = reg_addr34) else
                (others => '0');

  inst13_aux_B <= ("000000000000000000000000000" & instruction13(4 downto 0)) -- take shamt when bitshift
                    when (instruction13(33) = '1' and
                    (instruction13(32 downto 29) >= "0100" and instruction13(32 downto 29) <= "0110")) else
                ("0000000000000000" & instruction13(15 downto 0)) when (instruction13(33) = '1') else -- take immediate
                reg_input1 when (instruction13(16 downto 11) = reg_addr1) else
                reg_input2 when (instruction13(16 downto 11) = reg_addr2) else
                reg_input3 when (instruction13(16 downto 11) = reg_addr3) else
                reg_input4 when (instruction13(16 downto 11) = reg_addr4) else
                reg_input5 when (instruction13(16 downto 11) = reg_addr5) else
                reg_input6 when (instruction13(16 downto 11) = reg_addr6) else
                reg_input7 when (instruction13(16 downto 11) = reg_addr7) else
                reg_input8 when (instruction13(16 downto 11) = reg_addr8) else
                reg_input9 when (instruction13(16 downto 11) = reg_addr9) else
                reg_input10 when (instruction13(16 downto 11) = reg_addr10) else
                reg_input11 when (instruction13(16 downto 11) = reg_addr11) else
                reg_input12 when (instruction13(16 downto 11) = reg_addr12) else
                reg_input13 when (instruction13(16 downto 11) = reg_addr13) else
                reg_input14 when (instruction13(16 downto 11) = reg_addr14) else
                reg_input15 when (instruction13(16 downto 11) = reg_addr15) else
                reg_input16 when (instruction13(16 downto 11) = reg_addr16) else
                reg_input17 when (instruction13(16 downto 11) = reg_addr17) else
                reg_input18 when (instruction13(16 downto 11) = reg_addr18) else
                reg_input19 when (instruction13(16 downto 11) = reg_addr19) else
                reg_input20 when (instruction13(16 downto 11) = reg_addr20) else
                reg_input21 when (instruction13(16 downto 11) = reg_addr21) else
                reg_input22 when (instruction13(16 downto 11) = reg_addr22) else
                reg_input23 when (instruction13(16 downto 11) = reg_addr23) else
                reg_input24 when (instruction13(16 downto 11) = reg_addr24) else
                reg_input25 when (instruction13(16 downto 11) = reg_addr25) else
                reg_input26 when (instruction13(16 downto 11) = reg_addr26) else
                reg_input27 when (instruction13(16 downto 11) = reg_addr27) else
                reg_input28 when (instruction13(16 downto 11) = reg_addr28) else
                reg_input29 when (instruction13(16 downto 11) = reg_addr29) else
                reg_input30 when (instruction13(16 downto 11) = reg_addr30) else
                reg_input31 when (instruction13(16 downto 11) = reg_addr31) else
                reg_input32 when (instruction13(16 downto 11) = reg_addr32) else
                reg_input33 when (instruction13(16 downto 11) = reg_addr33) else
                reg_input34 when (instruction13(16 downto 11) = reg_addr34) else
                (others => '0');

  inst14_aux_A <= reg_input1 when (instruction14(22 downto 17) = reg_addr1) else
                reg_input2 when (instruction14(22 downto 17) = reg_addr2) else
                reg_input3 when (instruction14(22 downto 17) = reg_addr3) else
                reg_input4 when (instruction14(22 downto 17) = reg_addr4) else
                reg_input5 when (instruction14(22 downto 17) = reg_addr5) else
                reg_input6 when (instruction14(22 downto 17) = reg_addr6) else
                reg_input7 when (instruction14(22 downto 17) = reg_addr7) else
                reg_input8 when (instruction14(22 downto 17) = reg_addr8) else
                reg_input9 when (instruction14(22 downto 17) = reg_addr9) else
                reg_input10 when (instruction14(22 downto 17) = reg_addr10) else
                reg_input11 when (instruction14(22 downto 17) = reg_addr11) else
                reg_input12 when (instruction14(22 downto 17) = reg_addr12) else
                reg_input13 when (instruction14(22 downto 17) = reg_addr13) else
                reg_input14 when (instruction14(22 downto 17) = reg_addr14) else
                reg_input15 when (instruction14(22 downto 17) = reg_addr15) else
                reg_input16 when (instruction14(22 downto 17) = reg_addr16) else
                reg_input17 when (instruction14(22 downto 17) = reg_addr17) else
                reg_input18 when (instruction14(22 downto 17) = reg_addr18) else
                reg_input19 when (instruction14(22 downto 17) = reg_addr19) else
                reg_input20 when (instruction14(22 downto 17) = reg_addr20) else
                reg_input21 when (instruction14(22 downto 17) = reg_addr21) else
                reg_input22 when (instruction14(22 downto 17) = reg_addr22) else
                reg_input23 when (instruction14(22 downto 17) = reg_addr23) else
                reg_input24 when (instruction14(22 downto 17) = reg_addr24) else
                reg_input25 when (instruction14(22 downto 17) = reg_addr25) else
                reg_input26 when (instruction14(22 downto 17) = reg_addr26) else
                reg_input27 when (instruction14(22 downto 17) = reg_addr27) else
                reg_input28 when (instruction14(22 downto 17) = reg_addr28) else
                reg_input29 when (instruction14(22 downto 17) = reg_addr29) else
                reg_input30 when (instruction14(22 downto 17) = reg_addr30) else
                reg_input31 when (instruction14(22 downto 17) = reg_addr31) else
                reg_input32 when (instruction14(22 downto 17) = reg_addr32) else
                reg_input33 when (instruction14(22 downto 17) = reg_addr33) else
                reg_input34 when (instruction14(22 downto 17) = reg_addr34) else
                (others => '0');

  inst14_aux_B <= reg_input1 when (instruction14(16 downto 11) = reg_addr1) else
                reg_input2 when (instruction14(16 downto 11) = reg_addr2) else
                reg_input3 when (instruction14(16 downto 11) = reg_addr3) else
                reg_input4 when (instruction14(16 downto 11) = reg_addr4) else
                reg_input5 when (instruction14(16 downto 11) = reg_addr5) else
                reg_input6 when (instruction14(16 downto 11) = reg_addr6) else
                reg_input7 when (instruction14(16 downto 11) = reg_addr7) else
                reg_input8 when (instruction14(16 downto 11) = reg_addr8) else
                reg_input9 when (instruction14(16 downto 11) = reg_addr9) else
                reg_input10 when (instruction14(16 downto 11) = reg_addr10) else
                reg_input11 when (instruction14(16 downto 11) = reg_addr11) else
                reg_input12 when (instruction14(16 downto 11) = reg_addr12) else
                reg_input13 when (instruction14(16 downto 11) = reg_addr13) else
                reg_input14 when (instruction14(16 downto 11) = reg_addr14) else
                reg_input15 when (instruction14(16 downto 11) = reg_addr15) else
                reg_input16 when (instruction14(16 downto 11) = reg_addr16) else
                reg_input17 when (instruction14(16 downto 11) = reg_addr17) else
                reg_input18 when (instruction14(16 downto 11) = reg_addr18) else
                reg_input19 when (instruction14(16 downto 11) = reg_addr19) else
                reg_input20 when (instruction14(16 downto 11) = reg_addr20) else
                reg_input21 when (instruction14(16 downto 11) = reg_addr21) else
                reg_input22 when (instruction14(16 downto 11) = reg_addr22) else
                reg_input23 when (instruction14(16 downto 11) = reg_addr23) else
                reg_input24 when (instruction14(16 downto 11) = reg_addr24) else
                reg_input25 when (instruction14(16 downto 11) = reg_addr25) else
                reg_input26 when (instruction14(16 downto 11) = reg_addr26) else
                reg_input27 when (instruction14(16 downto 11) = reg_addr27) else
                reg_input28 when (instruction14(16 downto 11) = reg_addr28) else
                reg_input29 when (instruction14(16 downto 11) = reg_addr29) else
                reg_input30 when (instruction14(16 downto 11) = reg_addr30) else
                reg_input31 when (instruction14(16 downto 11) = reg_addr31) else
                reg_input32 when (instruction14(16 downto 11) = reg_addr32) else
                reg_input33 when (instruction14(16 downto 11) = reg_addr33) else
                reg_input34 when (instruction14(16 downto 11) = reg_addr34) else
                (others => '0');

  inst15_aux_A <= reg_input1 when (instruction15(22 downto 17) = reg_addr1) else
              reg_input2 when (instruction15(22 downto 17) = reg_addr2) else
              reg_input3 when (instruction15(22 downto 17) = reg_addr3) else
              reg_input4 when (instruction15(22 downto 17) = reg_addr4) else
              reg_input5 when (instruction15(22 downto 17) = reg_addr5) else
              reg_input6 when (instruction15(22 downto 17) = reg_addr6) else
              reg_input7 when (instruction15(22 downto 17) = reg_addr7) else
              reg_input8 when (instruction15(22 downto 17) = reg_addr8) else
              reg_input9 when (instruction15(22 downto 17) = reg_addr9) else
              reg_input10 when (instruction15(22 downto 17) = reg_addr10) else
              reg_input11 when (instruction15(22 downto 17) = reg_addr11) else
              reg_input12 when (instruction15(22 downto 17) = reg_addr12) else
              reg_input13 when (instruction15(22 downto 17) = reg_addr13) else
              reg_input14 when (instruction15(22 downto 17) = reg_addr14) else
              reg_input15 when (instruction15(22 downto 17) = reg_addr15) else
              reg_input16 when (instruction15(22 downto 17) = reg_addr16) else
              reg_input17 when (instruction15(22 downto 17) = reg_addr17) else
              reg_input18 when (instruction15(22 downto 17) = reg_addr18) else
              reg_input19 when (instruction15(22 downto 17) = reg_addr19) else
              reg_input20 when (instruction15(22 downto 17) = reg_addr20) else
              reg_input21 when (instruction15(22 downto 17) = reg_addr21) else
              reg_input22 when (instruction15(22 downto 17) = reg_addr22) else
              reg_input23 when (instruction15(22 downto 17) = reg_addr23) else
              reg_input24 when (instruction15(22 downto 17) = reg_addr24) else
              reg_input25 when (instruction15(22 downto 17) = reg_addr25) else
              reg_input26 when (instruction15(22 downto 17) = reg_addr26) else
              reg_input27 when (instruction15(22 downto 17) = reg_addr27) else
              reg_input28 when (instruction15(22 downto 17) = reg_addr28) else
              reg_input29 when (instruction15(22 downto 17) = reg_addr29) else
              reg_input30 when (instruction15(22 downto 17) = reg_addr30) else
              reg_input31 when (instruction15(22 downto 17) = reg_addr31) else
              reg_input32 when (instruction15(22 downto 17) = reg_addr32) else
              reg_input33 when (instruction15(22 downto 17) = reg_addr33) else
              reg_input34 when (instruction15(22 downto 17) = reg_addr34) else
              (others => '0');

  inst15_aux_B <= ("0000000000000000" & instruction15(15 downto 0)) when (instruction15(33) = '1') else -- take immediate
              (others => '0');

end load_input_signals;
