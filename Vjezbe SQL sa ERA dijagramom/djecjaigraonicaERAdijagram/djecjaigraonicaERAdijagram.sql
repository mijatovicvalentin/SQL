use master;

drop database djecjaigraonica;

create database djecjaigraonica;

use djecjaigraonica;


create table dijete(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	spol  bit,
	razred varchar(50),
);


create table skupina(
	id int not null primary key identity(1,1), 
	naziv varchar(15),
	broj  varchar(10),
	teta int not null,
);


create table teta(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	oib char(11),
);


create table dijete_skupina(
	dijete int not null,
	skupina int not null,
);


alter table dijete_skupina add foreign key (dijete) references dijete(id);
alter table dijete_skupina add foreign key (skupina) references skupina(id);
alter table skupina add foreign key (teta) references teta(id);

