import { Entity, PrimaryColumn, Column, NumericType } from "typeorm"

import { v4 as uuid } from "uuid"

@Entity("responsaveis")
export class Responsavel {
    @PrimaryColumn({ type: "varchar" })
    idResponsavel: string

    @Column({ type: "varchar", length: 80, nullable: false })
    nomeResponsavel: string

    @Column({ type: "varchar", length: 11, nullable: false, unique: true })
    cpf: string

    @Column({ type: "varchar", length: 40 })
    emailResponsavel: string

    @Column({ type: "bigint", nullable: false })
    telefoneResponsavel: number

    @Column({ type: "timestamptz" })
    dataCriacao: Date

    @Column({ type: "timestamptz" })
    dataUltimaAlteracao: Date

    @Column({ type: "timestamptz" })
    dataExclusao: Date

    constructor(){
        this.idResponsavel = uuid()
        this.dataCriacao = new Date()
        this.dataUltimaAlteracao 
        this.dataExclusao 
    }
}