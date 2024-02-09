SELECT nome_aluno, responsavel
FROM alunos
LEFT JOIN responsaveis ON alunos.responsavel = responsaveis.id_responsavel
order by nome_aluno;