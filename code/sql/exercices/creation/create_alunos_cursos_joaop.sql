CREATE TABLE alunos_cursos (
  matricula varchar PRIMARY KEY,
  situacao varchar NOT NULL CHECK (
    situacao IN ('Matriculado','Concluído','Evadido', 'Trancado')
  ),
  fk_aluno varchar NOT NULL REFERENCES alunos (id_aluno),
  fk_curso varchar NOT NULL REFERENCES cursos (id_curso),
  -- colunas de controle
  data_criacao TIMESTAMP WITH TIME ZONE,
  data_ultima_alteracao TIMESTAMP WITH TIME ZONE,
  data_exclusao TIMESTAMP WITH TIME ZONE
);
