CREATE TABLE Alunos_Necessidades (
    fk_aluno VARCHAR(10) NOT NULL,
    fk_necessidade VARCHAR(10) NOT NULL,
    FOREIGN KEY (fk_aluno) REFERENCES Alunos(id),
    FOREIGN KEY (fk_necessidade) REFERENCES Necessidades(id)
);
