CREATE TABLE tutores_horarios (
  fk_tutor VARCHAR(10) NOT NULL,
  fk_horario VARCHAR(10) NOT NULL,
  FOREIGN KEY (fk_tutor) REFERENCES tutores(id_tutor),
  FOREIGN KEY (fk_horario) REFERENCES horarios(id_horario)
);
