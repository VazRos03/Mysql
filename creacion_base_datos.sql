-- creando una base de datos
create database administracion;
create database biblioteca;

-- mostrando bases de datos
show databases;

-- creando tablas de una base de datos
use administracion;

create table usuario(
	id_usuario int auto_increment,
	nombre varchar(50),
    edad int
);

create table personas(
	nombre varchar(50),
    apellido varchar(30)
);

show tables;

-- imprimimos tabla usuario de la base de datos administracion
desc usuario;

show columns from usuario;

#eliminando una tabla
drop table personas;

#eliminando tabla si existe
drop table if exists personas;


-- insertando elementos a las tablas
insert into usuario(id_usuario,nombre,edad) values (001,'Luis Arturo Vazquez Rosales',19);
insert into usuario(id_usuario,nombre,edad) values (026,'Juanito Perez Traga',20);
insert into usuario(id_usuario,nombre,edad) values (023,'Jose Alejandro Vazquez Rosales',26);
insert into usuario(id_usuario,nombre,edad) values (029,'Delfino Vazquez Lira',59);
-- consulta de datos de la tabla
select * from usuario;

-- HACEMOS EL MISMO EJEMPLO PERO CON LA BASE DE DATOS 'BIBLIOTECA'

-- usando la base de datos biblioteca
use biblioteca;

create table libros(
	id_libro int,
    autor varchar(50),
    titulo varchar(30),
    precio float,
    cantidad int
); 
 show tables;
 
 desc libros;

insert into libros values(0023,'David Ficsman','El secreto de las semillas',125.90,290);
insert into libros values(0124,'Enrique Menon','El ano volador de papantla',367.34,30);
insert into libros values(1657,'Juanito Perez','venden pan?',123.78,100);

-- consula de datos de la tabla 'libros' de la base de datos 'biblioteca'
select * from libros;

-- consulta personalizada
select titulo,precio from libros;
select titulo,cantidad from libros;

-- OPERADOR WHERE

-- creando tabla empleados en la base de datos 'administracion'

create table empleado(
	id_emp int,
    nombre varchar(50),
    area_trabajo varchar(30)
);
show tables;

insert into empleado values(0123,'Juan Perez','Limpieza');
insert into empleado values(0156,'Tarza Lopez','Caja');
insert into empleado values(0187,'Arturo Vazquez','Cocina');
insert into empleado values(0125,'Antonio Zamgay','Chupa penes');

-- haciendo la consulta con el where
select * from empleado where id_emp = 0123;