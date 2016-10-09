
LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY full_adder IS 
	PORT
	(
		a :  IN  STD_LOGIC;
		b :  IN  STD_LOGIC;
		cin :  IN  STD_LOGIC;
		cout :  OUT  STD_LOGIC;
		s :  OUT  STD_LOGIC
	);
END full_adder;

ARCHITECTURE bdf_type OF full_adder IS 

COMPONENT h_adder
	PORT(a : IN STD_LOGIC;
		 b : IN STD_LOGIC;
		 c : OUT STD_LOGIC;
		 s : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;


BEGIN 



b2v_inst : h_adder
PORT MAP(a => a,
		 b => b,
		 c => SYNTHESIZED_WIRE_2,
		 s => SYNTHESIZED_WIRE_0);


b2v_inst1 : h_adder
PORT MAP(a => SYNTHESIZED_WIRE_0,
		 b => cin,
		 c => SYNTHESIZED_WIRE_1,
		 s => s);


cout <= SYNTHESIZED_WIRE_1 OR SYNTHESIZED_WIRE_2;


END bdf_type;