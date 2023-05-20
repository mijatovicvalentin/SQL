use master;

drop database muzej;


create database  muzej;

use muzej;


create table izlozba(
	id int not null primary key identity(1,1),
	djelo int not null,
	kustos int not null,
	trajanje int,
);


create table djelo(
	id int not null primary key identity(1,1),
	naziv varchar(50),
	vrijednost decimal(18,2),
);

create table kustos(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
);

create table sponzor(
	id int not null primary key identity(1,1),
	ime varchar(50),
	prezime varchar(50),
	posjetnica varchar(50),
	izlozba int not null,
);



alter table izlozba add foreign key (djelo) references djelo(id);
alter table izlozba add foreign key (kustos) references kustos(id);
alter table sponzor add foreign key (izlozba) references izlozba(id);


insert into djelo (naziv,vrijednost) values('monaliza','286.000');
insert into djelo (naziv,vrijednost) values('ludbreg','246.000');
insert into djelo (naziv,vrijednost) values('osaka','16.000');
insert into djelo (naziv,vrijednost) values('iatomonto','28.000');

insert into kustos (ime,prezime) values('luka','rabec');
insert into kustos (ime,prezime) values('marin','vili');
insert into kustos (ime,prezime) values('marina','horvat');
insert into kustos (ime,prezime) values('matea','lokac');

insert into izlozba (djelo,kustos,trajanje) values('1','2','80');
insert into izlozba (djelo,kustos,trajanje) values('1','2','60');
insert into izlozba (djelo,kustos,trajanje) values('1','2','120');
insert into izlozba (djelo,kustos,trajanje) values('1','2','120');


insert into sponzor (ime,prezime,posjetnica,izlozba) values('marin','krojac','marinkrojac','1');
insert into sponzor (ime,prezime,posjetnica,izlozba) values('lejla','baric','lejlabaric','1');
insert into sponzor (ime,prezime,posjetnica,izlozba) values('karlo','dokatic','karlodokatic','1');
insert into sponzor (ime,prezime,posjetnica,izlozba) values('ivana','vers','ivanavers','1');
