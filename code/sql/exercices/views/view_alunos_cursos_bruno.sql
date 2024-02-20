--- criação ---

CREATE VIEW TotalCursosAluno AS
SELECT 
  a.cpf_aluno,
  a.nome_aluno,
  COUNT(DISTINCT ac.fk_curso) AS total_cursos
FROM alunos a
INNER JOIN alunos_cursos ac ON a.id_aluno = ac.fk_aluno
GROUP BY a.cpf_aluno, a.nome_aluno
ORDER BY total_cursos DESC, nome_aluno ASC;

CREATE VIEW  cursos_alunos_fazem AS
SELECT 
  a.cpf_aluno,
  a.nome_aluno,
  c.descricao_curso,
  ac.matricula,
  ac.situacao
FROM alunos a
INNER JOIN alunos_cursos ac ON a.id_aluno = ac.fk_aluno
INNER JOIN cursos c ON ac.fk_curso = c.id_curso
ORDER BY a.cpf_aluno, c.descricao_curso;

CREATE VIEW  calculo_media_cursos_alunos AS
SELECT 
  a.cpf_aluno,
  a.nome_aluno,
  COUNT(DISTINCT ac.fk_curso) AS quantidade_cursos
FROM alunos a
INNER JOIN alunos_cursos ac ON a.id_aluno = ac.fk_aluno
GROUP BY a.cpf_aluno, a.nome_aluno
HAVING COUNT(DISTINCT ac.fk_curso) > (
  SELECT AVG(total_cursos)
  FROM (
    SELECT 
      a.cpf_aluno,
      a.nome_aluno,
      COUNT(DISTINCT ac.fk_curso) AS total_cursos
    FROM alunos a
    INNER JOIN alunos_cursos ac ON a.id_aluno = ac.fk_aluno
    GROUP BY a.cpf_aluno, a.nome_aluno
  ) AS subquery
)
ORDER BY quantidade_cursos DESC, nome_aluno ASC;

CREATE VIEW  calculo_quant_alunos AS
SELECT 
  c.descricao_curso,
  COUNT(DISTINCT CASE ac.situacao WHEN 'Ativo' THEN ac.fk_aluno END) AS matriculados,
  COUNT(DISTINCT CASE ac.situacao WHEN 'Jubilado' THEN ac.fk_aluno END) AS evadidos,
  COUNT(DISTINCT CASE ac.situacao WHEN 'Trancado' THEN ac.fk_aluno END) AS trancados,
  COUNT(DISTINCT CASE ac.situacao WHEN 'Concluído' THEN ac.fk_aluno END) AS concluidos
FROM cursos c
LEFT JOIN alunos_cursos ac ON c.id_curso = ac.fk_curso
GROUP BY c.descricao_curso
ORDER BY c.descricao_curso;

create view matriculados_modalidade as
SELECT 
  c.modalidade,
  COUNT(DISTINCT CASE ac.situacao WHEN 'Ativo' THEN ac.fk_aluno END) AS matriculados,
  COUNT(DISTINCT CASE ac.situacao WHEN 'Jubilado' THEN ac.fk_aluno END) AS evadidos,
  COUNT(DISTINCT CASE ac.situacao WHEN 'Trancado' THEN ac.fk_aluno END) AS trancados,
  COUNT(DISTINCT CASE ac.situacao WHEN 'Concluído' THEN ac.fk_aluno END) AS concluidos
FROM cursos c
LEFT JOIN alunos_cursos ac ON c.id_curso = ac.fk_curso
GROUP BY c.modalidade
ORDER BY c.modalidade;


create view matriculados_eixo as 
SELECT 
  c.eixo_dpto,
  COUNT(DISTINCT CASE ac.situacao WHEN 'Ativo' THEN ac.fk_aluno END) AS matriculados,
  COUNT(DISTINCT CASE ac.situacao WHEN 'Jubilado' THEN ac.fk_aluno END) AS evadidos,
  COUNT(DISTINCT CASE ac.situacao WHEN 'Trancado' THEN ac.fk_aluno END) AS trancados,
  COUNT(DISTINCT CASE ac.situacao WHEN 'Concluído' THEN ac.fk_aluno END) AS concluidos
FROM cursos c
LEFT JOIN alunos_cursos ac ON c.id_curso = ac.fk_curso
GROUP BY c.eixo_dpto
ORDER BY c.eixo_dpto;


create view matriculados_turno as
SELECT 
  c.turno,
  COUNT(DISTINCT CASE ac.situacao WHEN 'Ativo' THEN ac.fk_aluno END) AS matriculados,
  COUNT(DISTINCT CASE ac.situacao WHEN 'Jubilado' THEN ac.fk_aluno END) AS evadidos,
  COUNT(DISTINCT CASE ac.situacao WHEN 'Trancado' THEN ac.fk_aluno END) AS trancados,
  COUNT(DISTINCT CASE ac.situacao WHEN 'Concluído' THEN ac.fk_aluno END) AS concluidos
FROM cursos c
LEFT JOIN alunos_cursos ac ON c.id_curso = ac.fk_curso
GROUP BY c.turno
ORDER BY c.turno;


--- visualização ---

SELECT * FROM TotalCursosAluno;

SELECT * FROM cursos_alunos_fazem

select * from calculo_media_cursos_alunos

select * from calculo_quant_alunos

select * from matriculados_modalidade

select * from matriculados_eixo

select * from matriculados_turno