import { DataSource } from "typeorm"
import { Necessidade } from "../models/necessidade"
import { Responsavel } from "../models/responsavel"

const DevDataSource = new DataSource({
    type: "postgres",
    host: "localhost",
    port: 5432,
    username: "postgres",
    password: "postgres",
    database: "inclusimap",
    entities: [Necessidade, Responsavel]
})
