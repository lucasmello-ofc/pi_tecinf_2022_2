import { Entity,PrimaryColumn, Column } from "typeorm"
import { Aluno } from "./alunos"
import { Necessidade } from "./necessidade"

@Entity("alunos_necessidades")
export class AlunoNecessidade {

    @PrimaryColumn({
        type: "varchar"
    })
    fk_aluno: string

    @PrimaryColumn({
        type: "varchar"
    })
    fk_necessidade: string
}