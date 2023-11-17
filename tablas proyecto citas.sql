CREATE DATABASE CitasMedicas CHARACTER SET utf8mb4;
USE CitasMedicas;
-- creacion de tablas de esquema 
CREATE TABLE TipoDocumentos (
  IdTipoDocumento INT AUTO_INCREMENT PRIMARY KEY,
  Descripcion VARCHAR(100) NOT NULL
);
CREATE TABLE Personas (
  IdPersona INT  AUTO_INCREMENT PRIMARY KEY,
  Nombres VARCHAR(100) NOT NULL,
  Apellidos VARCHAR(100) NOT NULL,
  Correo VARCHAR(100),
  IdTipoDocumento int,
  NumeroDocumento VARCHAR(20) NOT NULL,
  FOREIGN KEY (IdTipoDocumento) REFERENCES TipoDocumentos(IdTipoDocumento)
);
CREATE TABLE PersonasTipoDocumentos (
  Id INT  AUTO_INCREMENT PRIMARY KEY,
  IdPersona INT,
  IdTipoDocumento INT ,
  FOREIGN KEY (IdPersona) REFERENCES Personas(IdPersona),
  FOREIGN KEY (IdTipoDocumento) REFERENCES TipoDocumentos(IdTipoDocumento)
);
CREATE TABLE Telefonos (
  IdTelefono INT  AUTO_INCREMENT PRIMARY KEY,
  IdPersona INT,
  NumeroTelefono VARCHAR(20) NOT NULL,
  FOREIGN KEY (IdPersona) REFERENCES Personas(IdPersona)
);
CREATE TABLE Especialidades (
  IdEspecialidad INT  AUTO_INCREMENT PRIMARY KEY,
  Descripcion VARCHAR(50)
);
CREATE TABLE Medicos (
  IdMedico INT  AUTO_INCREMENT PRIMARY KEY,
  IdPersona INT,
  IdEspecialidad INT,
  FOREIGN KEY (IdPersona) REFERENCES Personas(IdPersona),
  FOREIGN KEY (IdEspecialidad) REFERENCES Especialidades(IdEspecialidad)
);
CREATE TABLE MedicoEspecialidad (
  Id INT  AUTO_INCREMENT PRIMARY KEY,
  IdMedico INT,
  IdEspecialidad INT,
  FOREIGN KEY (IdMedico) REFERENCES Medicos(IdMedico),
  FOREIGN KEY (IdEspecialidad) REFERENCES Especialidades(IdEspecialidad)
);
CREATE TABLE Consultorios (
  IdConsultorio INT  AUTO_INCREMENT PRIMARY KEY,
  NumeroConsultorio VARCHAR(6) unique
);
CREATE TABLE MedicosConsultorios (
  Id INT  AUTO_INCREMENT PRIMARY KEY,
  IdConsultorio  INT,
  IdMedico INT,
  FOREIGN KEY (IdMedico) REFERENCES Medicos(IdMedico),
  FOREIGN KEY (IdConsultorio) REFERENCES Consultorios(IdConsultorio)
);
CREATE TABLE HorarioCitas (
  IdHoraCita INT  AUTO_INCREMENT PRIMARY KEY,
  Hora VARCHAR(30)
);
CREATE TABLE Citas (
  IdCita INT  AUTO_INCREMENT PRIMARY KEY,
  IdMedico INT,
  IdEspecialidad INT,
  IdPersona INT,
  IdConsultorio  INT,
  FecahCreacion timestamp,
  FechaAsignacion date,
  IdHoraCita int,
  FOREIGN KEY (IdMedico) REFERENCES Medicos(IdMedico),
  FOREIGN KEY (IdEspecialidad) REFERENCES Especialidades(IdEspecialidad),
  FOREIGN KEY (IdPersona) REFERENCES Personas(IdPersona),
  FOREIGN KEY (IdConsultorio) REFERENCES Consultorios(IdConsultorio),
  FOREIGN KEY (IdHoraCita) REFERENCES HorarioCitas(IdHoraCita)
);

-- creacion  de insert parametricos 
INSERT INTO Consultorios (NumeroConsultorio) VALUES('101');
INSERT INTO Consultorios (NumeroConsultorio) VALUES('102');
INSERT INTO Consultorios (NumeroConsultorio) VALUES('103');
INSERT INTO Consultorios (NumeroConsultorio) VALUES('104');
INSERT INTO Consultorios (NumeroConsultorio) VALUES('201');
INSERT INTO Consultorios (NumeroConsultorio) VALUES('202');
INSERT INTO Consultorios (NumeroConsultorio) VALUES('203');
INSERT INTO Consultorios (NumeroConsultorio) VALUES('204');

INSERT INTO TipoDocumentos (Descripcion) VALUES('Cedula');
INSERT INTO TipoDocumentos (Descripcion) VALUES('Registro Civil');
INSERT INTO TipoDocumentos (Descripcion) VALUES('Tarjeta de identidad');
INSERT INTO TipoDocumentos (Descripcion) VALUES('Pasaporte');

INSERT INTO Especialidades (Descripcion) VALUES('Medicina general');
INSERT INTO Especialidades (Descripcion) VALUES('Medicina general');
INSERT INTO Especialidades (Descripcion) VALUES('Cardiología');
INSERT INTO Especialidades (Descripcion) VALUES('Medicina interna');
INSERT INTO Especialidades (Descripcion) VALUES('Dermatología');
INSERT INTO Especialidades (Descripcion) VALUES('Rehabilitación física');
INSERT INTO Especialidades (Descripcion) VALUES('Psicología');
INSERT INTO Especialidades (Descripcion) VALUES('Odontología');
INSERT INTO Especialidades (Descripcion) VALUES('Radiología');

INSERT INTO horarioCitas (Hora) VALUES('6:30');
INSERT INTO horarioCitas (Hora) VALUES('7:00');
INSERT INTO horarioCitas (Hora) VALUES('7:30');
INSERT INTO horarioCitas (Hora) VALUES('8:00');
INSERT INTO horarioCitas (Hora) VALUES('8:30');
INSERT INTO horarioCitas (Hora) VALUES('9:00');
INSERT INTO horarioCitas (Hora) VALUES('9:30');
INSERT INTO horarioCitas (Hora) VALUES('10:00');
INSERT INTO horarioCitas (Hora) VALUES('10:30');
INSERT INTO horarioCitas (Hora) VALUES('11:00');
INSERT INTO horarioCitas (Hora) VALUES('11:30');
INSERT INTO horarioCitas (Hora) VALUES('12:00');
INSERT INTO horarioCitas (Hora) VALUES('12:30');
INSERT INTO horarioCitas (Hora) VALUES('1:00');
INSERT INTO horarioCitas (Hora) VALUES('1:30');
INSERT INTO horarioCitas (Hora) VALUES('2:00');
INSERT INTO horarioCitas (Hora) VALUES('2:30');
INSERT INTO horarioCitas (Hora) VALUES('3:00');
INSERT INTO horarioCitas (Hora) VALUES('3:30');
INSERT INTO horarioCitas (Hora) VALUES('4:00');
INSERT INTO horarioCitas (Hora) VALUES('4:30');
INSERT INTO horarioCitas (Hora) VALUES('5:00');
INSERT INTO horarioCitas (Hora) VALUES('5:30');

-- test
INSERT INTO Personas (Nombres, Apellidos, Correo, IdTipoDocumento, NumeroDocumento) VALUES('Jonathan','fique','jjfique@gmail.com',1,'1024475740');
INSERT INTO Personas (Nombres, Apellidos, Correo, IdTipoDocumento, NumeroDocumento) VALUES('alan','fique','alan@gmail.com',2,'123456789');
INSERT INTO Medicos (IdPersona, IdEspecialidad) values (2,2);
INSERT INTO Citas(IdMedico, IdEspecialidad, IdPersona, IdConsultorio, FechaAsignacion, IdHoraCita) values(1,2,1,5,'2023-11-10',5);

-- prueba de modelo 

select p.Nombres as Medico,p2.Nombres as Paciente ,co.NumeroConsultorio,
c.FechaAsignacion,h.hora,e.Descripcion as especialidadCita ,em.Descripcion as especialidadMedico
from citas c
inner join Medicos m on m.IdMedico = c.IdMedico
inner join Personas p on p.IdPersona = m.IdPersona
inner join Personas p2 on p2.IdPersona = c.IdPersona
inner join Consultorios co on co.IdConsultorio = c.IdConsultorio
inner join horarioCitas h on h.IdHoraCita = c.IdHoraCita
inner join Especialidades e on e.IdEspecialidad = c.IdEspecialidad
inner join Especialidades em on em.IdEspecialidad = m.IdEspecialidad;

select * from citas;
select * from Medicos;
select * from Personas;
select * from  Consultorios;
select * from  horarioCitas;
select * from Especialidades;


