----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/26/2024 01:04:33 AM
-- Design Name: 
-- Module Name: count - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity count is
    Port ( Clock : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Counter_output : out STD_LOGIC_VECTOR (3 downto 0));
end count;

architecture Behavioral of count is
signal count: std_logic_vector (3 downto 0)
begin
 
Process(Clock, Reset)
    begin
        if Reset='1' then
            count <= "0000";
        elsif Clock'event and Clock = '1' then
            count <= count + 1;
            end if;
    end process;
    
    
    Counter_output <= count;  

end Behavioral;
