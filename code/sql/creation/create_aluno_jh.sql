CREATE TABLE "alunos" (
<<<<<<< HEAD
  "id_aluno" varchar UNIQUE PRIMARY KEY,
  "fk_responsavel" varchar NOT NULL,
  "cpf_aluno" char(11) unique NOT NULL,
=======
  "id_aluno" varchar PRIMARY KEY,
  "fk_responsavel" varchar NOT NULL REFERENCES responsaveis (id_responsavel),
  "cpf_aluno" char(11) NOT NULL UNIQUE,
>>>>>>> 92ccba266d4afe4babe1c317e29d91a3a3b0c64c
  "nome_aluno" varchar(80) NOT NULL,
  "nome_social_aluno" varchar(80),
  "email_aluno" varchar(40),
  "telefone_aluno" bigint NOT NULL,
  "data_nascimento" date NOT NULL,
<<<<<<< HEAD
  "genero" varchar(1) CHECK (genero in('M', 'F')),
  "prioridade" char(1) NOT NULL CHECK (prioridade in('A', 'M', 'B')),
=======
  "genero" varchar(15),
  "prioridade" char(1) NOT NULL,
>>>>>>> 92ccba266d4afe4babe1c317e29d91a3a3b0c64c
  "inicio_atendimento" date NOT NULL,
  "fim_atendimento" date
);