use master;

drop database KUD;

create database KUD;

use KUD;


create table clan(
	id int not null primary key identity(1,1),
	ime varchar(50),
	prezime varchar(50),
	oib char(11),
);


create table nastup(
	id int not null primary key identity(1,1),
	adresa varchar(50) not null,
	naziv int,
);


create table clan_nastup(
	id int not null primary key identity(1,1),
	clan int not null,
	nastup int not null,
);



create table mjesto(
	id int not null primary key identity(1,1),
	adresa varchar(50) not null,
	nastup int not null,
);


alter table clan_nastup add foreign key (clan) references clan(id);
alter table clan_nastup add foreign key (nastup) references nastup(id);
alter table mjesto add foreign key (nastup) references nastup(id);