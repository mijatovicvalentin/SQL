use master;

drop database klubcitatelja;

create database klubcitatelja;

use klubcitatelja;

create table citatelj(
		sifra int not null primary key identity(1,1),
		knjiga int,
		ime varchar(50) not null,
		prezime varchar(50) not null,
		kartica varchar(50) not null,
		clanstvo varchar(50),
);


create table knjiga(
		sifra int not null primary key identity(1,1),
		citatelj int,
		posudba int,
		naziv varchar(50) not null,
		oznaka varchar(50) not null,
		imeautora varchar(50) not null,
);
create table posudba(
		sifra int not null primary key identity(1,1),
		trajanje int,
		citatelj int,
		oznaka varchar(50),
);


alter table posudba add foreign key (citatelj) references citatelj(sifra);
alter table knjiga add foreign key (posudba) references posudba(sifra);