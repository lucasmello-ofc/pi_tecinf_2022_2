import {Entity, PrimaryColumn, Column} from "typeorm"

@Entity("horarios")
export class horario{
    @PrimaryColumn({
        type: "varchar",
        length: 11
    })
    id_horario: string

    @Column({
        type: "time",
        nullable: true
    })
    hora_inicio: Date

    @Column({
        type: "time",
        nullable: true
    })
    hora_fim: Date

    @Column({
        type: "varchar",
        length: 20
    })
    dia_semana: string
}