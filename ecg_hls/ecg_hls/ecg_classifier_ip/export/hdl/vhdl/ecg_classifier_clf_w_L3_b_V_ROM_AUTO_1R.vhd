-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity ecg_classifier_clf_w_L3_b_V_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 6; 
             AddressWidth     : integer := 7; 
             AddressRange    : integer := 128
    ); 
    port (
 
          address0        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0             : in std_logic; 
          q0              : out std_logic_vector(DataWidth-1 downto 0);
 
          address1        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce1             : in std_logic; 
          q1              : out std_logic_vector(DataWidth-1 downto 0);

          reset               : in std_logic;
          clk                 : in std_logic
    ); 
end entity; 


architecture rtl of ecg_classifier_clf_w_L3_b_V_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0);  
signal address1_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "110111", 1 => "110001", 2 => "110010", 3 => "110110", 
    4 => "110110", 5 => "110101", 6 => "110101", 7 => "110001", 
    8 => "111001", 9 => "110011", 10 => "110010", 11 => "110111", 
    12 => "110101", 13 => "110010", 14 => "110111", 15 => "110100", 
    16 => "110010", 17 => "110000", 18 => "110110", 19 => "110101", 
    20 => "110100", 21 => "110011", 22 => "110011", 23 => "111000", 
    24 => "110101", 25 => "110101", 26 => "110101", 27 => "111000", 
    28 => "110011", 29 => "110011", 30 => "110100", 31 => "110010", 
    32 => "110001", 33 => "110111", 34 => "110110", 35 => "110110", 
    36 => "101111", 37 => "110101", 38 => "110001", 39 => "110011", 
    40 => "110100", 41 => "110100", 42 => "110101", 43 => "111001", 
    44 => "110001", 45 => "110011", 46 => "110100", 47 => "110001", 
    48 => "110110", 49 => "110100", 50 => "110111", 51 => "110000", 
    52 => "101101", 53 => "110100", 54 => "110101", 55 => "110011", 
    56 => "101100", 57 => "110000", 58 => "110100", 59 => "111000", 
    60 => "110011", 61 => "110111", 62 => "110010", 63 => "110110", 
    64 => "110100", 65 => "110100", 66 => "110110", 67 => "110001", 
    68 => "110100", 69 => "110101", 70 => "110010", 71 => "110011", 
    72 => "110011", 73 => "110011", 74 => "110110", 75 => "110101", 
    76 => "110011", 77 => "110101", 78 => "110101", 79 => "110111", 
    80 => "111000", 81 => "110001", 82 => "110110", 83 => "110010", 
    84 => "110110", 85 => "110101", 86 => "110101", 87 => "110010", 
    88 => "110100", 89 => "110100", 90 => "110011", 91 => "110111", 
    92 => "110100", 93 => "111001", 94 => "101101", 95 => "110010", 
    96 => "110011", 97 => "110001", 98 => "110010", 99 => "110100", 
    100 => "111001", 101 => "110101", 102 => "111001", 103 => "110100", 
    104 => "110110", 105 => "110011", 106 => "110010", 107 => "110110", 
    108 => "110111", 109 => "110110", 110 => "110110", 111 => "110101", 
    112 => "110010", 113 => "110110", 114 => "110011", 115 => "110101", 
    116 => "110110", 117 => "111001", 118 => "110100", 119 => "110100", 
    120 => "110011", 121 => "110100", 122 => "110011", 123 => "110000", 
    124 => "110101", 125 => "110101", 126 => "110100", 127 => "110110");



begin 

 
memory_access_guard_0: process (address0) 
begin
      address0_tmp <= address0;
--synthesis translate_off
      if (CONV_INTEGER(address0) > AddressRange-1) then
           address0_tmp <= (others => '0');
      else 
           address0_tmp <= address0;
      end if;
--synthesis translate_on
end process;
 
memory_access_guard_1: process (address1) 
begin
      address1_tmp <= address1;
--synthesis translate_off
      if (CONV_INTEGER(address1) > AddressRange-1) then
           address1_tmp <= (others => '0');
      else 
           address1_tmp <= address1;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
 
        if (ce0 = '1') then  
            q0 <= mem0(CONV_INTEGER(address0_tmp)); 
        end if;
 
        if (ce1 = '1') then  
            q1 <= mem0(CONV_INTEGER(address1_tmp)); 
        end if;

end if;
end process;

end rtl;

