CREATE TABLE alunos_cursos (
  matricula varchar PRIMARY KEY,
  situacao varchar  NOT NULL,
  fk_aluno varchar NOT NULL REFERENCES alunos (id_aluno),
  fk_curso varchar NOT NULL REFERENCES cursos (id_curso);
);
