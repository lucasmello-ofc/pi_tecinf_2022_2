import { Entity, PrimaryColumn, Column } from "typeorm"
import { v4 as uuid } from "uuid"

@Entity("responsaveis")
export class Responsavel {

    // Atributos da Tabela
    @PrimaryColumn({ type: "varchar" })
    id_responsavel: string

    @Column({ type: "varchar", length: 80, nullable: false })
    nome_responsavel: string

    @Column({ type: "varchar", length: 11, nullable: false, unique: true })
    cpf_responsavel: string

    @Column({ type: "varchar", length: 40, nullable: false })
    email_responsavel: string

    @Column({ type: "bigint", nullable: false })
    telefone_responsavel: number

    // Atributos de Controle
    @Column({ type: "timestamptz" })
    dataCriacao: Date

    @Column({ type: "timestamptz" })
    dataUltimaAlteracao: Date

    @Column({ type: "timestamptz" })
    dataExclusao: Date

    constructor(){
        this.id_responsavel = uuid()
        this.dataCriacao = new Date()
    }
}
