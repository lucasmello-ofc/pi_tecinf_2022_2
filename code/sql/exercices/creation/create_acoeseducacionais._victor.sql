CREATE TABLE acoes_educacionais(
    id_acao varchar PRIMARY KEY,
    fk_aluno varchar NOT NULL,
    fk_tutor varchar NOT NULL,
    descricao_acao varchar NOT NULL,
    data_solicitacao date DEFAULT CURRENT_DATE,
    data_conclusao date DEFAULT CURRENT_DATE,
    --colunas de controle
    data_criacao timestampz,
    data_ultima_alteracao timestampz,
    data_exclusao timestampz
);

ALTER TABLE acoes_educacionais ADD FOREIGN KEY (fk_aluno) REFERENCES alunos (id_aluno);
ALTER TABLE acoes_educacionais ADD FOREIGN KEY (fk_tutor) REFERENCES tutores (id_tutor);