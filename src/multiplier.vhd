-- A 32-bit multiplier. Uses features from the standard library.
-- Version: 04.13.2016.

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
    high  : out std_logic_vector(n-1 downto 0);
    low   : out std_logic_vector(n-1 downto 0)
  );
end multiplier;

architecture multiplier of multiplier is

  signal s_x : std_logic_vector(2*n-1 downto 0);

begin

  s_x <= std_logic_vector(signed(a) * signed(b)) when (op = '0') else
    std_logic_vector(unsigned(a) * unsigned(b));

  high <= s_x(2*n-1 downto n);  -- Send the first 32 bits
  low <=  s_x(n-1 downto 0); -- Send the next bits

end multiplier;
