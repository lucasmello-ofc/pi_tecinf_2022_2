import { Entity, Column, PrimaryColumn, ManyToOne, JoinColumn } from "typeorm"
import { Aluno } from "./Aluno"
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

    @ManyToOne(() => Aluno, aluno => aluno)
    @JoinColumn({ name: "fk_aluno" })
    aluno: Aluno

    @ManyToOne(() => Necessidade, necessidade => necessidade)
    @JoinColumn({ name: "fk_necessidade" })
    necessidade: Necessidade
}
