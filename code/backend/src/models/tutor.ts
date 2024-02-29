import { Entity, PrimaryColumn, Column } from "typeorm"
import { v4 as uuid } from "uuid"

@Entity("tutores")
export class Tutor {
    @PrimaryColumn({ type: "varchar" })
    id_tutor: string
    @Column({ type: "char", length: 11, nullable: false, unique: true })
    cpf_tutor: string
    @Column({ type: "varchar", length: 100, nullable: false })
    nome_tutor: string
    @Column({ type: "varchar", length: 50, nullable: false })
    email_tutor: string
    @Column({ type: "number", nullable: false })
    telefone_tutor: string
    @Column({ type: "varchar", nullable: false })
    cargo: string
    @Column({ type: "varchar", length: 50 })
    formacao: string
//ATRIBUTOS DE CONTROLE
    @Column({ type: "timestamptz" })
    dataCriacao: Date
    @Column({ type: "timestamptz" })
    dataUltimaAlteracao: Date
    @Column({ type: "timestamptz" })
    dataExclusao: Date

    constructor(){
        this.id_tutor = uuid()
        this.dataCriacao = new Date()
    }

}

