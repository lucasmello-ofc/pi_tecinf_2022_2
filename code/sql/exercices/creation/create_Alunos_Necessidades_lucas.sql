CREATE TABLE alunos_necessidades (
    fk_aluno VARCHAR REFERENCES alunos(id_aluno),
    fk_necessidade VARCHAR REFERENCES necessidades(id_necessidade)
);
