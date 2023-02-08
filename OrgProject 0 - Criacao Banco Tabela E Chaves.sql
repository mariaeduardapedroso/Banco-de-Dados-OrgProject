/*
CRIAÇÃO POR: MARIA EDUARDA PEDROSO
DATA: 31/01/2023
INSTRUÇÃO: Arquivo criado para criação de um banco de dados e suas tabelas
Para que funcione siga as instruções pois precisa ser executado em suas partes
*/

-------------------------CRIAR BD---------------------------------------------
--create database OrgProject;
------------------------------------------------------------------------------

-------------------------CRIAR TABELAS----------------------------------------
use OrgProject;

BEGIN TRANSACTION
	CREATE TABLE Estados(                                          --Criar tabela
		IdEstado VARCHAR(2) NOT NULL PRIMARY KEY,                     --Criar Primary Keys Sem Identity
		Estado varchar(50) NOT NULL,                               --Coluna
		EstadoAtivo BINARY NOT NULL,                               --Coluna
		DataCriacao DATETIME NOT NULL,                             --Coluna
		UsuarioCriacao VARCHAR(50) NOT NULL,                       --Coluna
		DataAlteracao DATETIME NOT NULL,                           --Coluna
		UsuarioAlteracao VARCHAR(50) NOT NULL,                     --Coluna
	)

	CREATE TABLE DadosIniciaisCadastros(                                    --Criar tabela
		IdUsuario INT NOT NULL IDENTITY(1,1) PRIMARY KEY,          --Criar Primary Keys
		NomeCompleto VARCHAR(1000) NOT NULL,                       --Coluna
		Email VARCHAR(100) NULL,                                   --Coluna
		UsuarioAtivo BINARY NOT NULL,                              --Coluna
		DataCriacao DATETIME NOT NULL,                             --Coluna
		UsuarioCriacao VARCHAR(50) NOT NULL,                       --Coluna
		DataAlteracao DATETIME NOT NULL,                           --Coluna
		UsuarioAlteracao VARCHAR(50) NOT NULL,                     --Coluna
	)
	
	CREATE TABLE Planos(                                           --Criar tabela
		IdPlano TINYINT NOT NULL PRIMARY KEY,                      --Criar Primary Keys Sem Identity
		Plano VARCHAR(50) NOT NULL,                                --Coluna
		Valor MONEY NOT NULL,                                      --Coluna
		PlanoAtivo BINARY NOT NULL,                                --Coluna
		DataCriacao DATETIME NOT NULL,                             --Coluna
		UsuarioCriacao VARCHAR(50) NOT NULL,                       --Coluna
		DataAlteracao DATETIME NOT NULL,                           --Coluna
		UsuarioAlteracao VARCHAR(50) NOT NULL,                     --Coluna
	)

	CREATE TABLE Cidades(                                           --Criar tabela
		IdCidade INT NOT NULL PRIMARY KEY,                         --Criar Primary Keys Sem Identity
		IdEstado  VARCHAR(2) NOT NULL            ,                     --Coluna de Relacionamento com Estado
		Cidade VARCHAR(50) NOT NULL,                               --Coluna
		CidadeAtiva BINARY NOT NULL,                               --Coluna
		DataCriacao DATETIME NOT NULL,                             --Coluna
		UsuarioCriacao VARCHAR(50) NOT NULL,                       --Coluna
		DataAlteracao DATETIME NOT NULL,                           --Coluna
		UsuarioAlteracao VARCHAR(50) NOT NULL,                     --Coluna
	)

	CREATE TABLE Credenciais(                                      --Criar tabela
		IdCredencial INT NOT NULL IDENTITY(1,1) PRIMARY KEY,       --Criar Primary Keys
		IdUsuario INT NOT NULL,                                    --Coluna Relacao Com Dados Iniciais
		Usuario VARCHAR(50) NOT NULL,                              --Coluna
		Senha VARCHAR(35) NOT NULL,                                --Coluna
		UsuarioAtivo BINARY NOT NULL,                              --Coluna
		DataCriacao DATETIME NOT NULL,                             --Coluna
		UsuarioCriacao VARCHAR(50) NOT NULL,                       --Coluna
		DataAlteracao DATETIME NOT NULL,                           --Coluna
		UsuarioAlteracao VARCHAR(50) NOT NULL,                     --Coluna
		)

	CREATE TABLE CadastrosCompleto(                                 --Criar tabela
		IdCadastroCompleto INT NOT NULL IDENTITY(1,1) PRIMARY KEY, --Criar Primary Keys
		IdUsuario INT NOT NULL,                                    --Coluna Relacao Com Dados Iniciais
		IdCidade INT,                                              --Coluna Relacao Com Cidade
		IdPlano TINYINT,                                           --Coluna Relacao Com Plano
		Faculdade VARCHAR(100),                                    --Coluna
		Descricao VARCHAR(500),                                    --Coluna
		Empresa VARCHAR(100),                                      --Coluna
		Cargo VARCHAR(100),                                        --Coluna
		CadastroAtivo BINARY NOT NULL,                             --Coluna
		DataCriacao DATETIME NOT NULL,                             --Coluna
		UsuarioCriacao VARCHAR(50) NOT NULL,                       --Coluna
		DataAlteracao DATETIME NOT NULL,                           --Coluna
		UsuarioAlteracao VARCHAR(50) NOT NULL,                     --Coluna
	)

	CREATE TABLE Projetos(                                          --Criar tabela
		IdProjeto INT NOT NULL IDENTITY(1,1) PRIMARY KEY,          --Criar Primary Keys
		IdDono INT NOT NULL,                                       --Coluna Relacao Com Dados Iniciais
		IdGestor INT NOT NULL,                                     --Coluna Relacao Com Dados Iniciais
		Valor MONEY NOT NULL,                                        --Coluna
		NPS TINYINT,                                               --Coluna
		DataConclusao DATE,                                        --Coluna
		ProjetoAtivo BINARY NOT NULL,                              --Coluna
		DataCriacao DATETIME NOT NULL,                             --Coluna
		UsuarioCriacao VARCHAR(50) NOT NULL,                       --Coluna
		DataAlteracao DATETIME NOT NULL,                           --Coluna
		UsuarioAlteracao VARCHAR(50) NOT NULL,                     --Coluna
	)

	CREATE TABLE ProjetosAcessor(                                   --Criar tabela
		IdProjetoAcessor INT NOT NULL IDENTITY(1,1) PRIMARY KEY,   --Criar Primary Keys
		IdProjeto INT NOT NULL,                                    --Coluna Relacao Com Projeto
		IdAcessor INT NOT NULL,                                    --Coluna Relacao Com Dados Iniciais
		ProjetoAcessorAtivo BINARY NOT NULL,                       --Coluna
		DataCriacao DATETIME NOT NULL,                             --Coluna
		UsuarioCriacao VARCHAR(50) NOT NULL,                       --Coluna
		DataAlteracao DATETIME NOT NULL,                           --Coluna
		UsuarioAlteracao VARCHAR(50) NOT NULL,                     --Coluna
	)
 
	CREATE TABLE EtapasProjeto(                                    --Criar tabela
		IdEtapasProjeto INT NOT NULL IDENTITY(1,1) PRIMARY KEY,    --Criar Primary Keys
		IdProjetoAcessor INT NOT NULL,                             --Coluna Relacao Com ProjetoAcessor
		NPS TINYINT,                                               --Coluna
		Oque VARCHAR(100) NOT NULL,                                --Coluna
		Porque VARCHAR(500) NOT NULL,                              --Coluna
		Quando DATE NOT NULL,                                      --Coluna
		Onde VARCHAR(100) NOT NULL,                                --Coluna
		Como VARCHAR(500) NOT NULL,                                --Coluna
		DataConclusao DATE,                                        --Coluna
		EtapaProjetoAtiva BINARY NOT NULL,                         --Coluna
		DataCriacao DATETIME NOT NULL,                             --Coluna
		UsuarioCriacao VARCHAR(50) NOT NULL,                       --Coluna
		DataAlteracao DATETIME NOT NULL,                           --Coluna
		UsuarioAlteracao VARCHAR(50) NOT NULL,                     --Coluna
	)
COMMIT;
------------------------------------------------------------------------------

--------------------------CRIAR AS FOREIGN KEYS-------------------------------
BEGIN TRANSACTION
--TABELA CIDADES--
ALTER TABLE Cidades           --Criar na tabela Cidade uma chave estranjeira para Estado
	  
	  ADD CONSTRAINT FKIdCidadeEstado FOREIGN KEY (IdEstado)
      REFERENCES Estados (IdEstado)	 

; --Fim

--TABELA CREDENCIAIS--
ALTER TABLE Credenciais      --Criar na tabela Credenciais uma chave estranjeira para Dados Iniciais
	  
	  ADD CONSTRAINT FKIdUsuarioDadosIniciaisCadastros FOREIGN KEY (IdUsuario)
      REFERENCES DadosIniciaisCadastros (IdUsuario)	 

; --Fim

--TABELA CADASTROSCOMPLETO--
ALTER TABLE CadastrosCompleto      --Criar na tabela CadastroCompleto uma chave estranjeira para Dados Iniciais
	  
	  ADD CONSTRAINT FKIdUsuarioCadastroCompleto FOREIGN KEY (IdUsuario)
      REFERENCES DadosIniciaisCadastros (IdUsuario)	 

; --Fim

ALTER TABLE CadastrosCompleto      --Criar na tabela CadastroCompleto uma chave estranjeira para Cidade
	  
	  ADD CONSTRAINT FKIdCidadeCadastroCompleto FOREIGN KEY (IdCidade)
      REFERENCES Cidades (IdCidade)	 

; --Fim

ALTER TABLE CadastrosCompleto      --Criar na tabela CadastroCompleto uma chave estranjeira para Cidade
	  
	  ADD CONSTRAINT FKIdPlanoCadastroCompleto FOREIGN KEY (IdPlano)
      REFERENCES Planos (IdPlano)	 

; --Fim

--TABELA PROJETOS--
ALTER TABLE Projetos      --Criar na tabela Projeto uma chave estranjeira para Dados Iniciais
	  
	  ADD CONSTRAINT FKIdDonoProjeto FOREIGN KEY (IdDono)
      REFERENCES DadosIniciaisCadastros (IdUsuario)	 

; --Fim

ALTER TABLE Projetos      --Criar na tabela Projeto uma chave estranjeira para Dados Iniciais
	  
	  ADD CONSTRAINT FKIdGestorProjeto FOREIGN KEY (IdGestor)
      REFERENCES DadosIniciaisCadastros (IdUsuario)	 

; --Fim

--TABELA PROJETOSACESSOR--
ALTER TABLE ProjetosAcessor      --Criar na tabela ProjetoAcessor uma chave estranjeira para Projetos
	  
	  ADD CONSTRAINT FKIdProjetoAcesorProjeto FOREIGN KEY (IdProjeto)
      REFERENCES Projetos (IdProjeto)	 

; --Fim

ALTER TABLE ProjetosAcessor      --Criar na tabela ProjetoAcessor uma chave estranjeira para Dados Iniciais
	  
	  ADD CONSTRAINT FKIdProjetoAcesorDadosIniciaisCadastros FOREIGN KEY (IdAcessor)
      REFERENCES DadosIniciaisCadastros (IdUsuario)	 

; --Fim

--TABELA ETAPASPROJETO--
ALTER TABLE EtapasProjeto      --Criar na tabela EtapasProjeto uma chave estranjeira para ProjetoAcessor
	  
	  ADD CONSTRAINT FKIdEtapasProjetoProjetoAcesor FOREIGN KEY (IdProjetoAcessor)
      REFERENCES ProjetosAcessor (IdProjetoAcessor)	 

; --Fim

COMMIT;