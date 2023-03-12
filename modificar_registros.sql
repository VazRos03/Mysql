use administracion;
show tables;

#modificacion de un registro de la tabla empleados de la base de datos administracion
update empleado set nombre = 'Luis Rosales' where nombre = 'Arturo Vazquez';
update empleado set area_trabajo = 'Gerencia' where id_emp = 187 ;

select * from empleado;

desc empleado;

-- CLAVE PRIMARIA
drop table if exists usuarios;

create table usuarios(
	id_usuario int primary key,
    nombre varchar(50),
    apellido varchar(50)
);

desc usuarios;

insert into usuarios values (1234,'Luis','Gonzales');
insert into usuarios values (0987,'Alejandro','Perez');
insert into usuarios values (7896,'Norma','Martinez');

select * from usuarios where id_usuario <> 1234;

/* cuando uno de los atributos de la tabla es una primary key, 
esto no nos permite repetir datos en un campo, si intentaramos ingresar este registro con el dato reptido en
el campo donde esta la pk, nos mandara error
 */
insert into usuarios values (1234,'Remendejildo','Lopez');

-- AUTOINCREMENT Y NOT NULL

use biblioteca;

show tables;

drop table if exists libro;

create table libro(
codigo int auto_increment not null primary key,
titulo varchar(40) not null,
autor varchar(30) not null,
editorial varchar(15),
precio decimal(5,2) not null
);

-- insercion de datos
insert into libro(titulo,autor,editorial,precio) values ('EL aleph', 'Borges', 'Plantea', 15.50);
insert into libro(titulo,autor,editorial,precio) values ('Martin Fierro', 'Jose Hernandez', 'Plantea', 39);
insert into libro(titulo,autor,editorial,precio) values ('Aprenda PHP', 'Mario Molina', 'Emece', 19.50);
insert into libro(titulo,autor,editorial,precio) values ('Cervantes y el quijote', 'Borges', 'Paidos', 35.40);
insert into libro(titulo,autor,editorial,precio) values ('Matematica estas ahi', 'Paenza', 'Paidos', 19);
insert into libro(titulo,autor,editorial,precio) values ('Roberto', 'Cuarteto de nos', null, 19);

select * from libro;
desc libro;

delete from libro where titulo = 'Roberto';

