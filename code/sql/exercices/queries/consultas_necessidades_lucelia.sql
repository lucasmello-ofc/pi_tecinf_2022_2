SELECT cid, descricao_tecnica
FROM necessidades
WHERE id_necessidades = '02232915763'

SELECT descricao_simples
FROM necessidades
WHERE id_necessidades = '12065478930'

select cid, descricao_tecnica from necessidades
select descricao_simples from necessidades

select fk_aluno, descricao_simples from necessidades left join Alunos_Necessidades on  fk_aluno = id_necessidades