use master;

drop database isvu;

create database isvu;

use isvu;


create table student(

id int not null primary key identity(1,1),
firstname varchar(50) not null,
lastname varchar(50) not null,
jmbag char(10),
);    


create table course(
id int not null primary key identity(1,1),
name varchar(50) not null,
ects varchar(50),
description varchar(50),
);


create table student_course(
id int not null primary key identity(1,1),
student int not null,
course int not null,
academicyear int not null,
dateofenrollement int not null,
);
create table academicyear(
id int not null primary key identity(1,1),
name varchar(50) not null,
startdate varchar(50),
enddate varchar(50),
semester int not null,
);

create table semester(
id int not null primary key identity(1,1),
academicyear int not null,

);

alter table student_course add foreign key (student) references student(id);
alter table student_course add foreign key (course) references course(id);
alter table student_course add foreign key (academicyear) references academicyear(id);
alter table academicyear add foreign key (semester) references semester(id);