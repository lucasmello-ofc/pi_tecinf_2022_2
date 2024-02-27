import { Entity, PrimaryColumn, Column } from "typeorm"

@Entity("alunos_cursos")
export class AlunoCurso {

    @PrimaryColumn({ type: "varchar" })
    matricula: string

    @Column({ type: "varchar", nullable: false })
    situacao: string

    @Column({ type: "varchar", nullable: false })
    fk_aluno: string
    
    @Column({ type: "varchar", nullable: false })
    fk_curso: string
}
