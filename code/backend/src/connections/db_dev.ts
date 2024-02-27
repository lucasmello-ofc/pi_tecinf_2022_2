import { DataSource } from "typeorm"
import { Necessidade } from "../models/necessidade"
import { AlunoNecessidade } from "../models/aluno_necessidade"

const DevDataSource = new DataSource({
    type: "postgres",
    host: "localhost",
    port: 5433,
    username: "postgres",
    password: "postgres",
    database: "inclusimap",
    entities: [Necessidade, AlunoNecessidade]
})
