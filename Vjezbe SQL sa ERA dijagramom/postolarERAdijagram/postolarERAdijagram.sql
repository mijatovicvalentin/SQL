use master;

drop database postolarskaradnja;

create database postolarskaradnja;

use postolarskaradnja;


create table korisnik(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	oib char(11),
	obuca varchar(50),
);

create table obuca_popravak(
	obuca int not null,
	popravak int not null,
);

create table obuca(
	id int not null primary key identity(1,1),
	brojpopravka int,
	korisnik int not null,
	vrsta varchar(50),
);



create table popravak(
	id int not null primary key identity(1,1),
	trajanje int,
	cijena decimal(18,2),
	zaposlenik int not null,
);




create table zaposlenik(
	id int not null primary key identity(1,1),
	segrt varchar(50),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	oib char(11),
	strucnasprema int not null,
);




create table strucnasprema(
	id int not null primary key identity(1,1),
	naziv int,
	segrt varchar(50) not null,
);


alter table popravak add foreign key (zaposlenik) references zaposlenik(id);
alter table zaposlenik add foreign key (strucnasprema) references strucnasprema(id);
alter table obuca_popravak add foreign key (obuca) references obuca(id);
alter table obuca_popravak add foreign key (popravak) references popravak(id);
alter table obuca add foreign key (korisnik) references korisnik(id);