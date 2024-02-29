import { DataSource } from "typeorm"
import { AcaoEducacional } from "../models/acao_educacional"
import { Aluno } from "../models/aluno"
import { AlunoCurso } from "../models/aluno_curso"
import { AlunoNecessidade } from "../models/aluno_necessidade"
import { Curso } from "../models/curso"
import { Horario } from "../models/horario"
import { Necessidade } from "../models/necessidade"
import { Responsavel } from "../models/responsavel"
import { Tutor } from "../models/tutor"
import { TutorHorario } from "../models/tutor_horario"

const DevDataSource = new DataSource({
    type: "postgres",
    host: "localhost",
    // port: 5433,
    port: 5432,
    username: "postgres",
    password: "postgres",
    database: "inclusimap",
    entities: [AcaoEducacional, Aluno, AlunoCurso, AlunoNecessidade, Curso, Horario, Necessidade, Responsavel, Tutor, TutorHorario]
})
