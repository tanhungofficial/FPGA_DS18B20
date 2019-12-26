--Khi can thay doi so led chi can thay doi entity cua q va gia tri cua constant n_led
--Nhung thong so can sua co dau #####
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity GIAI_MA_4HEX_4SSEG_XOA_SO0 is
	port(	hex0,hex1,hex2,hex3: in std_logic_vector(3 downto 0);
			sseg0,sseg1,sseg2,sseg3: out std_logic_vector(6 downto 0));		
end GIAI_MA_4HEX_4SSEG_XOA_SO0;
architecture behavioral of GIAI_MA_4HEX_4SSEG_XOA_SO0 is
signal led0,led1,led2,led3: std_logic_vector(6 downto 0);
begin
	process(hex3,hex2,hex1,hex0)
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
		--giai ma led 2
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
	end process;
	sseg0<= 		led0;
	sseg1<= 		led1 when	hex3>0 or hex2>0 or hex1>0			else  (others=>'1');
	sseg2<= 		led2 when	hex3>0 or hex2>0						else  (others=>'1');
	sseg3<= 		led3 when	hex3>0									else  (others=>'1');
end behavioral;