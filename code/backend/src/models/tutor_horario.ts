import { Entity, Column, ManyToOne } from "typeorm"
import { Horario } from "./horario"
import { Tutor } from "./tutor"

@Entity("tutor_horario")
export class TutorHorario {

  @ManyToOne(() => Tutor, tutor => tutor.id_tutor)
  @Column({ type: "varchar", nullable: false })
  fk_tutor: string

  @ManyToOne(() => Horario, horario => horario.id_horario)
  @Column({ type: "varchar", nullable: false })
  fk_horario: string
}
