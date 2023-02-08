/*
CREATE BY: MARIA EDUARDA PEDROSO
DATE: 01/02/2023
INSTRUCTION: Arquivo criado para Insercao de dados em suas tabela Estados
planilha disponibilizada no link abaixo e adicionar os dados lá, copiar e colar no local destacado abaixo
Para que funcione Basta executar
Link: https://docs.google.com/spreadsheets/d/18unIA2JoEbayfEStJ2knrLE_qzQH1a4vYP6wlkucS7Y/edit?usp=sharing
*/

use OrgProject; --Para funcionar caso nao esteja no BD

BEGIN TRANSACTION
--------------------------------------------------LOCAL PARA COLAR OS DADOS-----------------------------------------------------------------

INSERT INTO Estados ( IdEstado, Estado, EstadoAtivo, DataCriacao, UsuarioCriacao, DataAlteracao, UsuarioAlteracao ) VALUES ( 'RO', 'Rondônia', 1, GETDATE(), 'maria.pedroso', GETDATE(), 'maria.pedroso' )
INSERT INTO Estados ( IdEstado, Estado, EstadoAtivo, DataCriacao, UsuarioCriacao, DataAlteracao, UsuarioAlteracao ) VALUES ( 'AC', 'Acre', 1, GETDATE(), 'maria.pedroso', GETDATE(), 'maria.pedroso' )
INSERT INTO Estados ( IdEstado, Estado, EstadoAtivo, DataCriacao, UsuarioCriacao, DataAlteracao, UsuarioAlteracao ) VALUES ( 'AM', 'Amazonas', 1, GETDATE(), 'maria.pedroso', GETDATE(), 'maria.pedroso' )
INSERT INTO Estados ( IdEstado, Estado, EstadoAtivo, DataCriacao, UsuarioCriacao, DataAlteracao, UsuarioAlteracao ) VALUES ( 'RR', 'Roraima', 1, GETDATE(), 'maria.pedroso', GETDATE(), 'maria.pedroso' )
INSERT INTO Estados ( IdEstado, Estado, EstadoAtivo, DataCriacao, UsuarioCriacao, DataAlteracao, UsuarioAlteracao ) VALUES ( 'PA', 'Pará', 1, GETDATE(), 'maria.pedroso', GETDATE(), 'maria.pedroso' )
INSERT INTO Estados ( IdEstado, Estado, EstadoAtivo, DataCriacao, UsuarioCriacao, DataAlteracao, UsuarioAlteracao ) VALUES ( 'AP', 'Amapá', 1, GETDATE(), 'maria.pedroso', GETDATE(), 'maria.pedroso' )
INSERT INTO Estados ( IdEstado, Estado, EstadoAtivo, DataCriacao, UsuarioCriacao, DataAlteracao, UsuarioAlteracao ) VALUES ( 'TO', 'Tocantins', 1, GETDATE(), 'maria.pedroso', GETDATE(), 'maria.pedroso' )
INSERT INTO Estados ( IdEstado, Estado, EstadoAtivo, DataCriacao, UsuarioCriacao, DataAlteracao, UsuarioAlteracao ) VALUES ( 'MA', 'Maranhão', 1, GETDATE(), 'maria.pedroso', GETDATE(), 'maria.pedroso' )
INSERT INTO Estados ( IdEstado, Estado, EstadoAtivo, DataCriacao, UsuarioCriacao, DataAlteracao, UsuarioAlteracao ) VALUES ( 'PI', 'Piauí', 1, GETDATE(), 'maria.pedroso', GETDATE(), 'maria.pedroso' )
INSERT INTO Estados ( IdEstado, Estado, EstadoAtivo, DataCriacao, UsuarioCriacao, DataAlteracao, UsuarioAlteracao ) VALUES ( 'CE', 'Ceará', 1, GETDATE(), 'maria.pedroso', GETDATE(), 'maria.pedroso' )
INSERT INTO Estados ( IdEstado, Estado, EstadoAtivo, DataCriacao, UsuarioCriacao, DataAlteracao, UsuarioAlteracao ) VALUES ( 'RN', 'Rio Grande do Norte', 1, GETDATE(), 'maria.pedroso', GETDATE(), 'maria.pedroso' )
INSERT INTO Estados ( IdEstado, Estado, EstadoAtivo, DataCriacao, UsuarioCriacao, DataAlteracao, UsuarioAlteracao ) VALUES ( 'PB', 'Paraíba', 1, GETDATE(), 'maria.pedroso', GETDATE(), 'maria.pedroso' )
INSERT INTO Estados ( IdEstado, Estado, EstadoAtivo, DataCriacao, UsuarioCriacao, DataAlteracao, UsuarioAlteracao ) VALUES ( 'PE', 'Pernambuco', 1, GETDATE(), 'maria.pedroso', GETDATE(), 'maria.pedroso' )
INSERT INTO Estados ( IdEstado, Estado, EstadoAtivo, DataCriacao, UsuarioCriacao, DataAlteracao, UsuarioAlteracao ) VALUES ( 'AL', 'Alagoas', 1, GETDATE(), 'maria.pedroso', GETDATE(), 'maria.pedroso' )
INSERT INTO Estados ( IdEstado, Estado, EstadoAtivo, DataCriacao, UsuarioCriacao, DataAlteracao, UsuarioAlteracao ) VALUES ( 'SE', 'Sergipe', 1, GETDATE(), 'maria.pedroso', GETDATE(), 'maria.pedroso' )
INSERT INTO Estados ( IdEstado, Estado, EstadoAtivo, DataCriacao, UsuarioCriacao, DataAlteracao, UsuarioAlteracao ) VALUES ( 'BA', 'Bahia', 1, GETDATE(), 'maria.pedroso', GETDATE(), 'maria.pedroso' )
INSERT INTO Estados ( IdEstado, Estado, EstadoAtivo, DataCriacao, UsuarioCriacao, DataAlteracao, UsuarioAlteracao ) VALUES ( 'MG', 'Minas Gerais', 1, GETDATE(), 'maria.pedroso', GETDATE(), 'maria.pedroso' )
INSERT INTO Estados ( IdEstado, Estado, EstadoAtivo, DataCriacao, UsuarioCriacao, DataAlteracao, UsuarioAlteracao ) VALUES ( 'ES', 'Espírito Santo', 1, GETDATE(), 'maria.pedroso', GETDATE(), 'maria.pedroso' )
INSERT INTO Estados ( IdEstado, Estado, EstadoAtivo, DataCriacao, UsuarioCriacao, DataAlteracao, UsuarioAlteracao ) VALUES ( 'RJ', 'Rio de Janeiro', 1, GETDATE(), 'maria.pedroso', GETDATE(), 'maria.pedroso' )
INSERT INTO Estados ( IdEstado, Estado, EstadoAtivo, DataCriacao, UsuarioCriacao, DataAlteracao, UsuarioAlteracao ) VALUES ( 'SP', 'São Paulo', 1, GETDATE(), 'maria.pedroso', GETDATE(), 'maria.pedroso' )
INSERT INTO Estados ( IdEstado, Estado, EstadoAtivo, DataCriacao, UsuarioCriacao, DataAlteracao, UsuarioAlteracao ) VALUES ( 'PR', 'Paraná', 1, GETDATE(), 'maria.pedroso', GETDATE(), 'maria.pedroso' )
INSERT INTO Estados ( IdEstado, Estado, EstadoAtivo, DataCriacao, UsuarioCriacao, DataAlteracao, UsuarioAlteracao ) VALUES ( 'SC', 'Santa Catarina', 1, GETDATE(), 'maria.pedroso', GETDATE(), 'maria.pedroso' )
INSERT INTO Estados ( IdEstado, Estado, EstadoAtivo, DataCriacao, UsuarioCriacao, DataAlteracao, UsuarioAlteracao ) VALUES ( 'RS', 'Rio Grande do Sul', 1, GETDATE(), 'maria.pedroso', GETDATE(), 'maria.pedroso' )
INSERT INTO Estados ( IdEstado, Estado, EstadoAtivo, DataCriacao, UsuarioCriacao, DataAlteracao, UsuarioAlteracao ) VALUES ( 'MS', 'Mato Grosso do Sul', 1, GETDATE(), 'maria.pedroso', GETDATE(), 'maria.pedroso' )
INSERT INTO Estados ( IdEstado, Estado, EstadoAtivo, DataCriacao, UsuarioCriacao, DataAlteracao, UsuarioAlteracao ) VALUES ( 'MT', 'Mato Grosso', 1, GETDATE(), 'maria.pedroso', GETDATE(), 'maria.pedroso' )
INSERT INTO Estados ( IdEstado, Estado, EstadoAtivo, DataCriacao, UsuarioCriacao, DataAlteracao, UsuarioAlteracao ) VALUES ( 'GO', 'Goiás', 1, GETDATE(), 'maria.pedroso', GETDATE(), 'maria.pedroso' )
INSERT INTO Estados ( IdEstado, Estado, EstadoAtivo, DataCriacao, UsuarioCriacao, DataAlteracao, UsuarioAlteracao ) VALUES ( 'DF', 'Distrito Federal', 1, GETDATE(), 'maria.pedroso', GETDATE(), 'maria.pedroso' )

------------------------------------------------FIM LOCAL PARA COLAR OS DADOS---------------------------------------------------------------
COMMIT;

-----------------------------------------------------VER TABELA ATUALIZADA------------------------------------------------------------------

SELECT * FROM Estados;

--------------------------------------------------------------------------------------------------------------------------------------------