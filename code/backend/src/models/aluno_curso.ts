import { Entity, PrimaryColumn, Column, ManyToOne } from "typeorm"
import {v4 as uuid } from "uuid"
import { Check } from "typeorm"
import { Aluno } from "./aluno"
import { Curso } from "./curso"

import { v4 as uuid } from "uuid"
import { Curso } from "./curso"

@Entity("alunos_cursos")
@Check("situacao IN ('Matriculado','Concluído','Evadido', 'Trancado')")
export class AlunoCurso {

    @PrimaryColumn({ type: "varchar" })
    matricula: string

    @ManyToOne(() => Curso, curso => curso.id_matricula )

    @Column({ type: "varchar", nullable: false })
    situacao: string

    @ManyToOne(()=> Aluno, alunos => alunos.id_aluno)
    @Column({ type: "varchar", nullable: false })
    fk_aluno: string

    @ManyToOne(()=> Curso, cursos => cursos.id_curso)
    @Column({ type: "varchar", nullable: false })
    fk_curso: string

    @Column({type:"timestamptz", nullable: false })
    dataCriacao: Date

    @Column({type:"timestamptz", nullable: false})
    dataUltimaAlteracao: Date

    @Column({type:"timestamptz", nullable: false})
    dataExclusao: Date

    constructor (){
        this.matricula = uuid()
        this.dataCriacao = new Date()
        this.dataUltimaAlteracao
        this.dataExclusao
    }
}


