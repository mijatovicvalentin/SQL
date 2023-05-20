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
  
  
  
insert into dijete (ime,prezime,razred) values('marin','lukas','prvi');
insert into dijete (ime,prezime,razred) values('lea','bajs','drugi');
insert into dijete (ime,prezime,razred) values('helena','jelas','prvi');
insert into dijete (ime,prezime,razred) values('magda','jukic','drugi');


insert into  uciteljica (radionica,ime,prezime,predmetpredavanja) values('1','marija','peric','hrvatski');
insert into  uciteljica (radionica,ime,prezime,predmetpredavanja) values('1','leonarda','bajs','engleski');
insert into  uciteljica (radionica,ime,prezime,predmetpredavanja) values('1','ivana','ljubic','matematika');
insert into  uciteljica (radionica,ime,prezime,predmetpredavanja) values('1','nevenka','atrojic','prirodaidrustvo');

insert into radionica (uciteljica,naziv) values('1','leptiri');
insert into radionica (uciteljica,naziv) values('2','kolovoz');
insert into radionica (uciteljica,naziv) values('3','matematika1');
insert into radionica (uciteljica,naziv) values('4','priroda'); 

insert into dijete_radionica (dijete,radionica) values('1','2');
insert into dijete_radionica (dijete,radionica) values('1','2');
insert into dijete_radionica (dijete,radionica) values('1','2');
insert into dijete_radionica (dijete,radionica) values('1','2');
