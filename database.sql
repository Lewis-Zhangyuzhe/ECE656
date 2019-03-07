create database if not exists assignment2;

use assignment2;

set foreign_key_checks = 0;

drop table if exists Instructor;
create table Instructor(
	instID int NULL,
    instName char(10) NULL,
    deptID char(4) NULL,
    sessional bool NULL
);

drop table if exists Course;
create table Course(
	courseID char(8) NULL,
    courseName varchar(50) NULL,
    deptID char(4) NULL,
    prereqID char(8) NULL
);

drop table if exists Offering;
create table Offering(
	courseID char(8) NULL,
    section int(11) NULL,
    termCode decimal(4,0) NULL,
    roomID char(8) NULL,
    instID int(11) NULL,
    enrollment int(255) NULL
);

drop table if exists Classroom;
create table Classroom(
	roomID char(8) NULL,
    Building char(8) NULL,
    Room decimal(4,0) NULL,
    Capacity int(11) NULL
);


drop table if exists Department;
create table Department(
	deptID char(8) NULL,
    deptName varchar(50) NULL,
    faculty varchar(50) NULL
);

insert into Instructor(instID, instName, deptID, sessional) values(1, 'Nelson', 'ECE', 0);
insert into Instructor(instID, instName, deptID, sessional) values(3, 'Jimbo', 'ECE', 0);
insert into Instructor(instID, instName, deptID, sessional) values(4, 'Moe', 'CS', 1);
insert into Instructor(instID, instName, deptID, sessional) values(5, 'Lenny', 'CS', 0);


insert into Course(courseID, courseName, deptID, prereqID) values('ECE365', 'Database Systems', 'ECE', 'ECE250');
insert into Course(courseID, courseName, deptID, prereqID) values('ECE365', 'Database Systems', 'ECE', 'ECE250');
insert into Course(courseID, courseName, deptID, prereqID) values('ECE358', 'Computer Networks', 'ECE', 'ECE250');
insert into Course(courseID, courseName, deptID, prereqID) values('ECE390', 'Engineering Design', 'ECE', 'ECE250');
insert into Course(courseID, courseName, deptID, prereqID) values('MATH117', 'Calculus 1', 'MATH', NULL);

insert into Offering(courseID, section, termCode, roomID, instID, enrollment) values('ECE356', 1, 1191, 'E74417', 1, 64);
insert into Offering(courseID, section, termCode, roomID, instID, enrollment) values('ECE356', 2, 1191, 'E74417', 3, 123);
insert into Offering(courseID, section, termCode, roomID, instID, enrollment) values('ECE358', 2, 1191, 'E74417', 1, 123);
insert into Offering(courseID, section, termCode, roomID, instID, enrollment) values('ECE390', 1, 1191, 'E74053', 1, 102);
insert into Offering(courseID, section, termCode, roomID, instID, enrollment) values('MATH117', 1, 1189, 'RCH111', 5, 134);


insert into Classroom(roomID, Building, Room, Capacity) values('E74417', 'E7', 4417, 138);
insert into Classroom(roomID, Building, Room, Capacity) values('E74053', 'E7', 4053, 144);
insert into Classroom(roomID, Building, Room, Capacity) values('RCH111', 'RCH', 111, 91);
insert into Classroom(roomID, Building, Room, Capacity) values('RCH101', 'RCH', 101, 250);


insert into Department(deptID, deptName, faculty) values('ECE', 'Electrical and Computer Engineering', 'Engineering');
insert into Department(deptID, deptName, faculty) values('CS', 'Computer Science', 'Math');
insert into Department(deptID, deptName, faculty) values('MATH', 'Math', 'Math');
insert into Department(deptID, deptName, faculty) values('C&0', 'Combinatorics and Optimization', 'Math');

set foreign_key_checks = 1;