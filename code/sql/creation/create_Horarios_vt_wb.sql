create table Horarios(
	id_horario varchar(11) primary key,
	hora_inicio time NOT NULL,
	hora_fim time NOT NULL,
	dia_semana varchar(20)
)