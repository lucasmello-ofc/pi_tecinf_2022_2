CREATE TABLE alunos_cursos (
  matricula varchar PRIMARY KEY,
  situacao varchar  NOT NULL,
  fk_aluno varchar NOT NULL,
  fk_curso varchar NOT NULL
);

ALTER TABLE alunos_cursos ADD FOREIGN KEY (fk_aluno) references alunos (id_aluno);
ALTER TABLE alunos_cursos ADD FOREIGN KEY (fk_curso) references cursos (id_curso);