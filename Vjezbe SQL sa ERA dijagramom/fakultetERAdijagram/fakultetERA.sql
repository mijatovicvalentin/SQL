


create table kolegij(
		sifra int not null primary key identity(1,1),
		student int,
		rok int,
		ispit varchar(50),
		predavac varchar(50),
);
		

create table student(
		sifra int not null primary key identity(1,1),	
		rok varchar(50),
		ime varchar(50) not null,
		prezime varchar(50) not null,
		jmbag char(13),
		ispit varchar(50),
);

create table rok(
		sifra int not null primary key identity(1,1),
		ispit varchar(50),
		student int,
		prolaz bit,
);


create table ispitivac(
		student int,
		rok int,
		kolegij int,
);


alter table ispitivac add foreign key (student) references student(sifra);
alter table ispitivac add foreign key (rok) references rok(sifra);
alter table ispitivac add foreign key (kolegij) references kolegij(sifra);


