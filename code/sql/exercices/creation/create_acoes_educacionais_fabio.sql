CREATE TABLE acoes_educacionais (
    id_acao varchar PRIMARY KEY,
    fk_aluno varchar NOT NULL REFERENCES alunos (id_aluno),
    fk_tutor varchar NOT NULL REFERENCES tutores (id_tutor),
    descricao_acao varchar NOT NULL,
    data_solicitacao date DEFAULT CURRENT_DATE,
    data_conclusao date DEFAULT CURRENT_DATE,
);
