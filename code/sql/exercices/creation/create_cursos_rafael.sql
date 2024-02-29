CREATE TABLE cursos (
  id_curso varchar PRIMARY KEY,
  descricao_curso varchar(255) NOT NULL,
  turno varchar(15) NOT NULL CHECK (turno IN ('Matutino', 'Vespertino', 'Noturno')),
  modalidade varchar NOT NULL CHECK (modalidade IN ('Iniciação', 'Capacitação', 'Qualificação',
    'Aperfeiçoamento', 'Técnico', 'Superior - Licenciatura', 'Superior - Bacharel', 'Superior - Tecnologia',
    'Pós Graduação Lato Sensu - Especialização', 'Pós-Graduação Stricto Sensu - Mestrado', 'Pós-Graduação Stricto Sensu - Doutorado')),
  eixo_dpto varchar NOT NULL,
  unidade_campus varchar(50) NOT NULL,
  semestral boolean DEFAULT true, 
  presencial boolean DEFAULT true
  data_criacao timestamptz
  data_ultima_alteracao timestamptz
  data_exclusao timestamptz
);