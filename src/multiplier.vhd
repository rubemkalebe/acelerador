-- A 32-bit multiplier. Uses features from the standard library.
-- Version: 03.31.2016.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity multiplier is
  generic (
    n : natural := 32
  );

  port (
    a     : in std_logic_vector(n-1 downto 0);
    b     : in std_logic_vector(n-1 downto 0);
    op    : in std_logic;
    x     : out std_logic_vector(2*n-1 downto 0)
  );
end multiplier;

architecture multiplier of multiplier is

begin

  x <= std_logic_vector(signed(a) * signed(b)) when (op = '0') else
    std_logic_vector(unsigned(a) * unsigned(b));

end multiplier;
