use master;

drop database trgovackicentar;

create database trgovackicentar;

use trgovackicentar;


create table trgovina(
	id int not null primary key identity(1,1),
	naziv int,
	marka varchar(50),
	cijena decimal(18,2),
);


create table zaposlenik(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	oib char(11) not null,
);


create table trgovina_zaposlenik(
	id int not null primary key identity(1,1),
	trgovina int not null,
	zaposlenik int not null,
	);

create table sef(
	ime varchar(50) not null,
	prezime varchar(50) not null, 
	odjeljenje varchar(50) not null,
	zaposlenik int not null, 
);


alter table trgovina_zaposlenik add foreign key (trgovina) references trgovina(id);
alter table trgovina_zaposlenik add foreign key (zaposlenik) references zaposlenik(id);
alter table sef add foreign key (zaposlenik) references zaposlenik(id);




insert into trgovina (naziv,cijena,marka) values('sinsay','22.40','sinsay');
insert into trgovina (naziv,cijena,marka) values('adidas','12.40','adidas');
insert into trgovina (naziv,cijena,marka) values('nike','46.20','nike');
insert into trgovina (naziv,cijena,marka) values('pullandbear','16.40','pullandbear');

insert into zaposlenik (ime,prezime,oib) values('luka','martic','82738492819');
insert into zaposlenik (ime,prezime,oib) values('marija','martinic','78245837481');
insert into zaposlenik (ime,prezime,oib) values('lea','juros','98095897586');
insert into zaposlenik (ime,prezime,oib) values('luka','ivanovic','82938209812');


insert into trgovina_zaposlenik (trgovina,zaposlenik) values('1','2');
insert into trgovina_zaposlenik (trgovina,zaposlenik) values('1','2');
insert into trgovina_zaposlenik (trgovina,zaposlenik) values('1','2');
insert into trgovina_zaposlenik (trgovina,zaposlenik) values('1','2');

insert into sef (ime,prezime,odjeljenje,zaposlenik) values('martin','janjusic','odjeljenjejedan','1');
insert into sef (ime,prezime,odjeljenje,zaposlenik) values('helena','lukic','odjeljenjejedan','1');
insert into sef (ime,prezime,odjeljenje,zaposlenik) values('antonio','knezovic','odjeljenjejedan','1');
insert into sef (ime,prezime,odjeljenje,zaposlenik) values('ena','lukic','odjeljenjejedan','1');
