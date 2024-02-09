CREATE TABLE necessidades (
    id_necessidade VARCHAR PRIMARY KEY,
    cid VARCHAR(15) NOT NULL, 
    descricao_simples VARCHAR(255) NOT NULL,
    descricao_tecnica VARCHAR NOT NULL
);