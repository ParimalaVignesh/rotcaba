-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity ecg_classifier_clf_w_L2_b_V_ROM_AUTO_1R is 
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


architecture rtl of ecg_classifier_clf_w_L2_b_V_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0);  
signal address1_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "110111", 1 => "110011", 2 => "110011", 3 => "110101", 
    4 => "110110", 5 => "110111", 6 => "110000", 7 => "110100", 
    8 => "110010", 9 => "110010", 10 => "110110", 11 => "110000", 
    12 => "110100", 13 => "101111", 14 => "110110", 15 => "111000", 
    16 => "110011", 17 => "110100", 18 => "110111", 19 => "110100", 
    20 => "110100", 21 => "110011", 22 => "110101", 23 => "110111", 
    24 => "110000", 25 => "101100", 26 => "110111", 27 => "110100", 
    28 => "110110", 29 => "110101", 30 => "110011", 31 => "101110", 
    32 => "110100", 33 => "110001", 34 => "110101", 35 => "110001", 
    36 => "110101", 37 => "110001", 38 => "110101", 39 => "110111", 
    40 => "110111", 41 => "110111", 42 => "110011", 43 => "110111", 
    44 => "110101", 45 => "110101", 46 => "110011", 47 => "110100", 
    48 => "110011", 49 => "110010", 50 => "110111", 51 => "110101", 
    52 => "110110", 53 => "110101", 54 => "110001", 55 => "110101", 
    56 => "110001", 57 => "110100", 58 => "110111", 59 => "101110", 
    60 => "110111", 61 => "110101", 62 => "101111", 63 => "111000", 
    64 => "110110", 65 => "110110", 66 => "110001", 67 => "110000", 
    68 => "110010", 69 => "110101", 70 => "111000", 71 => "110011", 
    72 => "110010", 73 => "110101", 74 => "101111", 75 => "110110", 
    76 => "101111", 77 => "110001", 78 => "110101", 79 => "110011", 
    80 => "110001", 81 => "110011", 82 => "110001", 83 => "110000", 
    84 => "110111", 85 => "110011", 86 => "110001", 87 => "110110", 
    88 => "110010", 89 => "110101", 90 => "110011", 91 => "110100", 
    92 => "110000", 93 => "110111", 94 => "110000", 95 => "110111", 
    96 => "110111", 97 => "110110", 98 => "110101", 99 => "110110", 
    100 => "110101", 101 => "110111", 102 => "111000", 103 => "110110", 
    104 => "110010", 105 => "110011", 106 => "110110", 107 => "101110", 
    108 => "110110", 109 => "110110", 110 => "110111", 111 => "110100", 
    112 => "110011", 113 => "110011", 114 => "110100", 115 => "110110", 
    116 => "110010", 117 => "110101", 118 => "110010", 119 => "110011", 
    120 => "111000", 121 => "110101", 122 => "110110", 123 => "110110", 
    124 => "110000", 125 => "110101", 126 => "110110", 127 => "110001");



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

