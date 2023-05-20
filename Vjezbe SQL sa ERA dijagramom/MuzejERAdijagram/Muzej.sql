use master;

drop database muzej;

create database muzej;

use  muzej;


create table muzej(
		sifra int not null primary key identity(1,1),
		izlozba int,
		adresa varchar(50),
		naziv  varchar(50),
		email  varchar(50),
);

create table izlozba(
		sifra int not null primary key identity(1,1),
		clan int,
		naziv  varchar(50),
		atrij  varchar(50),
		trajanje  int,
);


create table kustos(
		sifra int not null primary key identity(1,1),
		ime varchar(50),
		prezime varchar(50),
		oib char(11),
);


create table sponzor(
		sifra int not null primary key identity(1,1),
		ime varchar(50),
		prezime varchar(50),
		posjetnica varchar(50),
);


create table clan(
		sifra int not null primary key identity(1,1),
		kustos int,
		sponzor int,
);

alter table muzej add foreign key (izlozba) references izlozba(sifra);
alter table izlozba add foreign key (clan) references clan(sifra);
alter table clan add foreign key (kustos) references kustos(sifra);
alter table clan add foreign key (sponzor) references sponzor(sifra);


insert into kustos (ime,prezime,oib) values('luka','maric','08976387621')
insert into kustos (ime,prezime,oib) values('petar','lukic','85766387621')
insert into kustos (ime,prezime,oib) values('branko','baros','09876387621')
insert into kustos (ime,prezime,oib) values('marin','varos','08976387621')

insert into sponzor (ime,prezime,posjetnica) values('luka','majic','majicluka')
insert into sponzor (ime,prezime,posjetnica) values('ivan','lukas','ivanlukas')
insert into sponzor (ime,prezime,posjetnica) values('lukas','ivic','lukasivic')
insert into sponzor (ime,prezime,posjetnica) values('mario','dvorski','mariodvorski')


insert into clan (sponzor,kustos) values('1','2')
insert into clan (sponzor,kustos) values('1','2')
insert into clan (sponzor,kustos) values('1','2')
insert into clan (sponzor,kustos) values('1','2')



insert into izlozba (clan,naziv,atrij,trajanje) values('1','modernost','dva','30')
insert into izlozba (clan,naziv,atrij,trajanje) values('1','zivot','sest','30')
insert into izlozba (clan,naziv,atrij,trajanje) values('1','podjela','cetiri','45')
insert into izlozba (clan,naziv,atrij,trajanje) values('1','vijek','jedan','35')


insert into muzej (izlozba,adresa,naziv,email) values('1','preradoviceva15','groteska','groteska@gmail.com')
insert into muzej (izlozba,adresa,naziv,email) values('1','martinceva11','okulus','okulus@gmail.com')
insert into muzej (izlozba,adresa,naziv,email) values('1','radiceva18','duhovi','duhovi@gmail.com')
insert into muzej (izlozba,adresa,naziv,email) values('1','ulicakapetana12','umjetnost','umjetnost@gmail.com')
