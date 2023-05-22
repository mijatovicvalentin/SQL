use master;

drop database urarsilvija;

create database urarsilvija;

use urarsilvija;


create table sat(
	id int not null primary key identity(1,1),
	korisnik int not null,
	naziv varchar(50),
	cijena decimal(18,2),
	boja varchar(50) not null
);


create table popravak(
	id int not null primary key identity(1,1),
	cijena decimal(18,2),
	trajanje int,
	alat varchar(50),
	zaposlenik int not null,
);



create table sat_popravak(
	id int not null primary key identity(1,1),
	sat int not null,
	popravak int not null,
);


create table zaposlenik(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	oib char(11),
);



create table korisnik(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	oib char(11),
	kontakt varchar(25),
);

create table strucnasprema(
	id int not null primary key identity(1,1),
	zaposlenik int not null,
);

alter table strucnasprema add foreign key (zaposlenik) references zaposlenik(id);
alter table sat_popravak add foreign key (sat) references sat(id);
alter table sat_popravak add foreign key (popravak) references popravak(id);
alter table popravak add foreign key (zaposlenik) references zaposlenik(id);
alter table sat add foreign key (korisnik) references korisnik(id);




insert into zaposlenik (ime,prezime,oib)  values('ivana','ivsic','98485739271');
insert into zaposlenik (ime,prezime,oib)  values('marija','ivsic','73846839271');
insert into zaposlenik (ime,prezime,oib)  values('ena','lukiic','09478645271');
insert into zaposlenik (ime,prezime,oib)  values('dario','brajic','98265839271');

insert into korisnik(ime,prezime,oib,kontakt) values('neven','maric','09272930582','gmail');
insert into korisnik(ime,prezime,oib,kontakt) values('nevenka','milun','09274859182','gmail');
insert into korisnik(ime,prezime,oib,kontakt) values('borna','marko','09827485182','gmail');
insert into korisnik(ime,prezime,oib,kontakt) values('toni','taric','86474859182','gmail');



insert into sat (korisnik,naziv,cijena,boja) values('1','markuff','12.60','bijela');
insert into sat (korisnik,naziv,cijena,boja) values('1','baiollo','22.33','zuta');
insert into sat (korisnik,naziv,cijena,boja) values('1','markuff','32.18','zelena');
insert into sat (korisnik,naziv,cijena,boja) values('1','šerzoff','85.60','bijela');

insert into popravak (cijena,trajanje,alat,zaposlenik) values('26.30','25','kljuc','1');
insert into popravak (cijena,trajanje,alat,zaposlenik) values('33.30','40','kljuc','1');
insert into popravak (cijena,trajanje,alat,zaposlenik) values('23.75','35','kljuc','1');
insert into popravak (cijena,trajanje,alat,zaposlenik) values('17.30','20','kljuc','1');


insert into sat_popravak (sat,popravak) values('1','2');
insert into sat_popravak (sat,popravak) values('1','2');
insert into sat_popravak (sat,popravak) values('1','2');
insert into sat_popravak (sat,popravak) values('1','2');


insert into strucnasprema (zaposlenik)  values('1');
insert into strucnasprema (zaposlenik)  values('2');
insert into strucnasprema (zaposlenik)  values('3');
insert into strucnasprema (zaposlenik)  values('4');
