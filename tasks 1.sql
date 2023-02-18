select count(*)
from customers
where contacttitle like '%Sales%' and region is null

select contacttitle,  count(*)
from customers
group by contacttitle
order by count(*) desc

select categoryid, max(unitprice) as maxi, min(unitprice) as mini
from products
group by categoryid
order by (max(unitprice) - min(unitprice)) desc

select orderid, sum(quantity)
from [order details]
group by orderid
order by sum(quantity) desc

select orderid, sum(quantity*unitprice*discount)
from [order details]
group by orderid
having sum(quantity*unitprice*discount) > 3000
order by sum(quantity*unitprice*(1-discount)) desc

