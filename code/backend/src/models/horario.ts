import { Entity, PrimaryColumn, Column, Check} from "typeorm"
import { v4 as uuid } from "uuid"

@Entity("horarios")
@Check("dia_semana  in ('Segunda-Feira', 'Terça-Feira', 'Quarta-Feira', 'Quinta-Feira', 'Sexta-Feira', 'Sabado')")
export class Horario {
    @PrimaryColumn({ type: "varchar" })
    id_horario : string

    @Column({ type: "time", nullable: false })
    hora_incio: Date

    @Column({ type: "time", nullable: false })
    hora_fim : Date
    
    @Column({ type: "varchar", length: 20 })
    dia_semana:string

    @Column({ type: "timestamptz", nullable: false })
    dataCriacao: Date

    @Column({ type: "timestamptz", nullable: false })
    dataUltimaAltercao: Date

    @Column({ type: "timestamptz", nullable: false })
    dataExclusao: Date

    constructor(){
        this.id_horario = uuid()
        this.dataCriacao = new Date()
    }
}
