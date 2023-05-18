use master;

drop database restoran;

create database restoran;

use restoran;

create table jelo(
	id int not null primary key identity(1,1),
	cijena money,
	naziv int,
	kategorija int not null,
);


create table pice(
	id int not null primary key identity(1,1),
	naziv int, 
	cijena money,
);


create table kategorija(
	id int not null primary key identity(1,1),
);

create table jelo_pice(
	id int not null primary key identity(1,1),
	jelo int not null,
	pice int not null,
);


alter table jelo_pice add foreign key (jelo) references jelo(id);
alter table jelo_pice add foreign key (pice) references pice(id);
alter table jelo add foreign key (kategorija) references kategorija(id);