library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity sum_tree64pixels is
   PORT (clk, enb, rst : IN STD_LOGIC;
       d : IN std_logic_vector(511 DOWNTO 0);
       q : OUT std_logic_vector(13 DOWNTO 0));
end sum_tree64pixels;

architecture arch of sum_tree64pixels is
signal reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg8, reg9, reg10, reg11, reg12, reg13, reg14, reg15, reg16, reg17, reg18, reg19, reg20, reg21, reg22, reg23, reg24, reg25, reg26, reg27, reg28, reg29, reg30, reg31, reg32 : std_logic_vector(8 downto 0);
signal reg33, reg34, reg35, reg36, reg37, reg38, reg39, reg40, reg41, reg42, reg43, reg44, reg45, reg46, reg47, reg48 : std_logic_vector(9 downto 0);
signal reg49, reg50, reg51, reg52, reg53, reg54, reg55, reg56 : std_logic_vector(10 downto 0);
signal reg57, reg58, reg59, reg60 : std_logic_vector(11 downto 0);
signal reg61, reg62 : std_logic_vector(12 downto 0);
signal reg63 : std_logic_vector(13 downto 0);
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
           reg32 <= (others => '0');
           reg33 <= (others => '0');
           reg34 <= (others => '0');
           reg35 <= (others => '0');
           reg36 <= (others => '0');
           reg37 <= (others => '0');
           reg38 <= (others => '0');
           reg39 <= (others => '0');
           reg40 <= (others => '0');
           reg41 <= (others => '0');
           reg42 <= (others => '0');
           reg43 <= (others => '0');
           reg44 <= (others => '0');
           reg45 <= (others => '0');
           reg46 <= (others => '0');
           reg47 <= (others => '0');
           reg48 <= (others => '0');
           reg49 <= (others => '0');
           reg50 <= (others => '0');
           reg51 <= (others => '0');
           reg52 <= (others => '0');
           reg53 <= (others => '0');
           reg54 <= (others => '0');
           reg55 <= (others => '0');
           reg56 <= (others => '0');
           reg57 <= (others => '0');
           reg58 <= (others => '0');
           reg59 <= (others => '0');
           reg60 <= (others => '0');
           reg61 <= (others => '0');
           reg62 <= (others => '0');
           reg63 <= (others => '0');
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
            reg17 <= ('0'&d(271 downto 264)) + ('0'&d(263 downto 256));
            reg18 <= ('0'&d(287 downto 280)) + ('0'&d(279 downto 272));
            reg19 <= ('0'&d(303 downto 296)) + ('0'&d(295 downto 288));
            reg20 <= ('0'&d(319 downto 312)) + ('0'&d(311 downto 304));
            reg21 <= ('0'&d(335 downto 328)) + ('0'&d(327 downto 320));
            reg22 <= ('0'&d(351 downto 344)) + ('0'&d(343 downto 336));
            reg23 <= ('0'&d(367 downto 360)) + ('0'&d(359 downto 352));
            reg24 <= ('0'&d(383 downto 376)) + ('0'&d(375 downto 368));
            reg25 <= ('0'&d(399 downto 392)) + ('0'&d(391 downto 384));
            reg26 <= ('0'&d(415 downto 408)) + ('0'&d(407 downto 400));
            reg27 <= ('0'&d(431 downto 424)) + ('0'&d(423 downto 416));
            reg28 <= ('0'&d(447 downto 440)) + ('0'&d(439 downto 432));
            reg29 <= ('0'&d(463 downto 456)) + ('0'&d(455 downto 448));
            reg30 <= ('0'&d(479 downto 472)) + ('0'&d(471 downto 464));
            reg31 <= ('0'&d(495 downto 488)) + ('0'&d(487 downto 480));
            reg32 <= ('0'&d(511 downto 504)) + ('0'&d(503 downto 496));
            reg33 <= ('0'&reg1) + ('0'&reg2);
            reg34 <= ('0'&reg3) + ('0'&reg4);
            reg35 <= ('0'&reg5) + ('0'&reg6);
            reg36 <= ('0'&reg7) + ('0'&reg8);
            reg37 <= ('0'&reg9) + ('0'&reg10);
            reg38 <= ('0'&reg11) + ('0'&reg12);
            reg39 <= ('0'&reg13) + ('0'&reg14);
            reg40 <= ('0'&reg15) + ('0'&reg16);
            reg41 <= ('0'&reg17) + ('0'&reg18);
            reg42 <= ('0'&reg19) + ('0'&reg20);
            reg43 <= ('0'&reg21) + ('0'&reg22);
            reg44 <= ('0'&reg23) + ('0'&reg24);
            reg45 <= ('0'&reg25) + ('0'&reg26);
            reg46 <= ('0'&reg27) + ('0'&reg28);
            reg47 <= ('0'&reg29) + ('0'&reg30);
            reg48 <= ('0'&reg31) + ('0'&reg32);
            reg49 <= ('0'&reg33) + ('0'&reg34);
            reg50 <= ('0'&reg35) + ('0'&reg36);
            reg51 <= ('0'&reg37) + ('0'&reg38);
            reg52 <= ('0'&reg39) + ('0'&reg40);
            reg53 <= ('0'&reg41) + ('0'&reg42);
            reg54 <= ('0'&reg43) + ('0'&reg44);
            reg55 <= ('0'&reg45) + ('0'&reg46);
            reg56 <= ('0'&reg47) + ('0'&reg48);
            reg57 <= ('0'&reg49) + ('0'&reg50);
            reg58 <= ('0'&reg51) + ('0'&reg52);
            reg59 <= ('0'&reg53) + ('0'&reg54);
            reg60 <= ('0'&reg55) + ('0'&reg56);
            reg61 <= ('0'&reg57) + ('0'&reg58);
            reg62 <= ('0'&reg59) + ('0'&reg60);
            reg63 <= reg63 + ('0'&reg61) + ('0'&reg62);
        END IF;
          q <= reg63;
	END PROCESS;
END arch;