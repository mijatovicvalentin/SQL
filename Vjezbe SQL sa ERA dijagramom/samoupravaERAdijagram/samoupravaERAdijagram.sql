use master;

drop database samouprava;

create database samouprava;

use samouprava;


create table zupanija(
	sifra int not null primary key identity(1,1),
	naziv int,
	opcina int not null,
	zupan int not null,
);

create table zupan(
	sifra int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
);

create table opcina(
	sifra int not null primary key identity(1,1),
	zupanija int not null,
	naziv int,
);

create table mjesto(
	sifra int not null primary key identity(1,1),
	opcina int not null,
	naziv int,
);


alter table opcina add foreign key (zupanija) references zupanija(sifra);
alter table mjesto add foreign key (opcina) references opcina(sifra);
alter table zupanija add foreign key (zupan) references zupan(sifra);



insert into zupan (ime,prezime) values('kruno','taylor');
insert into zupan (ime,prezime) values('valentin','mur');
insert into zupan (ime,prezime) values('patrik','maric');
insert into zupan (ime,prezime) values('lukas','wells');

insert into zupanija (naziv,opcina,zupan) values('osjeckobaranja','1','2');
insert into zupanija (naziv,opcina,zupan) values('zupanska','1','2');
insert into zupanija (naziv,opcina,zupan) values('zagrebacka','1','2');
insert into zupanija (naziv,opcina,zupan) values('osjeckobaranjska','1','2');


insert into opcina (zupanija,naziv) values('1','osijek');
insert into opcina (zupanija,naziv) values('1','zupani');
insert into opcina (zupanija,naziv) values('1','zagreb');
insert into opcina (zupanija,naziv) values('1','stocin');


insert into mjesto (naziv,opcina) values('djakovo','1');
insert into mjesto (naziv,opcina) values('volijevci','1');
insert into mjesto (naziv,opcina) values('zagreb','1');
insert into mjesto (naziv,opcina) values('osijek','1'); 
