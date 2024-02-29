import { Entity, PrimaryColumn, Column, ManyToOne, Check } from "typeorm"
import { Aluno } from "./aluno"
import { Curso } from "./curso"

@Entity("alunos_cursos")
@Check("situacao IN ('Matriculado','Concluído','Evadido', 'Trancado')")

export class AlunoCurso {

    // Atributos da Tabela
    @PrimaryColumn({ type: "varchar" })
    matricula: string

    @Column({ type: "varchar", nullable: false })
    situacao: string

    @ManyToOne(()=> Aluno, aluno => aluno.id_aluno)
    @Column({ type: "varchar", nullable: false })
    fk_aluno: string

    @ManyToOne(()=> Curso, curso => curso.id_curso)
    @Column({ type: "varchar", nullable: false })
    fk_curso: string

    // Atributos de Controle
    @Column({type:"timestamptz", nullable: false })
    dataCriacao: Date

    @Column({type:"timestamptz", nullable: false})
    dataUltimaAlteracao: Date

    @Column({type:"timestamptz", nullable: false})
    dataExclusao: Date

    constructor(){
        this.dataCriacao = new Date()
    }
}


