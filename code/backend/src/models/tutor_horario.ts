import { Entity, Column, ManyToOne } from "typeorm"
import { Horario } from "./horario"
import { Tutor } from "./tutor"

@Entity("tutor_horario")
export class TutorHorario {

    @ManyToOne(() => Tutor, tutores => tutores.id_tutor)
    @Column({ type: "varchar",length:10, nullable: false })
    fk_tutor: string

    @ManyToOne(() => Horario, horarios => horarios.id_horario)
    @Column({ type: "varchar",length:10, nullable: false })
    fk_horario: string
}