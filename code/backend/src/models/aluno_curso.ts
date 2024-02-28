import { Entity, PrimaryColumn, Column } from "typeorm"

import { v4 as uuid } from "uuid"
import { Curso } from "./curso"

@Entity("alunos_cursos")
export class AlunoCurso {

    @PrimaryColumn({ type: "varchar" })
    matricula: string

    @ManyToOne(() => Curso, curso => curso.id_matricula )

    @Column({ type: "varchar", nullable: false })
    situacao: string

    @Column({ type: "varchar", nullable: false })
    fk_aluno: string
    
    @Column({ type: "varchar", nullable: false })
    fk_curso: string

    @Column({ type: "timestamptz" })
    dataCriacao: Date

    @Column({ type: "timestamptz" })
    dataUltimaAlteracao: Date

    @Column({ type: "timestamptz" })
    dataExclusao: Date

    constructor(){
        this.matricula = uuid()
        this.dataCriacao = new Date()
        this.dataUltimaAlteracao 
        this.dataExclusao 
    }
}
function ManyToOne(arg0: () => typeof Curso, arg1: (curso: any) => any): (target: AlunoCurso, propertyKey: "situacao") => void {
    throw new Error("Function not implemented.")
}

