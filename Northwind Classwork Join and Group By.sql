use northwind;

select customername, productname
from customers as c
left join orders as o
on c.customerid = o.customerid
left join order_details as od
on o.orderid = od.orderid
left join products as p
on od.productid = p.productid;

Select productid, productname, suppliers.suppliername
from products
inner join suppliers
on suppliers.supplierid= products.supplierid;

Select productid, productname, categories.categoryname 
from products
inner join categories
on categories.categoryid= products.categoryid;

 Select productid,productname, categories.categoryname
from products
inner join categories
on categories.categoryid= products.categoryid
where categories.categoryname='Meat/poultry';

 Select orderid, orderdate, customers.customername, concat_ws( employees.firstname,' ',employees.lastname) as EmployeeName
from orders
inner join customers
on orders.customerid= customers.customerid
inner join employees
on orders.employeeid= employees.employeeid;

Select productname, categories.categoryname, suppliers.suppliername
from products
inner join categories
on products.categoryid= categories.categoryid 
inner join suppliers
on products.supplierid= suppliers.supplierid;

Select orderid, orderdate, customers.customername
from orders
inner join customers
on orders.customerid= customers.customerid
where year(orders.orderdate)=1996
order by orders.orderdate;

Select categoryname, count(products.productid) as NumberofProducts
from categories
inner join products
on products.categoryid= categories.categoryid
group by categories.categoryname
order by categories.categoryname;

Select productname,price, sum(order_details.quantity) as Totalquantityordered
from products
inner join order_details
on products.productid= order_details.productid
group by products.productname, products.price
order by products.productname;

