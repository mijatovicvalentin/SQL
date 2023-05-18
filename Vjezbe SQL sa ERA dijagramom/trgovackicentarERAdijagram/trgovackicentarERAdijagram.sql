use master;

drop database trgovackicentar;

create database trgovackicentar;

use trgovackicentar;


create table trgovina(
	id int not null primary key identity(1,1),
	naziv int,
	marka varchar(50),
	cijena decimal(18,2),
);


create table zaposlenik(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	oib char(11) not null,
);


create table trgovina_zaposlenik(
	id int not null primary key identity(1,1),
	trgovina int not null,
	zaposlenik int not null,
	);

create table sef(
	ime varchar(50) not null,
	prezime varchar(50) not null, 
	odjeljenje varchar(50) not null,
	zaposlenik int not null, 
);


alter table trgovina_zaposlenik add foreign key (trgovina) references trgovina(id);
alter table trgovina_zaposlenik add foreign key (zaposlenik) references zaposlenik(id);
alter table sef add foreign key (zaposlenik) references zaposlenik(id);
