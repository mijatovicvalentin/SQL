use master;

drop database salonzauljepsavanje;

create database salonzauljepsavanje;

use salonzauljepsavanje;


create table djelatnica(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	oib char(11),
	korisnik int not null,

);



create table korisnik(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	oib char(11),
	spol bit,
);



create table usluga(
	id int not null primary key identity(1,1),
	korisnik int not null,
	trajanje int,
	cijena decimal(18,2),
	proizvod varchar(50),
);

create table strucnasprema(
	id int not null primary key identity(1,1),
	djelatnica int not null,
);

alter table usluga add foreign key (korisnik) references korisnik(id);
alter table djelatnica add foreign key (korisnik) references korisnik(id);
alter table strucnasprema add foreign key (djelatnica) references djelatnica(id);



insert into korisnik (ime,prezime,oib,spol) values('marija','cesnik','05643654651','2')
insert into korisnik (ime,prezime,oib,spol) values('petra','mrsic','09613264651','2');
insert into korisnik (ime,prezime,oib,spol) values('ivana','lukic','09867854651','2');
insert into korisnik (ime,prezime,oib,spol) values('ivan','masic','06754654651','1');


insert into usluga (korisnik,trajanje,cijena,proizvod) values('1','45','21.85','sminka');
insert into usluga (korisnik,trajanje,cijena,proizvod) values('1','25','12.26','sminka');
insert into usluga (korisnik,trajanje,cijena,proizvod) values('1','18','26.85','sminka');
insert into usluga (korisnik,trajanje,cijena,proizvod) values('1','45','45.12','sminka');



insert into djelatnica (ime,prezime,oib,korisnik) values('marina','luksic','90678451432','1');
insert into djelatnica (ime,prezime,oib,korisnik) values('tera','horvat','98564451432','1');
insert into djelatnica (ime,prezime,oib,korisnik) values('tea','boljen','89569786761','1');
insert into djelatnica (ime,prezime,oib,korisnik) values('marija','marsic','89264756181','1');

insert into strucnasprema (djelatnica) values('1');
insert into strucnasprema (djelatnica) values('2');
insert into strucnasprema (djelatnica) values('3');
insert into strucnasprema (djelatnica) values('4');
