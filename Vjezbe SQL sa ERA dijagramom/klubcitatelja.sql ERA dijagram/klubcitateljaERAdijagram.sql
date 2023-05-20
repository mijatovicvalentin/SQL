use master;

drop database klubcitatelja;

create database klubcitatelja;

use klubcitatelja;

create table citatelj(
		sifra int not null primary key identity(1,1),
		knjiga int,
		ime varchar(50) not null,
		prezime varchar(50) not null,
		kartica varchar(50) not null,
		clanstvo varchar(50),
);


create table knjiga(
		sifra int not null primary key identity(1,1),
		citatelj int,
		posudba int,
		naziv varchar(50) not null,
		oznaka varchar(50) not null,
		imeautora varchar(50) not null,
);
create table posudba(
		sifra int not null primary key identity(1,1),
		trajanje int,
		citatelj int,
		oznaka varchar(50),
);


alter table posudba add foreign key (citatelj) references citatelj(sifra);
alter table knjiga add foreign key (posudba) references posudba(sifra);



insert into	 citatelj (knjiga,ime,prezime,kartica,clanstvo) values('1', 'mario','jokic','karticajedan','clankluba');
insert into	 citatelj (knjiga,ime,prezime,kartica,clanstvo) values('1', 'marija','boras','karticajedan','clankluba');
insert into	 citatelj (knjiga,ime,prezime,kartica,clanstvo) values('1', 'petar','peran','karticajedan','clankluba');
insert into	 citatelj (knjiga,ime,prezime,kartica,clanstvo) values('1', 'jan','krlezic','karticajedan','clankluba');

insert into posudba (trajanje,citatelj,oznaka) values('30','1','oznakabrojtri');
insert into posudba (trajanje,citatelj,oznaka) values('30','2','oznakabrojdvanaest');
insert into posudba (trajanje,citatelj,oznaka) values('30','3','oznakabrojjedan');
insert into posudba (trajanje,citatelj,oznaka) values('30','4','oznakabrojsedam');


insert into knjiga (citatelj,posudba,naziv,oznaka,imeautora) values('1','2','mocniljudi','oznakabrojtri','marisel');
insert into knjiga (citatelj,posudba,naziv,oznaka,imeautora) values('1','2','sumrak','oznakabrojdvanaest','lokhart');
insert into knjiga (citatelj,posudba,naziv,oznaka,imeautora) values('1','2','nocneptice','oznakabrojjedan','joiole');
insert into knjiga (citatelj,posudba,naziv,oznaka,imeautora) values('1','2','lukavac','oznakabrojsedam','koionart');
