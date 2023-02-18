--тестовые задачи
Select count(*)
from [order details] as t1 inner join Products as t2 on t1.productid = t2.productid
where t2.productname = 'chocolade'

select *
from Products
where productname = 'chocolade'

---------------
select sum(t1.unitprice*t1.quantity*(1-t1.discount))
from [order details] as t1 inner join Products as t2 on t1.productid = t2.productid
inner join categories as t3 on t2.categoryid = t3.categoryid
where categoryname = 'Confections'


select *
from categories


--------------------
select  t3.categoryname, sum(t1.unitprice*t1.quantity*(1-t1.discount))
from [order details] as t1 inner join Products as t2 on t1.productid = t2.productid
inner join categories as t3 on t2.categoryid = t3.categoryid
group by t3.categoryname
order by sum(t1.unitprice*t1.quantity*(1-t1.discount)) desc
---------------
select t3.lastname, t3. firstname, t3.employeeid
from customers as t1 inner join orders as t2 on t1.customerid = t2.customerid
inner join employees as t3 on t2.employeeid = t3.employeeid
where contactname = 'Simon Crowther' and orderdate = '1998-04-29 00:00:00.000'

select *
from employees

select *
from orders
------------------
select count(orderid), shipcity
from orders
where (orderdate between '1997-01-01' and '1997-12-31')
group by shipcity
having count(orderid) > 5

select count(shipcity)
from (select shipcity
from orders
where (orderdate between '1997-01-01' and '1997-12-31')
group by shipcity
having count(orderid) > 5) as dhgfr



