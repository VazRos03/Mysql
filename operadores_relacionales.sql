use biblioteca;
/*
= igual
<> distinto
> mayor
< menor
>= mayor o igual
<= menor o igual
*/
show tables;

desc libros;

-- insercion de datos

insert into libros values (0989,'Tarza Lopez','La rosa de pandi', 156.78, 156);
insert into libros values (0456,'Luis yuyots','el camino al pueblo', 179.78, 90);
insert into libros values (0890,'Sebastian Mendez','La botella de licor', 256.89, 567);
insert into libros values (0789,'Come Galletas','La galleta perdida', 345.78, 200);
insert into libros values (2456,'Elmo Elrojo','Te revelas contra Elmo?', 567.00, 20);
insert into libros values (5678,'Juan Escutia','La bandera sangrienta', 206.78, 190);

drop table if exists libros; #para eliminar una tabla con el condicional de que si existe

-- seleccion de datos en especifico con los operadores relacionales
select * from libros where id_libro <> 1657; # con este operador (<>) le estamos diciendo que muestre la base de datos menos el registro donde tengamos un autor 'Shandi Iturbide'

select autor, titulo, precio from libros where precio <=200; #con los operadores (>, <, >=, <=) nos mostrara todos los datos que cumplan con la condicional

select * from libros where cantidad >=200; #imprime los resgistros que cumplen con la condicional donde solo seran los que tengan mas o igual a 200 en el campo cantidad

-- ELIMINANDO REGISTROS DE UNA TABLA 

select * from libros;

delete from libros where cantidad >= 200; #eliminaremos el registro que cumpla con una cantidad de 200


-- IN Y BETWEEN
use administracion;

create table estudiantes(
	id int unsigned not null auto_increment primary key,
    nombre varchar(50) not null,
    edad tinyint unsigned not null
);

insert into estudiantes(nombre,edad) values('Luis',14);
insert into estudiantes(nombre,edad) values('Thiego',17);
insert into estudiantes(nombre,edad) values('Marta',19);
insert into estudiantes(nombre,edad) values('Lupita',13);
insert into estudiantes(nombre,edad) values('Criss',18);
insert into estudiantes(nombre,edad) values('Alfaro',16);

select * from estudiantes;

#operador in
select * from estudiantes where nombre in('Criss','Luis','Alfaro');

select nombre from estudiantes where edad in(18) and id>1;

# operador between
select * from estudiantes where nombre between'Thiego' and 'Criss';