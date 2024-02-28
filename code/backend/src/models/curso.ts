import { Entity, PrimaryColumn, Column, Check } from "typeorm"
"typeorm"
import { v4 as uuid } from "uuid"
@Check("turno IN ('Matutino', 'Vespertino', 'Noturno')")
@Check("modalidade IN ('Iniciação', 'Capacitação', 'Qualificação','Aperfeiçoamento', 'Técnico', 'Superior - Licenciatura','Superior - Bacharel', 'Superior - Tecnologia','Pós Graduação Lato Sensu - Especialização','Pós-Graduação Stricto Sensu - Mestrado','Pós-Graduação Stricto Sensu - Doutorado')"
)
export class Curso {
    @PrimaryColumn({ type: "varchar" })
    id_curso :string
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
    @Column({ type: "date" })
    semestral: boolean
    @Column({ type: "date" })
    presencial: boolean
    @Column({ type: "timestamptz"  })
    dataCriacao: Date
    @Column({ type: "timestamptz" })
    dataUltimaAlteracao: Date
    @Column ({ type: "timestamptz" })
    dataExclusao: Date

    constructor(){
        this.id_curso = uuid()
        this.dataCriacao = new Date()
        this.dataUltimaAlteracao
        this.dataExclusao
    }
}


