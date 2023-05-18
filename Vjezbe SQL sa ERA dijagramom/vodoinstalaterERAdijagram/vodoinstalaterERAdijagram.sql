use master;

drop database vodoinstalater;

create database vodoinstalater;

use vodoinstalater;


create table popravak(
	id int not null primary key identity(1,1),
	cijena decimal (18,2),
	trajanje int,
	naziv int,
	zaposlenik int not null,
);


create table kvar(
	id int not null primary key identity(1,1),
	cijena decimal(18,2),
	naziv int,
	kolicina varchar(50),
);



create table popravak_kvar(
	id int not null primary key identity(1,1),
	popravak int not null,
	kvar int not null,
);



create table zaposlenik(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	oib char(11),
	strucnasprema int not null,
);



 create table strucnasprema(
	id int not null primary key identity(1,1),
	naziv int,
	segrt bit,
);


alter table popravak_kvar add foreign key (popravak) references popravak(id);
alter table popravak_kvar add foreign key (kvar) references kvar(id);
alter table zaposlenik add foreign key (strucnasprema)references strucnasprema(id);
alter table popravak add foreign key (zaposlenik) references zaposlenik(id);
