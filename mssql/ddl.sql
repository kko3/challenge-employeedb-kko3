create database EmployeeDB
( EDITION = 'Standard', SERVICE_OBJECTIVE = 'S3' );
go

create schema Department;
go

create schema Employee;
go

create table Department.Department
(
	Did int not null identity,
	[Name] nvarchar(50) not null,
	Location nvarchar(50) not null
);

create table Employee.Employee
(
	Eid int not null identity,
	Did int not null,
	FirstName nvarchar(50) not null,
	LastName nvarchar(50) not null
);

create table Employee.EmployeeDetails
(
	Emid int not null identity,
	Eid int not null,
	Salary float not null,
	Street nvarchar(50) not null,
	City nvarchar(50) not null,
	Province nvarchar(50) not null
);
go

alter table Department.Department
	add constraint PK_Did primary key (Did);

alter table Employee.Employee
	add constraint PK_Eid primary key (Eid);

alter table Employee.EmployeeDetails
	add constraint PK_Emid primary key (Emid);

alter table Employee.Employee
	add constraint FK_Did foreign key (Did) references Department.Department(Did);

alter table Employee.EmployeeDetails
	add constraint Fk_Eid foreign key (Eid) references Employee.Employee(Eid);
go
