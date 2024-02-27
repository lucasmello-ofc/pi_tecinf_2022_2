import { DataSource } from "typeorm"
import { Aluno } from "../models/alunos"
import { AlunoCurso } from "../models/alunos_cursos"
import { Curso } from "../models/cursos"
import { Horario } from "../models/horario"
import { Necessidade } from "../models/necessidade"
import { Responsavel } from "../models/responsavel"
import { Tutor } from "../models/tutor"

const DevDataSource = new DataSource({
    type: "postgres",
    host: "localhost",
    // port: 5433,
    port: 5432,
    username: "postgres",
    password: "postgres",
    database: "inclusimap",
    entities: [Aluno, AlunoCurso, Curso, Horario, Necessidade, Responsavel, Tutor]
})
