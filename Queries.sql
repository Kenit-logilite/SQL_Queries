-- Basic Queries 

Create table Person(
	personId int,
	FisrtName varchar(50),
	LastName varchar(50),
	Address varchar(200),
	city varchar (50)
);

insert into person(personId,FisrtName,LastName,Address,city) values (1,'Kenit','Patel','Ahmedabad','Ahmedabad');
select * from person;

Alter table Person Add email varchar(50);
Alter table Person Drop email;

Drop table Person;

-- Understanding of Constraints


-- NOT NULL
Create table Person(
	personId int NOT NULL,
	FisrtName varchar(50) NOT NULL,
	LastName varchar(50) NOT NULL,
	Address varchar(200) NOT NULL,
	city varchar (50) NOT NULL
);

insert into person(personId,LastName,Address,city) values (1,'Patel','Ahmedabad','Ahmedabad');
Drop table Person


-- UNIQUE 

Create table Person(
	personId int NOT NULL Unique,
	FisrtName varchar(50) NOT NULL,
	LastName varchar(50) NOT NULL,
	Address varchar(200) NOT NULL,
	city varchar (50) NOT NULL
);
insert into person(personId,FisrtName,LastName,Address,city) values (1,'Kenit','Patel','Ahmedabad','Ahmedabad');
insert into person(personId,FisrtName,LastName,Address,city) values (1,'Kunal','Patel','Ahmedabad','Ahmedabad');

Drop table Person;

-- Primary Key

Create table Person(
	personId int NOT NULL Primary key,
	FisrtName varchar(50) NOT NULL,
	LastName varchar(50) NOT NULL,
	Address varchar(200) NOT NULL,
	city varchar (50) NOT NULL
);

insert into person(personId,FisrtName,LastName,Address,city) values (1,'Kenit','Patel','Ahmedabad','Ahmedabad');
insert into person(personId,FisrtName,LastName,Address,city) values (1,'Kunal','Patel','Ahmedabad','Ahmedabad');
Drop table Person;

