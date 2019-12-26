--Khi muon dem trong khoang nao thi thay doi constant max min
--Neu chỉ muốn dem len thi port map(up=>'1',down=>'0') va nguoc lại
--Ngo ra dung bao nhieu thì port map vừa đủ
--Khi dem toi bien thi dung hay quay lai thi sua khoi q_next nhe
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity DEM_DB_10BIT_UP_DOWN_BTN is 
	port(	ckht, up,down,rst: in std_logic;
			q: out std_logic_vector(9 downto 0));
end DEM_DB_10BIT_UP_DOWN_BTN;
architecture behavioral of DEM_DB_10BIT_UP_DOWN_BTN is
constant min: std_logic_vector:="0000010100";		--#######
constant max: std_logic_vector:="0000111100";		--#######
signal q_reg, q_next: std_logic_vector(9 downto 0):=min;
begin
	--register
	process(rst,ckht)
	begin 
		if rst='1' then 					q_reg<=min;						--######
		elsif falling_edge(ckht) then 	q_reg <=q_next;
		end if;
	end process;
	--next state logic
	q_next<=	q_reg+1	when up='1' 	and 	q_reg<max 			else
				q_reg-1	when down='1'	and   q_reg>min 			else
				q_reg;
	-- output
	q<= q_reg;
end behavioral;