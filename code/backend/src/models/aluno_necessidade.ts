import { Entity, Column, ManyToOne } from "typeorm"
import { Necessidade } from "./necessidade"
import { Aluno } from "./aluno"

@Entity("alunos_necessidades")
export class AlunoNecessidade {

    @ManyToOne(() => Aluno, aluno => aluno.id_aluno)
    @Column({ type: "varchar" })
    fk_aluno: string

    @ManyToOne(() => Necessidade, necessidade => necessidade.id_necessidade)
    @Column({ type: "varchar" })
    fk_necessidade: string
}
