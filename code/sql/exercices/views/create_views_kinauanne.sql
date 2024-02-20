create view horarios_tutores as

select nome_tutor, hora_inicio, hora_fim
from tutores
left join Tutores_Horarios on id_tutor = fk_tutor 
left join horarios on id_horario = fk_horario

create view dia_tutores as
select dia_semana, nome_tutor ,count(cpf_tutor)
from horarios
left join Tutores_Horarios on id_horario = fk_horario
left join tutores on id_tutor = fk_tutor
group by nome_tutor, dia_semana
order by nome_tutor,dia_semana


create view lista_tutores as
select dia_semana, nome_tutor 
from horarios
left join Tutores_Horarios on id_horario = fk_horario
left join tutores on id_tutor = fk_tutor
group by nome_tutor, dia_semana
order by nome_tutor,dia_semana

create view lista_horarios as
select nome_tutor, hora_inicio, hora_fim, dia_semana
from tutores
left join Tutores_Horarios on id_tutor = fk_tutor
left join horarios on id_tutor = fk_tutor
order by nome_tutor

create view turnom_tutores as
select count(*) as matutino
from horarios
where hora_inicio >= '08:00:00' and hora_fim <= '12:00:00'

create view turnov_tutores as
select count(*) as vespertino
from horarios 
where hora_inicio >= '12:00:00' and hora_fim <= '22:00:00'

create view turnon_tutores as
select count(*) as noturno
from horarios
where hora_inicio >= '18:00:00' and hora_fim <= '22:00:00'

