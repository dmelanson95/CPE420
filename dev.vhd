LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY dev IS  
	PORT(
		F : OUT STD_LOGIC;
		A, B, C : IN STD_LOGIC
		);
END dev;

ARCHITECTURE behavior OF dev IS

BEGIN

	F <= (NOT(A) AND NOT(B) AND C) OR (NOT(A) AND B AND C) OR (A AND NOT(B) AND NOT(C));
	
END behavior;