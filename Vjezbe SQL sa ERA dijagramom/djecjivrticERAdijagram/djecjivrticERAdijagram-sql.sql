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
	datumrodjenja datetime,  
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


insert into dijete (ime,prezime,datumrodjenja) values('mario','valentic','2018-05-27');
insert into dijete (ime,prezime,datumrodjenja) values('luka','rosantic','2018-02-28');
insert into dijete (ime,prezime,datumrodjenja) values('marija','kruljic','2018-06-30');
insert into dijete (ime,prezime,datumrodjenja) values('matej','majic','2018-11-18');

insert into odgojnaskupina (dijete,broj) values('1','jedan');
insert into odgojnaskupina (dijete,broj) values('1','dva');
insert into odgojnaskupina (dijete,broj) values('2','tri');
insert into odgojnaskupina (dijete,broj) values('1','cetiri');

insert into odgajateljica (odgojnaskupina,ime,prezime,oib) values('1','marija','majic','09584928371');
insert into odgajateljica (odgojnaskupina,ime,prezime,oib) values('1','melisa','sakreda','09892428371');
insert into odgajateljica (odgojnaskupina,ime,prezime,oib) values('1','karla','kojic','09475827185');
insert into odgajateljica (odgojnaskupina,ime,prezime,oib) values('1','zola','horvat','09174859821');

insert into strucnasprema (odgajateljica) values('1')
insert into strucnasprema (odgajateljica) values('2')
insert into strucnasprema (odgajateljica) values('3')
insert into strucnasprema (odgajateljica) values('4')


