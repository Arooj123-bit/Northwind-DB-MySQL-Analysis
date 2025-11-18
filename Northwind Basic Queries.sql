SELECT *
FROM northwind.categories;
USE northwind;
select *
from categories;
SELECT CustomerName, City, Country 
FROM Customers;
SELECT ProductID, ProductName
 FROM Products;
 SELECT Country 
 FROM Customers;
 SELECT DISTINCT Country
 FROM Customers;
 
  SELECT DISTINCT City
 FROM Customers;
 
 SELECT COUNT(DISTINCT Country) FROM Customers;
 
 SELECT COUNT(DISTINCT CustomerID) FROM Customers;
 
select firstname, lastname, birthdate
from employees;
 
 select customername, address, city
from customers;
 
 select distinct city
 from suppliers;
 
 select count(distinct city)
from customers;

SELECT * FROM Customers                
WHERE Country = "Mexico";

select *
from customers
where Country = "UK";

select * from products
where ProductID=1;

select * from products
where Price>100;

select * from orders
where OrderDate > '1996-07-30';

select CustomerName , city, country
from customers
where city!= 'Madrid';

select CustomerName , city, country
from customers
where city <> 'Madrid';

select * 
from customers
where City = 'london';

select count(country)
from customers
where country= 'USA';

select *
from customers
where customerID >= 15;

SELECT * FROM Customers
WHERE Country = 'Germany' and City = 'Berlin';

SELECT * FROM Customers
WHERE City = 'Berlin' OR City = 'Stuttgart';

SELECT * FROM Customers
WHERE Country = 'Germany' OR Country = 'Spain';

select * 
from suppliers
where not city ='london';

select customername, country, city from customers
where country='uk' and city='london';

select * from customers
where city= 'portland' or  city='kirkland';

SELECT *
FROM Orders
WHERE OrderDate < '1996-08-27'
   OR OrderDate > '1997-02-21';
   
   select * from customers
   where customername like 'a%';
   
   select * from customers
   where customername like '%a';
   
  select * from customers
   where customername like '%or%'; 
   
select *
from employees
where firstName like '_n%';

SELECT * FROM Customers
WHERE Country IN ('Germany', 'France', 'UK');

select *
from customers
where city IN ('Berlin','Paris','madrid');

select *
from orders
where shipperID IN( 1,3);

select * from products
where productname between "Chais" and "Chocolade";

select * FROM products
WHERE Price BETWEEN 10 AND 20;

SELECT * FROM Customers
ORDER BY Country;

select * from products
order by price;

select * from products
order by price desc;

SELECT * FROM Customers
ORDER BY Country desc, city;
 
 SELECT * FROM Customers
ORDER BY Country desc, city, customerid desc;

select * 
from products
where productname like "%choco%"
order by price;

SELECT * FROM Customers
LIMIT 3; 

SELECT * FROM Customers
LIMIT 5;

SELECT * FROM Products
ORDER BY PRICE 
LIMIT 5;

SELECT * FROM Customers
WHERE Country='Germany'
LIMIT 3;

select min(price)
from products;

select max(price)
from products;

select min(productname)
from products;

select max(productname)
from products;

select min(orderdate)
from orders;

select max(orderdate)
from orders;

select avg(price)
from products;

select sum(price)
from products;

select customerid as ID, customername as Customers
from customers;

select customerid as ID, customername as Customers
from customers as c;

select customerid as ID, customername as Customers
from customers;

select customerid as ID, customername as 'Contact person'
from customers;

SELECT CustomerName, CONCAT_WS(', ', Address, PostalCode, City, Country) AS Address
FROM Customers;