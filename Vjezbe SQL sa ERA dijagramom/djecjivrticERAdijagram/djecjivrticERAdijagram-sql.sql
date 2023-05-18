use master ;

drop database djecjivrtic;

create database djecjivrtic;


use djecjivrtic;


create table odgojnaskupina(
	id int not null primary key identity(1,1),
	dijete int not null,
	broj varchar(50),
);

create table dijete(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	datumrodjenja int,  
);



create table odgajateljica(
	id int not null primary key identity(1,1),
	odgojnaskupina int not null,
	ime varchar(50) not null,
	prezime varchar(50) not null,
	oib char(11),
);



create table strucnasprema(
	id int not null primary key identity(1,1),
	odgajateljica int not null,
);


alter table odgojnaskupina add foreign key (dijete) references dijete(id);
alter table odgajateljica add foreign key (odgojnaskupina) references odgojnaskupina(id);
alter table strucnasprema add foreign key (odgajateljica) references odgajateljica(id);