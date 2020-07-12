----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:32:07 07/04/2019 
-- Design Name: 
-- Module Name:    MUXCTRL - Behavioral 
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

entity MUXCTRL is
    Port ( lui : in  STD_LOGIC;
           jr : in  STD_LOGIC;
           D2G : in  STD_LOGIC;
           GRF_A3_sel : out  STD_LOGIC_VECTOR (1 downto 0);
           GRF_WD_sel : out  STD_LOGIC_VECTOR (1 downto 0));
end MUXCTRL;

architecture Behavioral of MUXCTRL is

begin


end Behavioral;

