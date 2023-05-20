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



insert into pacijent (doktor,ime,prezime,povijestbolesti,zdravstvenoosiguranje,simptomi) values('valentic','marin','lukas','anemican','1','kasalj');
insert into pacijent (doktor,ime,prezime,povijestbolesti,zdravstvenoosiguranje,simptomi) values('maric','marko','mijatovic','hladnokrvan','1','prehlada');
insert into pacijent (doktor,ime,prezime,povijestbolesti,zdravstvenoosiguranje,simptomi) values('jojic ','maja','zoric','srcanibolesnik','1','boluruci');
insert into pacijent (doktor,ime,prezime,povijestbolesti,zdravstvenoosiguranje,simptomi) values('zaric','lea','lukic','srcanibolesnik','1','arestsrca');


insert into odjel (naziv) values('prvikat');
insert into odjel (naziv) values('drugikat');
insert into odjel (naziv) values('trecikat');
insert into odjel (naziv) values('cetvrtikat');

insert into doktor(ime,prezime,oib,odjel) values('josip','valentic','09584928518','1');
insert into doktor(ime,prezime,oib,odjel) values('petar','maric','09584928518','1');
insert into doktor(ime,prezime,oib,odjel) values('kruno','jojic','09584928518','1');
insert into doktor(ime,prezime,oib,odjel) values('valentin','zaric','09584928518','1');


insert into medicinskasestra (doktor,ime,prezime,odjel) values('valentic','ksenija','jukisic','1')
insert into medicinskasestra (doktor,ime,prezime,odjel) values('valentic','zera','karoli','1')
insert into medicinskasestra (doktor,ime,prezime,odjel) values('valentic','julija','majic','1')
insert into medicinskasestra (doktor,ime,prezime,odjel) values('valentic','karolija','marko','1')



insert into ljecenje(trosakljecenja,dijagnoza,pacijent,doktor,medicinskasestra) values('1','dugotrajnaanemijaa','1','2','3');
insert into ljecenje(trosakljecenja,dijagnoza,pacijent,doktor,medicinskasestra) values('2','dugotrajnaanemijaa','1','2','3');
insert into ljecenje(trosakljecenja,dijagnoza,pacijent,doktor,medicinskasestra) values('1','srcanamana','1','2','3');
insert into ljecenje(trosakljecenja,dijagnoza,pacijent,doktor,medicinskasestra) values('2','smrt','1','2','3');


