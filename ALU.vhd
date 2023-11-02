Library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
entity ALU is
	port (Clk : in std_logic; -- in put clock signal
			A,B : in unsigned(7 DOWNTO 0); -- 8 bit inpus from latches A and B
			student_id : in unsigned(3 DOWNTO 0); -- 4 bit student id fromn FSM
			OP : in unsigned(15 downto 0); --16 bit selector for operation from decoder
			Result : out unsigned(3 downto 0)); --lower 4 bits of 8 bit output

END ALU;
Architecture calculation of ALU is -- temportary signal declarations
signal Reg1,Reg2 : unsigned(7 downto 0) :=(others => '0');
signal Reg4 : unsigned (0 downto 7);
begin
Reg1 <= A;
Reg2 <= B;
process(Clk,OP)
begin
	if(rising_edge(Clk)) Then -- Do th ecalculations @ the positive ede of the clock cucle
		if (rising_edge(Clk)) then
		if (student_id mod 2) = 0 then
		Result <= "0000";
		else
		Result <= "0001";
		end if;
		end if;
end if;
end process;
end calculation;
	