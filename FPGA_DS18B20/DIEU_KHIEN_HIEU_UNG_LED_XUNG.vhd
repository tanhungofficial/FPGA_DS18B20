--Khi can thay doi so led chi can thay doi entity cua oe va gia tri cua constant max va cac threshold
--+ 	threshold_0 la so xung ket thuc hieu ung thu 1
--+ 	threshold_1 la so xung ket thuc hieu ung thu 2
--+ 	.....chi sua cac threshold can dung nhung cai con lai khong quan tam
-- max la so xung dem duoc thi ket thuc 1 chu ky hieu ung, thuong thi max = threshold cuoi cung ma ban su dung
-- Khi max lon hon 1023 thi tang do dai vector cho dem_next, dem_reg
--Nhung thong so can sua co dau #####
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity DIEU_KHIEN_HIEU_UNG_LED_XUNG is 
	port(	ck: in std_logic;
			rst,ena_db: in std_logic;
			oe: out std_logic_vector(7 downto 0));
end DIEU_KHIEN_HIEU_UNG_LED_XUNG;
architecture behavioral of DIEU_KHIEN_HIEU_UNG_LED_XUNG is
constant threshold_0: integer:=31;											--######	Nhung thong so con lai tuy bai ban tinh ra ...
constant threshold_1: integer:=threshold_0+32;								--######
constant threshold_2: integer:=threshold_1+16;								--######
constant threshold_3: integer:=threshold_2+16;								--######
constant threshold_4: integer:=threshold_3+16;								--######
constant threshold_5: integer:=threshold_4+16;								--######
constant threshold_6: integer:=threshold_5+136;								--######
constant threshold_7: integer:=threshold_6+136;								--######
constant max: 		  integer:=threshold_7;									--######	max= threshold cuoi cung ban CO SU DUNG
signal dem_next, dem_reg: std_logic_vector(10 downto 0);	--######
begin
	--register
	process(ck)
	begin
		if rst ='1' then 	dem_reg<=(others=>'0');
		elsif falling_edge(ck) then dem_reg<= dem_next;
		end if;
	end process;
	--next state
	dem_next<=  	dem_reg		when ena_db  = '0' 	else
					dem_reg+1	when dem_reg < max	else
					(others=>'0');
	--output
	oe<= 	(others=>'0')			when rst='1' 			   else
			(0=>'1', others=>'0')	when dem_reg<= threshold_0 else
			(1=>'1', others=>'0')	when dem_reg<= threshold_1 else
			(2=>'1', others=>'0')	when dem_reg<= threshold_2 else
			(3=>'1', others=>'0')	when dem_reg<= threshold_3 else
			(4=>'1', others=>'0')	when dem_reg<= threshold_4 else
			(5=>'1', others=>'0')	when dem_reg<= threshold_5 else
			(6=>'1', others=>'0')	when dem_reg<= threshold_6 else
			(7=>'1', others=>'0');
end behavioral;