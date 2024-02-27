import { DataSource } from "typeorm"
import { Necessidade } from "../models/necessidade"

const DevDataSource = new DataSource({
    type: "postgres",
    host: "localhost",
    port: 5432,
    username: "postgres",
    password: "postgres",
    database: "inclusimap",
    entities: [Necessidade]
})
