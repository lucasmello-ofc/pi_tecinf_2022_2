import { DataSource } from "typeorm"
import { Necessidade } from "../models/necessidade"
import { horario } from "../models/horario"
import { Responsavel } from "../models/responsavel"
import { Aluno_curso } from "../models/alunos_cursos"
import { aluno } from "../models/alunos"
import { Curso } from "../models/cursos"
import { Tutor } from "../models/tutor"

const DevDataSource = new DataSource({
    type: "postgres",
    host: "localhost",
    // port: 5433,
    port: 5432,
    username: "postgres",
    password: "postgres",
    database: "inclusimap",
    entities: [Necessidade,horario, Responsavel, Aluno_curso, aluno, Curso, Tutor]
})
