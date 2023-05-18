use master;

drop database odvjetnickiured;

create database odvjetnickiured;

use odvjetnickiured;


create table odvjetnik(
	id int not null primary key identity(1,1),
	ured varchar(50),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	titula bit,
	oib char(11),
	kontakt varchar(20),


);


create table klijent(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	kontakt varchar(20),


);


	
create table suradnik(		
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	oib char(11),

);



create table obrana(
	id int not null primary key identity(1,1),
	odvjetnik int not null,
	klijent int not null,
	trajanje int,
	cijena decimal(6,2),
	odluka bit null,
);


create table suradnik_obrana(
	obrana int not null,
	suradnik int not null,
);



alter table suradnik_obrana add foreign key (suradnik) references suradnik(id);
alter table suradnik_obrana add foreign key (obrana) references obrana(id);
alter table obrana add foreign key (klijent) references klijent(id);
alter table obrana add foreign key (odvjetnik) references odvjetnik(id);
