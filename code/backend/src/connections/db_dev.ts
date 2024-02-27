import { DataSource } from "typeorm"
import { Necessidade } from "../models/necessidade"
import { aluno } from "../models/alunos"

const DevDataSource = new DataSource({
    type: "postgres",
    host: "localhost",
    port: 5432,
    username: "postgres",
    password: "postgres",
    database: "inclusimap",
    entities: [Necessidade,aluno]
})
