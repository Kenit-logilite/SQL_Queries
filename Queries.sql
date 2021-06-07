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