CREATE TABLE "alunos" (
  "id_aluno" varchar UNIQUE PRIMARY KEY,
  "fk_responsavel" varchar NOT  NULL references responsaveis (id_responsavel),
  "cpf_aluno" char(11) NOT NULL UNIQUE,
  "nome_aluno" varchar(80) NOT NULL,
  "nome_social_aluno" varchar(80),
  "email_aluno" varchar(40),
  "telefone_aluno" bigint NOT NULL,
  "data_nascimento" date NOT NULL,
  "genero" char(1)   check (genero in ( 'M' , 'f' )) ,
  "prioridade" char(1) NOT NULL    check (prioridade in ( 'A', 'M' ,  'B'  )),
  "inicio_atendimento" date NOT NULL,
  "fim_atendimento" date
);


