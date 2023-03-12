create table registros(
	nombre varchar(50) null,
    edad int not null,
    grado_estudios varchar(20)
);

drop table if exists registros;

insert into registros values('Arturo',19,'licenciatura');
insert into registros values('Luis',19,'licenciatura');
insert into registros values('Sergio',19,'Maestria');
insert into registros values('Antonio',19,'Media_Superior');
insert into registros values('Grisselle',21,'Doctorado');
insert into registros values('Alejandro',26,'Doctorado');

select * from registros;
/*con el like estamos diciendo que nos muestre los registros que tienen el dato que queremos
nota: debemos poner el dato que queremos entre dos porcentajes
 select <campo> from <tabla> where <campo> like '%dato que queremos%'
*/
select * from registros where grado_estudios like '%Doctorado%';
select * from registros where nombre like '%o'; -- lanzara todos los nombres que terminen con 'o'
select * from registros where edad like '%19%'; -- lanzara todos los registros que tengan en edad 19

/*NOT LIKE
con not like estamos diciendo que nos muestre los regsitros menos el que tenga dicho campo,
la sitaxis es la misma
select <campo> from <tabla> where <campo> not like '%dato que queremos%'
*/
select * from registros where grado_estudios not like '%Doctorado%'; -- no mostrara a Grisselle y Alejandro
select * from registros where nombre not like '%o'; -- no mostrara los registros que en nombre terminen en o