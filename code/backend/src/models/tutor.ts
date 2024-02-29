import { Entity, PrimaryColumn, Column } from "typeorm"
import { v4 as uuid } from "uuid"

@Entity("tutores")
export class Tutor {

    // Atributos da Tabela
    @PrimaryColumn({ type: "varchar" })
    id_tutor: string
    
    @Column({ type: "char", length: 11, nullable: false, unique: true })
    cpf_tutor: string
    
    @Column({ type: "varchar", length: 100, nullable: false })
    nome_tutor: string
    
    @Column({ type: "varchar", length: 50, nullable: false })
    email_tutor: string
    
    @Column({ type: "bigint", nullable: false })
    telefone_tutor: number
    
    @Column({ type: "varchar", nullable: false })
    cargo: string
    
    @Column({ type: "varchar", length: 50 })
    formacao: string

    // Atributos de Controle
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

