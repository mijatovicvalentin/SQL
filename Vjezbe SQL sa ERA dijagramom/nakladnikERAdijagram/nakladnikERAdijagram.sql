use master;

drop database nakladnik;

create database  nakladnik;

use nakladnik;

create table nakladnik(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	oib char(11),
	izdavackakuca varchar(50), 
);


create table djelo(
	id int not null primary key identity(1,1),
	naziv int,
	autor varchar(50) not null,
	bestseller bit,
);



create table knjiga(
	id int not null primary key identity(1,1),
	nakladnik int not null,
	djelo int not null,
);



create table mjesto(
	id int not null primary key identity(1,1),
	nakladnik int not null,
	adresa varchar(50) not null,
	naziv varchar(50),
);

alter table knjiga add foreign key (nakladnik) references nakladnik(id);
alter table knjiga add foreign key (djelo) references djelo(id);
alter table mjesto add foreign key (nakladnik) references nakladnik(id);



insert into nakladnik (ime,prezime,oib,izdavackakuca) values('teodor','lukasov','94858674819','krompirici');
insert into nakladnik (ime,prezime,oib,izdavackakuca) values('branimir','korijenovic','82938476981','liliputanci');
insert into nakladnik (ime,prezime,oib,izdavackakuca) values('luka','marko','94898474819','rowrecords');
insert into nakladnik (ime,prezime,oib,izdavackakuca) values('ernest','brajic','99847584819','rekordi');

insert into djelo (naziv,autor,bestseller) values('sjecanje','teodor','1');
insert into djelo (naziv,autor,bestseller) values('popusti','branimir','2');
insert into djelo (naziv,autor,bestseller) values('odlazak','luka','1');
insert into djelo (naziv,autor,bestseller) values('povratak','ernest','2');

insert into  knjiga (nakladnik,djelo) values('1','2');
insert into  knjiga (nakladnik,djelo) values('1','2');
insert into  knjiga (nakladnik,djelo) values('1','2');
insert into  knjiga (nakladnik,djelo) values('1','2');

insert into mjesto (nakladnik,adresa,naziv) values('1','kraljatomislava6','osijek');
insert into mjesto (nakladnik,adresa,naziv) values('2','branimira6','zagreb');
insert into mjesto (nakladnik,adresa,naziv) values('3','kraljatvrtka18','petrinja');
insert into mjesto (nakladnik,adresa,naziv) values('4','preradoviceva11','osijek');

