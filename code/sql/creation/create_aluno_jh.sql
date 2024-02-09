CREATE TABLE "alunos" (
  "id" varchar UNIQUE PRIMARY KEY,
  "fk_responsavel" varchar NOT NULL references responsaveis (id_responsavel),
  "cpf_aluno" char(11) NOT NULL,
  "nome_aluno" varchar(80) NOT NULL,
  "nome_social_aluno" varchar(80),
  "email_aluno" varchar(40),
  "telefone_aluno" bigint NOT NULL,
  "data_nascimento" date,
  "genero" varchar(15) NOT NULL,
  "prioridade" char(1),
  "inicio_atendimento" date NOT NULL,
  "fim_atendimento" date
);
