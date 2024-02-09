create table horarios(
	id_horario varchar(11) primary key,
<<<<<<< HEAD
	hora_inicio time NOT null,
	hora_fim time NOT NULL,
	dia_semana varchar(20), 
	check ( dia_semana in ('Segunda-Feira', 'Terça-Feira', 'Quarta-Feira', 'Quinta-Feira', 'Sexta-Feira', 'Sabado'))
)
=======
	hora_inicio time NOT NULL,
	hora_fim time NOT NULL,
	dia_semana varchar(20)
)
>>>>>>> 92ccba266d4afe4babe1c317e29d91a3a3b0c64c
