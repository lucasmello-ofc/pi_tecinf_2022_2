import { Entity,PrimaryColumn, Column } from "typeorm"

@Entity("alunos_necessidades")
export class AlunoNecessidade {

    @PrimaryColumn({ type: "varchar" })
    fk_aluno: string

    @PrimaryColumn({ type: "varchar" })
    fk_necessidade: string
}