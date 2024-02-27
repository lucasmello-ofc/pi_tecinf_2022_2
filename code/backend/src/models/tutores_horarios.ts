import { Entity, PrimaryColumn, ManyToOne, JoinColumn, Column } from "typeorm"
import { Tutores } from "./tutores"
import { Horarios } from "./horarios"

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

    @ManyToOne(() => Tutores, tutore => tutore)
    @JoinColumn({ name: "fk_tutore" }) 
    tutor: Tutores

    @ManyToOne(() => Horarios, horario => horario)
    @JoinColumn({ name: "fk_horario" })
    horario: Horarios
}

