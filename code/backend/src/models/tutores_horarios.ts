import { Entity, PrimaryColumn, ManyToOne, JoinColumn, Column } from "typeorm"
import { Tutor } from "./tutor"
import { Horario } from "./horario"

@Entity("tutores_horarios")
export class TutoreHorario { // Corrigido o nome da classe para TutoreHorario

    @Column({
        type: "varchar",
        nullable: false
    })
    fk_tutore: string

    @Column({
        type: "varchar",
        nullable: false
    })
    fk_horario: string

    @ManyToOne(() => Tutor, tutor => tutor)
    @JoinColumn({ name: "fk_tutore" }) 
    tutor: Tutor

    @ManyToOne(() => Horario, horario => horario)
    @JoinColumn({ name: "fk_horario" })
    horario: Horario
}

