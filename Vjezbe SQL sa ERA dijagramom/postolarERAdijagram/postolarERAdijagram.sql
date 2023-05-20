use master;

drop database postolarskaradnja;

create database postolarskaradnja;

use postolarskaradnja;


create table korisnik(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	oib char(11),
	obuca varchar(50),
);

create table obuca_popravak(
	obuca int not null,
	popravak int not null,
);

create table obuca(
	id int not null primary key identity(1,1),
	brojpopravka int,
	korisnik int not null,
	vrsta varchar(50),
);



create table popravak(
	id int not null primary key identity(1,1),
	trajanje int,
	cijena decimal(18,2),
	zaposlenik int not null,
);




create table zaposlenik(
	id int not null primary key identity(1,1),
	segrt varchar(50),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	oib char(11),
	strucnasprema int not null,
);




create table strucnasprema(
	id int not null primary key identity(1,1),
	naziv int,
	segrt varchar(50) not null,
);


alter table popravak add foreign key (zaposlenik) references zaposlenik(id);
alter table zaposlenik add foreign key (strucnasprema) references strucnasprema(id);
alter table obuca_popravak add foreign key (obuca) references obuca(id);
alter table obuca_popravak add foreign key (popravak) references popravak(id);
alter table obuca add foreign key (korisnik) references korisnik(id);


insert into korisnik (ime,prezime,oib,obuca) values('josip','tokic','98678765671','lacoste');
insert into korisnik (ime,prezime,oib,obuca) values('branko','majic','09479856771','adidas');
insert into korisnik (ime,prezime,oib,obuca) values('hrvoje','mijatovic','90875898671','nike');
insert into korisnik (ime,prezime,oib,obuca) values('petar','lukic','09987698671','nike');

insert strucnasprema (naziv,segrt) values('segrt','segrt');
insert strucnasprema (naziv,segrt) values('segrt','segrt');
insert strucnasprema (naziv,segrt) values('segrt','segrt');
insert strucnasprema (naziv,segrt) values('segrt','segrt');

insert into zaposlenik (segrt,ime,prezime,oib,strucnasprema) values('segrt','mario','peric','09897568761','1');
insert into zaposlenik (segrt,ime,prezime,oib,strucnasprema) values('segrt','martin','cesnik','09897698761','1');
insert into zaposlenik (segrt,ime,prezime,oib,strucnasprema) values('segrt','liljana','horvat','09876598761','1');
insert into zaposlenik (segrt,ime,prezime,oib,strucnasprema) values('segrt','ninoslava','asim','90987798761','1');


insert into obuca (brojpopravka,korisnik,vrsta) values('3','1','lacoste');
insert into obuca (brojpopravka,korisnik,vrsta) values('3','1','lacoste');
insert into obuca (brojpopravka,korisnik,vrsta) values('3','1','lacoste');
insert into obuca (brojpopravka,korisnik,vrsta) values('3','1','lacoste');

insert into popravak (trajanje,cijena,zaposlenik) values('25','26.10','1');
insert into popravak (trajanje,cijena,zaposlenik) values('15','32.80','1');
insert into popravak (trajanje,cijena,zaposlenik) values('45','18.20','1');
insert into popravak (trajanje,cijena,zaposlenik) values('25','26.34','1');

insert into obuca_popravak (obuca,popravak) values('1','2');
insert into obuca_popravak (obuca,popravak) values('1','2');
insert into obuca_popravak (obuca,popravak) values('1','2');
insert into obuca_popravak (obuca,popravak) values('1','2');
