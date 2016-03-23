library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reg is
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
end reg;

architecture reg of reg is
begin

  writing : process(clk, enable_write)
  begin
    if(clk'event and clk = '1' and enable_write = '1') then
      reg_output <= reg_input;
    end if;
  end process writing;

  reading : PROCESS(clk,enable_read)
  begin
    if(clk'event and clk = '1' and enable_read = '1') then
      reg_output <= reg_input;
    end if;
  end process reading;

end reg;
