import { Entity, PrimaryColumn, Column } from "typeorm"

@Entity("cursos")
export class Curso {
    @PrimaryColumn({
        type: "varchar"
    })
    id_curso :string
    @Column({
        type: "varchar",
        length: 255,
        nullable: false
    })
    descricao_curso:string
    @Column({
    type: "varchar",
    length: 15,
    nullable: false
    })
    turno:string
    @Column({
    type: "varchar",
    length: 30,
    nullable: false
    })
    modalidade:string
    @Column({
    type: "varchar",
    length: 10,
    nullable: false
    })
    eixo_dpto:string
    @Column({
        type: "varchar",
        length: 50,
        nullable: false
    })
    unidade_campus: string
    semestre: boolean
    presencial: boolean
}
