use master;

drop database zooloski;


create database zooloski;

use zooloski;

create table zivotinja(
	sifra int not null primary key identity(1,1),
	vrsta varchar(50) not null,
	ime varchar(50) not null,
	djelatnik int not null,
	prostorija int not null,
	datum int not null,
);

create table djelatnik(
	sifra int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	iban varchar(50),
);


create table datum(
	sifra int not null primary key identity(1,1),
	drodjenja datetime,
	ddolaska datetime, 
	dsmrti datetime,
);


create table prostorija(
	sifra int not null primary key identity(1,1),
	dimenzije varchar(30), 
	maks_broj int not null,
	mjesto varchar(50),
);


alter table zivotinja add foreign key (djelatnik) references djelatnik(sifra);
alter table zivotinja add foreign key (prostorija) references prostorija(sifra);
alter table zivotinja add foreign key (datum) references datum(sifra);



insert into djelatnik (ime,prezime,iban) values('marko','lukic','9876948576');
insert into djelatnik (ime,prezime,iban) values('luka','lukic','9836448576');
insert into djelatnik (ime,prezime,iban) values('ivan','lukic','95983768576');
insert into djelatnik (ime,prezime,iban) values('petar','matej','5587648576');



insert into datum (drodjenja,ddolaska,dsmrti) values('2016-11-21','2018-05-18','2023-05-19');
insert into datum (drodjenja,ddolaska,dsmrti) values('2012-09-14','2017-05-18','2021-05-19');
insert into datum (drodjenja,ddolaska,dsmrti) values('2013-05-21','2014-05-18','2023-05-19');
insert into datum (drodjenja,ddolaska,dsmrti) values('2011-12-18','2015-05-18','2022-05-19');


insert into prostorija (dimenzije,maks_broj,mjesto ) values('6x6','2','osijek');
insert into prostorija (dimenzije,maks_broj,mjesto ) values('8x8','3','vukovar');
insert into prostorija (dimenzije,maks_broj,mjesto ) values('13x3','6','split');
insert into prostorija (dimenzije,maks_broj,mjesto ) values('6x6','8','zagreb');



insert into zivotinja (vrsta,ime,djelatnik,prostorija,datum) values('lav','noa','marko','8x8','2023-12-28');
insert into zivotinja (vrsta,ime,djelatnik,prostorija,datum) values('nilskikonj','enid','luka','8x8','2022-11-21');
insert into zivotinja (vrsta,ime,djelatnik,prostorija,datum) values('¸zirafa','dion','ivan','13x3','2021-07-19');
insert into zivotinja (vrsta,ime,djelatnik,prostorija,datum) values('nosorog','bai','matej','6x6','2020-05-18');


