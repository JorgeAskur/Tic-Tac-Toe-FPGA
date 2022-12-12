library IEEE;
	use IEEE.STD_LOGIC_1164.all;
	use IEEE.NUMERIC_STD.ALL;

entity gato is
	port ( 
	clk : IN STD_LOGIC;
	c0: INOUT STD_LOGIC;
	datos_gumnut : IN STD_LOGIC_VECTOR(7 downto 0);
	VGA_R                 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);  -- red magnitude output to DAC
   VGA_G                 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);  -- green magnitude output to DAC
	VGA_B                 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);   -- blue magnitude output to DAC
	VGA_HS		         :	OUT	 STD_LOGIC;	-- horizontal sync pulse
   VGA_VS		         :	OUT	 STD_LOGIC;	-- vertical sync pulse 
	disp_en : OUT STD_LOGIC;
	column : OUT INTEGER;
	row    : OUT INTEGER
	);
end gato;

architecture A1 of gato is

	component vga_pll_25_175 is 
        port(
            inclk0		:	IN  STD_LOGIC := '0';  -- Input clock that gets divided (50 MHz for max10)
            c0			:	OUT STD_LOGIC          -- Output clock for vga timing (25.175 MHz)
        );
    end component;
	component vga_controller is 
	GENERIC(
		h_pulse 	:	INTEGER := 96;    	--horiztonal sync pulse width in pixels
		h_bp	 	:	INTEGER := 48;		--horiztonal back porch width in pixels
		h_pixels	:	INTEGER := 640;		--horiztonal display width in pixels
		h_fp	 	:	INTEGER := 16;		--horiztonal front porch width in pixels
		h_pol		:	STD_LOGIC := '0';		--horizontal sync pulse polarity (1 = positive, 0 = negative)
		v_pulse 	:	INTEGER := 2;			--vertical sync pulse width in rows
		v_bp	 	:	INTEGER := 33;			--vertical back porch width in rows
		v_pixels	:	INTEGER := 480;		--vertical display width in rows
		v_fp	 	:	INTEGER := 10;			--vertical front porch width in rows
		v_pol		:	STD_LOGIC := '0');	--vertical sync pulse polarity (1 = positive, 0 = negative)
		
	port(
		pixel_clk	:	IN		STD_LOGIC;	--pixel clock at frequency of VGA mode being used
		reset_n		:	IN		STD_LOGIC;	--active low asycnchronous reset
		h_sync		:	OUT	STD_LOGIC;	--horiztonal sync pulse
		v_sync		:	OUT	STD_LOGIC;	--vertical sync pulse
		disp_ena	:	OUT	STD_LOGIC;	--display enable ('1' = display time, '0' = blanking time)
		column		:	OUT	INTEGER range 0 to h_pixels-1;		--horizontal pixel coordinate
		row			:	OUT	INTEGER range 0 to v_pixels-1;		--vertical pixel coordinate
		n_blank		:	OUT	STD_LOGIC;	--direct blacking output to DAC
		n_sync		:	OUT	STD_LOGIC
	);
	end component;

	type State is (S0, S1, S2, S3, S4, S5, S6, S7, S8, S9);

	signal CurrentState, NextState: State;
	
	signal count : integer:= 1;
	signal selectx: integer := 20;
	signal selectendx: integer := 30;
	signal selecty: integer := 20;
	signal selectendy: integer := 30;
	
	signal used: STD_LOGIC_VECTOR(8 downto 0) := "000000000";
	signal player: STD_LOGIC_VECTOR(8 downto 0) := "000000000"; --0 = circle,  1 = cross
	begin
		U0	:	vga_pll_25_175 port map (inclk0 => clk, c0 => c0);
		U1	:	vga_controller port map (pixel_clk => c0, reset_n => '1', h_sync => VGA_HS, v_sync => VGA_VS, disp_ena => disp_en, column => column, row => row, n_blank => open, n_sync => open);
		
		juego : process(c0, clk, datos_gumnut, row, column, VGA_R, VGA_G, VGA_B, disp_en)
		begin
			
			if (datos_gumnut(2) = '1') then
				CurrentState <= S0;
			elsif(rising_edge(clk)) then
				count <= count + 1;
				if (count = 25000000) then
					count <= 1;
					CurrentState <= NextState;
				end if;
			end if;
		end process;
		
		FSM : process(c0, CurrentState, clk, datos_gumnut, row, column, VGA_R, VGA_G, VGA_B, disp_en)
		begin
			NextState <= CurrentState;
			
			case CurrentState is
			when S0 =>
				if (disp_en = '1') then
					VGA_R <= "0000";
					VGA_G <= "0000";
					VGA_B <= "1111";
				else 
					VGA_R <= "0000";
					VGA_G <= "0000";
					VGA_B <= "0000";
				end if;
				
				if (datos_gumnut(3) = '1') then
				--start
					NextState <= S1;
				else
					NextState <= S0;
				end if;
				
			when S1 =>
			--(0,0)
				if (disp_en = '1') then
					if (column > selectx and column < selectendx and row > selecty and row < selectendy ) then
						VGA_R <= "0000";
						VGA_G <= "1111";
						VGA_B <= "0000";
					elsif (row > 160 AND row < 170) then
						VGA_R <= "1111";
						VGA_G <= "1111";
						VGA_B <= "0000";
					elsif (row > 320 AND row < 330) then
						VGA_R <= "1111";
						VGA_G <= "1111";
						VGA_B <= "0000";
					elsif (column > 210 AND column < 220) then
						VGA_R <= "1111";
						VGA_G <= "1111";
						VGA_B <= "0000";
					elsif (column > 426 AND column < 436) then
						VGA_R <= "1111";
						VGA_G <= "1111";
						VGA_B <= "0000";
					else
						VGA_R <= "1111";
						VGA_G <= "1111";
						VGA_B <= "1111";
					end if;
				else
					VGA_R <= "0000";
					VGA_G <= "0000";
					VGA_B <= "0000";
				end if;
				
				if (datos_gumnut(4) = '1') then
				--derecha
					NextState <= S2;
				
				elsif (datos_gumnut(6) = '1') then
				--abajo
					NextState <= S4;
				else
					NextState <= S1;
				end if;
			when S2 =>
			--(0,1)
				if (disp_en = '1') then
					if (row > 160 AND row < 170) then
						VGA_R <= "1111";
						VGA_G <= "1111";
						VGA_B <= "0000";
					elsif (row > 320 AND row < 330) then
						VGA_R <= "1111";
						VGA_G <= "1111";
						VGA_B <= "0000";
					elsif (column > 210 AND column < 220) then
						VGA_R <= "1111";
						VGA_G <= "1111";
						VGA_B <= "0000";
					elsif (column > 426 AND column < 436) then
						VGA_R <= "1111";
						VGA_G <= "1111";
						VGA_B <= "0000";
					else
						VGA_R <= "1111";
						VGA_G <= "1111";
						VGA_B <= "1111";
					end if;
				else
					VGA_R <= "0000";
					VGA_G <= "0000";
					VGA_B <= "0000";
				end if;
				
				if (datos_gumnut(4) = '1') then
				--derecha
					NextState <= S3;
					
				elsif (datos_gumnut(5) = '1') then
				--izquierda
					NextState <= S1;
				
				elsif (datos_gumnut(6) = '1') then
				--abajo
					NextState <= S5;
				else
					NextState <= S2;
				end if;
				
				when others =>
					if (disp_en = '1') then
						if (row > 160 AND row < 170) then
							VGA_R <= "1111";
							VGA_G <= "1111";
							VGA_B <= "0000";
						elsif (row > 320 AND row < 330) then
							VGA_R <= "1111";
							VGA_G <= "1111";
							VGA_B <= "0000";
						elsif (column > 210 AND column < 220) then
							VGA_R <= "1111";
							VGA_G <= "1111";
							VGA_B <= "0000";
						elsif (column > 426 AND column < 436) then
							VGA_R <= "1111";
							VGA_G <= "1111";
							VGA_B <= "0000";
						else
							VGA_R <= "1111";
							VGA_G <= "1111";
							VGA_B <= "1111";
						end if;
					else
						VGA_R <= "0000";
						VGA_G <= "0000";
						VGA_B <= "0000";
				end if;
				
				if (datos_gumnut(4) = '1') then
				--derecha
					NextState <= S3;
					
				elsif (datos_gumnut(5) = '1') then
				--izquierda
					NextState <= S1;
				
				elsif (datos_gumnut(6) = '1') then
				--abajo
					NextState <= S5;
				else
					NextState <= S2;
				end if;
					
			end case;
		end process FSM;
end architecture A1;