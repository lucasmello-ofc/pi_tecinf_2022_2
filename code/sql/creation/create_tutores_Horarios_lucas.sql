CREATE TABLE Tutores_Horarios (
    fk_tutor VARCHAR(10) NOT NULL,
    fk_horario VARCHAR(10) NOT NULL,
    FOREIGN KEY (fk_tutor) REFERENCES Tutores(id),
    FOREIGN KEY (fk_horario) REFERENCES Horarios(id)
);
