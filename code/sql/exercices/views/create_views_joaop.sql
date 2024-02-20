
--Conte quantos cursos cada aluno faz. O Result Set deve conter as colunas ‘cpf do aluno’, ‘nome do aluno’ e ‘total de cursos’ ordenado pelo total, do maior para o menor, e em seguida pelo nome alfabeticamente.

CREATE VIEW total_cursos AS
SELECT
a.cpf_aluno, a.nome_aluno, COUNT(ac.fk_curso) AS total_de_cursos
FROM alunos_cursos ac
INNER JOIN alunos a ON a.id_aluno = ac.fk_aluno
GROUP BY a.cpf_aluno, a.nome_aluno
ORDER BY total_de_cursos DESC, a.nome_aluno ;

select * from total_cursos

--Liste os cursos que cada aluno faz. O Result Set deve conter as colunas ‘cpf’, ‘nome do aluno’, ‘descrição do curso’, ‘matricula’, e ‘situação’.

CREATE VIEW lista_cursos AS
SELECT a.nome_aluno AS "nome do aluno",
c.descricao_curso AS "descrição do curso",
ac.matricula,
ac.situacao
FROM alunos_cursos ac
JOIN alunos a ON a.id_aluno = ac.fk_aluno
JOIN cursos c ON c.id_curso = ac.fk_curso;

select * from lista_cursos
--Calcule a média de cursos realizados por aluno e mostre apenas os alunos que fazem mais cursos do que a média. O Result Set deve conter as colunas ‘cpf’, ‘nome do aluno’ e ‘quantidade de cursos’.

CREATE VIEW alunos_acima_da_media AS
SELECT a.nome_aluno AS "nome do aluno", c.descricao_curso AS "descrição do curso"
FROM alunos_cursos ac
JOIN alunos a ON a.id_aluno = ac.fk_aluno
JOIN cursos c ON c.id_curso = ac.fk_curso
GROUP BY a.id_aluno, c.id_curso
HAVING COUNT(ac.matricula) > (SELECT AVG(total_cursos) FROM (SELECT COUNT(ac.matricula)
AS total_cursos FROM alunos_cursos ac GROUP BY ac.fk_aluno) AS media_alunos);


--Calcule quantos alunos estão matriculados, evadidos, trancados ou concluídos em cada curso.

CREATE VIEW matriculas_alunos AS
SELECT
c.descricao_curso,
COUNT(CASE WHEN ac.situacao = 'Matriculado' THEN 1 END) AS Matriculados,
COUNT(CASE WHEN ac.situacao = 'Evadido' THEN 1 END) AS Evadidos,
COUNT(CASE WHEN ac.situacao = 'Trancado' THEN 1 END) AS Trancados,
COUNT(CASE WHEN ac.situacao = 'Concluído' THEN 1 END) AS Concluidos
FROM alunos_cursos ac
INNER JOIN cursos c ON ac.fk_curso = c.id_curso
GROUP BY c.id_curso, c.descricao_curso;

--Conte os alunos matriculados, evadidos, trancados e concluídos:
--por modalidade

CREATE VIEW matriculas_modalidade AS
SELECT
c.modalidade,
COUNT(CASE WHEN ac.situacao = 'Matriculado' THEN 1 END) AS Matriculados,
COUNT(CASE WHEN ac.situacao = 'Evadido' THEN 1 END) AS Evadidos,
COUNT(CASE WHEN ac.situacao = 'Trancado' THEN 1 END) AS Trancados,
COUNT(CASE WHEN ac.situacao = 'Concluído' THEN 1 END) AS Concluidos
FROM alunos_cursos ac
INNER JOIN cursos c ON ac.fk_curso = c.id_curso
GROUP BY c.id_curso, c.modalidade;

--por eixo

CREATE VIEW matriculas_eixo AS
SELECT
c.eixo_dpto,
COUNT(CASE WHEN ac.situacao = 'Matriculado' THEN 1 END) AS Matriculados,
COUNT(CASE WHEN ac.situacao = 'Evadido' THEN 1 END) AS Evadidos,
COUNT(CASE WHEN ac.situacao = 'Trancado' THEN 1 END) AS Trancados,
COUNT(CASE WHEN ac.situacao = 'Concluído' THEN 1 END) AS Concluidos
FROM alunos_cursos ac
INNER JOIN cursos c ON ac.fk_curso = c.id_curso
GROUP BY c.id_curso, c.eixo_dpto;

--por turno
 
CREATE VIEW matriculas_turno AS
SELECT
c.turno,
COUNT(CASE WHEN ac.situacao = 'Matriculado' THEN 1 END) AS Matriculados,
COUNT(CASE WHEN ac.situacao = 'Evadido' THEN 1 END) AS Evadidos,
COUNT(CASE WHEN ac.situacao = 'Trancado' THEN 1 END) AS Trancados,
COUNT(CASE WHEN ac.situacao = 'Concluído' THEN 1 END) AS Concluidos
FROM alunos_cursos ac
INNER JOIN cursos c ON ac.fk_curso = c.id_curso
GROUP BY c.id_curso, c.turno;