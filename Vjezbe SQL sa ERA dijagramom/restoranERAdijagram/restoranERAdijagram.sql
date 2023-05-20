use master;

drop database restoran;

create database restoran;

use restoran;

create table jelo(
	id int not null primary key identity(1,1),
	cijena money,
	naziv int,
	kategorija int not null,
);


create table pice(
	id int not null primary key identity(1,1),
	naziv int, 
	cijena money,
);


create table kategorija(
	id int not null primary key identity(1,1),
);

create table jelo_pice(
	id int not null primary key identity(1,1),
	jelo int not null,
	pice int not null,
);


alter table jelo_pice add foreign key (jelo) references jelo(id);
alter table jelo_pice add foreign key (pice) references pice(id);
alter table jelo add foreign key (kategorija) references kategorija(id);



insert into  pice (naziv,cijena) values('mojito','10');
insert into  pice (naziv,cijena) values('sprinksten','24');
insert into  pice (naziv,cijena) values('vino','16');
insert into  pice (naziv,cijena) values('brahler','12');


insert into kategorija (brojkategorija) values('4');
insert into kategorija (brojkategorija) values('2');
insert into kategorija (brojkategorija) values('2');
insert into kategorija (brojkategorija) values('4');


insert into jelo (cijena,naziv,kategorija) values('18.26','bakalar','1');
insert into jelo (cijena,naziv,kategorija) values('12.26','stuka','1');
insert into jelo (cijena,naziv,kategorija) values('24.26','brancin','1');
insert into jelo (cijena,naziv,kategorija) values('1.26','krompir','1');


insert into  jelo_pice (jelo,pice) values('1','2');
insert into  jelo_pice (jelo,pice) values('1','2');
insert into  jelo_pice (jelo,pice) values('1','2');
insert into  jelo_pice (jelo,pice) values('1','2');




