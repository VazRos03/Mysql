#clausula order by del select
use administracion;

create table alumnos(
	id int unsigned not null auto_increment primary key,
    nombre varchar(50) not null,
    edad int unsigned not null,
    grupo varchar(8) not null
);

desc alumnos;

insert into alumnos(nombre,edad,grupo) values('Alberto Perez', 14, '3A');
insert into alumnos(nombre,edad,grupo) values('Juanita Mendez', 15, '4A');
insert into alumnos(nombre,edad,grupo) values('Tarza Lopez', 14, '3B');
insert into alumnos(nombre,edad,grupo) values('Alberto Sanchez', 17, '6C');

select * from alumnos;

truncate alumnos; -- el comando truncate sirve para limpiar la tabla seleccionada, es decir, deja la tabla en blanca

-- order by
select * from alumnos order by edad; -- orden de menor a mayor
select * from alumnos order by edad desc; -- orden de mayor a menos
