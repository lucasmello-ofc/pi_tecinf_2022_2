CREATE TABLE "cursos" (
  "id_curso" varchar PRIMARY KEY,
  "descricao_curso" varchar(255) NOT NULL,
  "turno" varchar(15) NOT NULL,
  "modalidade" varchar(30) NOT NULL,
  "eixo_dpto" varchar(10) NOT NULL,
  "unidade_campus" varchar(50) NOT NULL,
  "semestral" boolean
);