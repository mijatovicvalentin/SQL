use master;

drop database OPG;

create database OPG;

use OPG;	

create table djelatnik(
		sifra int not null primary key identity(1,1),
		ime varchar(50) not null,
		prezime varchar(50) not null,
		oib char(13),
);

create table proizvod(
		sifra int not null primary key identity(1,1),
		naziv int,
		broj int,
		djelatnik int,
		podrijeklo varchar(50) not null,
);


create table sirovina(
		sifra int not null primary key identity(1,1),
		naziv int,
);

create table proizvod_sirovina(
		proizvod int not null,
		sirovina int not null,
);



alter table proizvod_sirovina add foreign key (proizvod) references proizvod(sifra);
alter table proizvod_sirovina add foreign key (sirovina) references sirovina(sifra);
alter table proizvod add foreign key (djelatnik) references djelatnik(sifra);
