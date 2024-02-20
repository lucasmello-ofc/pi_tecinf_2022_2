CREATE VIEW contagem_acoes_aluno AS
SELECT
  cpf_aluno,
  nome_aluno,
  COUNT(id_acao) AS total_acoes
FROM alunos a
INNER JOIN acoes_educacionais ae ON fk_aluno = id_aluno
GROUP BY cpf_aluno, nome_aluno
ORDER BY nome_aluno ASC;
SELECT *
FROM contagem_acoes_aluno

CREATE VIEW contagem_acoes_tutor AS
SELECT
	nome_tutor,
	COUNT(id_acao) AS total_acoes
FROM tutores t
INNER JOIN acoes_educacionais ae ON fk_tutor = id_tutor
GROUP BY nome_tutor
ORDER BY nome_tutor ASC
SELECT * 
from contagem_acoes_tutor

CREATE VIEW lista_todas_acoes AS
SELECT
  data_solicitacao AS data_acao,
  descricao_acao,
  cpf_aluno,
  nome_aluno,
  nome_tutor
FROM acoes_educacionais ae
INNER JOIN alunos a ON fk_aluno = id_aluno
INNER JOIN tutores t ON fk_tutor = id_tutor
ORDER BY data_solicitacao DESC;
SELECT *
FROM lista_todas_acoes

CREATE VIEW lista_acoes_concluidas AS
SELECT
  data_solicitacao AS data_acao,
  descricao_acao,
  cpf_aluno,
  nome_aluno,
  nome_tutor
FROM acoes_educacionais ae
INNER JOIN alunos a ON fk_aluno = id_aluno
INNER JOIN tutores t ON fk_tutor = id_tutor
WHERE data_conclusao IS NOT NULL
ORDER BY data_solicitacao DESC;
SELECT *
FROM lista_acoes_concluidas

CREATE VIEW alunos_acima_media AS
WITH media_acoes AS (
  SELECT AVG(total_acoes) AS media_acoes
  FROM contagem_acoes_aluno
)
SELECT
  cpf_aluno,
  nome_aluno,
  total_acoes
FROM contagem_acoes_aluno a
INNER JOIN media_acoes m ON media_acoes < total_acoes
ORDER BY total_acoes DESC;
SELECT *
FROM alunos_acima_media

CREATE VIEW tutores_acima_media AS
WITH media_acoes AS (
  SELECT AVG(total_acoes) AS media_acoes
  FROM contagem_acoes_tutor
)
SELECT
  t.nome_tutor,
  total_acoes
FROM contagem_acoes_tutor t
INNER JOIN media_acoes m ON m.media_acoes < total_acoes
ORDER BY total_acoes DESC;
SELECT *
FROM tutores_acima_media
