import { DataSource } from "typeorm"
import { Necessidade } from "../models/necessidade"
import { Aluno_curso } from "../models/alunos_cursos"

const DevDataSource = new DataSource({
    type: "postgres",
    host: "localhost",
    port: 5432,
    username: "postgres",
    password: "postgres",
    database: "inclusimap",
    entities: [Necessidade,Aluno_curso]
})
