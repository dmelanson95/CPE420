LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY problem_3 IS
END problem_3;

ARCHITECTURE behavior OF problem_3 IS

	COMPONENT dev 
		PORT(
			F : OUT STD_LOGIC;
			A, B, C : IN STD_LOGIC
			);
	END COMPONENT;
	
SIGNAL A, B, C, F : STD_LOGIC := '0';
SIGNAL X : STD_LOGIC_VECTOR(2 DOWNTO 0) := (OTHERS => '0');

BEGIN

	UUT: dev PORT MAP (
		A => A,
		B => B,
		C => C,
		F => F
	);
	
	PROCESS 
		BEGIN
			FOR I IN 0 TO 7 LOOP
				WAIT FOR 100 NS;
				
				X <= STD_LOGIC_VECTOR(TO_UNSIGNED(I, X'LENGTH));
				A <= X(0);
				B <= X(1);
				C <= X(2);
			END LOOP;
		END PROCESS;
	
END behavior;
