select contactname, city, case when region is null then '404' else region end as region
from customers

select orderid,
sum(UnitPrice*Quantity*(1-Discount)) as Revenue,
case when sum(UnitPrice*Quantity*(1-Discount)) < 1000 then '0-999'
when sum(UnitPrice*Quantity*(1-Discount)) < 5000 then '1000-4999'
else '5000 and >' end as revenue_group
from [Order Details]
group by orderid

select orderid,
sum(UnitPrice*Quantity*(1-Discount)) as Revenue,
case when sum(UnitPrice*Quantity*(1-Discount)) between 1 and 999 then '0-999'
when sum(UnitPrice*Quantity*(1-Discount)) between 1000 and 4999 then '1000-4999'
when sum(UnitPrice*Quantity*(1-Discount)) >=5000 then '5000 and >' end as revenue_group
from [Order Details]
group by orderid

select count(*)
from
(select firstname, lastname, region, case when region is null then 'not defined' else region end as succ
from employees) as newDB
where succ = 'not defined'

select gender, count(lastname)
from 
(select firstname, lastname, titleofcourtesy, case when titleofcourtesy in ('Mr.', 'Dr.') then 'Man' else 'Woman' end as gender
from employees) as newDB
group by gender

select pricecategory, count(productname)
from
(select productname, unitprice, case when unitprice between 0 and 9.99 then '0-9.99'
when unitprice between 10 and 29.99 then '10-29.99' when unitprice between 30 and 49.99 then '30-49.99'
else '>50' end as pricecategory 
from products) as newDb
group by pricecategory