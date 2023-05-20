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
dateofenrollement datetime,
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


insert into student (firstname,lastname,jmbag) values('mark','cofh','7285738471');
insert into student (firstname,lastname,jmbag) values('raven','reyes','9485738471');
insert into student (firstname,lastname,jmbag) values('john','tony','9472948716');
insert into student (firstname,lastname,jmbag) values('layla','murhpy','9488758471');

insert into course (name,ects,description) values('mechanic','ten','mechanic');
insert into course (name,ects,description) values('physics','eight','mechanic');
insert into course (name,ects,description) values('robotics','six','mechanic');
insert into course (name,ects,description) values('chemistry','seven','mechanic');


insert into semester (academicyear) values('1');
insert into semester (academicyear) values('1');
insert into semester (academicyear) values('1');
insert into semester (academicyear) values('1');


insert into academicyear (name,startdate,enddate,semester) values('firstyear','october','december','1');
insert into academicyear (name,startdate,enddate,semester) values('secondyear','november','july','1');
insert into academicyear (name,startdate,enddate,semester) values('thirdyear','may','december','1');
insert into academicyear (name,startdate,enddate,semester) values('fourthyear','october','june','1');



insert into student_course (student,course,academicyear,dateofenrollement) values('1','2','3','2023-04-14');
insert into student_course (student,course,academicyear,dateofenrollement) values('1','2','3','2023-04-14');
insert into student_course (student,course,academicyear,dateofenrollement) values('1','2','3','2023-04-14');
insert into student_course (student,course,academicyear,dateofenrollement) values('1','2','3','2023-04-14');
