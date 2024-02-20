-- Contar quantos alunos possuem cada necessidade

CREATE VIEW alunos_por_necessidade AS
SELECT n.descricao_simples AS "descrição simples da necessidade", COUNT(an.fk_aluno) AS "total de alunos"
FROM necessidades n
LEFT JOIN alunos_necessidades an ON n.id_necessidade = an.fk_necessidade
GROUP BY n.descricao_simples;

-- Contar quantas necessidades cada aluno possui

CREATE VIEW necessidades_por_aluno AS
SELECT a.nome_aluno AS "nome do aluno", COUNT(an.fk_necessidade) AS "total de necessidades"
FROM alunos a
LEFT JOIN alunos_necessidades an ON a.id_aluno = an.fk_aluno
GROUP BY a.nome_aluno;

-- Listar todos os alunos e suas respectivas necessidades

CREATE VIEW alunos_e_necessidades AS
SELECT a.nome_aluno AS "nome do aluno", n.descricao_simples AS "descrição simples da necessidade"
FROM alunos a
LEFT JOIN alunos_necessidades an ON a.id_aluno = an.fk_aluno
LEFT JOIN necessidades n ON an.fk_necessidade = n.id_necessidade;

-- Calcular a média necessidades acima da média

CREATE VIEW alunos_acima_da_media AS
SELECT a.nome_aluno AS "nome do aluno", a.prioridade, NULL AS matricula, NULL AS descricao_do_curso
FROM alunos a
JOIN (
    SELECT fk_aluno, COUNT(fk_necessidade) AS total_necessidades
    FROM alunos_necessidades
    GROUP BY fk_aluno
    HAVING COUNT(fk_necessidade) > (SELECT AVG(total_necessidades) FROM (
                                        SELECT COUNT(fk_necessidade) AS total_necessidades
                                        FROM alunos_necessidades
                                        GROUP BY fk_aluno) AS T)
) AS sub ON a.id_aluno = sub.fk_aluno;

-- Calcular a média de necessidades por aluno, agrupado pela prioridade

CREATE VIEW media_necessidades_por_prioridade AS
SELECT a.prioridade AS "nível de prioridade", AVG(qtd_necessidades) AS "média"
FROM alunos a
JOIN (
    SELECT fk_aluno, COUNT(fk_necessidade) AS qtd_necessidades
    FROM alunos_necessidades
    GROUP BY fk_aluno
) AS sub ON a.id_aluno = sub.fk_aluno
GROUP BY a.prioridade;


select * from media_necessidades_por_prioridade


select * from alunos_acima_da_media

select * from alunos_e_necessidades