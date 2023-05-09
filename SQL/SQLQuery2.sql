create table customers
( customerId int primary key,
customerName varchar(50),
 email varchar(50),
 city varchar(15),
 age int
)
drop  table customers
create table customers
( customerId int primary key,
customerName varchar(50),
 email varchar(50),
 city varchar(15),
 age int
)
create table orders
(orderId int primary key,
orderdate datetime,
amount int,
customerid int references customers(customerId),
)
create table product
(productId int ,
productName varchar(50),
brand varchar(20),
quantity int,
price int,
)
