use master;

drop database zooloski;


create database zooloski;

use zooloski;

create table zivotinja(
	sifra int not null primary key identity(1,1),
	vrsta varchar(50) not null,
	ime varchar(50) not null,
	djelatnik int not null,
	prostorija int not null,
	datum int not null,
);

create table djelatnik(
	sifra int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	iban varchar(50),
);


create table datum(
	sifra int not null primary key identity(1,1),
	drodjenja datetime,
	ddolaska datetime, 
	dsmrti datetime,
);


create table prostorija(
	sifra int not null primary key identity(1,1),
	dimenzije varchar(30), 
	maks_broj int not null,
	mjesto varchar(50),
);


alter table zivotinja add foreign key (djelatnik) references djelatnik(sifra);
alter table zivotinja add foreign key (prostorija) references prostorija(sifra);
alter table zivotinja add foreign key (datum) references datum(sifra);


