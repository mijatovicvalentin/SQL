use master;

drop database OPG;

create database OPG;

use OPG;	

create table djelatnik(
		sifra int not null primary key identity(1,1),
		ime varchar(50) not null,
		prezime varchar(50) not null,
		oib char(13),
);

create table proizvod(
		sifra int not null primary key identity(1,1),
		naziv varchar(50),
		broj int,
		djelatnik int,
		podrijeklo varchar(50) not null,
);


create table sirovina(
		sifra int not null primary key identity(1,1),
		naziv varchar(50),
);

create table proizvod_sirovina(
		proizvod int not null,
		sirovina int not null,
);



alter table proizvod_sirovina add foreign key (proizvod) references proizvod(sifra);
alter table proizvod_sirovina add foreign key (sirovina) references sirovina(sifra);
alter table proizvod add foreign key (djelatnik) references djelatnik(sifra);


insert into djelatnik (ime,prezime,oib) values('luka','ivic','04958678375')
insert into djelatnik (ime,prezime,oib) values('marin','terra','85960948572')
insert into djelatnik (ime,prezime,oib) values('evea','teric','04959857375')
insert into djelatnik (ime,prezime,oib) values('joka','jona','09584678375')

insert into sirovina (naziv) values('organska')
insert into sirovina (naziv) values('organska')
insert into sirovina (naziv) values('organska')
insert into sirovina (naziv) values('organska')



insert into proizvod (naziv,broj,djelatnik,podrijeklo) values('dedinmlin','1853','1','hrvatska')
insert into proizvod (naziv,broj,djelatnik,podrijeklo) values('babinmlin','9185','1','hrvatska')
insert into proizvod (naziv,broj,djelatnik,podrijeklo) values('nocnasova','2845','1','hrvatska')
insert into proizvod (naziv,broj,djelatnik,podrijeklo) values('vocnicaj','8596','1','hrvatska')


insert into proizvod_sirovina (proizvod,sirovina) values('1','2')
insert into proizvod_sirovina (proizvod,sirovina) values('1','2')
insert into proizvod_sirovina (proizvod,sirovina) values('1','2')
insert into proizvod_sirovina (proizvod,sirovina) values('1','2')


