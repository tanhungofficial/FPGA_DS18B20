--Khi can thay doi so luong oe ra thi chi can dieu sua constant n_oe va khoi lenh giai ma s sang oe o cuoi chuong trinh
--Doi voi chuong trinh tren lop so luong 8 oe co la da qua du nen khong can chinh sua gi entity oe va signal s
-- 8 oe thi thi nen khi port map t chi port map (oe(i)=>signal) khong can port map het
--Nhung thong so can sua co dau #####
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity 	TAO_OE_DIEU_KHIEN_BTN is 
port(		btn,ckht,rst: in std_logic;
			oe: 			    out std_logic_vector(7 downto 0));
end TAO_OE_DIEU_KHIEN_BTN;
architecture behavioral of TAO_OE_DIEU_KHIEN_BTN is
type 		btn_state is ( zero, wait1,one, wait0);
signal 	btn_reg, btn_next: btn_state;
signal 	delay_next, delay_reg : unsigned (19 downto 0);
signal 	btn_cd,qff,btn_cd_hep: std_logic;
signal 	s,s_reg,s_next: std_logic_vector(2 downto 0):="000"; 			
constant n_oe: integer:=7;									--can dieu khien n hieu ung thi dien n_oe = n-1
begin
	process(ckht)
	begin
		if falling_edge(ckht) then delay_reg<= delay_next;
											btn_reg <= btn_next;
		end if;
	end process;
	--chong doi nut nhan 
	process(btn,delay_reg,btn_reg)
	begin
		delay_next<= delay_reg;
		btn_next<=   btn_reg;
		case btn_reg is
			when	zero => 	btn_cd <='0';
								if btn='1' then 	btn_next<= wait1;
														delay_next <= (others=>'1');
								end if;
			when	wait1 => btn_cd <='0';
								if btn='1'				then 	delay_next <= delay_reg-1;
									if delay_reg=0 	then	btn_next<=one; 
									end if;
								else btn_next<=zero;
								end if;
			when	one => 	btn_cd <='1';
								if btn='0'	then	btn_next<=wait0; 
														delay_next<=(others=>'1');
								end if;
			when	wait0 => btn_cd <='1';
								if btn='1' then 	btn_next<= one;
								else 					delay_next<=delay_reg-1; 
									if delay_reg = 0 then btn_next<=zero;
									end if;
								end if;
			end case;					
	end process;
	--lam hep xung
	process(ckht,rst)
	begin
		if rst='1' then s_reg<=(others=>'0');
		elsif falling_edge(ckht) then qff<= btn_cd;
												s_reg<=s_next;
		end if;
	end process;
	btn_cd_hep<= (not qff) and btn_cd;
	-- tin hieu cho phep oe
	s_next<= s_reg when btn_cd_hep='0' else
				s_reg+1 when s<n_oe    else
				(others=>'0');
	s	<=	s_reg;
	with s select 										---######## xoa bo nhung truong hop s khong su dung
		oe<= 	(0=>'1',others=>'0') when "000",
				(1=>'1',others=>'0') when "001",
				(2=>'1',others=>'0') when "010",
				(3=>'1',others=>'0') when "011",	
				(4=>'1',others=>'0') when "100",
				(5=>'1',others=>'0') when "101",
				(6=>'1',others=>'0') when "110",
				(7=>'1',others=>'0') when others;	
end behavioral;

