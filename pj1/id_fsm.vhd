----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:10:07 10/17/2018 
-- Design Name: 
-- Module Name:    id_fsm - Behavioral 
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

entity id_fsm is
    Port ( char : in  STD_LOGIC_VECTOR (7 downto 0);
           clk : in  STD_LOGIC;
           out : out  STD_LOGIC);
end id_fsm;

architecture Behavioral of id_fsm is

begin


end Behavioral;

