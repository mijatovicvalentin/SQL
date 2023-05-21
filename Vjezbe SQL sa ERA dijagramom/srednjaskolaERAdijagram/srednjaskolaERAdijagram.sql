use master;

drop database srednjaskola;

create database srednjaskola;

use srednjaskola;

create table razred(
	id int not null primary key identity(1,1),
	naziv varchar(25),
);


create table ucenik(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	razred int not null,
);


create table profesor(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	predmet varchar(20), 
);

create table profesor_razred(
	profesor int not null,
	razred int not null,
);


alter table profesor_razred add foreign key (profesor) references profesor(id);
alter table profesor_razred add foreign key (razred) references razred(id);
alter table ucenik add foreign key (razred) references razred(id);



insert into razred (naziv) values('petib');
insert into razred (naziv) values('drugia');
insert into razred (naziv) values('trecia');
insert into razred (naziv) values('petib');

insert into profesor (ime,prezime,predmet) values('marina','vlasic','kemija');
insert into profesor (ime,prezime,predmet) values('petar','boksic','fizika');
insert into profesor (ime,prezime,predmet) values('stjepan','vlasic','matematika');
insert into profesor (ime,prezime,predmet) values('luka','ivsic','stroajrstvo');

insert into profesor_razred (profesor,razred) values('1','2');
insert into profesor_razred (profesor,razred) values('1','2');
insert into profesor_razred (profesor,razred) values('1','2');
insert into profesor_razred (profesor,razred) values('1','2');

insert into ucenik (ime,prezime,razred) values('kruno','boksic','1');
insert into ucenik (ime,prezime,razred) values('marija','boksic','1');
insert into ucenik (ime,prezime,razred) values('lena','ivesic','1');
insert into ucenik (ime,prezime,razred) values('kruno','leko','1');
