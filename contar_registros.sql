use administracion;
show tables;

desc alumnos;

select * from alumnos;
drop table if exists alumnos;

insert into alumnos(nombre,edad,grupo) values('Ximena Perez',19,'4D'); 
insert into alumnos(nombre,edad,grupo) values('Alberto Pendejasus',17,'2E'); 
insert into alumnos(nombre,edad,grupo) values('Samantha Lopez',19,'9E'); 
insert into alumnos(nombre,edad,grupo) values('Albertano Combis',14,'6A'); 
insert into alumnos(nombre,edad,grupo) values('Diego Rodriguez',15,'!A'); 
insert into alumnos(nombre,edad,grupo) values('Maluma Wilson',13,'3C'); 
insert into alumnos(nombre,edad,grupo) values('Yael Rubio',19,'2B'); 

#count
select count(*) from alumnos where nombre <> 'Ximena Perez'and ''; -- cuenta todos los registros que hay en la tabla 

-- ordenando la tabla alumnos
select * from alumnos order by edad;

-- modificando unos registros de la base de datos
update alumnos set nombre = 'Juanito Perez' where nombre = 'Alberto Sanchez';