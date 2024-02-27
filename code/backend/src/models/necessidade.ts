import { Entity, PrimaryColumn, Column } from "typeorm"

@Entity("necessidades")
export class Necessidade {
    @PrimaryColumn({
        type: "varchar"
    })
    id_necessidade: string
    @Column({
        type: "varchar",
        nullable: false
    })
    cid: string
    @Column({
        type: "varchar",
        length: 15,
        nullable: false,
        unique: true
    })
    descricao_simples: string
    @Column({
        type: "varchar",
        length: 255,
        nullable: false
    })
    descricao_tecnica: string
}
