use master;

drop database KUD;

create database KUD;

use KUD;


create table clan(
	id int not null primary key identity(1,1),
	ime varchar(50),
	prezime varchar(50),
	oib char(11),
);


create table nastup(
	id int not null primary key identity(1,1),
	adresa varchar(50) not null,
	naziv int,
);


create table clan_nastup(
	id int not null primary key identity(1,1),
	clan int not null,
	nastup int not null,
);



create table mjesto(
	id int not null primary key identity(1,1),
	adresa varchar(50) not null,
	nastup int not null,
);


alter table clan_nastup add foreign key (clan) references clan(id);
alter table clan_nastup add foreign key (nastup) references nastup(id);
alter table mjesto add foreign key (nastup) references nastup(id);


insert into clan (ime,prezime,oib) values('petar','lukic','75684958671');
insert into clan (ime,prezime,oib) values('martin','peric','67584958671');
insert into clan (ime,prezime,oib) values('maja','basta','09867958671');
insert into clan (ime,prezime,oib) values('ivana','juros','09584987671');


insert into nastup (adresa,naziv) values ('1','2');
insert into nastup (adresa,naziv) values ('2','3');
insert into nastup (adresa,naziv) values ('3','4');
insert into nastup (adresa,naziv) values ('4','5');



insert into mjesto (adresa,nastup) values('jozeivekica21','labudjejezero');
insert into mjesto (adresa,nastup) values('petrapreadovica1','vinkovackejeseni');
insert into mjesto (adresa,nastup) values('petrapreadovica1','kikijevples');
insert into mjesto (adresa,nastup) values('bajelovinog4','morskifestival');


insert into clan_nastup (clan,nastup) values('1','2');
insert into clan_nastup (clan,nastup) values('2','3');
insert into clan_nastup (clan,nastup) values('3','4');
insert into clan_nastup (clan,nastup) values('4','5');
