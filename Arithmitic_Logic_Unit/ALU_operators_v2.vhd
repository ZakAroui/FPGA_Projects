library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity ALU is
port(a,b:in std_logic_vector(3 downto 0);
     cin:in std_logic;
     sel:in std_logic_vector(2 downto 0);
     y:out std_logic_vector(3 downto 0);
     zf,cf,nf:out std_logic);
end ALU;
architecture behavioral of ALU is
signal result:std_logic_vector(4 downto 0);
begin
process(a,b,sel,cin)
begin
case sel is
when "000" => result<='0'&a;
when "001" => result<=('0'&a)+('0'&b)+("0000"&cin);
when "010" => result<=('0'&a)-('0'&b);
when "011" => result<=('0'&a) or ('0'&b);
when "100" => result<=('0'&a) and ('0'&b);
when "101" => result<=('0'&a) nand ('0'&b);
when "110" => result<=('0'&a)+1;
when others => result<=('0'&b)-1;
end case;
end process;
nf <= result(3);
zf <= not(result(3) or result(2) or result(1) or result(0));
cf <= result(4);
y <= result(3 downto 0);
end behavioral;