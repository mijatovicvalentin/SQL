use master;

drop database frizerskisalon;

create database frizerskisalon;

use frizerskisalon;


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


insert into korisnik (ime,prezime,oib,spol) values('luka','kolak','09687536521','1');
insert into korisnik (ime,prezime,oib,spol) values('marija','pistic','09574937613','2');
insert into korisnik (ime,prezime,oib,spol) values('kruno','bojic','09263958471','1');
insert into korisnik (ime,prezime,oib,spol) values('tea','karic','09583958761','2');



insert into djelatnica ( ime,prezime,oib,korisnik) values('petra','majic','09574839871','1');
insert into djelatnica ( ime,prezime,oib,korisnik) values('zola','delic','09867839871','1');
insert into djelatnica ( ime,prezime,oib,korisnik) values('vanja','kisic','98765839871','1');
insert into djelatnica ( ime,prezime,oib,korisnik) values('jela','koric','09576453217','1');


insert into strucnasprema (djelatnica) values('1')
insert into strucnasprema (djelatnica) values('1')
insert into strucnasprema (djelatnica) values('1')
insert into strucnasprema (djelatnica) values('1')


insert into usluga (korisnik,trajanje,cijena,proizvod) values('1','15','26.80','crvenaboja');
insert into usluga (korisnik,trajanje,cijena,proizvod) values('1','30','24.80','plavaboja');
insert into usluga (korisnik,trajanje,cijena,proizvod) values('1','35','30.80','zelenaboja');
insert into usluga (korisnik,trajanje,cijena,proizvod) values('1','28','18.80','sivaboja');
