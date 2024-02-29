CREATE TABLE tutores (
	id_tutor varchar PRIMARY KEY,
	cpf_tutor char(11) UNIQUE NOT NULL,
	nome_tutor varchar(100) NOT NULL,
	email_tutor varchar(50) NOT NULL,
	telefone_tutor bigint NOT NULL,
	cargo varchar NOT NULL,
	formacao varchar(50) not null
  -- colunas de controle
  data_criacao TIMESTAMP WITH TIME ZONE,
  data_ultima_alteracao TIMESTAMP WITH TIME ZONE,
  data_exclusao TIMESTAMP WITH TIME ZONE
);
