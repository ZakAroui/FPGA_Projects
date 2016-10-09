library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.components.all;
entity ALU is
port(a,b:in std_logic_vector(3 downto 0);
     cin:in std_logic;
     sel:in std_logic_vector(2 downto 0);
     hex0,hex7,hex6:out std_logic_vector(6 downto 0);
     zf,cf,nf:out std_logic);
end ALU;
architecture behav of ALU is
signal y:std_logic_vector(3 downto 0);
begin
u1: f_B_alu port map (a,b,cin,sel,y,zf,cf,nf);
u2: s_seg port map (a,hex7);
u3: s_seg port map (b,hex6);
u4: s_seg port map (y,hex0);
end behav;