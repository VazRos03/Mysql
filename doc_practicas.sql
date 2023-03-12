-- PRACTICA 1 (AGENDA)
use administracion;

#creamos tabla
create table agenda(
	nombre varchar (20) not null,
    apellido varchar(30) not null,
    domicilio varchar (30) not null,
    telefono varchar(11) not null 
);

drop table if exists agenda; #eliminamos tabla si existe

show tables;

desc agenda;# describe la tabla

# insertamos registros en la tabla
insert into agenda values ('Juan', 'Perez','Colon 123','4234567');
insert into agenda values ('Alberto', 'Mores','Avellaneda 135','4458787');
insert into agenda values ('Mariana', 'Lopez','Urquiza 333','45455454');
insert into agenda values ('Jose', 'Lopez','Urquiza 333','45455454');
insert into agenda values ('Susana', 'Peralta','Gral. Paz 12334','4123456');

select * from agenda where telefono <>'45455454'; #nos mostrara los registros de agenda donde telefono sea diferente a '45455454'

#eliminando registros cuyo nombre sea 'Juan'
delete from agenda where nombre = 'Juan';

#eliminando registros cuyo numero sea '45455454'
delete from agenda where telefono = '45455454';

select * from agenda;