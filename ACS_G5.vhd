library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.my_data_types.all;

entity ACS_G5 is 
port(
clk: in std_logic;
rst : in std_logic;
PM_in : in vector_array(0 To 15);
code_word : in std_logic_vector(1 downto 0);
data_out : out std_logic_vector(31 downto 0);
PM_out : out vector_array(0 To 31)
);
end entity;

architecture behavioral of ACS_G5 is 
signal PM_branches: vector_array(0 to 31);
Signal in_bits : std_logic_vector(31 downto 0);
begin
B_1:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	    
	begin
		if (rst = '1') then 
			PM_branches(0) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(0);
				in_bits(0) <= '0';
				expected := "00";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(0) <= new_PM;
				data_out(0)<= in_bits(0);
		end if;
	end process;	
B_2:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(1) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(0);
				in_bits(1) <= '1';
				expected := "11";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(1) <= new_PM;
				data_out(1)<= in_bits(1);
		end if;
	end process;
B_3:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(2) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(1);
				in_bits(2) <= '0';
				expected := "10";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(2) <= new_PM;
				data_out(2)<= in_bits(2);
		end if;
	end process;
B_4:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(3) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(1);
				in_bits(3) <= '1';
				expected := "01";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(3) <= new_PM;
				data_out(3)<= in_bits(3);
		end if;
	end process;
B_5:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(4) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(2);
				in_bits(4) <= '0';
				expected := "11";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(4) <= new_PM;
				data_out(4)<= in_bits(4);
		end if;
	end process;
B_6:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(5) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(2);
				in_bits(5) <= '1';
				expected := "00";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(5) <= new_PM;
				data_out(5)<= in_bits(5);
		end if;
	end process;
B_7:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(6) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(3);
				in_bits(6) <= '0';
				expected := "01";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(6) <= new_PM;
				data_out(6)<= in_bits(6);
		end if;
	end process;
B_8:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(7) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(3);
				in_bits(7) <= '1';
				expected := "10";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(7) <= new_PM;
				data_out(7)<= in_bits(7);
		end if;
	end process;
B_9:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(8) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(4);
				in_bits(8) <= '0';
				expected := "11";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(8) <= new_PM;
				data_out(8)<= in_bits(8);
		end if;
	end process;
B_10:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(9) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(4);
				in_bits(9) <= '1';
				expected := "00";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(9) <= new_PM;
				data_out(9)<= in_bits(9);
		end if;
	end process;
B_11:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(10) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(5);
				in_bits(10) <= '0';
				expected := "01";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(10) <= new_PM;
				data_out(10)<= in_bits(10);
		end if;
	end process;
B_12:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(11) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(5);
				in_bits(11) <= '1';
				expected := "10";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(11) <= new_PM;
				data_out(11)<= in_bits(11);
		end if;
	end process;
B_13:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(12) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(6);
				in_bits(12) <= '0';
				expected := "00";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(12) <= new_PM;
				data_out(12)<= in_bits(12);
		end if;
	end process;
B_14:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(13) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(6);
				in_bits(13) <= '1';
				expected := "11";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(13) <= new_PM;
				data_out(13)<= in_bits(13);
		end if;
	end process;
B_15:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(14) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(7);
				in_bits(14) <= '0';
				expected := "10";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(14) <= new_PM;
				data_out(14)<= in_bits(14);
		end if;
	end process;
B_16:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(15) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(7);
				in_bits(15) <= '1';
				expected := "01";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(15) <= new_PM;
				data_out(15)<= in_bits(15);
		end if;
	end process;
B_17:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(16) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(8);
				in_bits(16) <= '0';
				expected := "00";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(16) <= new_PM;
				data_out(16)<= in_bits(16);
		end if;
	end process;
B_18:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(17) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(8);
				in_bits(17) <= '1';
				expected := "11";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(17) <= new_PM;
				data_out(17)<= in_bits(17);
		end if;
	end process;
B_19:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(18) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(9);
				in_bits(18) <= '0';
				expected := "01";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(18) <= new_PM;
				data_out(18)<= in_bits(18);
		end if;
	end process;
B_20:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(19) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(9);
				in_bits(19) <= '1';
				expected := "10";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(19) <= new_PM;
				data_out(19)<= in_bits(19);
		end if;
	end process;
B_21:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(20) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(10);
				in_bits(20) <= '0';
				expected := "11";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(20) <= new_PM;
				data_out(20)<= in_bits(20);
		end if;
	end process;
B_22:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(21) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(10);
				in_bits(21) <= '1';
				expected := "00";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(21) <= new_PM;
				data_out(21)<= in_bits(21);
		end if;
	end process;
B_23:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(22) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(11);
				in_bits(22) <= '0';
				expected := "01";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(22) <= new_PM;
				data_out(22)<= in_bits(22);
		end if;
	end process;
B_24:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(23) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(11);
				in_bits(23) <= '1';
				expected := "10";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(23) <= new_PM;
				data_out(23)<= in_bits(23);
		end if;
	end process;
B_25:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(24) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(12);
				in_bits(24) <= '0';
				expected := "11";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(24) <= new_PM;
				data_out(24)<= in_bits(24);
		end if;
	end process;
B_26:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(25) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(12);
				in_bits(25) <= '1';
				expected := "00";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(25) <= new_PM;
				data_out(25)<= in_bits(25);
		end if;
	end process;
B_27:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(26) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(13);
				in_bits(26) <= '0';
				expected := "01";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(26) <= new_PM;
				data_out(26)<= in_bits(26);
		end if;
	end process;
B_28:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(27) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(13);
				in_bits(27) <= '1';
				expected := "10";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(27) <= new_PM;
				data_out(27)<= in_bits(27);
		end if;
	end process;
B_29:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(28) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(14);
				in_bits(28) <= '0';
				expected := "00";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(28) <= new_PM;
				data_out(28)<= in_bits(28);
		end if;
	end process;
B_30:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(29) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(14);
				in_bits(29) <= '1';
				expected := "11";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(29) <= new_PM;
				data_out(29)<= in_bits(29);
		end if;
	end process;
B_31:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(30) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(15);
				in_bits(30) <= '0';
				expected := "10";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(30) <= new_PM;
				data_out(30)<= in_bits(30);
		end if;
	end process;
B_32:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(31) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(15);
				in_bits(31) <= '1';
				expected := "01";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(31) <= new_PM;
				data_out(31)<= in_bits(31);
		end if;
	end process;
process(clk)
begin
	if (rst = '1') then 
			PM_out <= (others => "0000000");
	elsif (rising_edge(clk)) then 
			PM_out <= PM_branches;
	end if ;
end process;
end architecture;
