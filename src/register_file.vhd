-- Local register file with 34 x 32-bit general purpose registers (HIGH and LOW included).
-- It has 34 inputs and 34 outputs.
-- Each reg has its data input, read and write signals, and data output.
-- Version: 06.16.2016.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity register_file is
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
end register_file;

architecture register_file of register_file is

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

component reg is
  generic (
    n : natural := 32
  );

  port (
    clk : in std_logic;
    enable_read : in std_logic;
    enable_write : in std_logic;
    reg_input : in std_logic_vector(n-1 downto 0);
    reg_output : out std_logic_vector(n-1 downto 0)
  );
end component;

begin

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

  reg1 : reg port map(clk, read_reg1, write_reg1, s_input_reg1, s_output_reg1);
  reg2 : reg port map(clk, read_reg2, write_reg2, s_input_reg2, s_output_reg2);
  reg3 : reg port map(clk, read_reg3, write_reg3, s_input_reg3, s_output_reg3);
  reg4 : reg port map(clk, read_reg4, write_reg4, s_input_reg4, s_output_reg4);
  reg5 : reg port map(clk, read_reg5, write_reg5, s_input_reg5, s_output_reg5);
  reg6 : reg port map(clk, read_reg6, write_reg6, s_input_reg6, s_output_reg6);
  reg7 : reg port map(clk, read_reg7, write_reg7, s_input_reg7, s_output_reg7);
  reg8 : reg port map(clk, read_reg8, write_reg8, s_input_reg8, s_output_reg8);
  reg9 : reg port map(clk, read_reg9, write_reg9, s_input_reg9, s_output_reg9);
  reg10 : reg port map(clk, read_reg10, write_reg10, s_input_reg10, s_output_reg10);
  reg11 : reg port map(clk, read_reg11, write_reg11, s_input_reg11, s_output_reg11);
  reg12 : reg port map(clk, read_reg12, write_reg12, s_input_reg12, s_output_reg12);
  reg13 : reg port map(clk, read_reg13, write_reg13, s_input_reg13, s_output_reg13);
  reg14 : reg port map(clk, read_reg14, write_reg14, s_input_reg14, s_output_reg14);
  reg15 : reg port map(clk, read_reg15, write_reg15, s_input_reg15, s_output_reg15);
  reg16 : reg port map(clk, read_reg16, write_reg16, s_input_reg16, s_output_reg16);
  reg17 : reg port map(clk, read_reg17, write_reg17, s_input_reg17, s_output_reg17);
  reg18 : reg port map(clk, read_reg18, write_reg18, s_input_reg18, s_output_reg18);
  reg19 : reg port map(clk, read_reg19, write_reg19, s_input_reg19, s_output_reg19);
  reg20 : reg port map(clk, read_reg20, write_reg20, s_input_reg20, s_output_reg20);
  reg21 : reg port map(clk, read_reg21, write_reg21, s_input_reg21, s_output_reg21);
  reg22 : reg port map(clk, read_reg22, write_reg22, s_input_reg22, s_output_reg22);
  reg23 : reg port map(clk, read_reg23, write_reg23, s_input_reg23, s_output_reg23);
  reg24 : reg port map(clk, read_reg24, write_reg24, s_input_reg24, s_output_reg24);
  reg25 : reg port map(clk, read_reg25, write_reg25, s_input_reg25, s_output_reg25);
  reg26 : reg port map(clk, read_reg26, write_reg26, s_input_reg26, s_output_reg26);
  reg27 : reg port map(clk, read_reg27, write_reg27, s_input_reg27, s_output_reg27);
  reg28 : reg port map(clk, read_reg28, write_reg28, s_input_reg28, s_output_reg28);
  reg29 : reg port map(clk, read_reg29, write_reg29, s_input_reg29, s_output_reg29);
  reg30 : reg port map(clk, read_reg30, write_reg30, s_input_reg30, s_output_reg30);
  reg31 : reg port map(clk, read_reg31, write_reg31, s_input_reg31, s_output_reg31);
  reg32 : reg port map(clk, read_reg32, write_reg32, s_input_reg32, s_output_reg32);
  reg33 : reg port map(clk, read_reg33, write_reg33, s_input_reg33, s_output_reg33);
  reg34 : reg port map(clk, read_reg34, write_reg34, s_input_reg34, s_output_reg34);

  output_reg1 <= s_output_reg1;
  output_reg2 <= s_output_reg2;
  output_reg3 <= s_output_reg3;
  output_reg4 <= s_output_reg4;
  output_reg5 <= s_output_reg5;
  output_reg6 <= s_output_reg6;
  output_reg7 <= s_output_reg7;
  output_reg8 <= s_output_reg8;
  output_reg9 <= s_output_reg9;
  output_reg10 <= s_output_reg10;
  output_reg11 <= s_output_reg11;
  output_reg12 <= s_output_reg12;
  output_reg13 <= s_output_reg13;
  output_reg14 <= s_output_reg14;
  output_reg15 <= s_output_reg15;
  output_reg16 <= s_output_reg16;
  output_reg17 <= s_output_reg17;
  output_reg18 <= s_output_reg18;
  output_reg19 <= s_output_reg19;
  output_reg20 <= s_output_reg20;
  output_reg21 <= s_output_reg21;
  output_reg22 <= s_output_reg22;
  output_reg23 <= s_output_reg23;
  output_reg24 <= s_output_reg24;
  output_reg25 <= s_output_reg25;
  output_reg26 <= s_output_reg26;
  output_reg27 <= s_output_reg27;
  output_reg28 <= s_output_reg28;
  output_reg29 <= s_output_reg29;
  output_reg30 <= s_output_reg30;
  output_reg31 <= s_output_reg31;
  output_reg32 <= s_output_reg32;
  output_reg33 <= s_output_reg33;
  output_reg34 <= s_output_reg34;

end register_file;
