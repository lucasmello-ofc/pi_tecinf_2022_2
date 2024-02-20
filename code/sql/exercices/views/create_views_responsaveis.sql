--No Result Set o nome do responsável e a quantidade de alunos,
--Do maior para o menor e em ordem alfabética pelo nome do responsável.

CREATE VIEW contar_responsaveis AS
SELECT nome_responsavel, COUNT(*) AS contar
FROM alunos
LEFT JOIN responsaveis ON alunos.fk_responsavel = responsaveis.id_responsavel
group by nome_responsavel
order by nome_responsavel asc, contar desc;

--O Result Set deverá conter as seguintes colunas: ‘nome do responsável’ e ‘nome do aluno’.

CREATE VIEW listar_responsaveis AS
SELECT nome_responsavel, nome_aluno
FROM alunos
LEFT JOIN responsaveis ON alunos.fk_responsavel = responsaveis.id_responsavel
order by nome_responsavel;

--O Result Set deverá conter o nome do responsável e a quantidade de alunos.

CREATE VIEW qtde_media AS
SELECT contar_responsaveis.nome_responsavel, contar
FROM contar_responsaveis
LEFT JOIN responsaveis ON contar_responsaveis.nome_responsavel = responsaveis.id_responsavel
WHERE contar > (SELECT AVG(contar) AS media FROM contar_responsaveis);