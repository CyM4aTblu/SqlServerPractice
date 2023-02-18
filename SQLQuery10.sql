--подзапросы или вложенные запросы
select count(*)
from
	(select orderdate, count(*) as cnt
	from orders
	group by orderdate
	having count(*)>2) as newDB

-- позволяет использовать любой запрос как новую БД и на ее основе соствалять новые бд

select *
from orders
where customerid in (select customerid
					from customers
					where country = 'USA')

select country,
sum(unitprice*quantity*(1-discount))
from [order details] as t1 inner join orders as t2 on t1.orderid = t2.orderid
inner join customers as t3 on t2.customerid = t3.customerid
group by country

select country,
sum(unitprice*quantity*(1-discount)),sum(unitprice*quantity*(1-discount))/(select sum(unitprice*quantity*(1-discount))
from [order details])
from [order details] as t1 inner join orders as t2 on t1.orderid = t2.orderid
inner join customers as t3 on t2.customerid = t3.customerid
group by country
order by sum(unitprice*quantity*(1-discount)) desc

select sum(unitprice*quantity*(1-discount))
from [order details]

select count(*)
from 
(select country, count(*) cnt_clients
from customers
group by country
having count(*)>1) as newDB


select count(*)
from
(select customerid, count(*) as p1
from orders
group by customerid
having count(*)>10) as t1

select *
from products
where categoryid = 1

select sum(unitprice*quantity*(1-discount))
from [order details]
where productid in (select productid
					from products
					where categoryid = 1)
