-- A cluster with 3 basic units and a local register file.
-- It can run 15 instructions.
-- Version: 06.16.2016.

library ieee;
use ieee.std_logic_1164.all;

entity cluster is
  generic (
    DATA_WIDTH : natural := 32;
    INST_WIDTH : natural := 36;
    opc_bits  : natural := 4
  );

  port (
    clk : in std_logic;

    enable_write : in std_logic; -- Enables access to rf for writing
    enable_read  : in std_logic; -- Enables access to rf for reading

    input_reg1 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg2 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg3 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg4 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg5 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg6 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg7 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg8 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg9 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg10 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg11 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg12 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg13 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg14 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg15 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg16 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg17 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg18 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg19 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg20 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg21 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg22 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg23 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg24 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg25 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg26 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg27 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg28 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg29 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg30 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg31 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg32 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg33 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg34 : in std_logic_vector(DATA_WIDTH-1 downto 0);

    write_reg1 : in std_logic;
    write_reg2 : in std_logic;
    write_reg3 : in std_logic;
    write_reg4 : in std_logic;
    write_reg5 : in std_logic;
    write_reg6 : in std_logic;
    write_reg7 : in std_logic;
    write_reg8 : in std_logic;
    write_reg9 : in std_logic;
    write_reg10 : in std_logic;
    write_reg11 : in std_logic;
    write_reg12 : in std_logic;
    write_reg13 : in std_logic;
    write_reg14 : in std_logic;
    write_reg15 : in std_logic;
    write_reg16 : in std_logic;
    write_reg17 : in std_logic;
    write_reg18 : in std_logic;
    write_reg19 : in std_logic;
    write_reg20 : in std_logic;
    write_reg21 : in std_logic;
    write_reg22 : in std_logic;
    write_reg23 : in std_logic;
    write_reg24 : in std_logic;
    write_reg25 : in std_logic;
    write_reg26 : in std_logic;
    write_reg27 : in std_logic;
    write_reg28 : in std_logic;
    write_reg29 : in std_logic;
    write_reg30 : in std_logic;
    write_reg31 : in std_logic;
    write_reg32 : in std_logic;
    write_reg33 : in std_logic;
    write_reg34 : in std_logic;

    read_reg1 : in std_logic;
    read_reg2 : in std_logic;
    read_reg3 : in std_logic;
    read_reg4 : in std_logic;
    read_reg5 : in std_logic;
    read_reg6 : in std_logic;
    read_reg7 : in std_logic;
    read_reg8 : in std_logic;
    read_reg9 : in std_logic;
    read_reg10 : in std_logic;
    read_reg11 : in std_logic;
    read_reg12 : in std_logic;
    read_reg13 : in std_logic;
    read_reg14 : in std_logic;
    read_reg15 : in std_logic;
    read_reg16 : in std_logic;
    read_reg17 : in std_logic;
    read_reg18 : in std_logic;
    read_reg19 : in std_logic;
    read_reg20 : in std_logic;
    read_reg21 : in std_logic;
    read_reg22 : in std_logic;
    read_reg23 : in std_logic;
    read_reg24 : in std_logic;
    read_reg25 : in std_logic;
    read_reg26 : in std_logic;
    read_reg27 : in std_logic;
    read_reg28 : in std_logic;
    read_reg29 : in std_logic;
    read_reg30 : in std_logic;
    read_reg31 : in std_logic;
    read_reg32 : in std_logic;
    read_reg33 : in std_logic;
    read_reg34 : in std_logic;

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
    instruction15 : in std_logic_vector(INST_WIDTH-1 downto 0)
  );
end cluster;

architecture cluster of cluster is

component basic_unit is
  generic (
    n : natural := 32;
    opc_bits  : natural := 4
  );

  port (
    input_ALU_1A : in std_logic_vector(n-1 downto 0);
    input_ALU_1B : in std_logic_vector(n-1 downto 0);
    input_ALU_2A : in std_logic_vector(n-1 downto 0);
    input_ALU_2B : in std_logic_vector(n-1 downto 0);
    input_ALU_3A : in std_logic_vector(n-1 downto 0);
    input_ALU_3B : in std_logic_vector(n-1 downto 0);
    opcode_ALU_1 : in std_logic_vector(opc_bits-1 downto 0);
    opcode_ALU_2 : in std_logic_vector(opc_bits-1 downto 0);
    opcode_ALU_3 : in std_logic_vector(opc_bits-1 downto 0);

    output_ALU_1 : out std_logic_vector(n-1 downto 0);
    output_ALU_2 : out std_logic_vector(n-1 downto 0);
    output_ALU_3 : out std_logic_vector(n-1 downto 0);
    zero_ALU_1 : out std_logic;
    zero_ALU_2 : out std_logic;
    zero_ALU_3 : out std_logic;

    input_MUL_1A : in std_logic_vector(n-1 downto 0);
    input_MUL_1B : in std_logic_vector(n-1 downto 0);
    op_MUL_1 : in std_logic;

    output_MUL_HI : out std_logic_vector(n-1 downto 0);
    output_MUL_LO : out std_logic_vector(n-1 downto 0)
  );
end component;

component register_file is
  generic (
    DATA_WIDTH : natural := 32
  );

  port (
    clk : in std_logic;

    input_reg1 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg2 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg3 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg4 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg5 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg6 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg7 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg8 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg9 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg10 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg11 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg12 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg13 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg14 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg15 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg16 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg17 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg18 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg19 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg20 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg21 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg22 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg23 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg24 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg25 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg26 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg27 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg28 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg29 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg30 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg31 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg32 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg33 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_reg34 : in std_logic_vector(DATA_WIDTH-1 downto 0);

    write_reg1 : in std_logic;
    write_reg2 : in std_logic;
    write_reg3 : in std_logic;
    write_reg4 : in std_logic;
    write_reg5 : in std_logic;
    write_reg6 : in std_logic;
    write_reg7 : in std_logic;
    write_reg8 : in std_logic;
    write_reg9 : in std_logic;
    write_reg10 : in std_logic;
    write_reg11 : in std_logic;
    write_reg12 : in std_logic;
    write_reg13 : in std_logic;
    write_reg14 : in std_logic;
    write_reg15 : in std_logic;
    write_reg16 : in std_logic;
    write_reg17 : in std_logic;
    write_reg18 : in std_logic;
    write_reg19 : in std_logic;
    write_reg20 : in std_logic;
    write_reg21 : in std_logic;
    write_reg22 : in std_logic;
    write_reg23 : in std_logic;
    write_reg24 : in std_logic;
    write_reg25 : in std_logic;
    write_reg26 : in std_logic;
    write_reg27 : in std_logic;
    write_reg28 : in std_logic;
    write_reg29 : in std_logic;
    write_reg30 : in std_logic;
    write_reg31 : in std_logic;
    write_reg32 : in std_logic;
    write_reg33 : in std_logic;
    write_reg34 : in std_logic;

    read_reg1 : in std_logic;
    read_reg2 : in std_logic;
    read_reg3 : in std_logic;
    read_reg4 : in std_logic;
    read_reg5 : in std_logic;
    read_reg6 : in std_logic;
    read_reg7 : in std_logic;
    read_reg8 : in std_logic;
    read_reg9 : in std_logic;
    read_reg10 : in std_logic;
    read_reg11 : in std_logic;
    read_reg12 : in std_logic;
    read_reg13 : in std_logic;
    read_reg14 : in std_logic;
    read_reg15 : in std_logic;
    read_reg16 : in std_logic;
    read_reg17 : in std_logic;
    read_reg18 : in std_logic;
    read_reg19 : in std_logic;
    read_reg20 : in std_logic;
    read_reg21 : in std_logic;
    read_reg22 : in std_logic;
    read_reg23 : in std_logic;
    read_reg24 : in std_logic;
    read_reg25 : in std_logic;
    read_reg26 : in std_logic;
    read_reg27 : in std_logic;
    read_reg28 : in std_logic;
    read_reg29 : in std_logic;
    read_reg30 : in std_logic;
    read_reg31 : in std_logic;
    read_reg32 : in std_logic;
    read_reg33 : in std_logic;
    read_reg34 : in std_logic;

    output_reg1 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output_reg2 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output_reg3 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output_reg4 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output_reg5 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output_reg6 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output_reg7 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output_reg8 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output_reg9 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output_reg10 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output_reg11 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output_reg12 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output_reg13 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output_reg14 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output_reg15 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output_reg16 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output_reg17 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output_reg18 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output_reg19 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output_reg20 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output_reg21 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output_reg22 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output_reg23 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output_reg24 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output_reg25 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output_reg26 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output_reg27 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output_reg28 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output_reg29 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output_reg30 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output_reg31 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output_reg32 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output_reg33 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output_reg34 : out std_logic_vector(DATA_WIDTH-1 downto 0)
  );
end component;

component load_input_signals is
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
end component;

component load_from_rf is
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
end component;

-- Signals for RF
  signal s_input_reg1, s_input_reg2, s_input_reg3, s_input_reg4, s_input_reg5, s_input_reg6,
    s_input_reg7, s_input_reg8, s_input_reg9, s_input_reg10, s_input_reg11, s_input_reg12,
    s_input_reg13, s_input_reg14, s_input_reg15, s_input_reg16, s_input_reg17, s_input_reg18,
    s_input_reg19, s_input_reg20, s_input_reg21, s_input_reg22, s_input_reg23, s_input_reg24,
    s_input_reg25, s_input_reg26, s_input_reg27, s_input_reg28, s_input_reg29, s_input_reg30,
    s_input_reg31, s_input_reg32, s_input_reg33, s_input_reg34 : std_logic_vector(DATA_WIDTH-1 downto 0);

  signal s_output_reg1, s_output_reg2, s_output_reg3, s_output_reg4, s_output_reg5, s_output_reg6,
    s_output_reg7, s_output_reg8, s_output_reg9, s_output_reg10, s_output_reg11, s_output_reg12,
    s_output_reg13, s_output_reg14, s_output_reg15, s_output_reg16, s_output_reg17, s_output_reg18,
    s_output_reg19, s_output_reg20, s_output_reg21, s_output_reg22, s_output_reg23, s_output_reg24,
    s_output_reg25, s_output_reg26, s_output_reg27, s_output_reg28, s_output_reg29, s_output_reg30,
    s_output_reg31, s_output_reg32, s_output_reg33, s_output_reg34 : std_logic_vector(DATA_WIDTH-1 downto 0);

  signal rf_filled : bit := '0'; -- Check if RF was filled

-- Auxiliar signals for component inputs
  signal inst1_aux_A, inst1_aux_B, inst2_aux_A, inst2_aux_B, inst3_aux_A, inst3_aux_B,
         inst4_aux_A, inst4_aux_B, inst5_aux_A, inst5_aux_B, inst6_aux_A, inst6_aux_B,
         inst7_aux_A, inst7_aux_B, inst8_aux_A, inst8_aux_B, inst9_aux_A, inst9_aux_B,
         inst10_aux_A, inst10_aux_B, inst11_aux_A, inst11_aux_B, inst12_aux_A, inst12_aux_B,
         inst13_aux_A, inst13_aux_B, inst14_aux_A, inst14_aux_B, inst15_aux_A, inst15_aux_B :
         std_logic_vector(DATA_WIDTH-1 downto 0);

   signal inst1_aux_rf_A, inst1_aux_rf_B, inst2_aux_rf_A, inst2_aux_rf_B, inst3_aux_rf_A, inst3_aux_rf_B,
          inst4_aux_rf_A, inst4_aux_rf_B, inst5_aux_rf_A, inst5_aux_rf_B, inst6_aux_rf_A, inst6_aux_rf_B,
          inst7_aux_rf_A, inst7_aux_rf_B, inst8_aux_rf_A, inst8_aux_rf_B, inst9_aux_rf_A, inst9_aux_rf_B,
          inst10_aux_rf_A, inst10_aux_rf_B, inst11_aux_rf_A, inst11_aux_rf_B, inst12_aux_rf_A, inst12_aux_rf_B,
          inst13_aux_rf_A, inst13_aux_rf_B, inst14_aux_rf_A, inst14_aux_rf_B, inst15_aux_rf_A, inst15_aux_rf_B :
          std_logic_vector(DATA_WIDTH-1 downto 0);

-- Input for components
  signal inst1_A, inst1_B, inst2_A, inst2_B, inst3_A, inst3_B, inst4_A, inst4_B,
         inst5_A, inst5_B, inst6_A, inst6_B, inst7_A, inst7_B, inst8_A, inst8_B,
         inst9_A, inst9_B, inst10_A, inst10_B, inst11_A, inst11_B, inst12_A, inst12_B,
         inst13_A, inst13_B, inst14_A, inst14_B, inst15_A, inst15_B, inst16_A, inst16_B :
         std_logic_vector(DATA_WIDTH-1 downto 0);

-- Output from components
  signal inst1_out, inst2_out, inst3_out, inst4_out_HI, inst4_out_LO, inst5_out,
         inst6_out, inst7_out, inst8_out, inst9_out_HI, inst9_out_LO, inst10_out,
         inst11_out, inst12_out, inst13_out, inst14_out_HI, inst14_out_LO, inst15_out :
         std_logic_vector(DATA_WIDTH-1 downto 0);

-- Zero output from ALUs
  signal inst1_zero, inst2_zero, inst3_zero,
         inst6_zero, inst7_zero, inst8_zero,
         inst11_zero, inst12_zero, inst13_zero : std_logic;

begin

  rf : register_file port map(
    clk, s_input_reg1, s_input_reg2, s_input_reg3, s_input_reg4, s_input_reg5, s_input_reg6,
    s_input_reg7, s_input_reg8, s_input_reg9, s_input_reg10, s_input_reg11, s_input_reg12,
    s_input_reg13, s_input_reg14, s_input_reg15, s_input_reg16, s_input_reg17, s_input_reg18,
    s_input_reg19, s_input_reg20, s_input_reg21, s_input_reg22, s_input_reg23, s_input_reg24,
    s_input_reg25, s_input_reg26, s_input_reg27, s_input_reg28, s_input_reg29, s_input_reg30,
    s_input_reg31, s_input_reg32, s_input_reg33, s_input_reg34, write_reg1, write_reg2,
    write_reg3, write_reg4, write_reg5, write_reg6, write_reg7, write_reg8, write_reg9,
    write_reg10, write_reg11, write_reg12, write_reg13, write_reg14, write_reg15, write_reg16,
    write_reg17, write_reg18, write_reg19, write_reg20, write_reg21, write_reg22, write_reg23,
    write_reg24, write_reg25, write_reg26, write_reg27, write_reg28, write_reg29, write_reg30,
    write_reg31, write_reg32, write_reg33, write_reg34, read_reg1, read_reg2,
    read_reg3, read_reg4, read_reg5, read_reg6, read_reg7, read_reg8, read_reg9,
    read_reg10, read_reg11, read_reg12, read_reg13, read_reg14, read_reg15, read_reg16,
    read_reg17, read_reg18, read_reg19, read_reg20, read_reg21, read_reg22, read_reg23,
    read_reg24, read_reg25, read_reg26, read_reg27, read_reg28, read_reg29, read_reg30,
    read_reg31, read_reg32, read_reg33, read_reg34, s_output_reg1, s_output_reg2, s_output_reg3,
    s_output_reg4, s_output_reg5, s_output_reg6, s_output_reg7, s_output_reg8, s_output_reg9,
    s_output_reg10, s_output_reg11, s_output_reg12, s_output_reg13, s_output_reg14, s_output_reg15,
    s_output_reg16, s_output_reg17, s_output_reg18, s_output_reg19, s_output_reg20, s_output_reg21,
    s_output_reg22, s_output_reg23, s_output_reg24, s_output_reg25, s_output_reg26, s_output_reg27,
    s_output_reg28, s_output_reg29, s_output_reg30, s_output_reg31, s_output_reg32, s_output_reg33,
    s_output_reg34
  );

  load_input_signals0 : load_input_signals port map(
    input_reg1, input_reg2, input_reg3, input_reg4, input_reg5, input_reg6,
    input_reg7, input_reg8, input_reg9, input_reg10, input_reg11, input_reg12,
    input_reg13, input_reg14, input_reg15, input_reg16, input_reg17, input_reg18,
    input_reg19, input_reg20, input_reg21, input_reg22, input_reg23, input_reg24,
    input_reg25, input_reg26, input_reg27, input_reg28, input_reg29, input_reg30,
    input_reg31, input_reg32, input_reg33, input_reg34,
    instruction1, instruction2, instruction3, instruction4, instruction5, instruction6,
    instruction7, instruction8, instruction9, instruction10, instruction11, instruction12,
    instruction13, instruction14, instruction15, inst1_aux_A, inst1_aux_B, inst2_aux_A, inst2_aux_B, inst3_aux_A,
    inst3_aux_B, inst4_aux_A, inst4_aux_B, inst5_aux_A, inst5_aux_B, inst6_aux_A, inst6_aux_B, inst7_aux_A,
    inst7_aux_B, inst8_aux_A, inst8_aux_B, inst9_aux_A, inst9_aux_B, inst10_aux_A, inst10_aux_B, inst11_aux_A,
    inst11_aux_B, inst12_aux_A, inst12_aux_B, inst13_aux_A, inst13_aux_B, inst14_aux_A, inst14_aux_B,
    inst15_aux_A, inst15_aux_B
  );

  load_from_rf0 : load_from_rf port map(
    s_output_reg1, s_output_reg2, s_output_reg3, s_output_reg4, s_output_reg5, s_output_reg6, s_output_reg7,
    s_output_reg8, s_output_reg9, s_output_reg10, s_output_reg11, s_output_reg12, s_output_reg13, s_output_reg14,
    s_output_reg15, s_output_reg16, s_output_reg17, s_output_reg18, s_output_reg19, s_output_reg20, s_output_reg21,
    s_output_reg22, s_output_reg23, s_output_reg24, s_output_reg25, s_output_reg26, s_output_reg27, s_output_reg28,
    s_output_reg29, s_output_reg30, s_output_reg31, s_output_reg32, s_output_reg33, s_output_reg34,
    instruction1, instruction2, instruction3, instruction4, instruction5, instruction6,
    instruction7, instruction8, instruction9, instruction10, instruction11, instruction12,
    instruction13, instruction14, instruction15, inst1_aux_rf_A, inst1_aux_rf_B, inst2_aux_rf_A, inst2_aux_rf_B, inst3_aux_rf_A,
    inst3_aux_rf_B, inst4_aux_rf_A, inst4_aux_rf_B, inst5_aux_rf_A, inst5_aux_rf_B, inst6_aux_rf_A, inst6_aux_rf_B, inst7_aux_rf_A,
    inst7_aux_rf_B, inst8_aux_rf_A, inst8_aux_rf_B, inst9_aux_rf_A, inst9_aux_rf_B, inst10_aux_rf_A, inst10_aux_rf_B, inst11_aux_rf_A,
    inst11_aux_rf_B, inst12_aux_rf_A, inst12_aux_rf_B, inst13_aux_rf_A, inst13_aux_rf_B, inst14_aux_rf_A, inst14_aux_rf_B,
    inst15_aux_rf_A, inst15_aux_rf_B
  );

  basic_unit_1 : basic_unit port map(inst1_A, inst1_B, inst2_A, inst2_B, inst3_A, inst3_B, instruction1(32 downto 29),
    instruction2(32 downto 29), instruction3(32 downto 29), inst1_out, inst2_out, inst3_out, inst1_zero,
    inst2_zero, inst3_zero, inst4_A, inst4_B, instruction4(29), inst4_out_HI, inst4_out_LO
  );

  basic_unit_2 : basic_unit port map(inst6_A, inst6_B, inst7_A, inst7_B, inst8_A, inst8_B, instruction6(32 downto 29),
    instruction7(32 downto 29), instruction8(32 downto 29), inst6_out, inst7_out, inst8_out, inst6_zero,
    inst7_zero, inst8_zero, inst9_A, inst9_B, instruction9(29), inst9_out_HI, inst9_out_LO
  );

  basic_unit_3 : basic_unit port map(inst11_A, inst11_B, inst12_A, inst12_B, inst13_A, inst13_B,
    instruction11(32 downto 29), instruction12(32 downto 29), instruction13(32 downto 29), inst11_out,
    inst12_out, inst13_out, inst11_zero, inst12_zero, inst13_zero, inst14_A, inst14_B, instruction14(29),
    inst14_out_HI, inst14_out_LO
  );

--   inst1_A <= s_output1 when (instruction1(35) = '1') else
--              inst1_aux_A;
--
--   inst1_B <= s_output2 when (instruction1(34) = '1') else
--              inst1_aux_B;
--
--   inst2_A <= s_output3 when (instruction2(35) = '1') else
--              inst1_out when (instruction2(22 downto 17) = instruction1(28 downto 23)) else
--              inst2_aux_A;
--
--   inst2_B <= s_output4 when (instruction2(34) = '1') else
--              inst1_out when (instruction2(16 downto 11) = instruction1(28 downto 23)) else
--              inst2_aux_B;
--
--   inst3_A <= s_output5 when (instruction3(35) = '1') else
--              inst1_out when (instruction3(22 downto 17) = instruction1(28 downto 23)) else
--              inst2_out when (instruction3(22 downto 17) = instruction2(28 downto 23)) else
--              inst3_aux_A;
--
--   inst3_B <= s_output6 when (instruction3(34) = '1') else
--              inst1_out when (instruction3(16 downto 11) = instruction1(28 downto 23)) else
--              inst2_out when (instruction3(16 downto 11) = instruction2(28 downto 23)) else
--              inst3_aux_B;
--
--   inst4_A <= s_output7 when (instruction4(35) = '1') else
--              inst1_out when (instruction4(22 downto 17) = instruction1(28 downto 23)) else
--              inst2_out when (instruction4(22 downto 17) = instruction2(28 downto 23)) else
--              inst3_out when (instruction4(22 downto 17) = instruction3(28 downto 23)) else
--              inst4_aux_A;
--
--   inst4_B <= s_output8 when (instruction4(34) = '1') else
--              inst1_out when (instruction4(16 downto 11) = instruction1(28 downto 23)) else
--              inst2_out when (instruction4(16 downto 11) = instruction2(28 downto 23)) else
--              inst3_out when (instruction4(16 downto 11) = instruction3(28 downto 23)) else
--              inst4_aux_B;
-- ------
--   inst6_A <= s_output11 when (instruction6(35) = '1') else
--              inst1_out when (instruction6(22 downto 17) = instruction1(28 downto 23)) else
--              inst2_out when (instruction6(22 downto 17) = instruction2(28 downto 23)) else
--              inst3_out when (instruction6(22 downto 17) = instruction3(28 downto 23)) else
--              inst4_out_HI when (instruction6(22 downto 17) = instruction4(28 downto 23)) else
--              inst4_out_LO when (instruction6(22 downto 17) = instruction4(10 downto 5)) else
--               --
--              inst6_aux_A;
--
--   inst6_B <= s_output12 when (instruction6(34) = '1') else
--              inst1_out when (instruction6(16 downto 11) = instruction1(28 downto 23)) else
--              inst2_out when (instruction6(16 downto 11) = instruction2(28 downto 23)) else
--              inst3_out when (instruction6(16 downto 11) = instruction3(28 downto 23)) else
--              inst4_out_HI when (instruction6(16 downto 11) = instruction4(28 downto 23)) else
--              inst4_out_LO when (instruction6(16 downto 11) = instruction4(10 downto 5)) else
--                --
--              inst6_aux_B;

  init_rf : process
  begin
     wait until clk'event and clk = '1' and enable_write = '1';
     s_input_reg1 <= input_reg1;
     s_input_reg2 <= input_reg2;
     s_input_reg3 <= input_reg3;
     s_input_reg4 <= input_reg4;
     s_input_reg5 <= input_reg5;
     s_input_reg6 <= input_reg6;
     s_input_reg7 <= input_reg7;
     s_input_reg8 <= input_reg8;
     s_input_reg9 <= input_reg9;
     s_input_reg10 <= input_reg10;
     s_input_reg11 <= input_reg11;
     s_input_reg12 <= input_reg12;
     s_input_reg13 <= input_reg13;
     s_input_reg14 <= input_reg14;
     s_input_reg15 <= input_reg15;
     s_input_reg16 <= input_reg16;
     s_input_reg17 <= input_reg17;
     s_input_reg18 <= input_reg18;
     s_input_reg19 <= input_reg19;
     s_input_reg20 <= input_reg20;
     s_input_reg21 <= input_reg21;
     s_input_reg22 <= input_reg22;
     s_input_reg23 <= input_reg23;
     s_input_reg24 <= input_reg24;
     s_input_reg25 <= input_reg25;
     s_input_reg26 <= input_reg26;
     s_input_reg27 <= input_reg27;
     s_input_reg28 <= input_reg28;
     s_input_reg29 <= input_reg29;
     s_input_reg30 <= input_reg30;
     s_input_reg31 <= input_reg31;
     s_input_reg32 <= input_reg32;
     s_input_reg33 <= input_reg33;
     s_input_reg34 <= input_reg34;

    --  rf_filled <= '1';
    --  wait until clk'event and clk = '1';
    --  s_write_address1 <= instruction1(28 downto 23);
    --  s_input1 <= inst1_out;
     wait;
  end process;

  -- load_input_from_rf : process
  -- begin
  --   wait until rf_filled = '1';
  --   s_read_address1 <= instruction1(22 downto 17);
  --   s_read_address2 <= instruction1(16 downto 11);
  --   s_read_address3 <= instruction2(22 downto 17);
  --   s_read_address4 <= instruction2(16 downto 11);
  --   s_read_address5 <= instruction3(22 downto 17);
  --   s_read_address6 <= instruction3(16 downto 11);
  --   s_read_address7 <= instruction4(22 downto 17);
  --   s_read_address8 <= instruction4(16 downto 11);
  --   s_read_address9 <= instruction5(22 downto 17);
  --   s_read_address10 <= instruction5(16 downto 11);
  --   s_read_address11 <= instruction6(22 downto 17);
  --   s_read_address12 <= instruction6(16 downto 11);
  --   s_read_address13 <= instruction7(22 downto 17);
  --   s_read_address14 <= instruction7(16 downto 11);
  --   s_read_address15 <= instruction8(22 downto 17);
  --   s_read_address16 <= instruction8(16 downto 11);
  --   s_read_address17 <= instruction9(22 downto 17);
  --   s_read_address18 <= instruction9(16 downto 11);
  --   s_read_address19 <= instruction10(22 downto 17);
  --   s_read_address20 <= instruction10(16 downto 11);
  --   s_read_address21 <= instruction11(22 downto 17);
  --   s_read_address22 <= instruction11(16 downto 11);
  --   s_read_address23 <= instruction12(22 downto 17);
  --   s_read_address24 <= instruction12(16 downto 11);
  --   s_read_address25 <= instruction13(22 downto 17);
  --   s_read_address26 <= instruction13(16 downto 11);
  --   s_read_address27 <= instruction14(22 downto 17);
  --   s_read_address28 <= instruction14(16 downto 11);
  --   s_read_address29 <= instruction15(22 downto 17);
  --   s_read_address30 <= instruction15(16 downto 11);
  --   wait;
  -- end process;

  -- writing_on_rf : process
  -- begin
  --   wait for inst1_out;
  --   s_write_address1 <= instruction1(28 downto 23);
  --   s_input1 <= inst1_out;
  --   -- s_write_address2 <= instruction2(28 downto 23);
  --   -- s_input2 <= inst2_out;
  --   -- s_write_address3 <= instruction3(28 downto 23);
  --   -- s_input3 <= inst3_out;
  --   -- s_write_address4 <= instruction4(28 downto 23);
  --   -- s_input4 <= inst4_out_HI;
  --   -- s_write_address5 <= instruction4(16 downto 11);
  --   -- s_input5 <= inst4_out_LO;
  -- wait;
  -- end process;

end cluster;
