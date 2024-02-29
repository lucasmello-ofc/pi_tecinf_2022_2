CREATE TABLE alunos (
  id_aluno varchar PRIMARY KEY,
  fk_responsavel varchar NOT  NULL references responsaveis (id_responsavel),
  cpf_aluno char(11) NOT NULL UNIQUE,
  nome_aluno varchar(80) NOT NULL,
  nome_social_aluno varchar(80),
  email_aluno varchar(40),
  telefone_aluno bigint NOT NULL,
  data_nascimento date NOT NULL,
  genero char(1) CHECK (genero in ( 'M' , 'F' )),
  prioridade char(1) NOT NULL CHECK (prioridade in ( 'A', 'M' , 'B')),
  inicio_atendimento date NOT NULL DEFAULT CURRENT_DATE,
  fim_atendimento date,
  -- colunas de controle
  data_criacao TIMESTAMP WITH TIME ZONE,
  data_ultima_alteracao TIMESTAMP WITH TIME ZONE,
  data_exclusao TIMESTAMP WITH TIME ZONE
);


