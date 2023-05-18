use master;

drop database udrugazazastituzivotinja;

create database udrugazazastituzivotinja;

use udrugazazastituzivotinja;


create table osoba(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	oib char(11),
	titula varchar(50),
);



create table zivotinja(
	id int not null primary key identity(1,1),
	naziv varchar(50) not null,
	vrsta varchar(50),
	porijeklo varchar(50) not null,
);


create table osoba_zivotinja(
	id int not null primary key identity(1,1),
	osoba int not null,
	zivotinja int not null,
);


create table prostor(
	id int not null primary key identity(1,1),
	zivotinja int not null,
	velicina varchar(50),
);


alter table prostor add foreign key (zivotinja) references zivotinja(id);
alter table osoba_zivotinja add foreign key (osoba) references osoba(id);
alter table osoba_zivotinja add foreign key (zivotinja) references zivotinja(id);