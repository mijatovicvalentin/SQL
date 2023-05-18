use master;

drop database srednjaskola;

create database srednjaskola;

use srednjaskola;

create table razred(
	id int not null primary key identity(1,1),
	naziv varchar(25),
);


create table ucenik(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	razred int not null,
);


create table profesor(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	predmet varchar(20), 
);

create table profesor_razred(
	profesor int not null,
	razred int not null,
);


alter table profesor_razred add foreign key (profesor) references profesor(id);
alter table profesor_razred add foreign key (razred) references razred(id);
alter table ucenik add foreign key (razred) references razred(id);

