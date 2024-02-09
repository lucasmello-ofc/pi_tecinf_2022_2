CREATE TABLE acoes_educacionais(
id_acao varchar PRIMARY KEY,
fk_aluno varchar,
fk_tutor varchar,
descricao_acao varchar NOT NULL,
data_solicitacao date DEFAULT (now()),
data_conclusao date DEFAULT (now())
);

ALTER TABLE acoes_educacionais ADD FOREIGN KEY (fk_aluno) REFERENCES alunos (id_aluno);
ALTER TABLE acoes_educacionais ADD FOREIGN KEY (fk_tutor) REFERENCES tutores (id_tutor);