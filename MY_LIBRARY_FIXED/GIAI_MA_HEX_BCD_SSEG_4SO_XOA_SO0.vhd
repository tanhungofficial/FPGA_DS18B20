--Khi sử dụng cần thay đổi entity của hex cho phù hợp và thay đồi n_hex, n_hex_bcd
--oe nếu không cần dùng, tức luôn cho phép hiển thị thì port map(oe=>'1')
-- 4 số BCD gần như là đủ dùng nên không cần sửa, khi ngõ ra không dùng thì bỏ trống
-- Những chỗ cần chỉ sữa co dấu #########
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity GIAI_MA_HEX_BCD_SSEG_4SO_XOA_SO0 is 
port(	hex: in std_logic_vector(7 downto 0);								--######
		led_nghin,led_tram,led_chuc,led_donvi: out std_logic_vector(6 downto 0);
		oe: in std_logic);
end GIAI_MA_HEX_BCD_SSEG_4SO_XOA_SO0;
architecture behavioral of GIAI_MA_HEX_BCD_SSEG_4SO_XOA_SO0 is
constant n_hex: integer:=8;													--###### n bit vào thì n_hex=n
constant n_bcd: integer:=16;
constant n_hex_bcd: integer:= n_bcd+n_hex;	 							--###### n_hex_bcd bằng n_hex+16
signal nghin,tram,chuc,donvi: std_logic_vector(3 downto 0);
signal led_nghin_tmp,led_chuc_tmp,led_tram_tmp,led_donvi_tmp: std_logic_vector(6 downto 0);
begin
	--khoi giai ma hex sang bcd
	process(hex)
	variable hex_bcd : std_logic_vector(n_hex_bcd-1 downto 0);
	variable count : integer range 0 to n_hex-1;
	begin
		hex_bcd := "0000000000000000" & hex;
		count :=n_hex-1;
		while count > 0
		loop
			hex_bcd := hex_bcd(n_hex_bcd-2 downto 0) & '0';
			count:= count -1;
			if hex_bcd(n_hex +3 downto n_hex) >="0101" then hex_bcd(n_hex +3 downto n_hex ):= hex_bcd(n_hex +3 downto n_hex) + "0011";
			end if;
			if hex_bcd(n_hex+7 downto n_hex+4) >="0101" then hex_bcd(n_hex+7 downto n_hex+4):= hex_bcd(n_hex+7 downto n_hex+4)+ "0011";
			end if;
			if hex_bcd(n_hex+11 downto n_hex+8) >="0101" then hex_bcd(n_hex+11 downto n_hex+8):= hex_bcd(n_hex+11 downto n_hex+8)+ "0011";
			end if;
			if hex_bcd(n_hex+15 downto n_hex+12) >="0101" then hex_bcd(n_hex+15 downto n_hex+12):= hex_bcd(n_hex+15 downto n_hex+12)+ "0011";
			end if;
		end loop;
		hex_bcd := hex_bcd(n_hex_bcd-2 downto 0) & '0';
		nghin<=hex_bcd(n_hex_bcd-1 downto n_hex_bcd-4);
		tram<= hex_bcd(n_hex_bcd-5 downto n_hex_bcd-8);
		chuc<= hex_bcd(n_hex_bcd-9 downto n_hex_bcd-12);
		donvi<= hex_bcd(n_hex_bcd-13 downto n_hex_bcd-16);
	end process;
	--khoi giai ma bcd sang 7 doan
	process(nghin,tram,chuc,donvi)
	begin
	case oe is
		when '1' =>
		-- giai ma hang nghin
			case nghin is
						when x"0" => led_nghin_tmp 	<= "1000000";
						when x"1" => led_nghin_tmp		<= "1111001";
						when x"2" => led_nghin_tmp		<= "0100100";
						when x"3" => led_nghin_tmp		<= "0110000";
						when x"4" => led_nghin_tmp		<= "0011001";
						when x"5" => led_nghin_tmp		<= "0010010";
						when x"6" => led_nghin_tmp		<= "0000010";
						when x"7" => led_nghin_tmp		<= "1111000";
						when x"8" => led_nghin_tmp		<= "0000000";
						when x"9" => led_nghin_tmp		<= "0010000";
						when others => led_nghin_tmp	<= "1111111";
			end case;
		--giai ma 7 doan hnag tram
			case tram is
						when x"0" => led_tram_tmp 	<= "1000000";
						when x"1" => led_tram_tmp	<= "1111001";
						when x"2" => led_tram_tmp 	<= "0100100";
						when x"3" => led_tram_tmp	<= "0110000";
						when x"4" => led_tram_tmp 	<= "0011001";
						when x"5" => led_tram_tmp 	<= "0010010";
						when x"6" => led_tram_tmp	<= "0000010";
						when x"7" => led_tram_tmp	<= "1111000";
						when x"8" => led_tram_tmp	<= "0000000";
						when x"9" => led_tram_tmp	<= "0010000";
						when others => led_tram_tmp<= "1111111";
			end case;
			-- giai ma 7 doan hang chuc
			case chuc is
						when x"0" => led_chuc_tmp <= "1000000";
						when x"1" => led_chuc_tmp <= "1111001";
						when x"2" => led_chuc_tmp <= "0100100";
						when x"3" => led_chuc_tmp <= "0110000";
						when x"4" => led_chuc_tmp <= "0011001";
						when x"5" => led_chuc_tmp <= "0010010";
						when x"6" => led_chuc_tmp <= "0000010";
						when x"7" => led_chuc_tmp <= "1111000";
						when x"8" => led_chuc_tmp <= "0000000";
						when x"9" => led_chuc_tmp <= "0010000";
						when others => led_chuc_tmp<="1111111";
			end case;
			case donvi is
						when x"0" => led_donvi_tmp 		<= "1000000";
						when x"1" => led_donvi_tmp			<= "1111001";
						when x"2" => led_donvi_tmp 		<= "0100100";
						when x"3" => led_donvi_tmp 		<= "0110000";
						when x"4" => led_donvi_tmp			<= "0011001";
						when x"5" => led_donvi_tmp 		<= "0010010";
						when x"6" => led_donvi_tmp 		<= "0000010";
						when x"7" => led_donvi_tmp			<= "1111000";
						when x"8" => led_donvi_tmp 		<= "0000000";
						when x"9" => led_donvi_tmp 		<= "0010000";
						when others => led_donvi_tmp		<= "1111111";
			end case;
		when others=> 	led_nghin_tmp<=(others=>'1');
							led_tram_tmp<=(others=>'1');
							led_chuc_tmp<=(others=>'1');
							led_donvi_tmp<=(others=>'1');
		end case;
	end process;
	--xoa so 0 vo nghia
	led_nghin<= led_nghin_tmp when nghin/=0 else 							(others=>'1');
	led_tram<= led_tram_tmp when nghin/=0 or tram/=0 else 				(others=>'1');
	led_chuc<= led_chuc_tmp when nghin/=0 or tram/=0 or chuc/=0 else 	(others=>'1');
	led_donvi<= led_donvi_tmp;
end behavioral;

