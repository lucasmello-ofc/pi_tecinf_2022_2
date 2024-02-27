import { Entity, Column, PrimaryColumn, } from "typeorm"
import { Tutor } from "./tutor"
import { Horario } from "./horario"

@Entity("tutores_horarios")
export class TutoreHorario { 

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

    
}

