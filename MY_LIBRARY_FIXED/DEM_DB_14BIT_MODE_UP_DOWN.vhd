--Khi muon dem trong khoang nao thi thay doi constant max min
--Neu chỉ muốn dem len thi port map(up=>'1',down=>'0') va nguoc lại
--Ngo ra dung bao nhieu thì port map vừa đủ
--Khi dem toi bien thi dung hay quay lai thi sua khoi q_next nhe
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity DEM_DB_10BIT_MODE_UP_DOWN is 
	port(ckht, up,down,rst,ena_db: in std_logic;
			q: out std_logic_vector(13 downto 0));
end DEM_DB_10BIT_MODE_UP_DOWN;
architecture behavioral of DEM_DB_10BIT_MODE_UP_DOWN is
constant min: std_logic_vector:="00000000000000";		--#######
constant max: std_logic_vector:="10011100001111";		--#######
signal mode_reg,mode_next: std_logic:='1';
signal q_reg, q_next: std_logic_vector(13 downto 0):=min;
begin
	--register
	process(rst,ckht)
	begin 
		if rst='1' then 	q_reg<=min;						--######
								mode_reg<='1';
		elsif falling_edge(ckht) then 	q_reg <=q_next;
												mode_reg<= mode_next;
		end if;
	end process;
	--next state logic
	mode_next<= '1' when up='1'   else
					'0' when down='1' else
					mode_reg;
	q_next<= q_reg+1	when mode_reg='1' and ena_db='1' and q_reg<max else
				q_reg-1	when mode_reg='0' and ena_db='1' and q_reg>min else
				q_reg;
	-- output
	q<= q_reg;
end behavioral;