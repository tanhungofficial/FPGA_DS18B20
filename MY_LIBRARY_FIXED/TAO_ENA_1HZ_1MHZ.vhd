library ieee;
use ieee.std_logic_1164.all;

entity TAO_ENA_1HZ_1MHZ is
	port(	ckht: in std_logic;
			ena1hz: out std_logic;
			ena2hz: out std_logic;
			ena3hz: out std_logic;
			ena4hz: out std_logic;
			ena5hz: out std_logic;
			ena6hz: out std_logic;
			ena7hz: out std_logic;
			ena8hz: out std_logic;
			ena9hz: out std_logic;
			ena10hz: out std_logic;
			ena20hz: out std_logic;
			ena25hz: out std_logic;
			ena50hz: out std_logic;
			ena100hz: out std_logic;
			ena1khz: out std_logic;
			ena1mhz: out std_logic);
end TAO_ENA_1HZ_1MHZ;
architecture behaivioral of TAO_ENA_1HZ_1MHZ is
constant n: integer := 50000000;
signal d1hz_reg, d1hz_next: integer range 0 to n:=1;
signal d2hz_reg, d2hz_next: integer range 0 to n/2:=1;
signal d3hz_reg, d3hz_next: integer range 0 to n/3:=1;
signal d4hz_reg, d4hz_next: integer range 0 to n/4:=1;
signal d5hz_reg, d5hz_next: integer range 0 to n/5:=1;
signal d6hz_reg, d6hz_next: integer range 0 to n/6:=1;
signal d7hz_reg, d7hz_next: integer range 0 to n/7:=1;
signal d8hz_reg, d8hz_next: integer range 0 to n/8:=1;
signal d9hz_reg, d9hz_next: integer range 0 to n/9:=1;
signal d10hz_reg, d10hz_next: integer range 0 to n/10:=1;
signal d20hz_reg, d20hz_next: integer range 0 to n/20:=1;
signal d25hz_reg, d25hz_next: integer range 0 to n/25:=1;
signal d50hz_reg, d50hz_next: integer range 0 to n/50:=1;
signal d100hz_reg, d100hz_next: integer range 0 to n/100:=1;
signal d1khz_reg, d1khz_next: integer range 0 to n/1000:=1;
signal d1mhz_reg, d1mhz_next: integer range 0 to n/1000000:=1;
begin
	--register
	process(ckht)
	begin
		if falling_edge(ckht) then d1hz_reg 	<= d1hz_next;
											d2hz_reg 	<= d2hz_next;
											d3hz_reg 	<= d3hz_next;
											d4hz_reg 	<= d4hz_next;
											d5hz_reg 	<= d5hz_next;
											d6hz_reg 	<= d6hz_next;
											d7hz_reg 	<= d7hz_next;
											d8hz_reg 	<= d8hz_next;
											d9hz_reg 	<= d9hz_next;
											d10hz_reg 	<=	d10hz_next;
											d20hz_reg 	<= d20hz_next;
											d25hz_reg 	<= d25hz_next;
											d50hz_reg 	<= d50hz_next;
											d100hz_reg	<= d100hz_next;
											d1khz_reg 	<= d1khz_next;
											d1mhz_reg 	<= d1mhz_next;
		end if;
	end process;
	-- next state logic
	d1hz_next <= 1 when d1hz_reg = n   else d1hz_reg+1;
	d2hz_next <= 1 when d2hz_reg = n/2 else d2hz_reg+1;
	d3hz_next <= 1 when d3hz_reg = n/3 else d3hz_reg+1;
	d4hz_next <= 1 when d4hz_reg = n/4 else d4hz_reg+1;
	d5hz_next <= 1 when d5hz_reg = n/5 else d5hz_reg+1;
	d6hz_next <= 1 when d6hz_reg = n/6 else d6hz_reg+1;
	d7hz_next <= 1 when d7hz_reg = n/7 else d7hz_reg+1;
	d8hz_next <= 1 when d8hz_reg = n/8 else d8hz_reg+1;
	d9hz_next <= 1 when d9hz_reg = n/9 else d9hz_reg+1;
	d10hz_next <= 1 when d10hz_reg = n/10 else d10hz_reg+1;
	d20hz_next <= 1 when d20hz_reg = n/20 else d20hz_reg+1;
	d25hz_next <= 1 when d25hz_reg = n/25 else d25hz_reg+1;
	d50hz_next <= 1 when d50hz_reg = n/50 else d50hz_reg+1;
	d100hz_next <= 1 when d100hz_reg = n/100 else d100hz_reg+1;
	d1khz_next <= 1 when d1khz_reg = n/1000 else d1khz_reg+1;
	d1mhz_next <= 1 when d1mhz_reg = n/1000000 else d1mhz_reg+1;
	-- output logic
	ena1hz <= '1' when d1hz_reg = n/2 else '0';
	ena2hz <= '1' when d2hz_reg = n/4 else '0';
	ena3hz <= '1' when d3hz_reg = n/6 else '0';
	ena4hz <= '1' when d4hz_reg = n/8 else '0';
	ena5hz <= '1' when d5hz_reg = n/10 else '0';
	ena6hz <= '1' when d6hz_reg = n/12 else '0';
	ena7hz <= '1' when d7hz_reg = n/14 else '0';
	ena8hz <= '1' when d8hz_reg = n/16 else '0';
	ena9hz <= '1' when d9hz_reg = n/18 else '0';
	ena10hz <= '1' when d10hz_reg = n/20 else '0';
	ena20hz <= '1' when d20hz_reg =n/40 else '0';
	ena25hz <= '1' when d25hz_reg = n/50 else '0';
	ena50hz <= '1' when d50hz_reg= n/100 else '0';
	ena100hz <= '1' when d100hz_reg = n/200 else '0';
	ena1khz <= '1' when d1khz_reg = n/2000 else '0';
	ena1mhz <= '1' when d1mhz_reg = n/2000000 else '0';
end behaivioral;