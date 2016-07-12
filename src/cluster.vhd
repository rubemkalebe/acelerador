-- A cluster with 3 basic units and a local register file.
-- It can run 15 instructions.
-- Version: 07.12.2016.

library ieee;
use ieee.std_logic_1164.all;

entity cluster is
  generic (
    DATA_WIDTH : natural := 32;
    ADDR_WIDTH : natural := 32;
    INST_WIDTH : natural := 36
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

    inst5_rst : in std_logic; -- reset for load_store
    inst5_enable_read : in std_logic; -- for load store
    inst5_enable_write : in std_logic; -- for load store

    inst10_rst : in std_logic; -- reset for load_store
    inst10_enable_read : in std_logic; -- for load store
    inst10_enable_write : in std_logic; -- for load store

    inst15_rst : in std_logic; -- reset for load_store
    inst15_enable_read : in std_logic; -- for load store
    inst15_enable_write : in std_logic; -- for load store

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
    DATA_WIDTH : natural := 32;
    ADDR_WIDTH : natural := 32;
    OPCD_WIDTH : natural := 4
  );

  port (
    clk : in std_logic;

    rst_LS1 : in std_logic; -- reset for load_store
    enable_read_LS1 : in std_logic; -- for load store
    enable_write_LS1 : in std_logic; -- for load store

    input_ALU_1A : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_ALU_1B : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_ALU_2A : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_ALU_2B : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_ALU_3A : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_ALU_3B : in std_logic_vector(DATA_WIDTH-1 downto 0);
    opcode_ALU_1 : in std_logic_vector(OPCD_WIDTH-1 downto 0);
    opcode_ALU_2 : in std_logic_vector(OPCD_WIDTH-1 downto 0);
    opcode_ALU_3 : in std_logic_vector(OPCD_WIDTH-1 downto 0);

    output_ALU_1 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output_ALU_2 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output_ALU_3 : out std_logic_vector(DATA_WIDTH-1 downto 0);

    zero_ALU_1 : out std_logic;
    zero_ALU_2 : out std_logic;
    zero_ALU_3 : out std_logic;

    input_MUL_1A : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input_MUL_1B : in std_logic_vector(DATA_WIDTH-1 downto 0);
    op_MUL_1 : in std_logic;

    output_MUL_HI : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output_MUL_LO : out std_logic_vector(DATA_WIDTH-1 downto 0);

    opcode_LS1 : in std_logic_vector(OPCD_WIDTH-1 downto 0);

    offset_LS1 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    rf_data_LS1 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    wrdata_LS1 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    rddata_LS1 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    rf_wr_LS1 : out std_logic;

    mem_addr_LS1    : out std_logic_vector(ADDR_WIDTH-1 downto 0);
    mem_rddata_LS1  : in  std_logic_vector(DATA_WIDTH-1 downto 0);
    mem_wrdata_LS1  : out std_logic_vector(DATA_WIDTH-1 downto 0);
    mem_rd_LS1      : out std_logic;
    mem_wr_LS1      : out std_logic
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
    inst6_aux_rf_A : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst6_aux_rf_B : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst7_aux_rf_A : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst7_aux_rf_B : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst8_aux_rf_A : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst8_aux_rf_B : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst9_aux_rf_A : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst9_aux_rf_B : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst10_aux_rf_A : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst11_aux_rf_A : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst11_aux_rf_B : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst12_aux_rf_A : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst12_aux_rf_B : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst13_aux_rf_A : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst13_aux_rf_B : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst14_aux_rf_A : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst14_aux_rf_B : out std_logic_vector(DATA_WIDTH-1 downto 0);
    inst15_aux_rf_A : out std_logic_vector(DATA_WIDTH-1 downto 0)
  );
end component;

component signals_for_writing is
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
    inst5_rddata : in std_logic_vector(DATA_WIDTH-1 downto 0);
    inst5_rf_wr: in std_logic;

    dest_addr1 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    dest_addr2 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    dest_addr3 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    dest_addr4_HI : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    dest_addr4_LO : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    dest_addr5 : in std_logic_vector(ADDR_WIDTH-1 downto 0);

    inst6_out : in std_logic_vector(DATA_WIDTH-1 downto 0);
    inst7_out : in std_logic_vector(DATA_WIDTH-1 downto 0);
    inst8_out : in std_logic_vector(DATA_WIDTH-1 downto 0);
    inst9_out_HI : in std_logic_vector(DATA_WIDTH-1 downto 0);
    inst9_out_LO : in std_logic_vector(DATA_WIDTH-1 downto 0);
    inst10_rddata : in std_logic_vector(DATA_WIDTH-1 downto 0);
    inst10_rf_wr: in std_logic;

    dest_addr6 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    dest_addr7 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    dest_addr8 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    dest_addr9_HI : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    dest_addr9_LO : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    dest_addr10 : in std_logic_vector(ADDR_WIDTH-1 downto 0);

    inst11_out : in std_logic_vector(DATA_WIDTH-1 downto 0);
    inst12_out : in std_logic_vector(DATA_WIDTH-1 downto 0);
    inst13_out : in std_logic_vector(DATA_WIDTH-1 downto 0);
    inst14_out_HI : in std_logic_vector(DATA_WIDTH-1 downto 0);
    inst14_out_LO : in std_logic_vector(DATA_WIDTH-1 downto 0);
    inst15_rddata : in std_logic_vector(DATA_WIDTH-1 downto 0);
    inst15_rf_wr: in std_logic;

    dest_addr11 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    dest_addr12 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    dest_addr13 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    dest_addr14_HI : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    dest_addr14_LO : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    dest_addr15 : in std_logic_vector(ADDR_WIDTH-1 downto 0);

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

-- Signals for RF feedback
  signal ss_input_reg1, ss_input_reg2, ss_input_reg3, ss_input_reg4, ss_input_reg5, ss_input_reg6,
    ss_input_reg7, ss_input_reg8, ss_input_reg9, ss_input_reg10, ss_input_reg11, ss_input_reg12,
    ss_input_reg13, ss_input_reg14, ss_input_reg15, ss_input_reg16, ss_input_reg17, ss_input_reg18,
    ss_input_reg19, ss_input_reg20, ss_input_reg21, ss_input_reg22, ss_input_reg23, ss_input_reg24,
    ss_input_reg25, ss_input_reg26, ss_input_reg27, ss_input_reg28, ss_input_reg29, ss_input_reg30,
    ss_input_reg31, ss_input_reg32, ss_input_reg33, ss_input_reg34 : std_logic_vector(DATA_WIDTH-1 downto 0);

-- Auxiliar signals for component inputs (data don't come from rf)
  signal inst1_aux_A, inst1_aux_B, inst2_aux_A, inst2_aux_B, inst3_aux_A, inst3_aux_B,
         inst4_aux_A, inst4_aux_B, inst5_aux_A, inst5_aux_B, inst6_aux_A, inst6_aux_B,
         inst7_aux_A, inst7_aux_B, inst8_aux_A, inst8_aux_B, inst9_aux_A, inst9_aux_B,
         inst10_aux_A, inst10_aux_B, inst11_aux_A, inst11_aux_B, inst12_aux_A, inst12_aux_B,
         inst13_aux_A, inst13_aux_B, inst14_aux_A, inst14_aux_B, inst15_aux_A, inst15_aux_B :
         std_logic_vector(DATA_WIDTH-1 downto 0);

-- Auxiliar signals for RF reading
   signal inst1_aux_rf_A, inst1_aux_rf_B, inst2_aux_rf_A, inst2_aux_rf_B, inst3_aux_rf_A, inst3_aux_rf_B,
          inst4_aux_rf_A, inst4_aux_rf_B, inst5_aux_rf_A, inst6_aux_rf_A, inst6_aux_rf_B,
          inst7_aux_rf_A, inst7_aux_rf_B, inst8_aux_rf_A, inst8_aux_rf_B, inst9_aux_rf_A, inst9_aux_rf_B,
          inst10_aux_rf_A, inst11_aux_rf_A, inst11_aux_rf_B, inst12_aux_rf_A, inst12_aux_rf_B,
          inst13_aux_rf_A, inst13_aux_rf_B, inst14_aux_rf_A, inst14_aux_rf_B, inst15_aux_rf_A :
          std_logic_vector(DATA_WIDTH-1 downto 0);

-- Input for the functional units
  signal inst1_A, inst1_B, inst2_A, inst2_B, inst3_A, inst3_B, inst4_A, inst4_B,
         inst5_A, inst5_B, inst6_A, inst6_B, inst7_A, inst7_B, inst8_A, inst8_B,
         inst9_A, inst9_B, inst10_A, inst10_B, inst11_A, inst11_B, inst12_A, inst12_B,
         inst13_A, inst13_B, inst14_A, inst14_B, inst15_A, inst15_B :
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

-- Signals for load/store operations
  signal inst5_wrdata, inst10_wrdata, inst15_wrdata : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal inst5_rf_wr, inst10_rf_wr, inst15_rf_wr : std_logic;
  signal inst5_mem_addr, inst10_mem_addr, inst15_mem_addr : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal inst5_mem_rddata, inst10_mem_rddata, inst15_mem_rddata : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal inst5_mem_wrdata, inst10_mem_wrdata, inst15_mem_wrdata : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal inst5_mem_rd, inst10_mem_rd, inst15_mem_rd : std_logic;
  signal inst5_mem_wr, inst10_mem_wr, inst15_mem_wr : std_logic;

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
    inst3_aux_rf_B, inst4_aux_rf_A, inst4_aux_rf_B, inst5_aux_rf_A, inst6_aux_rf_A, inst6_aux_rf_B, inst7_aux_rf_A,
    inst7_aux_rf_B, inst8_aux_rf_A, inst8_aux_rf_B, inst9_aux_rf_A, inst9_aux_rf_B, inst10_aux_rf_A, inst11_aux_rf_A,
    inst11_aux_rf_B, inst12_aux_rf_A, inst12_aux_rf_B, inst13_aux_rf_A, inst13_aux_rf_B, inst14_aux_rf_A, inst14_aux_rf_B,
    inst15_aux_rf_A
  );

  basic_unit_1 : basic_unit port map(clk, inst5_rst, inst5_enable_read, inst5_enable_write,
    inst1_A, inst1_B, inst2_A, inst2_B, inst3_A, inst3_B, instruction1(32 downto 29),
    instruction2(32 downto 29), instruction3(32 downto 29), inst1_out, inst2_out, inst3_out, inst1_zero,
    inst2_zero, inst3_zero, inst4_A, inst4_B, instruction4(29), inst4_out_HI, inst4_out_LO,
    instruction5(32 downto 29), inst5_B, inst5_A, inst5_wrdata, inst5_out, inst5_rf_wr,
    inst5_mem_addr, inst5_mem_rddata, inst5_mem_wrdata, inst5_mem_rd, inst5_mem_wr
  );

  basic_unit_2 : basic_unit port map(clk, inst10_rst, inst10_enable_read, inst10_enable_write,
    inst6_A, inst6_B, inst7_A, inst7_B, inst8_A, inst8_B, instruction6(32 downto 29),
    instruction7(32 downto 29), instruction8(32 downto 29), inst6_out, inst7_out, inst8_out, inst6_zero,
    inst7_zero, inst8_zero, inst9_A, inst9_B, instruction9(29), inst9_out_HI, inst9_out_LO,
    instruction10(32 downto 29), inst10_B, inst10_A, inst10_wrdata, inst10_out, inst10_rf_wr,
    inst10_mem_addr, inst10_mem_rddata, inst10_mem_wrdata, inst10_mem_rd, inst10_mem_wr
  );

  basic_unit_3 : basic_unit port map(clk, inst15_rst, inst15_enable_read, inst15_enable_write,
    inst11_A, inst11_B, inst12_A, inst12_B, inst13_A, inst13_B,
    instruction11(32 downto 29), instruction12(32 downto 29), instruction13(32 downto 29), inst11_out,
    inst12_out, inst13_out, inst11_zero, inst12_zero, inst13_zero, inst14_A, inst14_B, instruction14(29),
    inst14_out_HI, inst14_out_LO,
    instruction15(32 downto 29), inst15_B, inst15_A, inst15_wrdata, inst15_out, inst15_rf_wr,
    inst15_mem_addr, inst15_mem_rddata, inst15_mem_wrdata, inst15_mem_rd, inst15_mem_wr
  );

  signals_for_writing0 : signals_for_writing port map(
    inst1_out, inst2_out, inst3_out, inst4_out_HI, inst4_out_LO, inst5_out, inst5_rf_wr,
    instruction1(28 downto 23), instruction2(28 downto 23), instruction3(28 downto 23), instruction4(28 downto 23),
    instruction4(10 downto 5), instruction5(28 downto 23),
    inst6_out, inst7_out, inst8_out, inst9_out_HI, inst9_out_LO, inst10_out, inst10_rf_wr,
    instruction6(28 downto 23), instruction7(28 downto 23), instruction8(28 downto 23), instruction9(28 downto 23),
    instruction9(10 downto 5), instruction10(28 downto 23),
    inst11_out, inst12_out, inst13_out, inst14_out_HI, inst14_out_LO, inst15_out, inst15_rf_wr,
    instruction11(28 downto 23), instruction12(28 downto 23), instruction13(28 downto 23), instruction14(28 downto 23),
    instruction14(10 downto 5), instruction15(28 downto 23),
    ss_input_reg1, ss_input_reg2, ss_input_reg3, ss_input_reg4, ss_input_reg5, ss_input_reg6,
    ss_input_reg7, ss_input_reg8, ss_input_reg9, ss_input_reg10, ss_input_reg11, ss_input_reg12,
    ss_input_reg13, ss_input_reg14, ss_input_reg15, ss_input_reg16, ss_input_reg17, ss_input_reg18,
    ss_input_reg19, ss_input_reg20, ss_input_reg21, ss_input_reg22, ss_input_reg23, ss_input_reg24,
    ss_input_reg25, ss_input_reg26, ss_input_reg27, ss_input_reg28, ss_input_reg29, ss_input_reg30,
    ss_input_reg31, ss_input_reg32, ss_input_reg33, ss_input_reg34
  );

  inst1_A <= inst1_aux_rf_A when (instruction1(35) = '1') else
             inst1_aux_A;

  inst1_B <= inst1_aux_rf_B when (instruction1(34) = '1') else
             inst1_aux_B;

  inst2_A <= inst2_aux_rf_A when (instruction2(35) = '1') else
             inst1_out when (instruction2(22 downto 17) = instruction1(28 downto 23)) else
             inst2_aux_A;

  inst2_B <= inst2_aux_rf_B when (instruction2(34) = '1') else
             inst1_out when (instruction2(16 downto 11) = instruction1(28 downto 23)) else
             inst2_aux_B;

  inst3_A <= inst3_aux_rf_A when (instruction3(35) = '1') else
             inst1_out when (instruction3(22 downto 17) = instruction1(28 downto 23)) else
             inst2_out when (instruction3(22 downto 17) = instruction2(28 downto 23)) else
             inst3_aux_A;

  inst3_B <= inst3_aux_rf_B when (instruction3(34) = '1') else
             inst1_out when (instruction3(16 downto 11) = instruction1(28 downto 23)) else
             inst2_out when (instruction3(16 downto 11) = instruction2(28 downto 23)) else
             inst3_aux_B;

  inst4_A <= inst4_aux_rf_A when (instruction4(35) = '1') else
             inst1_out when (instruction4(22 downto 17) = instruction1(28 downto 23)) else
             inst2_out when (instruction4(22 downto 17) = instruction2(28 downto 23)) else
             inst3_out when (instruction4(22 downto 17) = instruction3(28 downto 23)) else
             inst4_aux_A;

  inst4_B <= inst4_aux_rf_B when (instruction4(34) = '1') else
             inst1_out when (instruction4(16 downto 11) = instruction1(28 downto 23)) else
             inst2_out when (instruction4(16 downto 11) = instruction2(28 downto 23)) else
             inst3_out when (instruction4(16 downto 11) = instruction3(28 downto 23)) else
             inst4_aux_B;

  inst5_A <= inst5_aux_rf_A when (instruction5(34) = '1') else
             inst1_out when (instruction5(22 downto 17) = instruction1(28 downto 23)) else
             inst2_out when (instruction5(22 downto 17) = instruction2(28 downto 23)) else
             inst3_out when (instruction5(22 downto 17) = instruction3(28 downto 23)) else
             inst4_out_HI when (instruction5(22 downto 17) = instruction4(28 downto 23)) else
             inst4_out_LO when (instruction5(22 downto 17) = instruction4(10 downto 5)) else
             inst5_aux_A;

  inst5_B <= inst5_B; -- Takes the immediate

  inst6_A <= inst6_aux_rf_A when (instruction6(35) = '1') else
             inst1_out when (instruction6(22 downto 17) = instruction1(28 downto 23)) else
             inst2_out when (instruction6(22 downto 17) = instruction2(28 downto 23)) else
             inst3_out when (instruction6(22 downto 17) = instruction3(28 downto 23)) else
             inst4_out_HI when (instruction6(22 downto 17) = instruction4(28 downto 23)) else
             inst4_out_LO when (instruction6(22 downto 17) = instruction4(10 downto 5)) else
             inst5_out when (instruction6(22 downto 17) = instruction5(28 downto 23)) else
             inst6_aux_A;

  inst6_B <= inst6_aux_rf_B when (instruction6(34) = '1') else
             inst1_out when (instruction6(16 downto 11) = instruction1(28 downto 23)) else
             inst2_out when (instruction6(16 downto 11) = instruction2(28 downto 23)) else
             inst3_out when (instruction6(16 downto 11) = instruction3(28 downto 23)) else
             inst4_out_HI when (instruction6(16 downto 11) = instruction4(28 downto 23)) else
             inst4_out_LO when (instruction6(16 downto 11) = instruction4(10 downto 5)) else
             inst5_out when (instruction6(16 downto 11) = instruction5(28 downto 23)) else
             inst6_aux_B;

  inst7_A <= inst7_aux_rf_A when (instruction7(35) = '1') else
             inst1_out when (instruction7(22 downto 17) = instruction1(28 downto 23)) else
             inst2_out when (instruction7(22 downto 17) = instruction2(28 downto 23)) else
             inst3_out when (instruction7(22 downto 17) = instruction3(28 downto 23)) else
             inst4_out_HI when (instruction7(22 downto 17) = instruction4(28 downto 23)) else
             inst4_out_LO when (instruction7(22 downto 17) = instruction4(10 downto 5)) else
             inst5_out when (instruction7(22 downto 17) = instruction5(28 downto 23)) else
             inst6_out when (instruction7(22 downto 17) = instruction6(28 downto 23)) else
             inst7_aux_A;

  inst7_B <= inst7_aux_rf_B when (instruction7(34) = '1') else
             inst1_out when (instruction7(16 downto 11) = instruction1(28 downto 23)) else
             inst2_out when (instruction7(16 downto 11) = instruction2(28 downto 23)) else
             inst3_out when (instruction7(16 downto 11) = instruction3(28 downto 23)) else
             inst4_out_HI when (instruction7(16 downto 11) = instruction4(28 downto 23)) else
             inst4_out_LO when (instruction7(16 downto 11) = instruction4(10 downto 5)) else
             inst5_out when (instruction7(16 downto 11) = instruction5(28 downto 23)) else
             inst6_out when (instruction7(16 downto 11) = instruction6(28 downto 23)) else
             inst7_aux_B;

  inst8_A <= inst8_aux_rf_A when (instruction8(35) = '1') else
             inst1_out when (instruction8(22 downto 17) = instruction1(28 downto 23)) else
             inst2_out when (instruction8(22 downto 17) = instruction2(28 downto 23)) else
             inst3_out when (instruction8(22 downto 17) = instruction3(28 downto 23)) else
             inst4_out_HI when (instruction8(22 downto 17) = instruction4(28 downto 23)) else
             inst4_out_LO when (instruction8(22 downto 17) = instruction4(10 downto 5)) else
             inst5_out when (instruction8(22 downto 17) = instruction5(28 downto 23)) else
             inst6_out when (instruction8(22 downto 17) = instruction6(28 downto 23)) else
             inst7_out when (instruction8(22 downto 17) = instruction7(28 downto 23)) else
             inst8_aux_A;

  inst8_B <= inst8_aux_rf_B when (instruction8(34) = '1') else
             inst1_out when (instruction8(16 downto 11) = instruction1(28 downto 23)) else
             inst2_out when (instruction8(16 downto 11) = instruction2(28 downto 23)) else
             inst3_out when (instruction8(16 downto 11) = instruction3(28 downto 23)) else
             inst4_out_HI when (instruction8(16 downto 11) = instruction4(28 downto 23)) else
             inst4_out_LO when (instruction8(16 downto 11) = instruction4(10 downto 5)) else
             inst5_out when (instruction8(16 downto 11) = instruction5(28 downto 23)) else
             inst6_out when (instruction8(16 downto 11) = instruction6(28 downto 23)) else
             inst7_out when (instruction8(16 downto 11) = instruction7(28 downto 23)) else
             inst8_aux_B;

  inst9_A <= inst9_aux_rf_A when (instruction9(35) = '1') else
             inst1_out when (instruction9(22 downto 17) = instruction1(28 downto 23)) else
             inst2_out when (instruction9(22 downto 17) = instruction2(28 downto 23)) else
             inst3_out when (instruction9(22 downto 17) = instruction3(28 downto 23)) else
             inst4_out_HI when (instruction9(22 downto 17) = instruction4(28 downto 23)) else
             inst4_out_LO when (instruction9(22 downto 17) = instruction4(10 downto 5)) else
             inst5_out when (instruction9(22 downto 17) = instruction5(28 downto 23)) else
             inst6_out when (instruction9(22 downto 17) = instruction6(28 downto 23)) else
             inst7_out when (instruction9(22 downto 17) = instruction7(28 downto 23)) else
             inst8_out when (instruction9(22 downto 17) = instruction8(28 downto 23)) else
             inst9_aux_A;

  inst9_B <= inst9_aux_rf_B when (instruction9(34) = '1') else
             inst1_out when (instruction9(16 downto 11) = instruction1(28 downto 23)) else
             inst2_out when (instruction9(16 downto 11) = instruction2(28 downto 23)) else
             inst3_out when (instruction9(16 downto 11) = instruction3(28 downto 23)) else
             inst4_out_HI when (instruction9(16 downto 11) = instruction4(28 downto 23)) else
             inst4_out_LO when (instruction9(16 downto 11) = instruction4(10 downto 5)) else
             inst5_out when (instruction9(16 downto 11) = instruction5(28 downto 23)) else
             inst6_out when (instruction9(16 downto 11) = instruction6(28 downto 23)) else
             inst7_out when (instruction9(16 downto 11) = instruction7(28 downto 23)) else
             inst8_out when (instruction9(16 downto 11) = instruction8(28 downto 23)) else
             inst9_aux_B;


  inst10_A <= inst10_aux_rf_A when (instruction10(35) = '1') else
             inst1_out when (instruction10(22 downto 17) = instruction1(28 downto 23)) else
             inst2_out when (instruction10(22 downto 17) = instruction2(28 downto 23)) else
             inst3_out when (instruction10(22 downto 17) = instruction3(28 downto 23)) else
             inst4_out_HI when (instruction10(22 downto 17) = instruction4(28 downto 23)) else
             inst4_out_LO when (instruction10(22 downto 17) = instruction4(10 downto 5)) else
             inst5_out when (instruction10(22 downto 17) = instruction5(28 downto 23)) else
             inst6_out when (instruction10(22 downto 17) = instruction6(28 downto 23)) else
             inst7_out when (instruction10(22 downto 17) = instruction7(28 downto 23)) else
             inst8_out when (instruction10(22 downto 17) = instruction8(28 downto 23)) else
             inst9_out_HI when (instruction10(22 downto 17) = instruction9(28 downto 23)) else
             inst9_out_LO when (instruction10(22 downto 17) = instruction9(10 downto 5)) else
             inst10_aux_A;

  inst10_B <= inst10_B; -- Takes the immediate

  inst11_A <= inst11_aux_rf_A when (instruction11(35) = '1') else
             inst1_out when (instruction11(22 downto 17) = instruction1(28 downto 23)) else
             inst2_out when (instruction11(22 downto 17) = instruction2(28 downto 23)) else
             inst3_out when (instruction11(22 downto 17) = instruction3(28 downto 23)) else
             inst4_out_HI when (instruction11(22 downto 17) = instruction4(28 downto 23)) else
             inst4_out_LO when (instruction11(22 downto 17) = instruction4(10 downto 5)) else
             inst5_out when (instruction11(22 downto 17) = instruction5(28 downto 23)) else
             inst6_out when (instruction11(22 downto 17) = instruction6(28 downto 23)) else
             inst7_out when (instruction11(22 downto 17) = instruction7(28 downto 23)) else
             inst8_out when (instruction11(22 downto 17) = instruction8(28 downto 23)) else
             inst9_out_HI when (instruction11(22 downto 17) = instruction9(28 downto 23)) else
             inst9_out_LO when (instruction11(22 downto 17) = instruction9(10 downto 5)) else
             inst10_out when (instruction11(22 downto 17) = instruction10(28 downto 23)) else
             inst11_aux_A;

  inst11_B <= inst11_aux_rf_B when (instruction11(34) = '1') else
             inst1_out when (instruction11(16 downto 11) = instruction1(28 downto 23)) else
             inst2_out when (instruction11(16 downto 11) = instruction2(28 downto 23)) else
             inst3_out when (instruction11(16 downto 11) = instruction3(28 downto 23)) else
             inst4_out_HI when (instruction11(16 downto 11) = instruction4(28 downto 23)) else
             inst4_out_LO when (instruction11(16 downto 11) = instruction4(10 downto 5)) else
             inst5_out when (instruction11(16 downto 11) = instruction5(28 downto 23)) else
             inst6_out when (instruction11(16 downto 11) = instruction6(28 downto 23)) else
             inst7_out when (instruction11(16 downto 11) = instruction7(28 downto 23)) else
             inst8_out when (instruction11(16 downto 11) = instruction8(28 downto 23)) else
             inst9_out_HI when (instruction11(22 downto 17) = instruction9(28 downto 23)) else
             inst9_out_LO when (instruction11(22 downto 17) = instruction9(10 downto 5)) else
             inst10_out when (instruction11(16 downto 11) = instruction10(28 downto 23)) else
             inst11_aux_B;

  inst12_A <= inst12_aux_rf_A when (instruction12(35) = '1') else
             inst1_out when (instruction12(22 downto 17) = instruction1(28 downto 23)) else
             inst2_out when (instruction12(22 downto 17) = instruction2(28 downto 23)) else
             inst3_out when (instruction12(22 downto 17) = instruction3(28 downto 23)) else
             inst4_out_HI when (instruction12(22 downto 17) = instruction4(28 downto 23)) else
             inst4_out_LO when (instruction12(22 downto 17) = instruction4(10 downto 5)) else
             inst5_out when (instruction12(22 downto 17) = instruction5(28 downto 23)) else
             inst6_out when (instruction12(22 downto 17) = instruction6(28 downto 23)) else
             inst7_out when (instruction12(22 downto 17) = instruction7(28 downto 23)) else
             inst8_out when (instruction12(22 downto 17) = instruction8(28 downto 23)) else
             inst9_out_HI when (instruction12(22 downto 17) = instruction9(28 downto 23)) else
             inst9_out_LO when (instruction12(22 downto 17) = instruction9(10 downto 5)) else
             inst10_out when (instruction12(22 downto 17) = instruction10(28 downto 23)) else
             inst11_out when (instruction12(22 downto 17) = instruction11(28 downto 23)) else
             inst12_aux_A;

  inst12_B <= inst12_aux_rf_B when (instruction12(34) = '1') else
             inst1_out when (instruction12(16 downto 11) = instruction1(28 downto 23)) else
             inst2_out when (instruction12(16 downto 11) = instruction2(28 downto 23)) else
             inst3_out when (instruction12(16 downto 11) = instruction3(28 downto 23)) else
             inst4_out_HI when (instruction12(16 downto 11) = instruction4(28 downto 23)) else
             inst4_out_LO when (instruction12(16 downto 11) = instruction4(10 downto 5)) else
             inst5_out when (instruction12(16 downto 11) = instruction5(28 downto 23)) else
             inst6_out when (instruction12(16 downto 11) = instruction6(28 downto 23)) else
             inst7_out when (instruction12(16 downto 11) = instruction7(28 downto 23)) else
             inst8_out when (instruction12(16 downto 11) = instruction8(28 downto 23)) else
             inst9_out_HI when (instruction12(22 downto 17) = instruction9(28 downto 23)) else
             inst9_out_LO when (instruction12(22 downto 17) = instruction9(10 downto 5)) else
             inst10_out when (instruction12(16 downto 11) = instruction10(28 downto 23)) else
             inst11_out when (instruction12(16 downto 11) = instruction11(28 downto 23)) else
             inst12_aux_B;

  inst13_A <= inst13_aux_rf_A when (instruction13(35) = '1') else
             inst1_out when (instruction13(22 downto 17) = instruction1(28 downto 23)) else
             inst2_out when (instruction13(22 downto 17) = instruction2(28 downto 23)) else
             inst3_out when (instruction13(22 downto 17) = instruction3(28 downto 23)) else
             inst4_out_HI when (instruction13(22 downto 17) = instruction4(28 downto 23)) else
             inst4_out_LO when (instruction13(22 downto 17) = instruction4(10 downto 5)) else
             inst5_out when (instruction13(22 downto 17) = instruction5(28 downto 23)) else
             inst6_out when (instruction13(22 downto 17) = instruction6(28 downto 23)) else
             inst7_out when (instruction13(22 downto 17) = instruction7(28 downto 23)) else
             inst8_out when (instruction13(22 downto 17) = instruction8(28 downto 23)) else
             inst9_out_HI when (instruction13(22 downto 17) = instruction9(28 downto 23)) else
             inst9_out_LO when (instruction13(22 downto 17) = instruction9(10 downto 5)) else
             inst10_out when (instruction13(22 downto 17) = instruction10(28 downto 23)) else
             inst11_out when (instruction13(22 downto 17) = instruction11(28 downto 23)) else
             inst12_out when (instruction13(22 downto 17) = instruction12(28 downto 23)) else
             inst13_aux_A;

  inst13_B <= inst13_aux_rf_B when (instruction13(34) = '1') else
             inst1_out when (instruction13(16 downto 11) = instruction1(28 downto 23)) else
             inst2_out when (instruction13(16 downto 11) = instruction2(28 downto 23)) else
             inst3_out when (instruction13(16 downto 11) = instruction3(28 downto 23)) else
             inst4_out_HI when (instruction13(16 downto 11) = instruction4(28 downto 23)) else
             inst4_out_LO when (instruction13(16 downto 11) = instruction4(10 downto 5)) else
             inst5_out when (instruction13(16 downto 11) = instruction5(28 downto 23)) else
             inst6_out when (instruction13(16 downto 11) = instruction6(28 downto 23)) else
             inst7_out when (instruction13(16 downto 11) = instruction7(28 downto 23)) else
             inst8_out when (instruction13(16 downto 11) = instruction8(28 downto 23)) else
             inst9_out_HI when (instruction13(22 downto 17) = instruction9(28 downto 23)) else
             inst9_out_LO when (instruction13(22 downto 17) = instruction9(10 downto 5)) else
             inst10_out when (instruction13(16 downto 11) = instruction10(28 downto 23)) else
             inst11_out when (instruction13(16 downto 11) = instruction11(28 downto 23)) else
             inst12_out when (instruction13(16 downto 11) = instruction12(28 downto 23)) else
             inst13_aux_B;

  inst14_A <= inst14_aux_rf_A when (instruction14(35) = '1') else
             inst1_out when (instruction14(22 downto 17) = instruction1(28 downto 23)) else
             inst2_out when (instruction14(22 downto 17) = instruction2(28 downto 23)) else
             inst3_out when (instruction14(22 downto 17) = instruction3(28 downto 23)) else
             inst4_out_HI when (instruction14(22 downto 17) = instruction4(28 downto 23)) else
             inst4_out_LO when (instruction14(22 downto 17) = instruction4(10 downto 5)) else
             inst5_out when (instruction14(22 downto 17) = instruction5(28 downto 23)) else
             inst6_out when (instruction14(22 downto 17) = instruction6(28 downto 23)) else
             inst7_out when (instruction14(22 downto 17) = instruction7(28 downto 23)) else
             inst8_out when (instruction14(22 downto 17) = instruction8(28 downto 23)) else
             inst9_out_HI when (instruction14(22 downto 17) = instruction9(28 downto 23)) else
             inst9_out_LO when (instruction14(22 downto 17) = instruction9(10 downto 5)) else
             inst10_out when (instruction14(22 downto 17) = instruction10(28 downto 23)) else
             inst11_out when (instruction14(22 downto 17) = instruction11(28 downto 23)) else
             inst12_out when (instruction14(22 downto 17) = instruction12(28 downto 23)) else
             inst13_out when (instruction14(22 downto 17) = instruction13(28 downto 23)) else
             inst14_aux_A;

  inst14_B <= inst14_aux_rf_B when (instruction14(34) = '1') else
             inst1_out when (instruction14(16 downto 11) = instruction1(28 downto 23)) else
             inst2_out when (instruction14(16 downto 11) = instruction2(28 downto 23)) else
             inst3_out when (instruction14(16 downto 11) = instruction3(28 downto 23)) else
             inst4_out_HI when (instruction14(16 downto 11) = instruction4(28 downto 23)) else
             inst4_out_LO when (instruction14(16 downto 11) = instruction4(10 downto 5)) else
             inst5_out when (instruction14(16 downto 11) = instruction5(28 downto 23)) else
             inst6_out when (instruction14(16 downto 11) = instruction6(28 downto 23)) else
             inst7_out when (instruction14(16 downto 11) = instruction7(28 downto 23)) else
             inst8_out when (instruction14(16 downto 11) = instruction8(28 downto 23)) else
             inst9_out_HI when (instruction14(22 downto 17) = instruction9(28 downto 23)) else
             inst9_out_LO when (instruction14(22 downto 17) = instruction9(10 downto 5)) else
             inst10_out when (instruction14(16 downto 11) = instruction10(28 downto 23)) else
             inst11_out when (instruction14(16 downto 11) = instruction11(28 downto 23)) else
             inst12_out when (instruction14(16 downto 11) = instruction12(28 downto 23)) else
             inst13_out when (instruction14(16 downto 11) = instruction13(28 downto 23)) else
             inst14_aux_B;

  inst15_A <= inst15_aux_rf_A when (instruction15(35) = '1') else
             inst1_out when (instruction15(22 downto 17) = instruction1(28 downto 23)) else
             inst2_out when (instruction15(22 downto 17) = instruction2(28 downto 23)) else
             inst3_out when (instruction15(22 downto 17) = instruction3(28 downto 23)) else
             inst4_out_HI when (instruction15(22 downto 17) = instruction4(28 downto 23)) else
             inst4_out_LO when (instruction15(22 downto 17) = instruction4(10 downto 5)) else
             inst5_out when (instruction15(22 downto 17) = instruction5(28 downto 23)) else
             inst6_out when (instruction15(22 downto 17) = instruction6(28 downto 23)) else
             inst7_out when (instruction15(22 downto 17) = instruction7(28 downto 23)) else
             inst8_out when (instruction15(22 downto 17) = instruction8(28 downto 23)) else
             inst9_out_HI when (instruction15(22 downto 17) = instruction9(28 downto 23)) else
             inst9_out_LO when (instruction15(22 downto 17) = instruction9(10 downto 5)) else
             inst10_out when (instruction15(22 downto 17) = instruction10(28 downto 23)) else
             inst11_out when (instruction15(22 downto 17) = instruction11(28 downto 23)) else
             inst12_out when (instruction15(22 downto 17) = instruction12(28 downto 23)) else
             inst13_out when (instruction15(22 downto 17) = instruction13(28 downto 23)) else
             inst14_out_HI when (instruction15(22 downto 17) = instruction14(28 downto 23)) else
             inst14_out_LO when (instruction15(22 downto 17) = instruction14(10 downto 5)) else
             inst15_aux_A;

  inst15_B <= inst15_B; -- Takes the immediate

  write_rf : process
  begin
    -- First, fill the register file
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

    -- Update register file when signal raises again
    wait until (clk'event and clk = '1') and (enable_write'event and enable_write = '1');
    s_input_reg1 <= ss_input_reg1;
    s_input_reg2 <= ss_input_reg2;
    s_input_reg3 <= ss_input_reg3;
    s_input_reg4 <= ss_input_reg4;
    s_input_reg5 <= ss_input_reg5;
    s_input_reg6 <= ss_input_reg6;
    s_input_reg7 <= ss_input_reg7;
    s_input_reg8 <= ss_input_reg8;
    s_input_reg9 <= ss_input_reg9;
    s_input_reg10 <= ss_input_reg10;
    s_input_reg11 <= ss_input_reg11;
    s_input_reg12 <= ss_input_reg12;
    s_input_reg13 <= ss_input_reg13;
    s_input_reg14 <= ss_input_reg14;
    s_input_reg15 <= ss_input_reg15;
    s_input_reg16 <= ss_input_reg16;
    s_input_reg17 <= ss_input_reg17;
    s_input_reg18 <= ss_input_reg18;
    s_input_reg19 <= ss_input_reg19;
    s_input_reg20 <= ss_input_reg20;
    s_input_reg21 <= ss_input_reg21;
    s_input_reg22 <= ss_input_reg22;
    s_input_reg23 <= ss_input_reg23;
    s_input_reg24 <= ss_input_reg24;
    s_input_reg25 <= ss_input_reg25;
    s_input_reg26 <= ss_input_reg26;
    s_input_reg27 <= ss_input_reg27;
    s_input_reg28 <= ss_input_reg28;
    s_input_reg29 <= ss_input_reg29;
    s_input_reg30 <= ss_input_reg30;
    s_input_reg31 <= ss_input_reg31;
    s_input_reg32 <= ss_input_reg32;
    s_input_reg33 <= ss_input_reg33;
    s_input_reg34 <= ss_input_reg34;
    wait;
  end process;

end cluster;
