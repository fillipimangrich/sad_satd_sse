library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
entity sad8pixels is
   PORT (
       v1,v2 : IN std_logic_vector(63 DOWNTO 0);
       q : OUT std_logic_vector(127 DOWNTO 0));
end sad8pixels;

architecture arch of sad8pixels is
signal s1, s2, s3, s4, s5, s6, s7, s8 : std_logic_vector(15 downto 0);
type rom_type is array (0 to 127) of std_logic_vector(15 downto 0);
  signal square: rom_type := (
    "0000000000000000",
    "0000000000000001",
    "0000000000000100",
    "0000000000001001",
    "0000000000010000",
    "0000000000011001",
    "0000000000100100",
    "0000000000110001",
    "0000000001000000",
    "0000000001010001",
    "0000000001100100",
    "0000000001111001",
    "0000000010010000",
    "0000000010101001",
    "0000000011000100",
    "0000000011100001",
    "0000000100000000",
    "0000000100100001",
    "0000000101000100",
    "0000000101101001",
    "0000000110010000",
    "0000000110111001",
    "0000000111100100",
    "0000001000010001",
    "0000001001000000",
    "0000001001110001",
    "0000001010100100",
    "0000001011011001",
    "0000001100010000",
    "0000001101001001",
    "0000001110000100",
    "0000001111000001",
    "0000010000000000",
    "0000010001000001",
    "0000010010000100",
    "0000010011001001",
    "0000010100010000",
    "0000010101011001",
    "0000010110100100",
    "0000010111110001",
    "0000011001000000",
    "0000011010010001",
    "0000011011100100",
    "0000011100111001",
    "0000011110010000",
    "0000011111101001",
    "0000100001000100",
    "0000100010100001",
    "0000100100000000",
    "0000100101100001",
    "0000100111000100",
    "0000101000101001",
    "0000101010010000",
    "0000101011111001",
    "0000101101100100",
    "0000101111010001",
    "0000110001000000",
    "0000110010110001",
    "0000110100100100",
    "0000110110011001",
    "0000111000010000",
    "0000111010001001",
    "0000111100000100",
    "0000111110000001",
    "0001000000000000",
    "0001000010000001",
    "0001000100000100",
    "0001000110001001",
    "0001001000010000",
    "0001001010011001",
    "0001001100100100",
    "0001001110110001",
    "0001010001000000",
    "0001010011010001",
    "0001010101100100",
    "0001010111111001",
    "0001011010010000",
    "0001011100101001",
    "0001011111000100",
    "0001100001100001",
    "0001100100000000",
    "0001100110100001",
    "0001101001000100",
    "0001101011101001",
    "0001101110010000",
    "0001110000111001",
    "0001110011100100",
    "0001110110010001",
    "0001111001000000",
    "0001111011110001",
    "0001111110100100",
    "0010000001011001",
    "0010000100010000",
    "0010000111001001",
    "0010001010000100",
    "0010001101000001",
    "0010010000000000",
    "0010010011000001",
    "0010010110000100",
    "0010011001001001",
    "0010011100010000",
    "0010011111011001",
    "0010100010100100",
    "0010100101110001",
    "0010101001000000",
    "0010101100010001",
    "0010101111100100",
    "0010110010111001",
    "0010110110010000",
    "0010111001101001",
    "0010111101000100",
    "0011000000100001",
    "0011000100000000",
    "0011000111100001",
    "0011001011000100",
    "0011001110101001",
    "0011010010010000",
    "0011010101111001",
    "0011011001100100",
    "0011011101010001",
    "0011100001000000",
    "0011100100110001",
    "0011101000100100",
    "0011101100011001",
    "0011110000010000",
    "0011110100001001",
    "0011111000000100",
    "0011111100000001");
begin
 s1<= std_logic_vector(abs(signed(v1(7 downto 0)) - signed(v2(7 downto 0))));
 s2<= std_logic_vector(abs(signed(v1(15 downto 8)) - signed(v2(15 downto 8))));
 s3<= std_logic_vector(abs(signed(v1(23 downto 16)) - signed(v2(23 downto 16))));
 s4<= std_logic_vector(abs(signed(v1(31 downto 24)) - signed(v2(31 downto 24))));
 s5<= std_logic_vector(abs(signed(v1(39 downto 32)) - signed(v2(39 downto 32))));
 s6<= std_logic_vector(abs(signed(v1(47 downto 40)) - signed(v2(47 downto 40))));
 s7<= std_logic_vector(abs(signed(v1(55 downto 48)) - signed(v2(55 downto 48))));
 s8<= std_logic_vector(abs(signed(v1(63 downto 56)) - signed(v2(63 downto 56))));
  q(15 downto 0) <= s1*s1 when s1 > 128 else square(to_integer(unsigned(s1)));
  q(31 downto 16) <= s2*s2 when s1 > 128 else square(to_integer(unsigned(s2)));
  q(47 downto 32) <= s3*s3 when s1 > 128 else square(to_integer(unsigned(s3)));
  q(63 downto 48) <= s4*s4 when s1 > 128 else square(to_integer(unsigned(s4)));
  q(79 downto 64) <= s5*s5 when s1 > 128 else square(to_integer(unsigned(s5)));
  q(95 downto 80) <= s6*s6 when s1 > 128 else square(to_integer(unsigned(s6)));
  q(111 downto 96) <= s7*s7 when s1 > 128 else square(to_integer(unsigned(s7)));
  q(127 downto 112) <= s8*s8 when s1 > 128 else square(to_integer(unsigned(s8)));
end arch;