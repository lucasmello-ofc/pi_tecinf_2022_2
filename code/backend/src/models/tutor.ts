import { Entity, PrimaryColumn, Column } from "typeorm"

@Entity("tutores")
export class Tutor {
    @PrimaryColumn({
        type: "varchar"
    })
    id_tutor: string
    @Column({
        type: "char",
        length: 11,
        nullable: false,
        unique: true
    })
    cpf_tutor: string
    @Column({
        type: "varchar",
        length: 100,
        nullable: false,
        unique: true
    })
    nome_tutor: string
    @Column({
        type: "varchar",
        length: 50,
        nullable: false
    })
    email_tutor: string
    @Column({
        type: "number",
        nullable: false
    })
    telefone_tutor: string
    @Column({
        type: "varchar",
        nullable: false
    })
    cargo: string
    @Column({
        type: "varchar",
        length: 50,
        nullable: false
    })
    formacao: string
}

