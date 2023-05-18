use master;

drop database urarsilvija;

create database urarsilvija;

use urarsilvija;


create table sat(
	id int not null primary key identity(1,1),
	korisnik int not null,
	naziv varchar(50),
	cijena decimal(18,2),
	boja varchar(50) not null
);


create table popravak(
	id int not null primary key identity(1,1),
	cijena decimal(18,2),
	trajanje int,
	alat varchar(50),
	zaposlenik int not null,
);



create table sat_popravak(
	id int not null primary key identity(1,1),
	sat int not null,
	popravak int not null,
);


create table zaposlenik(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	oib char(11),
);



create table korisnik(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	oib char(11),
	kontakt varchar(25),
);

create table strucnasprema(
	id int not null primary key identity(1,1),
	zaposlenik int not null,
);

alter table strucnasprema add foreign key (zaposlenik) references zaposlenik(id);
alter table sat_popravak add foreign key (sat) references sat(id);
alter table sat_popravak add foreign key (popravak) references popravak(id);
alter table popravak add foreign key (zaposlenik) references zaposlenik(id);
alter table sat add foreign key (korisnik) references korisnik(id);
