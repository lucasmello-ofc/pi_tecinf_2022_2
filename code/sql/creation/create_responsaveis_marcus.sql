CREATE TABLE "responsaveis" (
  "id_responsavel" varchar PRIMARY KEY,
  "nome_responsavel" varchar(80) NOT NULL,
  "cpf_responsavel" varchar(11) UNIQUE NOT NULL,
  "email_responsavel" varchar NOT NULL,
  "telefone_responsavel" varchar NOT NULL
);
