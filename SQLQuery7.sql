select productname, categoryname
from products inner join categories on products.categoryid = categories.categoryid
where categoryname = 'Seafood'
-- равносильно 
select t1.productname, categoryname
from products as t1 inner join categories as t2 on t1.categoryid = t2.categoryid
where categoryname = 'Seafood'

select *
from customers as cus inner join orders as ord on cus.customerid = ord.customerid

select  distinct cus.contactname, emp.firstname, emp.lastname
from customers as cus inner join orders as ord on cus.customerid = ord.customerid
inner join employees as emp on emp.employeeid = ord.employeeid
where emp.firstname = 'Robert' and emp.lastname = 'King'

--distinct - вывести уникальные

select count(*)
from employees as emp inner join orders as ord on emp.employeeid = ord.employeeid
where emp.firstname = 'Andrew' and emp.lastname = 'Fuller'

select round(sum(unitprice*quantity*(1-discount)), 0)
from orders as ord inner join [order details] as odet on ord.orderid = odet.orderid
where ord.orderdate between '1997-01-01 00:00:00.000' and '1997-12-31 00:00:00.000'

select categoryname, count(productname)
from products as pr inner join Categories as cat on pr.Categoryid = cat.Categoryid
group by categoryname


select emp.firstname, emp.lastname
from employees as emp inner join orders as ord on emp.employeeid = ord.employeeid
inner join customers as cus on ord.customerid = cus.customerid
where cus.contactname = 'Francisco Chang'

select *
from customers

select *
from employees

select *
from orders

select *
from [order details]