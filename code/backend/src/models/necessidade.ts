import { Entity, PrimaryColumn, Column } from "typeorm"
import { v4 as uuid } from "uuid"

@Entity("necessidade")
export class Necessidade {
  // Atributos da Tabela
  @PrimaryColumn({ type: "varchar" })
  id_necessidade: string

  @Column({ type: "varchar", length: 15, nullable: false })
  cid: string

  @Column({ type: "varchar", length: 255, nullable: false })
  descricao_simples: string

  @Column({ type: "varchar", nullable: false })
  descricao_tecnica: string

  // Atributos de Controle
  @Column({ type: "timestamptz", nullable: false })
  dataCriacao: Date

  @Column({ type: "timestamptz", nullable: false })
  dataUltimaAlteracao: Date

  @Column({ type: "timestamptz", nullable: false })
  dataExclusao: Date

  // Métodos
  constructor() {
    this.id_necessidade = uuid()
    this.dataCriacao = new Date()
  }
}
