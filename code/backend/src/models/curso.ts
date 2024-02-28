import { Entity, PrimaryColumn, Column,Check, ManyToOne } from "typeorm"
import { v4 as uuid } from "uuid"
import { Responsavel } from "./responsavel"

@Entity("cursos")
@Check("turno IN ('Matutino', 'Vespertino', 'Noturno')")
@Check("modalidade IN ('Iniciação', 'Capacitação', 'Qualificação','Aperfeiçoamento', 'Técnico', 'Superior - Licenciatura', 'Superior - Bacharel', 'Superior - Tecnologia','Pós Graduação Lato Sensu - Especialização', 'Pós-Graduação Stricto Sensu - Mestrado', 'Pós-Graduação Stricto Sensu - Doutorado')")
export class Curso {
    @PrimaryColumn({ type: "varchar" })
    id_curso :string
    @ManyToOne(() => Curso, responsavel => responsavel.id_curso)
    @Column({ type: "varchar", length: 255, nullable: false })
    descricao_curso: string
    @Column({ type: "varchar", length: 15, nullable: false })
    turno: string
    @Column({ type: "varchar", length: 30, nullable: false })
    modalidade: string
    @Column({ type: "varchar", length: 10, nullable: false })
    eixo_dpto:string
    @Column({ type: "varchar", length: 50, nullable: false })
    unidade_campus: string
    @Column({ type: "bool" })
    semestral: boolean
    @Column({type: "bool" })
    data_criacao: Date
    @Column({type: "timestamptz"})
    data_exclusao: Date
    @Column({type: "timestamptz"})
    data_ultima_alteracao: Date
    @Column({type: "timestamptz"})
    presencial: boolean
    constructor(){
        this.id_curso = uuid()
        this.data_criacao
        this.data_ultima_alteracao
        this.data_exclusao
}
}