-- A cluster with 3 basic units and a local register file.
-- It can run 15 instructions.
-- Version: 04.23.2016.

library ieee;
use ieee.std_logic_1164.all;

entity cluster is
  generic (
    DATA_WIDTH : natural := 32;
    INST_WIDTH : natural := 34;
    ADDR_RF_WIDTH : natural := 6;
    opc_bits  : natural := 4
  );

  port (
    clk : in std_logic;
    enable_read  : in std_logic;
    enable_write : in std_logic;

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

    reg_addr1 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr2 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr3 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr4 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr5 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr6 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr7 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr8 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr9 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr10 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr11 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr12 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr13 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr14 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr15 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr16 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr17 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr18 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr19 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr20 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr21 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr22 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr23 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr24 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr25 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr26 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr27 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr28 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr29 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr30 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr31 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr32 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr33 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr34 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);

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
    clk : in std_logic;
    enable_read  : in std_logic;
    enable_write : in std_logic;

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
    DATA_WIDTH : natural := 32;
    ADDR_WIDTH : natural := 6;
    N : natural := 35
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
end component;

component load_input_signals is
  generic (
    DATA_WIDTH : natural := 32;
    INST_WIDTH : natural := 34;
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
    reg_addr1 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr2 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr3 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr4 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr5 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr6 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr7 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr8 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr9 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr10 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr11 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr12 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr13 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr14 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr15 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr16 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr17 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr18 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr19 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr20 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr21 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr22 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr23 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr24 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr25 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr26 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr27 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr28 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr29 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr30 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr31 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr32 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr33 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
    reg_addr34 : in std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
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

-- Signals for register file
  signal s_write_address1, s_write_address2 : std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
  signal s_input1, s_input2 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_read_address1, s_read_address2 : std_logic_vector(ADDR_RF_WIDTH-1 downto 0);
  signal s_output1, s_output2 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal init_ok : bit := '0'; -- Check if RF was filled

-- Auxiliar signals for component inputs
  signal inst1_aux_A, inst1_aux_B, inst2_aux_A, inst2_aux_B, inst3_aux_A, inst3_aux_B,
         inst4_aux_A, inst4_aux_B, inst5_aux_A, inst5_aux_B, inst6_aux_A, inst6_aux_B,
         inst7_aux_A, inst7_aux_B, inst8_aux_A, inst8_aux_B, inst9_aux_A, inst9_aux_B,
         inst10_aux_A, inst10_aux_B, inst11_aux_A, inst11_aux_B, inst12_aux_A, inst12_aux_B,
         inst13_aux_A, inst13_aux_B, inst14_aux_A, inst14_aux_B, inst15_aux_A, inst15_aux_B :
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
    clk, enable_read, enable_write,
    s_write_address1, s_write_address2,
    s_input1, s_input2,
    s_read_address1, s_read_address2,
    s_output1, s_output2
  );

  load_input_signals_0 : load_input_signals port map(reg_input1, reg_input2, reg_input3, reg_input4,
    reg_input5, reg_input6, reg_input7, reg_input8, reg_input9, reg_input10, reg_input11, reg_input12,
    reg_input13, reg_input14, reg_input15, reg_input16, reg_input17, reg_input18, reg_input19, reg_input20,
    reg_input21, reg_input22, reg_input23, reg_input24, reg_input25, reg_input26, reg_input27, reg_input28,
    reg_input29, reg_input30, reg_input31, reg_input32, reg_input33, reg_input34,
    reg_addr1, reg_addr2, reg_addr3, reg_addr4, reg_addr5, reg_addr6, reg_addr7, reg_addr8, reg_addr9,
    reg_addr10, reg_addr11, reg_addr12, reg_addr13, reg_addr14, reg_addr15, reg_addr16, reg_addr17,
    reg_addr18, reg_addr19, reg_addr20, reg_addr21, reg_addr22, reg_addr23, reg_addr24, reg_addr25,
    reg_addr26, reg_addr27, reg_addr28, reg_addr29, reg_addr30, reg_addr31, reg_addr32, reg_addr33,
    reg_addr34, instruction1, instruction2, instruction3, instruction4, instruction5, instruction6,
    instruction7, instruction8, instruction9, instruction10, instruction11, instruction12,
    instruction13, instruction14, instruction15, inst1_aux_A, inst1_aux_B, inst2_aux_A, inst2_aux_B, inst3_aux_A,
    inst3_aux_B, inst4_aux_A, inst4_aux_B, inst5_aux_A, inst5_aux_B, inst6_aux_A, inst6_aux_B, inst7_aux_A,
    inst7_aux_B, inst8_aux_A, inst8_aux_B, inst9_aux_A, inst9_aux_B, inst10_aux_A, inst10_aux_B, inst11_aux_A,
    inst11_aux_B, inst12_aux_A, inst12_aux_B, inst13_aux_A, inst13_aux_B, inst14_aux_A, inst14_aux_B,
    inst15_aux_A, inst15_aux_B
  );

  inst1_A <= inst1_aux_A;
  inst1_B <= inst1_aux_B;

  inst2_A <= inst1_out when (instruction2(22 downto 17) = instruction1(28 downto 23)) else
             inst2_aux_A;

  inst2_B <= inst1_out when (instruction2(16 downto 11) = instruction1(28 downto 23)) else
             inst2_aux_B;

  inst3_A <= inst1_out when (instruction3(22 downto 17) = instruction1(28 downto 23)) else
             inst2_out when (instruction3(22 downto 17) = instruction2(28 downto 23)) else
             inst3_aux_A;

  inst3_B <= inst1_out when (instruction3(16 downto 11) = instruction1(28 downto 23)) else
             inst2_out when (instruction3(16 downto 11) = instruction2(28 downto 23)) else
             inst3_aux_B;

  inst4_A <= inst1_out when (instruction4(22 downto 17) = instruction1(28 downto 23)) else
             inst2_out when (instruction4(22 downto 17) = instruction2(28 downto 23)) else
             inst3_out when (instruction4(22 downto 17) = instruction3(28 downto 23)) else
             inst4_aux_A;

  inst4_B <= inst1_out when (instruction4(16 downto 11) = instruction1(28 downto 23)) else
             inst2_out when (instruction4(16 downto 11) = instruction2(28 downto 23)) else
             inst3_out when (instruction4(16 downto 11) = instruction3(28 downto 23)) else
             inst4_aux_B;
------
  inst6_A <= inst1_out when (instruction6(22 downto 17) = instruction1(28 downto 23)) else
             inst2_out when (instruction6(22 downto 17) = instruction2(28 downto 23)) else
             inst3_out when (instruction6(22 downto 17) = instruction3(28 downto 23)) else
             inst4_out_HI when (instruction6(22 downto 17) = instruction4(28 downto 23)) else
             inst4_out_LO when (instruction6(22 downto 17) = instruction4(10 downto 5)) else
              --
             inst6_aux_A;

  inst6_B <= inst1_out when (instruction6(16 downto 11) = instruction1(28 downto 23)) else
             inst2_out when (instruction6(16 downto 11) = instruction2(28 downto 23)) else
             inst3_out when (instruction6(16 downto 11) = instruction3(28 downto 23)) else
             inst4_out_HI when (instruction6(16 downto 11) = instruction4(28 downto 23)) else
             inst4_out_LO when (instruction6(16 downto 11) = instruction4(10 downto 5)) else
               --
             inst6_aux_B;

  basic_unit_1 : basic_unit port map(clk, enable_read, enable_write, inst1_A, inst1_B, inst2_A, inst2_B, inst3_A, inst3_B,
    instruction1(32 downto 29), instruction2(32 downto 29), instruction3(32 downto 29), inst1_out, inst2_out, inst3_out,
    inst1_zero, inst2_zero, inst3_zero, inst4_A, inst4_B, instruction4(29), inst4_out_HI, inst4_out_LO
  );

  basic_unit_2 : basic_unit port map(clk, enable_read, enable_write, inst6_A, inst6_B, inst7_A, inst7_B, inst8_A, inst8_B,
    instruction6(32 downto 29), instruction7(32 downto 29), instruction8(32 downto 29), inst6_out, inst7_out, inst8_out,
    inst6_zero, inst7_zero, inst8_zero, inst9_A, inst9_B, instruction9(29), inst9_out_HI, inst9_out_LO
  );

  basic_unit_3 : basic_unit port map(clk, enable_read, enable_write, inst11_A, inst11_B, inst12_A, inst12_B, inst13_A,
    inst13_B, instruction11(32 downto 29), instruction12(32 downto 29), instruction13(32 downto 29), inst11_out,
    inst12_out, inst13_out, inst11_zero, inst12_zero, inst13_zero, inst14_A, inst14_B, instruction14(29), inst14_out_HI,
    inst14_out_LO
  );


  init_rf : process
  begin
     wait until clk'event and clk = '1' and enable_write = '1';
     s_write_address1 <= reg_addr1;
     s_write_address2 <= reg_addr2;
     s_input1 <= reg_input1;
     s_input2 <= reg_input2;
     wait until clk'event and clk = '1' and enable_write = '1';
     s_write_address1 <= reg_addr3;
     s_write_address2 <= reg_addr4;
     s_input1 <= reg_input3;
     s_input2 <= reg_input4;
     wait until clk'event and clk = '1' and enable_write = '1';
     s_write_address1 <= reg_addr5;
     s_write_address2 <= reg_addr6;
     s_input1 <= reg_input5;
     s_input2 <= reg_input6;
     wait until clk'event and clk = '1' and enable_write = '1';
     s_write_address1 <= reg_addr7;
     s_write_address2 <= reg_addr8;
     s_input1 <= reg_input7;
     s_input2 <= reg_input8;
     wait until clk'event and clk = '1' and enable_write = '1';
     s_write_address1 <= reg_addr9;
     s_write_address2 <= reg_addr10;
     s_input1 <= reg_input9;
     s_input2 <= reg_input10;
     wait until clk'event and clk = '1' and enable_write = '1';
     s_write_address1 <= reg_addr11;
     s_write_address2 <= reg_addr12;
     s_input1 <= reg_input11;
     s_input2 <= reg_input12;
     wait until clk'event and clk = '1' and enable_write = '1';
     s_write_address1 <= reg_addr13;
     s_write_address2 <= reg_addr14;
     s_input1 <= reg_input13;
     s_input2 <= reg_input14;
     wait until clk'event and clk = '1' and enable_write = '1';
     s_write_address1 <= reg_addr15;
     s_write_address2 <= reg_addr16;
     s_input1 <= reg_input15;
     s_input2 <= reg_input16;
     wait until clk'event and clk = '1' and enable_write = '1';
     s_write_address1 <= reg_addr17;
     s_write_address2 <= reg_addr18;
     s_input1 <= reg_input17;
     s_input2 <= reg_input18;
     wait until clk'event and clk = '1' and enable_write = '1';
     s_write_address1 <= reg_addr19;
     s_write_address2 <= reg_addr20;
     s_input1 <= reg_input19;
     s_input2 <= reg_input20;
     wait until clk'event and clk = '1' and enable_write = '1';
     s_write_address1 <= reg_addr21;
     s_write_address2 <= reg_addr22;
     s_input1 <= reg_input21;
     s_input2 <= reg_input22;
     wait until clk'event and clk = '1' and enable_write = '1';
     s_write_address1 <= reg_addr23;
     s_write_address2 <= reg_addr24;
     s_input1 <= reg_input23;
     s_input2 <= reg_input24;
     wait until clk'event and clk = '1' and enable_write = '1';
     s_write_address1 <= reg_addr25;
     s_write_address2 <= reg_addr26;
     s_input1 <= reg_input25;
     s_input2 <= reg_input26;
     wait until clk'event and clk = '1' and enable_write = '1';
     s_write_address1 <= reg_addr27;
     s_write_address2 <= reg_addr28;
     s_input1 <= reg_input27;
     s_input2 <= reg_input28;
     wait until clk'event and clk = '1' and enable_write = '1';
     s_write_address1 <= reg_addr29;
     s_write_address2 <= reg_addr30;
     s_input1 <= reg_input29;
     s_input2 <= reg_input30;
     wait until clk'event and clk = '1' and enable_write = '1';
     s_write_address1 <= reg_addr31;
     s_write_address2 <= reg_addr32;
     s_input1 <= reg_input31;
     s_input2 <= reg_input32;
     wait until clk'event and clk = '1' and enable_write = '1';
     s_write_address1 <= reg_addr33;
     s_write_address2 <= reg_addr34;
     s_input1 <= reg_input33;
     s_input2 <= reg_input34;

     init_ok <= '1';
     wait;
  end process;


end cluster;
