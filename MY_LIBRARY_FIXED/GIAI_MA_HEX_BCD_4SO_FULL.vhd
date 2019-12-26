--Khi sử dụng cần thay đổi entity của hex cho phù hợp và thay đồi n_hex, n_hex_bcd
--oe nếu không cần dùng, tức luôn cho phép hiển thị thì port map(oe=>'1')
-- 4 số BCD gần như là đủ dùng nên không cần sửa, khi ngõ ra không dùng thì bỏ trống
-- Những chỗ cần chỉ sữa co dấu #########
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity GIAI_MA_HEX_BCD_4SO_FULL is 
port(	hex: in std_logic_vector(7 downto 0);								--######
		nghin,tram,chuc,donvi: out std_logic_vector(3 downto 0);
		oe: in std_logic);
end GIAI_MA_HEX_BCD_4SO_FULL;
architecture behavioral of GIAI_MA_HEX_BCD_4SO_FULL is
constant n_hex: integer:=8;													--###### n bit vào thì n_hex=n
constant n_bcd: integer:=16;
constant n_hex_bcd: integer:= n_hex+ n_bcd;	 											--###### n_hex_bcd bằng n_hex+16
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
end behavioral;

