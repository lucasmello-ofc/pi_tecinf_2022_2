import { Entity, PrimaryColumn, Column } from "typeorm"

@Entity("cursos")
export class curso{
    @PrimaryColumn({
    type: "varchar"
    })
    id_curso: string
    @Column({
        type: "varchar"
    })
    descricao_curso:string
    @Column({
    type: "varchar",
    length: 255,
    nullable: false
    })
    turno:string
    @Column({
    type: "varchar",
    length: 15,
    nullable: false
    })
    modalidade:string
    @Column({
    type: "varchar",
    length: 30,
    nullable: false
    })
    eixo_dpto:string
    @Column({
    type: "varchar",
    length: 10,
    nullable: false
    })
    unidade_campus: string
    @Column({
        type: "varchar",
        length: 50,
        nullable: false
    })
    semestre: boolean
    presencial: boolean
}
