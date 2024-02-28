import { Entity,PrimaryColumn, Column, ManyToMany, ManyToOne } from "typeorm"
import { Necessidade } from "./necessidade"
import { Aluno } from "./aluno"

@Entity("alunos_necessidades")
export class AlunoNecessidade {

    @ManyToOne(() => Aluno, aluno => aluno.id_aluno)
    @PrimaryColumn({ type: "varchar" })
    fk_aluno: string

    @ManyToOne(() => Necessidade, necessidade => necessidade.id_necessidade)
    @PrimaryColumn({ type: "varchar" })
    fk_necessidade: string
}