library ieee;
use ieee.std_logic_1164.all;
entity full_adder is 
  port(a,b,cin:in std_logic;
       s,cout:out std_logic);
end full_adder;
architecture structual of full_adder is
signal y1,y2,y3:std_logic;
component gate_xor
 port(x1,x2:in std_logic;
      y:out std_logic);
end component;
component gate_and2
 port(x1,x2:in std_logic;
      y:out std_logic);
end component;
component gate_or2
 port(x1,x2:in std_logic;
      y:out std_logic);
end component;
begin
g1: gate_xor port map (a,b,y1);
g2: gate_xor port map (y1,cin,s);
g3: gate_and2 port map (a,b,y2);
g4: gate_and2 port map (y1,cin,y3);
g5: gate_or2 port map (y3,y2,cout);
end structual;

library ieee;
use ieee.std_logic_1164.all;
entity gate_xor is 
  port(x1,x2:in std_logic;
       y:out std_logic);
end gate_xor;
architecture dataflow1 of gate_xor is
begin
  y<= x1 xor x2;
end dataflow1;

library ieee;
use ieee.std_logic_1164.all;
entity gate_and2 is 
  port(x1,x2:in std_logic;
       y:out std_logic);
end gate_and2;
architecture dataflow2 of gate_and2 is
begin
  y<= x1 and x2;
end dataflow2;

library ieee;
use ieee.std_logic_1164.all;
entity gate_or2 is 
  port(x1,x2:in std_logic;
       y:out std_logic);
end gate_or2;
architecture dataflow3 of gate_or2 is
begin
  y<= x1 or x2;
end dataflow3;