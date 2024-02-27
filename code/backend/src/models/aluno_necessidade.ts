import { Entity,PrimaryColumn, Column } from "typeorm"
import { Aluno } from "./alunos"
import { Necessidade } from "./necessidade"

@Entity("alunos_necessidades")
export class AlunoNecessidade {

    @Column({
        type: "varchar",
        nullable: false
    })
    fk_aluno: string

    @Column({
        type: "varchar",
        nullable: false
    })
    fk_necessidade: string
}
