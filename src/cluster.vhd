-- Short description...
-- Version: 04.13.2016.

library ieee;
use ieee.std_logic_1164.all;

entity cluster is
  generic (
    DATA_WIDTH : natural := 32;
    INST_WIDTH : natural := 35
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
    N : natural := 34
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
    write_address33 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    write_address34 : in std_logic_vector(ADDR_WIDTH-1 downto 0);

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
    input33 : in std_logic_vector(DATA_WIDTH-1 downto 0);
    input34 : in std_logic_vector(DATA_WIDTH-1 downto 0);

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
    read_address31 : in std_logic_vector(ADDR_WIDTH-1 downto 0);
    read_address32 : in std_logic_vector(ADDR_WIDTH-1 downto 0);

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
    output30 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output31 : out std_logic_vector(DATA_WIDTH-1 downto 0);
    output32 : out std_logic_vector(DATA_WIDTH-1 downto 0)
  );
end component;


begin

  input_ALU_1A <=   a1;
  input_ALU_1B <=   b1;

  input_ALU_2A <= ALU_1_out when instruction2(25 downto 21) = instruction1(15 downto 11) else
                  a2;

  dep_2_B <=  ALU_1_out when instruction2(20 downto 16) = instruction1(15 downto 11) else
              (others => '0');


  dep_3_A <=  ALU_2_out when instruction3(25 downto 21) = instruction2(15 downto 11) else
              ALU_1_out when instruction3(25 downto 21) = instruction1(15 downto 11) else
              (others => '0');

  dep_3_B <=  ALU_2_out when instruction3(20 downto 16) = instruction2(15 downto 11) else
              ALU_1_out when instruction3(20 downto 16) = instruction1(15 downto 11) else
              (others => '0');

  dep_4_A <=  ALU_3_out when instruction4(25 downto 21) = instruction3(15 downto 11) else
              ALU_2_out when instruction4(25 downto 21) = instruction2(15 downto 11) else
              ALU_1_out when instruction4(25 downto 21) = instruction1(15 downto 11) else
              (others => '0');

  dep_4_B <=  ALU_3_out when instruction4(20 downto 16) = instruction3(15 downto 11) else
              ALU_2_out when instruction4(20 downto 16) = instruction2(15 downto 11) else
              ALU_1_out when instruction4(20 downto 16) = instruction1(15 downto 11) else
              (others => '0');

  dep_5_A <=  MUL_1_HI  when instruction5(25 downto 21) = instruction4(15 downto 11) else
              MUL_1_LO  when instruction5(25 downto 21) = instruction4(10 downto 6) else
              ALU_3_out when instruction5(25 downto 21) = instruction3(15 downto 11) else
              ALU_2_out when instruction5(25 downto 21) = instruction2(15 downto 11) else
              ALU_1_out when instruction5(25 downto 21) = instruction1(15 downto 11) else
              (others => '0');

  dep_5_B <=  MUL_1_HI  when instruction5(20 downto 16) = instruction4(15 downto 11) else
              MUL_1_LO  when instruction5(20 downto 16) = instruction4(10 downto 6) else
              ALU_3_out when instruction5(20 downto 16) = instruction3(15 downto 11) else
              ALU_2_out when instruction5(20 downto 16) = instruction2(15 downto 11) else
              ALU_1_out when instruction5(20 downto 16) = instruction1(15 downto 11) else
              (others => '0');

end cluster;
