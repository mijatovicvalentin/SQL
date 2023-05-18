use master;

drop database doktorskaordinacija;

create database doktorskaordinacija;

use doktorskaordinacija;


create table doktor(
		sifra int not null primary key identity(1,1),
		ime varchar(50) not null,
		prezime varchar(50) not null,
		oib char(11), 
		odjel int,
);


create table medicinskasestra(
		sifra int not null primary key identity(1,1),
		doktor varchar(50),
		ime varchar(50) not null,
		prezime varchar(50) not null,
		odjel int,
);


create table pacijent(
		sifra int not null primary key identity(1,1),
		doktor varchar(50),
		ime varchar(50) not null,
		prezime varchar(50) not null,
		povijestbolesti varchar(50),
		zdravstvenoosiguranje bit,
		simptomi varchar(50),
);


create table ljecenje(
		sifra int not null primary key identity(1,1),
		trosakljecenja bit,
		dijagnoza varchar(50),
		pacijent int,
		doktor int,
		medicinskasestra int,
);


create table odjel(
		sifra int not null primary key identity(1,1),
		naziv varchar(50),
);
		
		


alter table ljecenje add foreign key (pacijent) references pacijent(sifra);
alter table ljecenje add foreign key (doktor) references doktor(sifra);
alter table ljecenje add foreign key (medicinskasestra) references medicinskasestra(sifra);
alter table doktor	 add foreign key (odjel) references odjel(sifra);
alter table medicinskasestra add foreign key (odjel) references odjel(sifra);
