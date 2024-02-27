import { Entity,PrimaryColumn, Column } from "typeorm"

@Entity("alunos_necessidades")
export class AlunoNecessidade {

    @Column({ type: "varchar" })
    fk_aluno: string

    @Column({ type: "varchar })
    fk_necessidade: string
}