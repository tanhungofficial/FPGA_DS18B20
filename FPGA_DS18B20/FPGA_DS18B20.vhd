library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity FPGA_DS18B20 is 
	port(	ckht: in std_logic;
			btn_n: in std_logic_vector(3 downto 0);
			led: out std_logic_vector(15 downto 0);
			led_oe: out std_logic_vector(8 downto 0);
			ds18b20 : inout std_logic;
			lcd_blon, lcd_e, lcd_on, lcd_wr, lcd_rs: out std_logic;
			lcd_data : out std_logic_vector(7 downto 0);
			sseg7,sseg6, sseg1, sseg2,sseg0: out std_logic_vector(6 downto 0));
end FPGA_DS18B20;
architecture behavioral of FPGA_DS18B20 is
signal rst, ena_db,ena1hz,ena5hz,ena10hz,ena20hz,ena25hz,ena50hz,ena100hz,btn_up,btn_dw, up, down , btn_gtc, ena2hz: std_logic;
signal oe: std_logic_vector(7  downto 0);
signal gio, phut, giay: std_logic_vector(5 downto 0);
signal ds_temperature: std_logic_vector(11 downto 0);
signal ds_respond: std_logic;
signal ds_chuc, ds_donvi, phut_chuc, phut_donvi, giay_chuc, giay_donvi: std_logic_vector(3 downto 0);
signal ds_chuc_to, ds_donvi_to,giay_chuc_to, giay_donvi_to: std_logic_vector(47 downto 0);
signal count : std_logic_vector(9 downto 0);
signal gtc : std_logic_vector(7 downto 0);
signal oe_sseg: std_logic_vector(2 downto 0);
signal h1_0, h1_1, h1_2, h1_3,h1_4,h1_5,h1_7,h1_8,h1_9,h1_10,h1_11,h1_12,h1_13,h1_14,h1_15: std_logic_vector(7 downto 0);
signal h2_0, h2_1, h2_2, h2_3,h2_4,h2_5,h2_10,h2_11,h2_12,h2_13,h2_14,h2_15: std_logic_vector(7 downto 0);
begin	
	rst<= not btn_n(0);
	btn_gtc<= not btn_n(1);
	btn_dw<= not btn_n(2);
	btn_up<= not btn_n(3);
	lcd_blon <= '1';
	lcd_on <= '1';
	lcd_wr <= '0';
	xung_ena: entity work.TAO_10ENA_1HZ_1MHZ
		port map(	ckht=> ckht,
						ena5hz=>ena5hz,
						ena1hz=>ena1hz,
						ena2hz=>ena2hz,
						ena10hz=>ena10hz,
						ena20hz=>ena20hz,
						ena25hz=>ena25hz,
						ena50hz=>ena50hz,
						ena100hz=>ena100hz);
	thoi_gian: entity work. DEM_GIO_PHUT_GIAY
	port map(	ckht=>ckht,
					rst=>rst,
					up=>up,
					down=>down,
					ena_db=>ena1hz,
					gio=>gio,
					mode => "00",
					phut=>phut,
					giay=>giay);
	chong_doi_up: entity work.BTN_CHONG_DOI_LAM_HEP
	port map(	ckht=> ckht,
					btn => btn_up,
					btn_cd_hep=>up);
	chong_doi_dw: entity work.BTN_CHONG_DOI_LAM_HEP
	port map(	ckht=> ckht,
					btn => btn_dw,
					btn_cd_hep=>down);
	--DS18B20
	doc_ds18b20: entity work.READ_DS18B20
	port map(	ckht => ckht,
					ds18b20 => ds18b20,
					rst=> rst,
					ds_respond => ds_respond,
					ds_temperature => ds_temperature);
	--GIAI MA BCD		
	giai_ma_bcd_ds: entity work.GIAI_MA_HEX_BCD_4SO_FULL
	port map(	hex => ds_temperature(11 downto 4),
					oe=>'1',
					chuc => ds_chuc,
					donvi => ds_donvi);
	giai_ma_bcd_phut: entity work.GIAI_MA_HEX_BCD_4SO_FULL
	port map(	hex => "00"&phut,
					oe=>'1',
					chuc => phut_chuc,
					donvi => phut_donvi);
					
	giai_ma_bcd_giay: entity work.GIAI_MA_HEX_BCD_4SO_FULL
	port map(	hex => "00"&giay,
					oe=>'1',
					chuc => giay_chuc,
					donvi => giay_donvi);
	--GIAI MA SO TO
	giai_ma_soto_ds_chuc: entity work.LCD_GIAI_MA_SO_TO
	port map(	so_giai_ma => ds_chuc,
					lcd_ma_to => ds_chuc_to);
	giai_ma_soto_ds_donvi: entity work.LCD_GIAI_MA_SO_TO
	port map(	so_giai_ma => ds_donvi,
					lcd_ma_to => ds_donvi_to);
					
	giai_ma_soto_GIAY_CHUC: entity work.LCD_GIAI_MA_SO_TO
	port map(	so_giai_ma => giay_chuc,
					lcd_ma_to => giay_chuc_to);
	giai_ma_soto_gauy_donvi: entity work.LCD_GIAI_MA_SO_TO
	port map(	so_giai_ma => giay_donvi,
					lcd_ma_to => giay_donvi_to);
					
	lcd_full: entity work.LCD_KHOI_TAO_HIEN_THI_CGRAM_FULL
	port map(	lcd_ck =>ckht,
					lcd_rst=>rst,
					lcd_data => lcd_data,
					lcd_e => lcd_e,
					lcd_rs=> lcd_rs,
					h1_0=> h1_0,
					h1_1=> h1_1,
					h1_2=> h1_2,
					h1_3=> h1_3,
					h1_4=> h1_4,
					h1_5=> h1_5,
					h1_7 => h1_7,
					h1_8 => h1_8,
					h1_9 => h1_9,
					h1_10=>h1_10,
					h1_11=>h1_11,
					h1_12 => h1_12,
					h1_13=>h1_13,
					h1_14=>h1_14,
					h1_15=>h1_15,
					
					h2_0=> h2_0,
					h2_1=> h2_1,
					h2_2=> h2_2,
					h2_3=> h2_3,
					h2_4=> h2_4,
					h2_5=> h2_5,

					h2_12=> h2_12,
					h2_11=>h2_11,
					h2_10 => h2_10,
					h2_13=>h2_13,
					h2_14=>h2_14,
					h2_15=>h2_15);
	
	 tao_gtc: entity work. TAO_OE_DIEU_KHIEN_BTN
	 port map( rst => rst,
					ckht => ckht,
					oe => gtc,
					btn => btn_gtc);
	 h1_0 <= ds_chuc_to ( 47 downto 40 )		when giay < gtc	else "0011"&ds_chuc;
	 h1_1 <= ds_chuc_to ( 39 downto 32 )		when giay < gtc	else "0011"&ds_donvi;
	 h1_2 <= ds_chuc_to ( 31 downto 24 )		when giay < gtc	else X"20";
	 h2_0 <= ds_chuc_to ( 23 downto 16 )		when giay < gtc	else X"20";
	 h2_1 <= ds_chuc_to ( 15 downto 8 )			when giay < gtc	else X"20";
	 h2_2 <= ds_chuc_to ( 7 downto 0 )			when giay < gtc	else X"20";
	 
	 h1_3 <= ds_donvi_to ( 47 downto 40 )		when giay < gtc	else X"20";
	 h1_4 <= ds_donvi_to ( 39 downto 32 )		when giay < gtc	else X"20";
	 h1_5 <= ds_donvi_to ( 31 downto 24 )		when giay < gtc	else X"20";
	 h2_3 <= ds_donvi_to ( 23 downto 16 )		when giay < gtc	else X"20";
	 h2_4 <= ds_donvi_to ( 15 downto 8 )		when giay < gtc	else X"20";
	 h2_5 <= ds_donvi_to ( 7 downto 0 )			when giay < gtc	else X"20";
	 
	 h1_10 <= giay_chuc_to ( 47 downto 40 )		when giay < gtc	else "0011"&giay_chuc;
	 h1_11 <= giay_chuc_to ( 39 downto 32 )		when giay < gtc	else "0011"&giay_donvi;
	 h1_12 <= giay_chuc_to ( 31 downto 24 )		when giay < gtc	else X"20";
	 h2_10 <= giay_chuc_to ( 23 downto 16 )		when giay < gtc	else X"20";
	 h2_11 <= giay_chuc_to ( 15 downto 8 )			when giay < gtc	else X"20";
	 h2_12 <= giay_chuc_to ( 7 downto 0 )			when giay < gtc	else X"20";
	 
	 h1_13 <= giay_donvi_to ( 47 downto 40 )		when giay < gtc	else X"20";
	 h1_14 <= giay_donvi_to ( 39 downto 32 )		when giay < gtc	else X"20";
	 h1_15 <= giay_donvi_to ( 31 downto 24 )		when giay < gtc	else X"20";
	 h2_13 <= giay_donvi_to ( 23 downto 16 )		when giay < gtc	else X"20";
	 h2_14 <= giay_donvi_to ( 15 downto 8 )		when giay < gtc	else X"20";
	 h2_15 <= giay_donvi_to ( 7 downto 0 )			when giay < gtc	else X"20";
	 h1_7 <= "0011"& phut_chuc;
	 h1_8 <= "0011"& phut_donvi;
	 giai_ma_gtc: entity work. GIAI_MA_HEX_BCD_SSEG_4SO_FULL
	 port map ( hex => gtc,
					oe=>'1',
					led_chuc=> sseg7,
					led_donvi => sseg6);
	dem_mode_10: entity work.DEM_DB_10BIT_MODE_UP_DOWN
	port map(ckht 	=> ckht,
				rst 	=> rst,				
				up		=>'1',
				down 	=> '0',
				ena_db => ena50hz,
				q => count);
	sseg2 <= "1111001"		when giay(0) = '0' else (others => '1');
	sseg1 <= "1111000"		when giay(0) = '0' else (others => '1');
	sseg0 <= "0010010"		when giay(0) = '0' else (others => '1');
	
	led 		<= (others => '1')		when giay < 31 and count < 6		else (others => '0');
	led_oe 	<= (others => '1')		when giay > 30 and count < 6		else (others => '0');
end behavioral;