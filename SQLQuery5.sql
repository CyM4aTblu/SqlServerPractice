select CustomerID, ContactName, ContactTitle, Country
from Customers
where country = 'Germany'

select count(*)
from Customers
where country = 'Germany'


-- опратор group by позволяет увидить какое количество клиентов в каждой стране
select country, count(*)
from Customers
group by country

-- опратор having позволяет устанавливать некотороые условия в отображение количества
select country, count(*) as counted
from Customers
group by country
having count(*) > 10

select country, count(*) as counted
from Customers
where country != 'Germany' -- фильтруем изначальный список
group by country
having count(*) > 10 -- фильтруем список получившийся в результате группировки

select categoryid, count(*), min(unitprice), max(unitprice), avg(unitprice), sum(unitprice)
from products
where categoryid != 8
group by categoryid
having count(*) > 10 and min(unitprice) > 5

select Country, count(*)
from Customers
group by Country
having count(*)>5
order by count(*)

select Country, count(*)
from Customers
group by Country
having count(*)>5
order by Country desc

select customerid, contactname, contacttitle, country
from customers
where country = 'USA' and contacttitle = 'Marketing Manager'

select country, count(*)
from customers
where contacttitle = 'Marketing Manager'
group by country

select customerid, contactname, contacttitle, country
from customers
order by country desc, contacttitle
--фитрация строк по стране а потом по должности клиента

select country, contacttitle, count(*)
from customers
group by country, contacttitle
having count(*) > 1
order by country, contacttitle

select orderid, sum(unitprice*quantity*(1-discount))
from [order details]
group by orderid

--tasks
select city, count(*)
from customers
group by city
having count(*) > 4
order by count(*) desc

select categoryid, count(*), avg(unitprice)
from products
group by categoryid
order by avg(unitprice) desc

select orderdate, count(*)
from orders
where orderdate between '1998-03-01 00:00:00.000' and  '1998-03-31 00:00:00.000'
group by orderdate
having count(*) = 4

select orderid, sum(unitprice*quantity*(1-discount))
from [order details]
group by orderid
having sum(unitprice*quantity*(1-discount)) > 10000
