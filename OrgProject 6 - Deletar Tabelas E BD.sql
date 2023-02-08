/*
CREATE BY: MARIA EDUARDA PEDROSO
DATE: 01/02/2023
INSTRUCTION: Arquivo criado para Excluir as tabelas e o banco de dados
Para que funcione siga as instrucoes ou apenas execute pois a execussao precisa ser sequencial como esta no arquivo
*/

use OrgProject; --Para funcionar caso nao esteja no BD

BEGIN TRANSACTION
--------------------------EXECUTAR ESSA PARTE PARA DELETAR A TABELA ETAPASPROJETO----------------------------------------
DROP TABLE EtapasProjeto;
-------------------------------------------------------------------------------------------------------------------------

--------------------------EXECUTAR ESSA PARTE PARA DELETAR A TABELA PROJETOACESSOR---------------------------------------
DROP TABLE ProjetosAcessor;
-------------------------------------------------------------------------------------------------------------------------

-----------------------------EXECUTAR ESSA PARTE PARA DELETAR A TABELA PROJETO-------------------------------------------
DROP TABLE Projetos;
-------------------------------------------------------------------------------------------------------------------------

--------------------------EXECUTAR ESSA PARTE PARA DELETAR A TABELA CADASTROCOMPLETO-------------------------------------
DROP TABLE CadastrosCompleto;
-------------------------------------------------------------------------------------------------------------------------

-----------------------------EXECUTAR ESSA PARTE PARA DELETAR A TABELA CREDENCIAIS---------------------------------------
DROP TABLE Credenciais;
-------------------------------------------------------------------------------------------------------------------------

-------------------------------EXECUTAR ESSA PARTE PARA DELETAR A TABELA CIDADE------------------------------------------
DROP TABLE Cidades;
-------------------------------------------------------------------------------------------------------------------------

-------------------------------EXECUTAR ESSA PARTE PARA DELETAR A TABELA PLANOS------------------------------------------
DROP TABLE Planos;
-------------------------------------------------------------------------------------------------------------------------

------------------------------EXECUTAR ESSA PARTE PARA DELETAR A TABELA ESTADOS------------------------------------------
DROP TABLE Estados;
-------------------------------------------------------------------------------------------------------------------------

---------------------------EXECUTAR ESSA PARTE PARA DELETAR A TABELA DADOSINICIAIS---------------------------------------
DROP TABLE DadosIniciaisCadastros;
-------------------------------------------------------------------------------------------------------------------------
COMMIT;

--------------------------EXECUTAR ESSA PARTE PARA DELETAR O BANCO DE DADOS----------------------------------------------
--USE master ;  
--GO  
--DROP DATABASE OrgProject ;  
--GO  
-------------------------------------------------------------------------------------------------------------------------