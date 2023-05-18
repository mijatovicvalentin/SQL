use master;

drop database samostan;

create database samostan;


use samostan;



create table nadredjeni(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	oib char(11),
	svecenik int not null,
);


create table svecenik(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
);

create table posao(
	id int not null primary key identity(1,1),
	trajanje int, 
	vrstaposla varchar(50),
	zaduzenja varchar(50),
);


create table svecenik_posao(
	id int not null primary key identity(1,1),
	svecenik int not null,
	posao  int not null,
);


alter table nadredjeni add foreign key (svecenik) references svecenik(id);
alter table svecenik_posao add foreign key (posao) references posao(id);
alter table svecenik_posao add foreign key (svecenik) references svecenik(id);
