use master;

drop database odvjetnickiured;

create database odvjetnickiured;

use odvjetnickiured;


create table odvjetnik(
	id int not null primary key identity(1,1),
	ured varchar(50),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	titula bit,
	oib char(11),
	kontakt varchar(20),


);


create table klijent(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	kontakt varchar(20),


);


	
create table suradnik(		
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	oib char(11),

);



create table obrana(
	id int not null primary key identity(1,1),
	odvjetnik int not null,
	klijent int not null,
	trajanje int,
	cijena decimal(6,2),
	odluka bit null,
);


create table suradnik_obrana(
	obrana int not null,
	suradnik int not null,
);




insert into odvjetnik (ured,ime,prezime,titula,oib,kontakt) values('lozertured','mario','lozert','1','09584827471','email');
insert into odvjetnik (ured,ime,prezime,titula,oib,kontakt) values('petricured','mario','petric','1','80294827471','email');
insert into odvjetnik (ured,ime,prezime,titula,oib,kontakt) values('branzerured','hektor','branzer','1','90284827471','email');
insert into odvjetnik (ured,ime,prezime,titula,oib,kontakt) values('jukasured','leo','jukas','1','89485920175','email');


insert into klijent (ime,prezime,kontakt) values('branimir','stulic','telefon');
insert into klijent (ime,prezime,kontakt) values('zoran','makas','telefon');
insert into klijent (ime,prezime,kontakt) values('julija','goric','telefon');
insert into klijent (ime,prezime,kontakt) values('leonard','stompar','telefon');


insert into suradnik (ime,prezime,oib) values('josip','valent','83029174861');
insert into suradnik (ime,prezime,oib) values('kruno','petric','89847574861');
insert into suradnik (ime,prezime,oib) values('ena','stojic','83029189586');
insert into suradnik (ime,prezime,oib) values('lena','tolic','89479174861');

insert into suradnik_obrana (obrana,suradnik) values('1','2');
insert into suradnik_obrana (obrana,suradnik) values('1','2');
insert into suradnik_obrana (obrana,suradnik) values('1','2');
insert into suradnik_obrana (obrana,suradnik) values('1','2');

insert into obrana (odvjetnik,klijent,trajanje,cijena,odluka) values('1','2','45','40','1');
insert into obrana (odvjetnik,klijent,trajanje,cijena,odluka) values('1','2','45','60','2');
insert into obrana (odvjetnik,klijent,trajanje,cijena,odluka) values('1','2','30','80','2');
insert into obrana (odvjetnik,klijent,trajanje,cijena,odluka) values('1','2','35','25','1');



alter table suradnik_obrana add foreign key (suradnik) references suradnik(id);
alter table suradnik_obrana add foreign key (obrana) references obrana(id);
alter table obrana add foreign key (klijent) references klijent(id);
alter table obrana add foreign key (odvjetnik) references odvjetnik(id);
