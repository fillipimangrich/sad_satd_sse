library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity sum_tree32pixels is
   PORT (clk, enb, rst : IN STD_LOGIC;
       d : IN std_logic_vector(255 DOWNTO 0);
       q : OUT std_logic_vector(12 DOWNTO 0));
end sum_tree32pixels;

architecture arch of sum_tree32pixels is
signal reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg8, reg9, reg10, reg11, reg12, reg13, reg14, reg15, reg16 : std_logic_vector(8 downto 0);
signal reg17, reg18, reg19, reg20, reg21, reg22, reg23, reg24 : std_logic_vector(9 downto 0);
signal reg25, reg26, reg27, reg28 : std_logic_vector(10 downto 0);
signal reg29, reg30 : std_logic_vector(11 downto 0);
signal reg31 : std_logic_vector(12 downto 0);
BEGIN
   PROCESS(clk)
   BEGIN

       IF (rst = '1')THEN
           q <= (others => '0');
           reg1 <= (others => '0');
           reg2 <= (others => '0');
           reg3 <= (others => '0');
           reg4 <= (others => '0');
           reg5 <= (others => '0');
           reg6 <= (others => '0');
           reg7 <= (others => '0');
           reg8 <= (others => '0');
           reg9 <= (others => '0');
           reg10 <= (others => '0');
           reg11 <= (others => '0');
           reg12 <= (others => '0');
           reg13 <= (others => '0');
           reg14 <= (others => '0');
           reg15 <= (others => '0');
           reg16 <= (others => '0');
           reg17 <= (others => '0');
           reg18 <= (others => '0');
           reg19 <= (others => '0');
           reg20 <= (others => '0');
           reg21 <= (others => '0');
           reg22 <= (others => '0');
           reg23 <= (others => '0');
           reg24 <= (others => '0');
           reg25 <= (others => '0');
           reg26 <= (others => '0');
           reg27 <= (others => '0');
           reg28 <= (others => '0');
           reg29 <= (others => '0');
           reg30 <= (others => '0');
           reg31 <= (others => '0');
       ELSIF (clk'EVENT AND clk = '1' AND enb = '1') THEN
            reg1 <= ('0'&d(15 downto 8)) + ('0'&d(7 downto 0));
            reg2 <= ('0'&d(31 downto 24)) + ('0'&d(23 downto 16));
            reg3 <= ('0'&d(47 downto 40)) + ('0'&d(39 downto 32));
            reg4 <= ('0'&d(63 downto 56)) + ('0'&d(55 downto 48));
            reg5 <= ('0'&d(79 downto 72)) + ('0'&d(71 downto 64));
            reg6 <= ('0'&d(95 downto 88)) + ('0'&d(87 downto 80));
            reg7 <= ('0'&d(111 downto 104)) + ('0'&d(103 downto 96));
            reg8 <= ('0'&d(127 downto 120)) + ('0'&d(119 downto 112));
            reg9 <= ('0'&d(143 downto 136)) + ('0'&d(135 downto 128));
            reg10 <= ('0'&d(159 downto 152)) + ('0'&d(151 downto 144));
            reg11 <= ('0'&d(175 downto 168)) + ('0'&d(167 downto 160));
            reg12 <= ('0'&d(191 downto 184)) + ('0'&d(183 downto 176));
            reg13 <= ('0'&d(207 downto 200)) + ('0'&d(199 downto 192));
            reg14 <= ('0'&d(223 downto 216)) + ('0'&d(215 downto 208));
            reg15 <= ('0'&d(239 downto 232)) + ('0'&d(231 downto 224));
            reg16 <= ('0'&d(255 downto 248)) + ('0'&d(247 downto 240));
            reg17 <= ('0'&reg1) + ('0'&reg2);
            reg18 <= ('0'&reg3) + ('0'&reg4);
            reg19 <= ('0'&reg5) + ('0'&reg6);
            reg20 <= ('0'&reg7) + ('0'&reg8);
            reg21 <= ('0'&reg9) + ('0'&reg10);
            reg22 <= ('0'&reg11) + ('0'&reg12);
            reg23 <= ('0'&reg13) + ('0'&reg14);
            reg24 <= ('0'&reg15) + ('0'&reg16);
            reg25 <= ('0'&reg17) + ('0'&reg18);
            reg26 <= ('0'&reg19) + ('0'&reg20);
            reg27 <= ('0'&reg21) + ('0'&reg22);
            reg28 <= ('0'&reg23) + ('0'&reg24);
            reg29 <= ('0'&reg25) + ('0'&reg26);
            reg30 <= ('0'&reg27) + ('0'&reg28);
            reg31 <= reg31 + ('0'&reg29) + ('0'&reg30);
        END IF;
          q <= reg31;
	END PROCESS;
END arch;