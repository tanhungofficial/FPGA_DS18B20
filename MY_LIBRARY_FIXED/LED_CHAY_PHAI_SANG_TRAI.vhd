--Khi can thay doi so led chi can thay doi entity cua q va gia tri cua constant n_led
--Nhung thong so can sua co dau #####
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity LED_CHAY_PHAI_SANG_TRAI is 
	port(	ckht: in std_logic;
			rst, oe,ena_db: in std_logic;
			q: out std_logic_vector(7 downto 0));					--#####
end LED_CHAY_PHAI_SANG_TRAI;
architecture behavioral of LED_CHAY_PHAI_SANG_TRAI is
constant n_led : integer:=7;											--##### su dung n led thi cho n_led = n-1
signal q_next, q_reg: std_logic_vector(n_led downto 0);
begin
	--register
	process(ckht)
	begin
		if rst ='1' then 	q_reg<=(others=>'0');
		elsif falling_edge(ckht) then q_reg<= q_next;
		end if;
	end process;
	--next state
	q_next<= (others=>'0') 				when	oe='0' 		else
				q_reg							when 	ena_db='0' 	else
				(0=>'1', others=>'0')  	when 	q_reg=0		else
				q_reg(n_led-1 downto 0)&'0'	when q_reg(n_led) ='0' else
				(0=>'1', others=>'0');
	--output
	q<= q_reg when oe='1' else
		(others=>'0');
end behavioral;