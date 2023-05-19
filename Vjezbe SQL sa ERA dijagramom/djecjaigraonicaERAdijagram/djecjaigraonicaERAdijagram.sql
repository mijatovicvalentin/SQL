use master;

drop database djecjaigraonica;

create database djecjaigraonica;

use djecjaigraonica;


create table dijete(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	spol  bit,
	razred varchar(50),
);


create table skupina(
	id int not null primary key identity(1,1), 
	naziv varchar(15),
	broj  varchar(10),
	teta int not null,
);


create table teta(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	oib char(11),
);


create table dijete_skupina(
	dijete int not null,
	skupina int not null,
);


alter table dijete_skupina add foreign key (dijete) references dijete(id);
alter table dijete_skupina add foreign key (skupina) references skupina(id);
alter table skupina add foreign key (teta) references teta(id);


insert into dijete (ime,prezime,spol,razred)  values('luka','birtic','1','6');
insert into dijete (ime,prezime,spol,razred)  values('marija','lukic','2','5');
insert into dijete (ime,prezime,spol,razred)  values('ivan','jukic','1','6');
insert into dijete (ime,prezime,spol,razred)  values('jan','juros','1','8');



insert into teta (ime,prezime,oib) values('ana'.'birkic','96863904378');
insert into teta (ime,prezime,oib) values('petra'.'martic','96863904378');
insert into teta (ime,prezime,oib) values('marija'.'majic','85948576983');
insert into teta (ime,prezime,oib) values('zola'.'nikic','18948596079');



insert into skupina (naziv,broj,teta) values('liljan','4','ana');
insert into skupina (naziv,broj,teta) values('pcelica','3','petra');
insert into skupina (naziv,broj,teta) values('list','1','marija');
insert into skupina (naziv,broj,teta) values('cvijet','2','zola');



insert into dijete_skupina (dijete,skupina) values('luka','liljan');
insert into dijete_skupina (dijete,skupina) values('marija','pcelica');
insert into dijete_skupina (dijete,skupina) values('ivan','list');
insert into dijete_skupina (dijete,skupina) values('jan','cvijet');
