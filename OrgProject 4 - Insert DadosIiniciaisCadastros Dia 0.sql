/*
CREATE BY: MARIA EDUARDA PEDROSO
DATE: 08/02/2023
INSTRUCTION: Arquivo criado para Insercao de dados em suas tabela DadosIniciaisCadastros
planilha disponibilizada no link abaixo e adicionar os dados l?, copiar e colar no local destacado abaixo
Para que funcione Basta executar
Link: https://docs.google.com/spreadsheets/d/18unIA2JoEbayfEStJ2knrLE_qzQH1a4vYP6wlkucS7Y/edit?usp=sharing
*/

use OrgProject; --Para funcionar caso nao esteja no BD

BEGIN TRANSACTION
--------------------------------------------------LOCAL PARA COLAR OS DADOS-----------------------------------------------------------------

INSERT INTO DadosIniciaisCadastros (NomeCompleto, Email, UsuarioAtivo, DataCriacao, UsuarioCriacao, DataAlteracao, UsuarioAlteracao ) VALUES ( 'Maria Eduarda Pedroso', 'maria@eu.com', 1, GETDATE(), 'maria.pedroso', GETDATE(), 'maria.pedroso' )

------------------------------------------------FIM LOCAL PARA COLAR OS DADOS---------------------------------------------------------------
COMMIT;

-----------------------------------------------------VER TABELA ATUALIZADA------------------------------------------------------------------

SELECT * FROM DadosIniciaisCadastros;

--------------------------------------------------------------------------------------------------------------------------------------------
