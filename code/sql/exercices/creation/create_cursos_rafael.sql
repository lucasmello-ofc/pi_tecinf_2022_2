CREATE TABLE cursos (
  id_curso varchar PRIMARY KEY,
  descricao_curso varchar(255) NOT NULL,
  turno varchar(15) NOT NULL CHECK (turno IN ('Matutino', 'Vespertino', 'Noturno')),
  modalidade varchar(255) NOT NULL CHECK (modalidade IN ('Iniciação', 'Capacitação', 'Qualificação',
    'Aperfeiçoamento', 'Técnico', 'Superior - Licenciatura', 'Superior - Bacharel', 'Superior - Tecnologia',
    'Pós Graduação Lato Sensu - Especialização', 'Pós-Graduação Stricto Sensu - Mestrado', 'Pós-Graduação Stricto Sensu - Doutorado')),
  eixo_dpto(255) varchar NOT NULL,
  unidade_campus(255) varchar NOT NULL,
  semestral boolean DEFAULT true, 
  presencial boolean DEFAULT true,
  -- colunas de controle
  data_criacao TIMESTAMP WITH TIME ZONE,
  data_ultima_alteracao TIMESTAMP WITH TIME ZONE,
  data_exclusao TIMESTAMP WITH TIME ZONE
);
