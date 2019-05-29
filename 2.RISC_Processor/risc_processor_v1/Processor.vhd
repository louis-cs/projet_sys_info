----------------------------------------------------------------------------------
-- Company downto
-- Engineer:
--
-- Create Date:    13:46:17 04/19/2019
-- Design Name:
-- Module Name:    Processor - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

-- Utilisation de notre librairie
library work;
use work.Processor_Constants.all;

entity Processor is
	port( CLK : in STD_LOGIC;
			RST : in STD_LOGIC);
--			num_inst : STD_LOGIC_VECTOR(15 downto 0));
end Processor;

architecture struct of Processor is

	component Superviseur is
    port ( CK : in STD_LOGIC;
			  P1_in_OP : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           P1_in_A : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           P1_in_B : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
			  P1_in_C : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
			  P1_out_OP : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           P1_out_A : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           P1_out_B : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
			  P1_out_C : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
			  P2_in_OP : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           P2_in_A : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           P2_in_B : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
			  P2_in_C : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
			  P2_out_OP : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           P2_out_A : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           P2_out_B : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
			  P2_out_C : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
			  P3_in_OP : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           P3_in_A : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           P3_in_B : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
			  P3_out_OP : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           P3_out_A : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           P3_out_B : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
			  ALEA : out STD_LOGIC);
	end component;

  component Pipeline
    port ( CK		  : in   STD_LOGIC;
           OP_in  : in   STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
  		     A_in   : in   STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           B_in   : in   STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           C_in   : in   STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           OP_out : out  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           A_out  : out  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           B_out  : out  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           C_out  : out  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0));
  end component;

  component Multiplexeur
	 generic ( etage : Natural := 0);
    port ( OP     : in  STD_LOGIC_VECTOR(FORMAT_INST-1 downto 0);
           B      : in  STD_LOGIC_VECTOR(FORMAT_INST-1 downto 0);
			  val_B  : in  STD_LOGIC_VECTOR(FORMAT_INST-1 downto 0);
           output : out STD_LOGIC_VECTOR(FORMAT_INST-1 downto 0));
  end component;

  component ControlUnit is
    port ( OP     : in  STD_LOGIC_VECTOR(FORMAT_INST-1 downto 0);
           output : out STD_LOGIC_VECTOR(3 downto 0));
	end component;

  component RegistersBank
    port ( CK   : in   STD_LOGIC;
           RST  : in   STD_LOGIC;
			  W    : in   STD_LOGIC;
			  at_A : in   STD_LOGIC_VECTOR (NBIT_NUM_REGISTRES-1 downto 0);
           at_B : in   STD_LOGIC_VECTOR (NBIT_NUM_REGISTRES-1 downto 0);
           at_W : in   STD_LOGIC_VECTOR (NBIT_NUM_REGISTRES-1 downto 0);
           DATA : in   STD_LOGIC_VECTOR (TAILLE_REGISTRES-1 downto 0);
           QA   : out  STD_LOGIC_VECTOR (TAILLE_REGISTRES-1 downto 0);
           QB   : out  STD_LOGIC_VECTOR (TAILLE_REGISTRES-1 downto 0));
  end component;

  component ALU
    port ( Ctrl_ALU : in  STD_LOGIC_VECTOR (2 downto 0);
           A        : in  STD_LOGIC_VECTOR (TAILLE_REGISTRES-1 downto 0);
           B        : in  STD_LOGIC_VECTOR (TAILLE_REGISTRES-1 downto 0);
           S        : out  STD_LOGIC_VECTOR (TAILLE_REGISTRES-1 downto 0);
           FLAGS    : out  STD_LOGIC_VECTOR (4 downto 0));
  end component;

  component DataMemory
    generic(TAILLE_ADDR: NATURAL := 8;
          TAILLE_DATA: NATURAL := 8);
    port (    CK       : in STD_LOGIC;
			  RST      : in STD_LOGIC;
			  RW       : in STD_LOGIC;
			  addresse : in STD_LOGIC_VECTOR (TAILLE_ADDR-1 downto 0);
           INDATA   : in STD_LOGIC_VECTOR (TAILLE_DATA-1 downto 0);
           OUTDATA  : out STD_LOGIC_VECTOR (TAILLE_DATA-1 downto 0));
  end component;

  component instr_memory
  	generic(
		LEN_SEL: natural := 16;
		LEN_INSTR: natural := 32
	);
	port(
		sel : in STD_LOGIC_VECTOR(LEN_SEL-1 downto 0);
		q   : out STD_LOGIC_VECTOR(LEN_INSTR-1 downto 0));
  end component;

  -- Déclaration des signaux

--  signal CLK : STD_LOGIC;
  signal aleas : STD_LOGIC;
  signal num_inst : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
  signal instruction : STD_LOGIC_VECTOR(4*FORMAT_INST-1 downto 0);
  signal instruction_sans_aleas : STD_LOGIC_VECTOR(4*FORMAT_INST-1 downto 0);

  signal LI_DI_out : STD_LOGIC_VECTOR(4*FORMAT_INST-1 downto 0);
  signal DI_EX_out : STD_LOGIC_VECTOR(4*FORMAT_INST-1 downto 0);
  signal EX_MEM_out : STD_LOGIC_VECTOR(3*FORMAT_INST-1 downto 0);
  signal MEM_ER_out : STD_LOGIC_VECTOR(3*FORMAT_INST-1 downto 0);

--  signal num_W : STD_LOGIC_VECTOR (NBIT_NUM_REGISTRES-1 downto 0);
--  signal W : STD_LOGIC;
--  signal DATA : STD_LOGIC_VECTOR (TAILLE_REGISTRES-1 downto 0);
  signal RST_BR : STD_LOGIC := '0';
  signal BR_out_A : STD_LOGIC_VECTOR (TAILLE_REGISTRES-1 downto 0);
  signal BR_out_B : STD_LOGIC_VECTOR (TAILLE_REGISTRES-1 downto 0);

  signal Mux_DI_out : STD_LOGIC_VECTOR (TAILLE_REGISTRES-1 downto 0);
  signal Mux_EX_out : STD_LOGIC_VECTOR (TAILLE_REGISTRES-1 downto 0);
  signal Mux_MEM1_out: STD_LOGIC_VECTOR (TAILLE_REGISTRES-1 downto 0);
  signal Mux_MEM2_out: STD_LOGIC_VECTOR (TAILLE_REGISTRES-1 downto 0);

  signal LC_ER_out : STD_LOGIC_VECTOR (3 downto 0);
  signal LC_EX_out : STD_LOGIC_VECTOR (3 downto 0);
  signal LC_MEM_out : STD_LOGIC_VECTOR (3 downto 0);

--  signal Ctrl_ALU : STD_LOGIC_VECTOR (2 downto 0);
  signal NOZC : STD_LOGIC_VECTOR (4 downto 0);
  signal ALU_out : STD_LOGIC_VECTOR (TAILLE_REGISTRES-1 downto 0);

  signal RST_DM : STD_LOGIC;
--  signal RW : STD_LOGIC;
  signal DM_out : STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);

  signal zero_signal : STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);

  begin
  Memoire_Inst: instr_memory port map(num_inst, instruction);
  Gestion_Aleas: Superviseur port map(CLK,
												  instruction(4*FORMAT_INST-1 downto 3*FORMAT_INST),
												  instruction(3*FORMAT_INST-1 downto 2*FORMAT_INST),
												  instruction(2*FORMAT_INST-1 downto FORMAT_INST),
												  instruction(FORMAT_INST-1 downto 0),
												  LI_DI_out(4*FORMAT_INST-1 downto 3*FORMAT_INST),
												  LI_DI_out(3*FORMAT_INST-1 downto 2*FORMAT_INST),
												  LI_DI_out(2*FORMAT_INST-1 downto FORMAT_INST),
												  LI_DI_out(FORMAT_INST-1 downto 0),
												  LI_DI_out(4*FORMAT_INST-1 downto 3*FORMAT_INST),
												  LI_DI_out(3*FORMAT_INST-1 downto 2*FORMAT_INST),
												  Mux_DI_out,
												  BR_out_B,
												  DI_EX_out(4*FORMAT_INST-1 downto 3*FORMAT_INST),
									           DI_EX_out(3*FORMAT_INST-1 downto 2*FORMAT_INST),
												  DI_EX_out(2*FORMAT_INST-1 downto FORMAT_INST),
												  DI_EX_out(FORMAT_INST-1 downto 0),
												  DI_EX_out(4*FORMAT_INST-1 downto 3*FORMAT_INST),
									           DI_EX_out(3*FORMAT_INST-1 downto 2*FORMAT_INST),
									           Mux_EX_out,
												  EX_MEM_out(3*FORMAT_INST-1 downto 2*FORMAT_INST),
												  EX_MEM_out(2*FORMAT_INST-1 downto FORMAT_INST),
												  EX_MEM_out(FORMAT_INST-1 downto 0),
												  aleas);
		 
  LI_DI: Pipeline port map(CLK,
									instruction_sans_aleas(4*FORMAT_INST-1 downto 3*FORMAT_INST),
									instruction_sans_aleas(3*FORMAT_INST-1 downto 2*FORMAT_INST),
									instruction_sans_aleas(2*FORMAT_INST-1 downto FORMAT_INST),
									instruction_sans_aleas(FORMAT_INST-1 downto 0),
									LI_DI_out(4*FORMAT_INST-1 downto 3*FORMAT_INST),
									LI_DI_out(3*FORMAT_INST-1 downto 2*FORMAT_INST),
									LI_DI_out(2*FORMAT_INST-1 downto FORMAT_INST),
									LI_DI_out(FORMAT_INST-1 downto 0));
  Banc_Registres: RegistersBank port map( CLK,
														RST_BR, --RST
														LC_ER_out(0), --W
														LI_DI_out(2*FORMAT_INST-FORMAT_INST/2-1 downto FORMAT_INST), --@A
													   LI_DI_out(FORMAT_INST/2-1 downto 0),								 --@B
														MEM_ER_out(2*FORMAT_INST-FORMAT_INST/2-1 downto FORMAT_INST),--@W
														MEM_ER_out(FORMAT_INST-1 downto 0),									 --DATA
														BR_out_A,
														BR_out_B);
  Mux_DI: Multiplexeur generic map(1)
							  port map(LI_DI_out(4*FORMAT_INST-1 downto 3*FORMAT_INST),
										  LI_DI_out(2*FORMAT_INST-1 downto FORMAT_INST), --B
										  BR_out_A, --[RB]
										  Mux_DI_out);
  DI_EX: Pipeline port map(CLK,
									LI_DI_out(4*FORMAT_INST-1 downto 3*FORMAT_INST),
									LI_DI_out(3*FORMAT_INST-1 downto 2*FORMAT_INST),
                           Mux_DI_out,
									BR_out_B,
									DI_EX_out(4*FORMAT_INST-1 downto 3*FORMAT_INST),
									DI_EX_out(3*FORMAT_INST-1 downto 2*FORMAT_INST),
									DI_EX_out(2*FORMAT_INST-1 downto FORMAT_INST),
									DI_EX_out(FORMAT_INST-1 downto 0));
  LC_EX: ControlUnit port map(DI_EX_out(4*FORMAT_INST-1 downto 3*FORMAT_INST),
										 LC_EX_out);
  UAL: ALU port map(LC_EX_out(2 downto 0),
							DI_EX_out(2*FORMAT_INST-1 downto FORMAT_INST),
							DI_EX_out(FORMAT_INST-1 downto 0),
							ALU_out,
							NOZC);
  Mux_EX: Multiplexeur generic map(2)
							  port map(DI_EX_out(4*FORMAT_INST-1 downto 3*FORMAT_INST), --op
										  DI_EX_out(2*FORMAT_INST-1 downto FORMAT_INST), --B
										  ALU_out, --sortie ALU
										  Mux_EX_out);
  EX_MEM: Pipeline port map(CLK,
									 DI_EX_out(4*FORMAT_INST-1 downto 3*FORMAT_INST),
									 DI_EX_out(3*FORMAT_INST-1 downto 2*FORMAT_INST),
									 Mux_EX_out,
									 zero_signal, --port pas utilisé
									 EX_MEM_out(3*FORMAT_INST-1 downto 2*FORMAT_INST),
									 EX_MEM_out(2*FORMAT_INST-1 downto FORMAT_INST),
									 EX_MEM_out(FORMAT_INST-1 downto 0),
									 open);
  LC_MEM: ControlUnit port map(EX_MEM_out(3*FORMAT_INST-1 downto 2*FORMAT_INST),
										 LC_MEM_out);
  Mux_MEM1: Multiplexeur generic map(3)
								 port map(EX_MEM_out(3*FORMAT_INST-1 downto 2*FORMAT_INST),--op
										  EX_MEM_out(2*FORMAT_INST-1 downto FORMAT_INST),--A
										  EX_MEM_out(FORMAT_INST-1 downto 0), --B
										  Mux_MEM1_out);
  Memoire_Donnees: DataMemory port map(CLK,
													RST_DM, --RST
													LC_MEM_out(3), --RW
													Mux_MEM1_out, --addr
													EX_MEM_out(FORMAT_INST-1 downto 0), --in
													DM_out);
  Mux_MEM2: Multiplexeur generic map(4)
								 port map(EX_MEM_out(3*FORMAT_INST-1 downto 2*FORMAT_INST),--op
										  EX_MEM_out(FORMAT_INST-1 downto 0), --B
										  DM_out, --Data out
										  Mux_MEM2_out);
  MEM_ER: Pipeline port map(CLK,
									 EX_MEM_out(3*FORMAT_INST-1 downto 2*FORMAT_INST),
									 EX_MEM_out(2*FORMAT_INST-1 downto FORMAT_INST),
									 Mux_MEM2_out,
									 zero_signal, --port pas utilisé
									 MEM_ER_out(3*FORMAT_INST-1 downto 2*FORMAT_INST),
									 MEM_ER_out(2*FORMAT_INST-1 downto FORMAT_INST),
									 MEM_ER_out(FORMAT_INST-1 downto 0),
									 open);
	LC_ER: ControlUnit port map(MEM_ER_out(3*FORMAT_INST-1 downto 2*FORMAT_INST),
										 LC_ER_out);
	process
	begin
		--attend un front montant sur CLK
		wait until CLK' event and CLK = '1';
		--initialisation du banc de registres
		--initialisation de la mémoire de données
		--initialisation du signal zero
		--initialisation du compteur d'instruction
		if RST = '0' then
			zero_signal <= (others => '0');
			RST_BR <= '0';
			RST_DM <= '0';
			num_inst <= (others => '0');
		elsif RST = '1' then
			RST_BR <= '1';
			RST_DM <= '1';
		if aleas = '0' then
			num_inst <= num_inst + 1;
		end if;
--			if aleas = '1' then
--				instruction_sans_aleas <= (others => '0'); --NOP
----				instruction <= (others => '0'); --NOP
--			else
--				instruction_sans_aleas <= instruction;
--				num_inst <= num_inst + 1;
--			end if;
		end if;
	end process;
	instruction_sans_aleas <= (others => '0') when aleas = '1' else
									   instruction;

end struct;
