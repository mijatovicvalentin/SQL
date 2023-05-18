use master;

drop database salonzauljepsavanje;

create database salonzauljepsavanje;

use salonzauljepsavanje;


create table djelatnica(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	oib char(11),
	korisnik int not null,

);



create table korisnik(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	oib char(11),
	spol bit,
);



create table usluga(
	id int not null primary key identity(1,1),
	korisnik int not null,
	trajanje int,
	cijena decimal(18,2),
	proizvod varchar(50),
);

create table strucnasprema(
	id int not null primary key identity(1,1),
	djelatnica int not null,
);

alter table usluga add foreign key (korisnik) references korisnik(id);
alter table djelatnica add foreign key (korisnik) references korisnik(id);
alter table strucnasprema add foreign key (djelatnica) references djelatnica(id);
