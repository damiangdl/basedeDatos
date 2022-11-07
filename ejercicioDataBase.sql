-- Crear base
create database ejercicioDataBase;

-- Utilizar base
use ejercicioDataBase;

-- Crear tabla
create table tablaDataBase
(
id INT(11) not null auto_increment primary key,
nombre VARCHAR(40),
apellido VARCHAR(40),
edad tinyint(2),
fecha timestamp not null default current_timestamp,
provincia VARCHAR(30)
)

-- Ingreso registros
insert into tablaDataBase (nombre, apellido, edad, provincia) values ('Elias', 'Gonzalez', 33, 'Chubut');
insert into tablaDataBase (nombre, apellido, edad, provincia) values ('Fernanda', 'Gomez', 55, 'Corrientes');
insert into tablaDataBase (nombre, apellido, edad, provincia) values ('Federico', 'Bustamante', 18, 'Mendoza');
insert into tablaDataBase (nombre, apellido, edad, provincia) values ('Anahi', 'Senger', 23, 'Misiones');
insert into tablaDataBase (nombre, apellido, edad, provincia) values ('Juan', 'Chavarria', 65, 'Cordoba');
insert into tablaDataBase (nombre, apellido, edad, provincia) values ('Raul', 'Dazza', 29, 'Buenos Aires');

-- Mostrar tabla
use ejercicioDataBase;
show tables;
show fields from tablaDataBase;

-- Borrar registros tabla
delete from tablaDataBase where nombre = 'Juan';

-- modificar mi tabla
alter table tablaDataBase add ingresos int(11);

update tablaDataBase set ingresos=560000 where nombre='Raul';
update tablaDataBase set ingresos=300000 where apellido='Senger';
update tablaDataBase set ingresos=70000 where id='4';
update tablaDataBase set ingresos=450000 where provincia ='Corrientes';



