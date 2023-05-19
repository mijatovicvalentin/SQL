use master;

drop database vodoinstalater;

create database vodoinstalater;

use vodoinstalater;


create table popravak(
	id int not null primary key identity(1,1),
	cijena decimal (18,2),
	trajanje int,
	naziv int,
	zaposlenik int not null,
);


create table kvar(
	id int not null primary key identity(1,1),
	cijena decimal(18,2),
	naziv int,
	kolicina varchar(50),
);



create table popravak_kvar(
	id int not null primary key identity(1,1),
	popravak int not null,
	kvar int not null,
);



create table zaposlenik(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	oib char(11),
	strucnasprema int not null,
);



 create table strucnasprema(
	id int not null primary key identity(1,1),
	naziv int,
	segrt bit,
);


alter table popravak_kvar add foreign key (popravak) references popravak(id);
alter table popravak_kvar add foreign key (kvar) references kvar(id);
alter table zaposlenik add foreign key (strucnasprema)references strucnasprema(id);
alter table popravak add foreign key (zaposlenik) references zaposlenik(id);

insert into kvar(cijena,naziv,kolicina) values('15.26','senzor','5');
insert into kvar(cijena,naziv,kolicina) values('16.26','svjecica','3');
insert into kvar(cijena,naziv,kolicina) values('18.26','disk','1');
insert into kvar(cijena,naziv,kolicina) values('13.26','filter','2');


insert into strucnasprema(naziv) values('vodoinstalater');
insert into strucnasprema(naziv) values('vodoinstalater');
insert into strucnasprema(naziv) values('vodoinstalater');
insert into strucnasprema(naziv) values('vodoinstalater');

insert into zaposlenik (ime,prezime,oib,strucnasprema) values('luka','peric','89076549817','1')
insert into zaposlenik (ime,prezime,oib,strucnasprema) values('ivan','ivanusec','95076349817','1')
insert into zaposlenik (ime,prezime,oib,strucnasprema) values('mario','jokic','89056549817','1')
insert into zaposlenik (ime,prezime,oib,strucnasprema) values('ena','maric','89087169817','1')


insert into popravak (cijena,trajanje,naziv,zaposlenik) values('45.86','1','izmjena','1');
insert into popravak (cijena,trajanje,naziv,zaposlenik) values('23.45','1','promjena','1');
insert into popravak (cijena,trajanje,naziv,zaposlenik) values('16.36','1','zamjena','1');
insert into popravak (cijena,trajanje,naziv,zaposlenik) values('32.78','1','razmjena','1');

insert into popravak_kvar (popravak,kvar) values('1','2');
insert into popravak_kvar (popravak,kvar) values('1','2');
insert into popravak_kvar (popravak,kvar) values('1','2');
insert into popravak_kvar (popravak,kvar) values('1','2');
