--Khi can thay doi so led chi can thay doi entity cua q va gia tri cua constant n_led
--Nhung thong so can sua co dau #####
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity GIAI_MA_8HEX_8SSEG is
	port(	hex0,hex1,hex2,hex3,hex4,hex5,hex6,hex7: in std_logic_vector(3 downto 0);
			oe: in std_logic_vector(7 downto 0);
			sseg0,sseg1,sseg2,sseg3: out std_logic_vector(6 downto 0);
			sseg4,sseg5,sseg6,sseg7: out std_logic_vector(6 downto 0));		
end GIAI_MA_8HEX_8SSEG;
architecture behavioral of GIAI_MA_8HEX_8SSEG is
signal led0,led1,led2,led3,led4,led5,led6,led7: std_logic_vector(6 downto 0);
begin
	process(hex0,hex1,hex2,hex3,hex4,hex5,hex6,hex7)
	begin
	--giai ma led 0
		case hex0 is
			when x"0" => led0 <= "1000000";
			when x"1" => led0 <= "1111001";
			when x"2" => led0 <= "0100100";
			when x"3" => led0 <= "0110000";
			when x"4" => led0 <= "0011001";
			when x"5" => led0 <= "0010010";
			when x"6" => led0 <= "0000010";
			when x"7" => led0 <= "1111000";
			when x"8" => led0 <= "0000000";
			when x"9" => led0 <= "0010000";
			when x"a" => led0 <= "0001000";
			when x"b" => led0 <= "0000011";
			when x"c" => led0 <= "1000110";
			when x"d" => led0 <= "0100001";
			when x"e" => led0 <= "0000110";
			when others => led0 <="0001110";
		end case;

		--giai ma led1
		case hex1 is
			when x"0" => led1 <= "1000000";
			when x"1" => led1 <= "1111001";
			when x"2" => led1 <= "0100100";
			when x"3" => led1 <= "0110000";
			when x"4" => led1 <= "0011001";
			when x"5" => led1 <= "0010010";
			when x"6" => led1 <= "0000010";
			when x"7" => led1 <= "1111000";
			when x"8" => led1 <= "0000000";
			when x"9" => led1 <= "0010000";
			when x"a" => led1 <= "0001000";
			when x"b" => led1 <= "0000011";
			when x"c" => led1 <= "1000110";
			when x"d" => led1 <= "0100001";
			when x"e" => led1 <= "0000110";
			when others => led1 <="0001110";
		end case;
		--giai_ma_led2
		case hex2 is
			when x"0" => led2 <= "1000000";
			when x"1" => led2 <= "1111001";
			when x"2" => led2 <= "0100100";
			when x"3" => led2 <= "0110000";
			when x"4" => led2 <= "0011001";
			when x"5" => led2 <= "0010010";
			when x"6" => led2 <= "0000010";
			when x"7" => led2 <= "1111000";
			when x"8" => led2 <= "0000000";
			when x"9" => led2 <= "0010000";
			when x"a" => led2 <= "0001000";
			when x"b" => led2 <= "0000011";
			when x"c" => led2 <= "1000110";
			when x"d" => led2 <= "0100001";
			when x"e" => led2 <= "0000110";
			when others => led2 <="0001110";
		end case;
		--giai ma led3
		case hex3 is
			when x"0" => led3 <= "1000000";
			when x"1" => led3 <= "1111001";
			when x"2" => led3 <= "0100100";
			when x"3" => led3 <= "0110000";
			when x"4" => led3 <= "0011001";
			when x"5" => led3 <= "0010010";
			when x"6" => led3 <= "0000010";
			when x"7" => led3 <= "1111000";
			when x"8" => led3 <= "0000000";
			when x"9" => led3 <= "0010000";
			when x"a" => led3 <= "0001000";
			when x"b" => led3 <= "0000011";
			when x"c" => led3 <= "1000110";
			when x"d" => led3 <= "0100001";
			when x"e" => led3 <= "0000110";
			when others => led3 <="0001110";
		end case;
		--giai ma led 4
		case hex4 is
			when x"0" => led4 <= "1000000";
			when x"1" => led4 <= "1111001";
			when x"2" => led4 <= "0100100";
			when x"3" => led4 <= "0110000";
			when x"4" => led4 <= "0011001";
			when x"5" => led4 <= "0010010";
			when x"6" => led4 <= "0000010";
			when x"7" => led4 <= "1111000";
			when x"8" => led4 <= "0000000";
			when x"9" => led4 <= "0010000";
			when x"a" => led4 <= "0001000";
			when x"b" => led4 <= "0000011";
			when x"c" => led4 <= "1000110";
			when x"d" => led4 <= "0100001";
			when x"e" => led4 <= "0000110";
			when others => led4 <="0001110";
		end case;
		--giai ma led 5
		case hex5 is
			when x"0" => led5 <= "1000000";
			when x"1" => led5 <= "1111001";
			when x"2" => led5 <= "0100100";
			when x"3" => led5 <= "0110000";
			when x"4" => led5 <= "0011001";
			when x"5" => led5 <= "0010010";
			when x"6" => led5 <= "0000010";
			when x"7" => led5 <= "1111000";
			when x"8" => led5 <= "0000000";
			when x"9" => led5 <= "0010000";
			when x"a" => led5 <= "0001000";
			when x"b" => led5 <= "0000011";
			when x"c" => led5 <= "1000110";
			when x"d" => led5 <= "0100001";
			when x"e" => led5 <= "0000110";
			when others => led5 <="0001110";
		end case;
		--giai ma led 6
		case hex6 is
			when x"0" => led6 <= "1000000";
			when x"1" => led6 <= "1111001";
			when x"2" => led6 <= "0100100";
			when x"3" => led6 <= "0110000";
			when x"4" => led6 <= "0011001";
			when x"5" => led6 <= "0010010";
			when x"6" => led6 <= "0000010";
			when x"7" => led6 <= "1111000";
			when x"8" => led6 <= "0000000";
			when x"9" => led6 <= "0010000";
			when x"a" => led6 <= "0001000";
			when x"b" => led6 <= "0000011";
			when x"c" => led6 <= "1000110";
			when x"d" => led6 <= "0100001";
			when x"e" => led6 <= "0000110";
			when others => led6 <="0001110";
		end case;
		--giai ma led 7
		case hex7 is
			when x"0" => led7 <= "1000000";
			when x"1" => led7 <= "1111001";
			when x"2" => led7 <= "0100100";
			when x"3" => led7 <= "0110000";
			when x"4" => led7 <= "0011001";
			when x"5" => led7 <= "0010010";
			when x"6" => led7 <= "0000010";
			when x"7" => led7 <= "1111000";
			when x"8" => led7 <= "0000000";
			when x"9" => led7 <= "0010000";
			when x"a" => led7 <= "0001000";
			when x"b" => led7 <= "0000011";
			when x"c" => led7 <= "1000110";
			when x"d" => led7 <= "0100001";
			when x"e" => led7 <= "0000110";
			when others => led7 <="0001110";
		end case;
	end process;
	sseg0<= 		led0 when	oe(0)='1'	else  (others=>'1');
	sseg1<= 		led1 when	oe(1)='1'	else  (others=>'1');
	sseg2<= 		led2 when	oe(2)='1'	else  (others=>'1');
	sseg3<= 		led3 when	oe(3)='1'	else  (others=>'1');
	sseg4<= 		led4 when	oe(4)='1'	else  (others=>'1');
	sseg5<= 		led5 when	oe(5)='1'	else  (others=>'1');
	sseg6<= 		led6 when	oe(6)='1'	else  (others=>'1');
	sseg7<= 		led7 when	oe(7)='1'	else  (others=>'1');
	
end behavioral;