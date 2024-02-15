create table alunos_cursos (
	matricula varchar primary key,
	situacao varchar not null,
	fk_aluno varchar not null,
	fk_curso varchar not null,
	foreign key (fk_aluno) references alunos(id_aluno),
	foreign key (fk_curso) references cursos(id_curso)
);