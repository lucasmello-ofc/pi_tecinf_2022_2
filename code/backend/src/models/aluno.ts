import { Entity, PrimaryColumn,  Column } from "typeorm"



@Entity("alunos")
export class Aluno {
    
    @PrimaryColumn({ type: "varchar" })
    id_aluno: string
    
    @Column({ type: "varchar", nullable: false })
    fk_responsavel: string

    @Column({ type: "char", length: 11, nullable: false, unique: true })
    cpf_aluno: string
    
    @Column({ type: "varchar", length: 80, nullable: false })
    nome_aluno: string
    
    @Column({ type:"varchar" }) 
    nome_social: string

    @Column({ type:"varchar", length: 40 })
    email_aluno: string
    
    @Column({ type:"bigint", nullable : false})
    telefone_aluno : number
    
    @Column({ type:"date", nullable :false })
    data_nacimento: Date
    
    @Column({ type:"char", length: 1 })
    genero: string
    
    @Column({ type:"char", nullable:false, length: 1 })
    prioridade: string
    
    @Column({ type:"date", nullable:false })
    inicio_atendimento : Date
    
    @Column({ type:"date" })
    fim_atendimeto : Date
}
