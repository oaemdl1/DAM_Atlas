drop database if exists Senati;
create database Senati;
use Senati;

create table Distritos (							/* districts - districts */
  idDistrito int primary key auto_increment,
  Detalle nchar(30) unique );

create table Carreras (								/* specialty - specialties */
  idCarrera int primary key auto_increment,
  Detalle nchar(30) unique );

create table Puestos (								/* position - positions */
  idPuesto int primary key auto_increment,
  Detalle nchar(30) unique );

create table MotivosCese (							/* position - positions */
  idMotivosCese int primary key auto_increment,
  Detalle nchar(30) unique );

create table Bloques (								/* block - blocks */
  idBloque int primary key auto_increment,
  idCarrera int references Carreras,  
  Semestre char(5) not null,
  CicloAcademico char(1) not null,
  Bloque nchar(5) not null,
  DiaSemana char(1) not null );

create table Aprendices (								/* student - students */
  idAprendiz int primary key auto_increment,
  idSenati char(6) unique,
  NombreP nchar(20) not null,
  NombreS nchar(20) not null,
  ApellidoPaterno nchar(30) not null,
  ApellidoMaterno nchar(30) not null,
  Sexo char (1) check (Sexo in ('M','F')),
  FechaNacimiento date not null,
  DNI char(8) unique,
  Telefonos char(30),
  CorreoPersonal nchar(50) not null,
  Direccion nchar(30) not null,
  idDistrito int references Distritos,
  idBloque int references Bloques,
  Eliminado bit,  
  Imagen blob );

create table Instructores (							/* instructor - trainers */
  idIstructor int primary key auto_increment,
  idPlanilla char(5) unique,
  NombreP nchar(20) not null,
  NombreS nchar(20) not null,
  ApellidoPaterno nchar(30) not null,
  ApellidoMaterno nchar(30) not null,
  FechaNacimiento date not null,
  DNI char(8) unique,
  Telefonos char(30),
  CorreoPersonal nchar(50) not null,
  Eliminado bit,
  Imagen blob );

create table InstructorBloques (					/*  -  */
  idInstructor int references Instructores,
  idBloque int references Bloques,
  idTecSem char(1) check (idTecSem in ('T','S')) );

create table AprendicesBloques (
  idBloque int references Bloques,
  idAprendiz int references Aprendices );

create table Empresas (								/* company - business */
  idEmpresa int primary key auto_increment,
  RazonSocial nchar(50) not null,
  RUC char(8) unique,
  TelefonoFijo char(30),
  TelefonoMovil char(30),
  PartidaRegistral char(20),
  RepresentanteLegal nchar(30),
  Correo nchar(50) not null,
  idDistrito int references Distritos,
  Direccion nchar(30) not null,
  LinkGoogleMaps char(100) not null,
  Eliminado bit );

create table Monitores (							/* monitor - monitors */
  idMonitor int primary key auto_increment,
  idEmpresa int references Empresas,
  NombreP nchar(20) not null,
  NombreS nchar(20) not null,
  ApellidoPaterno nchar(30) not null,
  ApellidoMaterno nchar(30) not null,
  DNI char(8) unique,
  Telefonos char(30),
  CorreoPersonal nchar(50),
  Cargo nchar(30) not null,
  Eliminado bit );

create table EmpresasAprendices ( 
  idBloque int references Bloques,
  idAprendiz int references Aprendices,
  idInstructor int references Instructores,
  idInstructorSeguimiento int references Instructores(idInstructor),
  idEmpresa int references Empresas,
  idMonitor int references Monitores,
  idPuesto int references Puestos,
  idMotivoCese int references MotivosCese,
  FechaDesde date not null,
  FechaHasta date not null,
  FechaEntrega date not null,
  Semanas char(2) );

create table InstructorEmpresas ( /* instructor - instructors*/
  idInstructor int references Instructores,
  idEmpresa int references Empresas,
  idAprendiz int references Aprendices,
  FechaVisita date not null );

create table InformesSeguimiento ( 					/* informe -  informes*/
  idInformeSeguimiento int primary key auto_increment,
  JefeCUFP nchar(50) not null,
  FechaVisita date,
  idInstructorSeguimiento int references Instructores(idInstructor),
  idEmpresa int references Empresas,
  idMonitor int references Monitores,
  idAprendiz int references Aprendices,
  AspectosMonitor char(6) not null,
  AspectosAprendiz char(6) not null,
  PDSeguridad nchar(30) not null,
  SRSeguridad nchar(30) not null,
  MonitorItems char(6) not null,
  PDMonitor  nchar(30) not null,
  SRMonitor  nchar(30) not null,
  PDPuesto nchar(30) not null, 
  SRPuesto nchar(30) not null,
  PDAprendiz nchar(30) not null, 
  SRAprendiz nchar(30) not null );

create table PEA ( /*pea - peas*/
  idOperacion int primary key auto_increment,
  idCarrera int references Carreras,
  CicloAcademico char(1) not null,
  Detalle nchar(50) );

create table AvancePEA ( /* pea_avance - pea_avances*/
  idInformeSeguimiento int references InformesSeguimiento,
  idOperacion int references PEA,
  Dominio char(1) not null,
  OperacionesEjecutar bit,
  OperacionesSeminario bit );

create table RegistroAsistencia (
  idInformeSeguimiento int references InformesSeguimiento,
  Mes char(2) not null,
  DiasNoAsistidos char(30),
  HorasEmpresa int,
  FaltasI int,
  FaltasJ int,
  ProcesoOperacional int,
  PrecisionAcabado int,
  Funcionalidad int,
  OrdenSeguridad int,
  ManejoRecursos int,
  TiempoEjecución int,
  PuntajeMensual int,
  Comportamiento int,
  CuadernoInformes int,
  TareasRealizadas char(50) not null,
  Observaciones char(50) not null );
