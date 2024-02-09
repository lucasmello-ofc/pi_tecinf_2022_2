CREATE TABLE "alunos" (
  "id_alunos" varchar UNIQUE PRIMARY KEY,
   "responsavel" varchar NOT NULL,
  "cpf_aluno" char(11) NOT NULL,
  "nome_aluno" varchar(80) NOT NULL,
  "nome_social_aluno" varchar(80),
  "email_aluno" varchar(40),
  "telefone_aluno" bigint NOT NULL,
  "data_nacimento" date,
  "genero" varchar(15) NOT NULL,
  "prioridade" char(1),
  "inicio_atendimento" date NOT NULL,
  "fim_atendimento" date
);



alter table alunos  add foreign key (fk_responsaveis)   references responsaveis (id_responsavel);  
