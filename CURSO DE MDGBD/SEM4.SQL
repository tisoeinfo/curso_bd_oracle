-- En la semana 4 no podemos insertar registros sin antes crear nuestra BD y tener nuestras entidades creadas.
-- Creacion de BD
create database bd_control_atencion;

-- Posicionamiento de BD creada
use bd_control_atencion;

-- Creacion de la tabla Turnos
create table turnos (
id_turno int primary key,
nombre_turno varchar(50)
);

-- Creacion de la tabla Meseros que se relaciona con la tabla Turnos (id_turno)
create table meseros (
id_mesero int primary key,
nombre varchar(50),
ape_paterno varchar (50),
ape_materno varchar (50),
id_turno int,
foreign key (id_turno) references turnos(id_turno)
);

-- Creacion de la tabla Clientes
create table clientes (
id_cliente int primary key,
nombre varchar(50)
);

-- Creacion de la tabla Reservas, aquí se relaciona con Clientes y Meseros (id_cliente,id_mesero)
create table reservas (
id_reserva int primary key,
fecha datetime,
id_cliente int,
id_mesero int,
foreign key (id_cliente) references clientes(id_cliente),
foreign key (id_mesero) references meseros(id_mesero)
);


-- ==================================================
-- A PARTIR DE AQUÍ VIENE LA PPT "INSERTAR REGISTROS"
-- ==================================================

-- Turnos (3)
INSERT INTO turnos (id_turno, nombre_turno) VALUES (1, 'Mañana');
INSERT INTO turnos (id_turno, nombre_turno) VALUES (2, 'Tarde');
INSERT INTO turnos (id_turno, nombre_turno) VALUES (3, 'Noche');

-- Meseros (6)
INSERT INTO meseros (id_mesero, nombre, ape_paterno, ape_materno, id_turno) VALUES (1, 'Carlos', 'López', 'García', 1);
INSERT INTO meseros (id_mesero, nombre, ape_paterno, ape_materno, id_turno) VALUES (2, 'María', 'Rodríguez', 'Pérez', 1);
INSERT INTO meseros (id_mesero, nombre, ape_paterno, ape_materno, id_turno) VALUES (3, 'José', 'Martínez', 'Sánchez', 2);
INSERT INTO meseros (id_mesero, nombre, ape_paterno, ape_materno, id_turno) VALUES (4, 'Ana', 'Hernández', 'Díaz', 2);
INSERT INTO meseros (id_mesero, nombre, ape_paterno, ape_materno, id_turno) VALUES (5, 'Luis', 'González', 'Ruiz', 3);
INSERT INTO meseros (id_mesero, nombre, ape_paterno, ape_materno, id_turno) VALUES (6, 'Laura', 'Fernández', 'Moreno',3);

-- Clientes (10)
INSERT INTO clientes (id_cliente, nombre) VALUES (1, 'Juan Pérez Morales');
INSERT INTO clientes (id_cliente, nombre) VALUES (2, 'Sofía Ramírez Torres');
INSERT INTO clientes (id_cliente, nombre) VALUES (3, 'Miguel Ángel Castro');
INSERT INTO clientes (id_cliente, nombre) VALUES (4, 'Valeria Mendoza Ortiz');
INSERT INTO clientes (id_cliente, nombre) VALUES (5, 'Roberto Salazar Vega');
INSERT INTO clientes (id_cliente, nombre) VALUES (6, 'Camila Fuentes Rivera');
INSERT INTO clientes (id_cliente, nombre) VALUES (7, 'Andrés Castillo Herrera');
INSERT INTO clientes (id_cliente, nombre) VALUES (8, 'Gabriela Navarro Luna');
INSERT INTO clientes (id_cliente, nombre) VALUES (9, 'Diego Armando Rivas');
INSERT INTO clientes (id_cliente, nombre) VALUES (10, 'Lucía Domínguez Flores');

-- Reservas (8 ejemplos)
INSERT INTO reservas (id_reserva, fecha, id_cliente, id_mesero) VALUES (1, '2025-11-28 13:30:00', 1, 1);
INSERT INTO reservas (id_reserva, fecha, id_cliente, id_mesero) VALUES (2, '2025-11-28 14:00:00', 3, 2);
INSERT INTO reservas (id_reserva, fecha, id_cliente, id_mesero) VALUES (3, '2025-11-28 20:15:00', 5, 5);
INSERT INTO reservas (id_reserva, fecha, id_cliente, id_mesero) VALUES (4, '2025-11-29 13:00:00', 2, 1);
INSERT INTO reservas (id_reserva, fecha, id_cliente, id_mesero) VALUES (5, '2025-11-29 21:00:00', 7, 6);
INSERT INTO reservas (id_reserva, fecha, id_cliente, id_mesero) VALUES (6, '2025-11-30 12:45:00', 4, 3);
INSERT INTO reservas (id_reserva, fecha, id_cliente, id_mesero) VALUES (7, '2025-11-30 19:30:00', 8, 4);
INSERT INTO reservas (id_reserva, fecha, id_cliente, id_mesero) VALUES (8, '2025-12-01 20:00:00', 10, 5);

-- ==================================================
-- A PARTIR DE AQUÍ VIENE "CONSULTAS SQL"
-- ==================================================

-- ==================================================
-- CLAUSULA SELECT"
-- ==================================================

-- Seleccionada todos los campos de la tabla clientes
SELECT * from clientes;

-- Selecciona el campo nombre de la tabla clientes
SELECT nombre from clientes;

-- Selecciona el campo nombre, ape_materno, ape_paterno de la tabla meseros
SELECT id_mesero, nombre, ape_materno, ape_paterno from meseros;

-- ==================================================
-- CLAUSULA SELECT CON WHERE"
-- ==================================================

-- Mostrar los meseros cuando el nombre sea "Carlos"
SELECT * from meseros  where nombre = 'Carlos';

-- ==================================================
-- CLAUSULA SELECT CON ORDER BY"
-- ==================================================

-- Ordenar el nombre de los meseros de forma ascendente
SELECT * from meseros order by nombre asc;

-- Ordenar por Identificador del meseros de mayor a menor
SELECT * from meseros order by id_mesero desc

-- ==================================================
-- CONSULTAS MULTITABLAS (USO DE JOIN)
-- ==================================================

