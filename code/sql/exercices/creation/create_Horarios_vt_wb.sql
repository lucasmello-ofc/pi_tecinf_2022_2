create table horarios(
	id_horario varchar PRIMARY KEY,
	hora_inicio time NOT NULL,
	hora_fim time NOT NULL,
	dia_semana varchar(20), check ( 
		dia_semana in ('Segunda-Feira', 'Terça-Feira', 'Quarta-Feira', 
		'Quinta-Feira', 'Sexta-Feira', 'Sábado')
	),
	-- colunas de controle
  data_criacao TIMESTAMP WITH TIME ZONE,
  data_ultima_alteracao TIMESTAMP WITH TIME ZONE,
  data_exclusao TIMESTAMP WITH TIME ZONE
);
