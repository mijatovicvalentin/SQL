use master;

drop database nakladnik;

create database  nakladnik;

use nakladnik;

create table nakladnik(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	oib char(11),
	izdavackakuca varchar(50), 
);


create table djelo(
	id int not null primary key identity(1,1),
	naziv int,
	autor varchar(50) not null,
	bestseller bit,
);



create table knjiga(
	id int not null primary key identity(1,1),
	nakladnik int not null,
	djelo int not null,
);



create table mjesto(
	id int not null primary key identity(1,1),
	nakladnik int not null,
	adresa varchar(50) not null,
	naziv int,
);

alter table knjiga add foreign key (nakladnik) references nakladnik(id);
alter table knjiga add foreign key (djelo) references djelo(id);
alter table mjesto add foreign key (nakladnik) references nakladnik(id);