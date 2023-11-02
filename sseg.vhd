Library ieee;
USE ieee.std_logic_1164.all;

Entity sseg IS
	PORT (bcd: STD_LOGIC_VECTOR(3 downto 0);
			leds, ledss: OUT STD_LOGIC_VECTOR(0 to 6);
			neg: IN STD_LOGIC);
	End sseg;
ARCHITECTURE Behavior OF sseg IS
BEGIN
Process  (bcd,neg)
BEGIN
if (neg<='0') then
	ledss <= ("0000000");
end if;
if (neg <= '1') then
	ledss <= ("0000001");
end if;
Case bcd is 
	WHEN "0000" => leds <= "1111110";
	WHEN "0001" => leds <= "0110000";
	WHEN "0010" => leds <= "1101101";
	WHEN "0011" => leds <= "1111001";
	WHEN "0100" => leds <= "0110011";
	WHEN "0101" => leds <= "1011011";
	WHEN "0110" => leds <= "1011111";
	WHEN "0111" => leds <= "1110000";
	WHEN "1000" => leds <= "1111111";
	WHEN "1001" => leds <= "1110011";
	WHEN "1010" => leds <= "1110111";
	WHEN "1011" => leds <= "0011111";
	WHEN "1100" => leds <= "1001110";
	WHEN "1101" => leds <= "0111101";
	WHEN "1110" => leds <= "1001111";
	WHEN "1111" => leds <= "1000111";
	WHEN Others => leds <= "0000000";
END CASE;
End PROCESS;
END Behavior;