library  ieee;
use      ieee.std_logic_1164.all;
use 	   ieee.numeric_std.all;

entity display_7segment is 
	port (
				--in
					data : in std_logic_vector (3 downto 0);
				--out
					dataout : out std_logic_vector(6 downto 0)
	);
end display_7segment;


architecture func of display_7segment is

begin
	with data select
			dataout <=	"1000000" when x"0",
							"1111001" when x"1",
							"0100100" when x"2",
							"0110000" when x"3",
							"0011001" when x"4",
							"0010010" when x"5",
							"0000010" when x"6",
							"1111000" when x"7",
							"0000000" when x"8",
							"0011000" when x"9",
							(others => '1') when others;
end func;

				