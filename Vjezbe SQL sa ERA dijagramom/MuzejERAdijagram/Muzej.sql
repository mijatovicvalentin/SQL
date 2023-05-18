use master;

drop database muzej;

create database muzej;

use  muzej;


create table muzej(
		sifra int not null primary key identity(1,1),
		izlozba int,
		adresa varchar(50),
		naziv  varchar(50),
		email  varchar(50),
);

create table izlozba(
		sifra int not null primary key identity(1,1),
		clan int,
		naziv  varchar(50),
		atrij  varchar(50),
		trajanje  int,
);


create table kustos(
		sifra int not null primary key identity(1,1),
		ime varchar(50),
		prezime varchar(50),
		oib char(11),
);


create table sponzor(
		sifra int not null primary key identity(1,1),
		ime varchar(50),
		prezime varchar(50),
		posjetnica varchar(50),
);


create table clan(
		sifra int not null primary key identity(1,1),
		kustos int,
		sponzor int,
);

alter table muzej add foreign key (izlozba) references izlozba(sifra);
alter table izlozba add foreign key (clan) references clan(sifra);
alter table clan add foreign key (kustos) references kustos(sifra);
alter table clan add foreign key (sponzor) references sponzor(sifra);