--Contar os cursos por eixo/dpto
SELECT * , COUNT(*) as eixo_dpto FROM cursos GROUP BY cursos.id_curso

--Contar os cursos por campus/unidade educacional
SELECT * , COUNT(*) AS unidade_campus FROM cursos GROUP BY cursos.id_curso

--Contar apenas os cursos técnicos por eixo
SELECT eixo_dpto, COUNT(*) AS count_cursos FROM cursos WHERE descricao_curso LIKE '%Tecnico%' GROUP BY cursos.id_curso


--Mostrar os cursos superiores cuja carga horária seja maior que 3 mil horas
SELECT * FROM cursos WHERE modalidade = 'Presencial' AND semestral = true;

--Mostrar os cursos técnicos que não sejam do eixo de Tecnologia da Informação
SELECT * FROM cursos WHERE modalidade = 'Presencial' AND descricao_curso NOT LIKE '%Tecnico%' AND eixo_dpto <> 'TI';
