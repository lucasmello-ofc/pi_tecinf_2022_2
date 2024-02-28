import { Entity, PrimaryColumn, Column } from "typeorm"
import { v4 as uuid } from "uuid"

@Entity("necessidades")
export class Necessidade {
    // Atributos
    @PrimaryColumn({ type: "varchar" })
    id_necessidade: string
    @Column({ type: "varchar", nullable: false })
    cid: string
    @Column({ type: "varchar", length: 15, nullable: false, unique: true })
    descricao_simples: string
    @Column({ type: "varchar", length: 255, nullable: false })
    descricao_tecnica: string
    // Métodos
    constructor(){
        this.id_necessidade = uuid()
    }
}
