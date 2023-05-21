 use master;

 drop database  taksisluzba;

create database taksisluzba;

use taksisluzba;


create table vozilo(
	id int not null primary key identity(1,1),
	cijena decimal(18,2),
	marka  varchar(50),
	godište varchar(50),
);


create table vozac(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	obi char(11),
	vozilo int not null,
);


create table putnik(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	oib char(11),
);


create table voznja(
	id int not null primary key identity(1,1),
	kilometraza decimal(5,2),
	cijena decimal(18,2),
	potrosnja decimal(4,2),
	vozac int not null,
);

create table voznja_putnik(
	id int not null primary key identity(1,1),
	voznja int not null,
	putnik int not null,
);

alter table voznja_putnik add foreign key (voznja) references voznja(id);
alter table voznja_putnik add foreign key (putnik) references putnik(id);
alter table vozac add foreign key (vozilo) references vozilo(id);
alter table voznja add foreign key (vozac) references vozac(id);



insert into vozilo (cijena,marka,godište) values('20000','AUDI','2018');
insert into vozilo (cijena,marka,godište) values('18000','BMW','2016');
insert into vozilo (cijena,marka,godište) values('14000','GOLFIV','2014');
insert into vozilo (cijena,marka,godište) values('16000','AUDI8','2018');


insert into putnik (ime,prezime,oib) values('luka','lukic','98373857689');
insert into putnik (ime,prezime,oib) values('petar','juros','98375657689');
insert into putnik (ime,prezime,oib) values('jan','luvic','98396757689');
insert into putnik (ime,prezime,oib) values('karlo','majic','98309277689');


insert into vozac (ime,prezime,oib,vozilo) values('marko','keric','09687654951','AUDI');
insert into vozac (ime,prezime,oib,vozilo) values('marin','banfic','98692645761','BMW');
insert into vozac (ime,prezime,oib,vozilo) values('kruno','lukic','98690895661','GOLFIV');
insert into vozac (ime,prezime,oib,vozilo) values('luka','petric','23490485761','AUDI8');


insert into voznja (kilometraza,cijena,potrosnja,vozac) values('6044','24','8','marko');
insert into voznja (kilometraza,cijena,potrosnja,vozac) values('243','24','8','marin');
insert into voznja (kilometraza,cijena,potrosnja,vozac) values('380','24','8','kruno');
insert into voznja (kilometraza,cijena,potrosnja,vozac) values('8400','24','8','luka');


insert into voznja_putnik (voznja,putnik) values('voznja','putnik');
insert into voznja_putnik (voznja,putnik) values('voznja','putnik');
insert into voznja_putnik (voznja,putnik) values('voznja','putnik');
insert into voznja_putnik (voznja,putnik) values('voznja','putnik');


