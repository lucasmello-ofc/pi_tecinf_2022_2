CREATE TABLE responsaveis (
  id_responsavel varchar PRIMARY KEY,
  nome_responsavel varchar(80) NOT NULL,
  cpf_responsavel char(11) UNIQUE NOT NULL,
  email_responsavel varchar(40) NOT NULL,
  telefone_responsavel bigint NOT NULL,
  -- colunas de controle
  data_criacao TIMESTAMP WITH TIME ZONE,
  data_ultima_alteracao TIMESTAMP WITH TIME ZONE,
  data_exclusao TIMESTAMP WITH TIME ZONE
);
