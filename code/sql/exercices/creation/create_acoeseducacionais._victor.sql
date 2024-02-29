CREATE TABLE acoes_educacionais(
    id_acao varchar PRIMARY KEY,
    fk_aluno varchar NOT NULL REFERENCES alunos (id_aluno),
    fk_tutor varchar NOT NULL REFERENCES tutores (id_tutor),
    descricao_acao varchar NOT NULL,
    data_solicitacao date DEFAULT CURRENT_DATE,
    data_conclusao date DEFAULT CURRENT_DATE,
    -- colunas de controle
    data_criacao TIMESTAMP WITH TIME ZONE,
    data_ultima_alteracao TIMESTAMP WITH TIME ZONE,
    data_exclusao TIMESTAMP WITH TIME ZONE
);
