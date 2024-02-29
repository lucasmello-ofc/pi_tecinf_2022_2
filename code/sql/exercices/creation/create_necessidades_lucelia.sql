CREATE TABLE necessidades (
    id_necessidade VARCHAR PRIMARY KEY,
    cid VARCHAR(15) NOT NULL, 
    descricao_simples VARCHAR(255) NOT NULL,
    descricao_tecnica VARCHAR NOT NULL,
    -- colunas de controle
    data_criacao TIMESTAMP WITH TIME ZONE,
    data_ultima_alteracao TIMESTAMP WITH TIME ZONE,
    data_exclusao TIMESTAMP WITH TIME ZONE
);
