--CRIE E SALVE AS CONSULTAS A SEGUIR COMO VISUALIZAÇÕES (VIEWS). UTILIZE, SE NECESSÁRIO, JOINS E SUBCONSULTAS (SUBQUERIES).

--Conte quantas ações foram realizadas para cada aluno. O Result Set deve conter as colunas ‘cpf’, ‘nome do aluno’ e ‘total de ações’, ordenadas alfabeticamente pelo nome do aluno.

CREATE VIEW contagem_acoes_aluno AS
SELECT
  cpf_aluno,
  nome_aluno,
  COUNT(id_acao) AS total_acoes
FROM alunos a
INNER JOIN acoes_educacionais ae ON fk_aluno = id_aluno
GROUP BY cpf_aluno, nome_aluno
ORDER BY nome_aluno ASC;

SELECT*
FROM contagem_acoes_aluno
-----------------------------
--Conte quantas ações foram realizadas por cada tutor. O Result Set deve conter as colunas ‘nome do tutor’ e ‘total de ações’, ordenado pelo total de ações do maior para o menor.
CREATE VIEW contagem_acoes_tutor AS
SELECT
	nome_tutor,
	COUNT(id_acao) AS total_acoes
FROM tutores t
INNER JOIN acoes_educacionais ae ON fk_tutor = id_tutor
GROUP BY nome_tutor
ORDER BY nome_tutor ASC

SELECT*
FROM contagem_acoes_tutor
-----------------------------
--Liste todas as ações e ordene pela data de solicitação, da mais recente para a mais antiga. O Result Set deve conter as colunas ‘data da ação’, ‘descrição da ação’, ‘cpf do aluno’, ‘nome do aluno’, e ‘nome do tutor’.
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

SELECT*
FROM lista_todas_acoes
--Faça a mesma coisa que na questão anterior, porém considerando apenas as ações concluídas, isto é, cujo campo ‘data de conclusão’ não esteja em branco.
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

SELECT*
FROM lista_acoes_concluidas
------------------------------------------
--Calcule a média de ações realizadas por aluno e liste todos os alunos que tenham quantidade de ações realizadas acima da média. O Result Set deve conter as colunas ‘cpf’, ‘nome do aluno’ e ‘total de ações’, ordenado pelo total.
CREATE VIEW alunos_acima_media AS
SELECT
  a.cpf_aluno,
  a.nome_aluno,
  a.total_acoes
FROM contagem_acoes_aluno a
INNER JOIN (
  SELECT AVG(total_acoes) AS media_acoes
  FROM contagem_acoes_aluno
) m ON m.media_acoes < a.total_acoes
ORDER BY a.total_acoes DESC;

SELECT*
FROM alunos_acima_media
------------------------------------------
--Calcule a média de ações realizadas por tutor e liste todos os tutores que tenham quantidade de ações realizadas acima da média. O Result Set deve conter as colunas ‘nome do tutor’ e ‘total de ações’, ordenado pelo total.
CREATE VIEW tutores_acima_media AS
SELECT
  t.nome_tutor,
  total_acoes
FROM contagem_acoes_tutor t
WHERE total_acoes > (
  SELECT AVG(total_acoes)
  FROM contagem_acoes_tutor
)
ORDER BY total_acoes DESC;

SELECT *
FROM tutores_acima_media;