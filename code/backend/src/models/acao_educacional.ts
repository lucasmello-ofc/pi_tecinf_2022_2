import { Entity, PrimaryColumn, Column } from "typeorm"

@Entity("acoes_educacionais")
export class AcaoEducacional {
    @PrimaryColumn({ type: "varchar" })
    id_acao: string
    @Column({ type: "varchar", nullable: false })
    fk_aluno: string
    @Column({ type: "varchar", nullable: false })
    fk_tutor: string
    @Column({ type: "varchar", length: 255, nullable: false })
    descricao_acao: string
    @Column({ type: "date", nullable: false })
    data_solicitacao: Date
    @Column({ type: "date" })
    data_conclusao: Date
}
