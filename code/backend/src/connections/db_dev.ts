import { DataSource } from "typeorm"
import { Aluno } from "../models/alunos"
import { AlunoCurso } from "../models/alunos_cursos"
import { AlunoNecessidade } from "../models/aluno_necessidade"
import { Curso } from "../models/cursos"
import { Horario } from "../models/horario"
import { Necessidade } from "../models/necessidade"
import { AcaoEducacional } from "../models/acao_educacional"

const DevDataSource = new DataSource({
    type: "postgres",
    host: "localhost",
    // port: 5433,
    port: 5432,
    username: "postgres",
    password: "postgres",
    database: "inclusimap",
    entities: [Aluno, AlunoCurso, AlunoNecessidade, Curso, Horario, Necessidade, Responsavel, Tutor]
})
