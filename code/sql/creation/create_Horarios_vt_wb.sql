create table horarios(
	id_horario varchar(11) primary key,
	hora_inicio time NOT null,
	hora_fim time NOT NULL,
	dia_semana varchar(20), 
	check ( dia_semana in ('Segunda-Feira', 'Terça-Feira', 'Quarta-Feira', 'Quinta-Feira', 'Sexta-Feira', 'Sabado'))
)
