import { Entity, PrimaryColumn, Column, ManyToOne } from "typeorm"
import { v4 as uuid } from "uuid"
import { Aluno } from "./aluno"
import { Tutor } from "./tutor"

@Entity("acoes_educacionais")
export class AcaoEducacional {
  // Atributos da Tabela
  @PrimaryColumn({ type: "varchar" })
  id_acao: string

  @ManyToOne(() => Aluno, (aluno) => aluno.id_aluno)
  @Column({ type: "varchar", nullable: false })
  fk_aluno: string

  @ManyToOne(() => Tutor, (tutor) => tutor.id_tutor)
  @Column({ type: "varchar", nullable: false })
  fk_tutor: string

  @Column({ type: "varchar", nullable: false })
  descricao_acao: string

  @Column({ type: "date", nullable: false, default: "CURRENT_DATE" })
  data_solicitacao: Date

  @Column({ type: "date", default: "CURRENT_DATE" })
  data_conclusao: Date

  // Atributos de Controle
  @Column({ type: "timestamptz", nullable: false })
  dataCriacao: Date

  @Column({ type: "timestamptz", nullable: false })
  dataUltimaAlteracao: Date

  @Column({ type: "timestamptz", nullable: false })
  dataExclusao: Date

  // Métodos
  constructor() {
    this.id_acao = uuid()
    this.dataCriacao = new Date()
  }
}
