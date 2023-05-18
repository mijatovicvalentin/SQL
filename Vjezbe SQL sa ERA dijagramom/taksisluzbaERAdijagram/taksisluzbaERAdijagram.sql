 use master;

 drop database  taksisluzba;

create database taksisluzba;

use taksisluzba;


create table vozilo(
	id int not null primary key identity(1,1),
	cijena decimal(18,2),
	marka  varchar(50),
	godište varchar(50),
);


create table vozac(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	obi char(11),
	vozilo int not null,
);


create table putnik(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	oib char(11),
);


create table voznja(
	id int not null primary key identity(1,1),
	kilometraza decimal(5,2),
	cijena decimal(18,2),
	potrosnja decimal(4,2),
	vozac int not null,
);

create table voznja_putnik(
	id int not null primary key identity(1,1),
	voznja int not null,
	putnik int not null,
);

alter table voznja_putnik add foreign key (voznja) references voznja(id);
alter table voznja_putnik add foreign key (putnik) references putnik(id);
alter table vozac add foreign key (vozilo) references vozilo(id);
alter table voznja add foreign key (vozac) references vozac(id);