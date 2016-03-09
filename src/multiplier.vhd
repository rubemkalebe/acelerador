-- A 32-bit multiplier. Uses features from the standard library.
-- The result goes to two 32-bit registers: a high (catches the first 32 bits)
-- and a low (catches the last 32 bits).
-- Version: 03.08.2016.

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
    high  : out std_logic_vector(n-1 downto 0);
    low   : out std_logic_vector(n-1 downto 0)
  );
end multiplier;

architecture multiplier of multiplier is

  signal sMult : std_logic_vector(2*n-1 downto 0);

begin

  sMult <= std_logic_vector(unsigned(a) * unsigned(b)); -- Stores the result from multiplication in 64 bits
  high <= sMult(2*n-1 downto n); -- Send the first 32 bits
  low <= sMult(n-1 downto 0); -- Send the next bits

end multiplier;
