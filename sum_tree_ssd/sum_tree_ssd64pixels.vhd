library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity sum_tree_ssd64pixels is
   PORT (clk, enb, rst : IN STD_LOGIC;
       d : IN std_logic_vector(1023 DOWNTO 0);
       q : OUT std_logic_vector(21 DOWNTO 0));
end sum_tree_ssd64pixels;

architecture arch of sum_tree_ssd64pixels is
signal reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg8, reg9, reg10, reg11, reg12, reg13, reg14, reg15, reg16, reg17, reg18, reg19, reg20, reg21, reg22, reg23, reg24, reg25, reg26, reg27, reg28, reg29, reg30, reg31, reg32 : std_logic_vector(16 downto 0);
signal reg33, reg34, reg35, reg36, reg37, reg38, reg39, reg40, reg41, reg42, reg43, reg44, reg45, reg46, reg47, reg48 : std_logic_vector(17 downto 0);
signal reg49, reg50, reg51, reg52, reg53, reg54, reg55, reg56 : std_logic_vector(18 downto 0);
signal reg57, reg58, reg59, reg60 : std_logic_vector(19 downto 0);
signal reg61, reg62 : std_logic_vector(20 downto 0);
signal reg63 : std_logic_vector(21 downto 0);
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
            reg1 <= ('0'&d(31 downto 16)) + ('0'&d(15 downto 0));
            reg2 <= ('0'&d(63 downto 48)) + ('0'&d(47 downto 32));
            reg3 <= ('0'&d(95 downto 80)) + ('0'&d(79 downto 64));
            reg4 <= ('0'&d(127 downto 112)) + ('0'&d(111 downto 96));
            reg5 <= ('0'&d(159 downto 144)) + ('0'&d(143 downto 128));
            reg6 <= ('0'&d(191 downto 176)) + ('0'&d(175 downto 160));
            reg7 <= ('0'&d(223 downto 208)) + ('0'&d(207 downto 192));
            reg8 <= ('0'&d(255 downto 240)) + ('0'&d(239 downto 224));
            reg9 <= ('0'&d(287 downto 272)) + ('0'&d(271 downto 256));
            reg10 <= ('0'&d(319 downto 304)) + ('0'&d(303 downto 288));
            reg11 <= ('0'&d(351 downto 336)) + ('0'&d(335 downto 320));
            reg12 <= ('0'&d(383 downto 368)) + ('0'&d(367 downto 352));
            reg13 <= ('0'&d(415 downto 400)) + ('0'&d(399 downto 384));
            reg14 <= ('0'&d(447 downto 432)) + ('0'&d(431 downto 416));
            reg15 <= ('0'&d(479 downto 464)) + ('0'&d(463 downto 448));
            reg16 <= ('0'&d(511 downto 496)) + ('0'&d(495 downto 480));
            reg17 <= ('0'&d(543 downto 528)) + ('0'&d(527 downto 512));
            reg18 <= ('0'&d(575 downto 560)) + ('0'&d(559 downto 544));
            reg19 <= ('0'&d(607 downto 592)) + ('0'&d(591 downto 576));
            reg20 <= ('0'&d(639 downto 624)) + ('0'&d(623 downto 608));
            reg21 <= ('0'&d(671 downto 656)) + ('0'&d(655 downto 640));
            reg22 <= ('0'&d(703 downto 688)) + ('0'&d(687 downto 672));
            reg23 <= ('0'&d(735 downto 720)) + ('0'&d(719 downto 704));
            reg24 <= ('0'&d(767 downto 752)) + ('0'&d(751 downto 736));
            reg25 <= ('0'&d(799 downto 784)) + ('0'&d(783 downto 768));
            reg26 <= ('0'&d(831 downto 816)) + ('0'&d(815 downto 800));
            reg27 <= ('0'&d(863 downto 848)) + ('0'&d(847 downto 832));
            reg28 <= ('0'&d(895 downto 880)) + ('0'&d(879 downto 864));
            reg29 <= ('0'&d(927 downto 912)) + ('0'&d(911 downto 896));
            reg30 <= ('0'&d(959 downto 944)) + ('0'&d(943 downto 928));
            reg31 <= ('0'&d(991 downto 976)) + ('0'&d(975 downto 960));
            reg32 <= ('0'&d(1023 downto 1008)) + ('0'&d(1007 downto 992));
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