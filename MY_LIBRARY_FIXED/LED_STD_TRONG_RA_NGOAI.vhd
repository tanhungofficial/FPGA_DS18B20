--Khi can thay doi so led chi can thay doi entity cua q va gia tri cua constant n_led, half_led
--Nhung thong so can sua co dau #####
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity LED_STD_TRONG_RA_NGOAI is
	port(	ckht: in std_logic;
			ena_db, rst,oe: in std_logic;								
			q: out std_logic_vector(7 downto 0));					--#####
end LED_STD_TRONG_RA_NGOAI;
architecture behavioral of LED_STD_TRONG_RA_NGOAI is
constant  	n_led: integer:=7;										--###### su dung n led thi cho n_led=n-1
constant 	half_led: integer:=4;									--###### su dung n led thi cho half_led= n/2
signal q_reg,q_next: std_logic_vector(n_led downto 0);
begin
	--register block
	process(ckht)
	begin
		if rst='1' then 	q_reg<=(others=>'0');
		elsif falling_edge(ckht) then 	q_reg<= q_next;
		end if;
	end process;
	--next state block
	process(q_reg,oe,ena_db)
	begin
		if oe ='1' then
			if ena_db='1' then 	q_next(n_led downto half_led)	<= q_reg(n_led-1 downto half_led)& (not q_reg(n_led)); 
										q_next(half_led-1 downto 0)	<= (not q_reg(0))& q_reg(half_led-1 downto 1);
			else q_next<= 	q_reg;
			end if;
		else q_next <= (others=>'0');
		end if;
	end process;	
	-- output block
	q<= q_reg    when oe='1'	else
		(others=>'0');
end behavioral;