--Khi can thay doi so led chi can thay doi entity cua q va gia tri cua constant n_led
--Nhung thong so can sua co dau #####
library ieee;
use ieee.std_logic_1164.all;

entity LED_STD_TRAI_SANG_PHAI is
	port(	ckht: in std_logic;
			ena_db, oe,rst: in std_logic;
			q: out std_logic_vector(7 downto 0));					--##### 
end LED_STD_TRAI_SANG_PHAI;
architecture behavioral of LED_STD_TRAI_SANG_PHAI is
constant n_led:integer :=7;											--##### Dung n led thi dien n-1
signal q_reg,q_next: std_logic_vector(n_led downto 0);
begin
	--register block
	process(ckht, rst)
	begin
		if rst='1' then q_reg <= (others=>'0');
		elsif falling_edge(ckht) then q_reg<= q_next;
		end if;
	end process;
	--next state block
	q_next<= (others=>'0') when oe= '0' else
				(not q_reg(0))& q_reg(n_led downto 1) when ena_db='1' else
				q_reg;
	-- output block
	q<= 	q_reg when oe = '1' else
			(others=>'0');
end behavioral;