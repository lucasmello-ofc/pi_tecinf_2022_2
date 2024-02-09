CREATE TABLE "alunos" (
  "id_aluno" varchar PRIMARY KEY,
  "fk_responsavel" varchar NOT NULL,
  "cpf_aluno" char(11) NOT NULL UNIQUE, -- prof. acrescentou UNIQUE
  "nome_aluno" varchar(80) NOT NULL,
  "nome_social_aluno" varchar(80),
  "email_aluno" varchar(40),
  "telefone_aluno" bigint NOT NULL,
  "data_nacimento" date NOT NULL, -- prof. acrescentou NOT NULL
  "genero" char(1) -- prof. mudou tipo e removeu NOT NULL ,
  "prioridade" char(1) NOT NULL -- prof. acrescentou NOT NULL,
  "inicio_atendimento" date NOT NULL,
  "fim_atendimento" date
);

alter table alunos  add foreign key (fk_responsaveis)   references responsaveis (id_responsavel);  
