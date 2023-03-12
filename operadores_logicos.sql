/*
	and -> significa 'y'
    or -> significa 'y/o'
    xor -> significa 'o'
    not -> significaba 'no', invierte el resultaado
*/
use biblioteca;

select * from libro;

-- and
select * from libro where codigo >=3 and codigo < 5;

select titulo, precio from libro where precio=15.50 or precio >=30.00; #or 

select * from libro where codigo >= 1 xor codigo <=2; #xor

-- modificando un registro de la tabla libro
update libro set precio = 20.00 where codigo = 3;

select * from libro where not (precio >=20); #not