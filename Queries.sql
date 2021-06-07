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

-- Joins

Create table Person(
	personId int NOT NULL Primary key,
	FisrtName varchar(50) NOT NULL,
	LastName varchar(50) NOT NULL,
	Address varchar(200) NOT NULL,
	city varchar (50) NOT NULL
);

CREATE table Orders (
    OrderID int NOT NULL Primary key,
    OrderNumber int NOT NULL,
    personID int,
    FOREIGN KEY (personID) REFERENCES Person(PersonID)
);

insert into person(personId,FisrtName,LastName,Address,city) values (1,'Kenit','Patel','Ahmedabad','Ahmedabad');
insert into Orders(OrderId,OrderNumber,personId) values (1,101,1),(2,102,1),(3,103,3),(4,104,4),(5,106,3);

insert into person(personId,FisrtName,LastName,Address,city) values 
									(3,'Kunal','Makwana','abc','Gandhinagar'),
									(4,'Raju','Panchal','cds','Sabarkantha'),
									(5,'Ramesh','Parjapati','lol','Jamnagar');
									
Select Orders.OrderId ,  person.FisrtName
From Orders Inner Join
Person on Orders.personId = person.personId;


-- Left Join

Select Orders.orderId ,Orders.OrderNumber, person.FisrtName
from Person Left join 
Orders on Person.personId = Orders.personId; 

 -- 	Right Join
	
	Select Orders.orderId ,Orders.OrderNumber, person.FisrtName
	from Person Right join
	Orders on Person.personId = Orders.personId;
	
-- Full Outer Join
	 
	 Select Orders.orderId ,Orders.OrderNumber, person.FisrtName
	 from Person Full Outer Join
	 Orders on Person.personId = Orders.personId;
	 
--  TOP Records

	SELECT * from person Limit 3;
