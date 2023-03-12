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

-- PRACTICA 2 (MEDICAMENTOS)
use administracion;

create table medicamentos (
codigo int unsigned auto_increment primary key,
nombre varchar(20) not null,
laboratorio varchar(20),
precio decimal(5,2),
cantidad int unsigned
);

drop table if exists medicamentos;

desc medicamentos;

# ingresando datos
insert into medicamentos(nombre,laboratorio,precio,cantidad) values('Sertal','Roche',5.2,100);
insert into medicamentos(nombre,laboratorio,precio,cantidad) values('Buscapina','Roche',4.10,200);
insert into medicamentos(nombre,laboratorio,precio,cantidad) values('Amoxidal 500','Bayer',15.60,100);
insert into medicamentos(nombre,laboratorio,precio,cantidad) values('Paracetamol 500','Bago',1.90,200);
insert into medicamentos(nombre,laboratorio,precio,cantidad) values('Bayaspirina','Bayer',2.10,150);
insert into medicamentos(nombre,laboratorio,precio,cantidad) values('Amoxidal Jarabe','Bayer',5.10,250);

select * from medicamentos;

-- usando ordenamiento
select nombre, precio from medicamentos order by precio desc;

select nombre, precio, cantidad from medicamentos order by cantidad;

select * from medicamentos order by laboratorio desc , cantidad asc;