import { Entity, PrimaryColumn, Column } from "typeorm"

@Entity("horarios")
export class Horario {
    @PrimaryColumn({ type: "varchar" })
    id_horario : string

    @Column({ type: "time", nullable: true })
    hora_incio: Date

    @Column({ type: "time", nullable: true })
    hora_fim : Date

    @Column({ type: "varchar", length: 20 })
    dia_semana:string
}
