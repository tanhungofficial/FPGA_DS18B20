--Khi can thay doi so led chi can thay doi entity cua q va gia tri cua constant n_led
--Nhung thong so can sua co dau #####
library ieee;
use ieee.std_logic_1164.all;

entity LED_SANGDON_TRAI_SANG_PHAI is
	port(	ck: in std_logic;
			rst,oe,ena_db: in std_logic;
			q: out std_logic_vector(15 downto 0));				--######
end LED_SANGDON_TRAI_SANG_PHAI;
architecture behavioral of LED_SANGDON_TRAI_SANG_PHAI is
constant n_led: integer:=15;										--##### su dung n led thi cho n_led= n -1
signal 	q_pos_next, q_neg_next,q_neg_reg,q_pos_reg: std_logic_vector(n_led downto 0);
signal 	n_pos_next,n_pos_reg,n_neg_next, n_neg_reg: integer range 0 to n_led:=n_led;
begin
	--register
	process(rst,ck)
	begin
		if rst ='1'			then 				q_pos_reg<=(others=>'0');
													q_neg_reg<=(others=>'0');
													n_pos_reg<=n_led;
													n_neg_reg<=0;
		elsif falling_edge(ck) then 		q_pos_reg<=q_pos_next;
													q_neg_reg<=q_neg_next;
													n_pos_reg<=n_pos_next;
													n_neg_reg<= n_neg_next;
		end if;
	end process;
	-- next sate 
	process(q_pos_reg,n_pos_next,q_neg_reg,n_neg_reg,oe,ena_db)
	begin
		if oe='0' then  						n_pos_next<=n_led;
													n_neg_next<=0;
													q_pos_next<=(n_led=>'1',others=>'0');
													q_neg_next<=(others=>'0');
		elsif ena_db='0'     then 			n_pos_next<= n_pos_reg;
													n_neg_next<= n_neg_reg;
													q_pos_next<= q_pos_reg;
													q_neg_next<= q_neg_reg;
		elsif q_pos_reg="00000000"	then 	q_pos_next<=(n_led=>'1', others=>'0');
		elsif n_neg_reg = n_led then 		n_pos_next<=n_led;
													n_neg_next<=0;
													q_pos_next<=(n_led=>'1',others=>'0');
													q_neg_next<=(others=>'0');
		elsif n_pos_reg=1		then 			n_pos_next<=n_led - n_neg_reg;
													n_neg_next<=n_neg_reg+1;
													q_pos_next<=(n_led=>'1', others=>'0');
													q_neg_next<=q_neg_reg(n_led-1 downto 0)&'1';
		else										n_pos_next<=n_pos_reg-1;
													q_pos_next<='0'& q_pos_reg(n_led downto 1);
													q_neg_next<=q_neg_reg;
													n_neg_next<=n_neg_reg;
		end if;	
	end process;
	--output logic
	q<= q_neg_reg or q_pos_reg when oe='1' else
			(others=>'0');
end behavioral;