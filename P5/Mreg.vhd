----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:17:20 07/03/2019 
-- Design Name: 
-- Module Name:    Mreg - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mreg is
    Port ( Mreg_str_M_i : in  STD_LOGIC_VECTOR (31 downto 0);
           Mreg_pc4_M_i : in  STD_LOGIC_VECTOR (31 downto 0);
           Mreg_alo_M_i : in  STD_LOGIC_VECTOR (31 downto 0);
           Mreg_rtd_M_i : in  STD_LOGIC_VECTOR (31 downto 0));
end Mreg;

architecture Behavioral of Mreg is

begin


end Behavioral;

