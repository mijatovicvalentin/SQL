use master;

drop database osnovnaskola;

create database osnovnaskola;

use osnovnaskola;

create table radionica(
	Id int not null primary key identity(1,1),
	uciteljica int not null,
	naziv  varchar(15) not null,
);


create table dijete(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	razred varchar(8) null,
);


create table uciteljica(
	id int not null primary key identity(1,1),
	radionica int not null,
	ime varchar(50) not null,
	prezime varchar(50) not null,
	predmetpredavanja varchar(50),
)


create table dijete_radionica(
	dijete int not null,
	radionica int not null,
);


alter table dijete_radionica add foreign key (dijete) references dijete(id);
alter table dijete_radionica add foreign key (radionica) references radionica(id);
alter table radionica add foreign key (uciteljica) references uciteljica(id);
  