import { Entity, PrimaryColumn, Column, ManyToOne } from "typeorm"
import { v4 as uuid } from "uuid"
import { Aluno } from "./aluno"
import { Tutor } from "./tutor"
@Entity("acoes_educacionais")
export class AcaoEducacional {
    @PrimaryColumn({ type: "varchar" })
    id_acao: string
    @ManyToOne(()=>Aluno, aluno => aluno.id_aluno)
    @Column({ type: "varchar", nullable: false })
    fk_aluno: string
    @ManyToOne(()=>Tutor, tutor => tutor.id_tutor)
    @Column({ type: "varchar", nullable: false })
    fk_tutor: string
    @Column({ type: "varchar", length: 255, nullable: false })
    descricao_acao: string
    @Column({ type: "date", nullable: false })
    data_solicitacao: Date
    @Column({ type: "date" })
    data_conclusao: Date

    @Column({ type: "timestamptz", nullable: false})
    dataCriacao: Date
    @Column({ type: "timestamptz", nullable: false})
    dataUltimaAlteracao: Date
    @Column({ type: "timestamptz", nullable: false})
    dataExclusao: Date

    //Métodos
    constructor(){
        this.id_acao = uuid()
        this.dataCriacao = new Date()
}
}