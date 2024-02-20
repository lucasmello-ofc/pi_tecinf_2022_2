CREATE VIEW horarios_por_tutor AS
SELECT th.fk_tutor AS "nome do tutor", COUNT(th.fk_horario) AS "total de horários"
FROM tutores_horarios th
GROUP BY th.fk_tutor;

CREATE VIEW total_horarios_por_tutor AS
SELECT t.nome_tutor AS "nome do tutor", COUNT(th.fk_horario) AS "total de horários"
FROM tutores t
LEFT JOIN tutores_horarios th ON t.id_tutor = th.fk_tutor
GROUP BY t.nome_tutor;

CREATE VIEW tutores_por_dia_semana AS
SELECT h.dia_semana AS "dia da semana", COUNT(th.fk_tutor) AS "quantidade de tutores"
FROM horarios h
LEFT JOIN tutores_horarios th ON h.id_horario = th.fk_horario
GROUP BY h.dia_semana;

CREATE VIEW tutores_e_dias_semana AS
SELECT h.dia_semana AS "dia da semana", t.nome_tutor AS "nome do tutor"
FROM horarios h
LEFT JOIN tutores_horarios th ON h.id_horario = th.fk_horario
LEFT JOIN tutores t ON th.fk_tutor = t.id_tutor
ORDER BY h.dia_semana, t.nome_tutor;

CREATE VIEW horarios_de_atendimento_por_tutor AS
SELECT t.nome_tutor AS "nome do tutor", STRING_AGG(h.hora_inicio || ' - ' || h.hora_fim, ', ') AS "horários de atendimento"
FROM tutores t
JOIN tutores_horarios th ON t.id_tutor = th.fk_tutor
JOIN horarios h ON th.fk_horario = h.id_horario
GROUP BY t.nome_tutor
ORDER BY t.nome_tutor;

CREATE VIEW tutores_por_turno AS
SELECT 
    CASE 
        WHEN EXTRACT(HOUR FROM a.hora_inicio) >= 8 AND EXTRACT(HOUR FROM a.hora_inicio) < 12 THEN 'Matutino'
        WHEN EXTRACT(HOUR FROM a.hora_inicio) >= 12 AND EXTRACT(HOUR FROM a.hora_inicio) < 18 THEN 'Vespertino'
        WHEN EXTRACT(HOUR FROM a.hora_inicio) >= 18 AND EXTRACT(HOUR FROM a.hora_inicio) < 22 THEN 'Noturno'
    END AS "turno",
    COUNT(DISTINCT th.fk_tutor) AS "quantidade de tutores"
FROM horarios a
JOIN tutores_horarios th ON a.id_horario = th.fk_horario
GROUP BY "turno";


select * from tutores_por_turno
select * from horarios_de_atendimento_por_tutor
select * from tutores_e_dias_semana
select * from tutores_por_dia_semana
select * from total_horarios_por_tutor
select * from horarios_por_tutor