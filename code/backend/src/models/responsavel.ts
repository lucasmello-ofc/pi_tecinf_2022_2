import { Entity, PrimaryColumn, Column, NumericType } from "typeorm"

@Entity("responsaveis")
export class Responsavel {
    @PrimaryColumn({
        type: "varchar"
    })
    id_responsavel: string
    
    @Column({
        type: "varchar",
        length: 80,
        nullable: false
    })
    nome_responsavel: string
    
    @Column({
        type: "varchar",
        length: 11,
        nullable: false,
        unique: true
    })
    cpf: string
    
    @Column({
        type: "varchar",
        length: 40,
    })
    email_responsavel: string
    
    @Column({
        type: "bigint",
        nullable: false
    })
    telefone_responsavel: number
}