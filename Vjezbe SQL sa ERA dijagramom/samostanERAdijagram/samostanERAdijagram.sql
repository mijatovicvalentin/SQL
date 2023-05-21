use master;

drop database samostan;

create database samostan;


use samostan;



create table nadredjeni(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	oib char(11),
	svecenik int not null,
);


create table svecenik(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
);

create table posao(
	id int not null primary key identity(1,1),
	trajanje int, 
	vrstaposla varchar(50),
	zaduzenja varchar(50),
);


create table svecenik_posao(
	id int not null primary key identity(1,1),
	svecenik int not null,
	posao  int not null,
);


alter table nadredjeni add foreign key (svecenik) references svecenik(id);
alter table svecenik_posao add foreign key (posao) references posao(id);
alter table svecenik_posao add foreign key (svecenik) references svecenik(id);



insert into svecenik (ime,prezime) values('petar','martic');
insert into svecenik (ime,prezime) values('luka','jelioc');
insert into svecenik (ime,prezime) values('mario','brankoc');
insert into svecenik (ime,prezime) values('luka','martic');


insert into posao (trajanje,vrstaposla,zaduzenja) values('60','branjelisca','visezaduzenja');
insert into posao (trajanje,vrstaposla,zaduzenja) values('60','skupljanjemseca','visezaduzenja');
insert into posao (trajanje,vrstaposla,zaduzenja) values('60','pranjeoltara','jednozaduzenje');
insert into posao (trajanje,vrstaposla,zaduzenja) values('60','posvecivanjejela','visezaduzenja');


insert into svecenik_posao (svecenik,posao) values('1','2');
insert into svecenik_posao (svecenik,posao) values('1','2');
insert into svecenik_posao (svecenik,posao) values('1','2');
insert into svecenik_posao (svecenik,posao) values('1','2');



insert into nadredjeni (ime,prezime,oib,svecenik) values('mario','kraljic','08974859711','1');
insert into nadredjeni (ime,prezime,oib,svecenik) values('marin','zaric','08659e59718','1');
insert into nadredjeni (ime,prezime,oib,svecenik) values('petar','kojic','76739859732','1');
insert into nadredjeni (ime,prezime,oib,svecenik) values('branimir','lukic','81748859718','1');
