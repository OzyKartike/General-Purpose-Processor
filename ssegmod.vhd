Library ieee;
USE ieee.std_logic_1164.all;

Entity ssegmod IS
	PORT (bcd: STD_LOGIC_VECTOR(3 downto 0);
			leds: OUT STD_LOGIC_VECTOR(0 to 6));
	End ssegmod;
ARCHITECTURE Behavior OF ssegmod IS
BEGIN
Process  (bcd)
BegiN
Case bcd is --abcdefg
	WHEN "0000" => leds <= "0010101"; --n
	WHEN "0001" => leds <= "0111011"; --y
	WHEN Others => leds <= "0000000";
END CASE;
End PROCESS;
END Behavior;