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



insert into osoba (ime,prezime,oib,titula)  values('marija','brankec','09584728746','krotiteljica');
insert into osoba (ime,prezime,oib,titula)  values('marin','mikic','09586457461','krotiteljica');
insert into osoba (ime,prezime,oib,titula)  values('mario','brankec','84577287461','krotiteljica');
insert into osoba (ime,prezime,oib,titula)  values('vesna','angebrandt','09584751408','krotiteljica');

insert into zivotinja (naziv,vrsta,porijeklo) values('leoain','orangutan','amazona');
insert into zivotinja (naziv,vrsta,porijeklo) values('kioaris','lav','madakaskar');
insert into zivotinja (naziv,vrsta,porijeklo) values('leoain','zebra','afrika');
insert into zivotinja (naziv,vrsta,porijeklo) values('leoain','orangutan','amazona');

insert into osoba_zivotinja (osoba,zivotinja) values('1','2');
insert into osoba_zivotinja (osoba,zivotinja) values('1','2');
insert into osoba_zivotinja (osoba,zivotinja) values('1','2');
insert into osoba_zivotinja (osoba,zivotinja) values('1','2');


insert into prostor (zivotinja,velicina) values('1','8x8');
insert into prostor (zivotinja,velicina) values('1','6x6');
insert into prostor (zivotinja,velicina) values('1','14x8');
insert into prostor (zivotinja,velicina) values('1','12x12');
