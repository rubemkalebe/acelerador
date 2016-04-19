input_ALU_1A <=   a1;
input_ALU_1B <=   b1;

input_ALU_2A <= ALU_1_out when instruction2(25 downto 21) = instruction1(15 downto 11) else
                a2;

dep_2_B <=  ALU_1_out when instruction2(20 downto 16) = instruction1(15 downto 11) else
            (others => '0');


dep_3_A <=  ALU_2_out when instruction3(25 downto 21) = instruction2(15 downto 11) else
            ALU_1_out when instruction3(25 downto 21) = instruction1(15 downto 11) else
            (others => '0');

dep_3_B <=  ALU_2_out when instruction3(20 downto 16) = instruction2(15 downto 11) else
            ALU_1_out when instruction3(20 downto 16) = instruction1(15 downto 11) else
            (others => '0');

dep_4_A <=  ALU_3_out when instruction4(25 downto 21) = instruction3(15 downto 11) else
            ALU_2_out when instruction4(25 downto 21) = instruction2(15 downto 11) else
            ALU_1_out when instruction4(25 downto 21) = instruction1(15 downto 11) else
            (others => '0');

dep_4_B <=  ALU_3_out when instruction4(20 downto 16) = instruction3(15 downto 11) else
            ALU_2_out when instruction4(20 downto 16) = instruction2(15 downto 11) else
            ALU_1_out when instruction4(20 downto 16) = instruction1(15 downto 11) else
            (others => '0');

dep_5_A <=  MUL_1_HI  when instruction5(25 downto 21) = instruction4(15 downto 11) else
            MUL_1_LO  when instruction5(25 downto 21) = instruction4(10 downto 6) else
            ALU_3_out when instruction5(25 downto 21) = instruction3(15 downto 11) else
            ALU_2_out when instruction5(25 downto 21) = instruction2(15 downto 11) else
            ALU_1_out when instruction5(25 downto 21) = instruction1(15 downto 11) else
            (others => '0');

dep_5_B <=  MUL_1_HI  when instruction5(20 downto 16) = instruction4(15 downto 11) else
            MUL_1_LO  when instruction5(20 downto 16) = instruction4(10 downto 6) else
            ALU_3_out when instruction5(20 downto 16) = instruction3(15 downto 11) else
            ALU_2_out when instruction5(20 downto 16) = instruction2(15 downto 11) else
            ALU_1_out when instruction5(20 downto 16) = instruction1(15 downto 11) else
            (others => '0');
