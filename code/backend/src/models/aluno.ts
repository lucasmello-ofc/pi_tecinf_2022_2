
import { Entity, Column, Check, PrimaryColumn, ManyToOne } from 'typeorm'
import {v4 as uuid }   from "uuid"
import { Responsavel } from './responsavel'

@Entity("alunos")
@Check("genero in ('M','F')")
@Check("prioridadde('A','M','B')")
  
export class Aluno {
  
  // Atributos da Tabela
  @PrimaryColumn({ type: "varchar" })
  id_aluno: string

  @ManyToOne(() => Responsavel, responsavel => responsavel.id_responsavel)
  @Column({ type: "varchar", nullable: false })
  fk_responsavel: string

  @Column({ type: "char", length: 11, nullable: false, unique: true })
  cpf_aluno: string

  @Column({ type: "varchar", length: 80, nullable: false })
  nome_aluno: string

  @Column({ type: "varchar", length: 80 })
  nome_social: string

  @Column({ type: "varchar", length: 40 })
  email_aluno: string

  @Column({ type: "bigint", nullable: false })
  telefone_aluno: number

  @Column({ type: "date", nullable: false })
  data_nascimento: Date

  @Column({ type: "char", length: 1 })
  genero: string

  @Column({ type: "char", nullable: false, length: 1 })
  prioridade: string

  @Column({ type: "date", nullable: false, default: "CURRENT_DATE" })
  inicio_atendimento: Date

  @Column({ type: "date" })
  fim_atendimento: Date

  // Atributos de Controle
  @Column({ type: "timestamptz" })
  dataCriacao: Date

  @Column({ type: "timestamptz" })
  dataUltimaAlteracao: Date

  @Column({ type: "timestamptz" })
  dataExclusao: Date

  // Métodos
  constructor() {
    this.id_aluno = uuid()
    this.dataCriacao = new Date()
  }
}

