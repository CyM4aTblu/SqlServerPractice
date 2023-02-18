--‘”Ќ ÷»» дл€ работы с числами
select unitprice, round(unitprice, 1), round(unitprice, -1), round(unitprice, 0)
from products
--округление чисел

select unitprice, round(unitprice, 0), discount, round(discount,1)
from [order details]

select round(sum(unitprice*quantity*(1-discount)), 2)
from [order details]

select UnitPrice, --цена
SQRT(UnitPrice), --выводит корень из числа
SQUARE(UnitPrice) --возводит число в квадрат
from Products

--функции дл€ работы с датами и времененем
select orderdate, day(orderdate), month(orderdate), year(orderdate)
from orders

--получить текущую дату и врем€ на сервере бд
SELECT getdate()

-- получение компонента даты
select datepart(second, getdate()) -- варианты:year, quater, month, week, day, hour, minute,  second

-- арифметика с датами
select DateAdd(year, 4, getdate()) 
-- прибавл€ет к указанному компоненту даты нужное число

select datediff(month, getdate(), '2020-02-20')
--возврат разницу между двум€ датами

--задачи
select year(orderdate), month(orderdate), count(orderid)
from orders
group by year(orderdate), month(orderdate)
order by year(orderdate), month(orderdate)
-- количество покупок по мес€цам

select orderid, orderdate, shippeddate
from orders
where shippeddate between orderdate and dateadd(day, 31, orderdate)
-- заказы доставленные за мес€ц

select
OrderDate,
day(OrderDate),
month(OrderDate),
year(OrderDate)
from Orders

SELECT
DATEPART(year, GETDATE()+0.125),-- OrderDate '2020-11-24'
DATEPART(quarter, GETDATE()+0.125),
DATEPART(month, GETDATE()+0.125),
DATEPART(week, GETDATE()+0.125),
DATEPART(day, GETDATE()+0.125),
DATEPART(hour, GETDATE()+0.125),
DATEPART(minute, GETDATE()+0.125)

SELECT
DATEADD(year, 3, GETDATE()+0.125),
DATEADD(month, 2, GETDATE()+0.125),
DATEADD(day, -4, GETDATE()+0.125)

SELECT
DATEDIFF(year, GETDATE()+0.125, '2020-11-24'),
DATEDIFF(month, GETDATE()+0.125, '2020-11-24'),
DATEDIFF(day, GETDATE()+0.125, '2020-11-24')

--функции дл€ работы со строками
select companyname, lower(companyname), upper(companyname)
from customers
--работа с регистрами

select unitprice, left(unitprice, 2), right(unitprice, 2)
from products
--вырезка указанного количества символов слева или справа

select contactname, len(contactname)
from customers
--количество символов в строке

select lastname, firstname, concat(lastname, ' ', firstname) as contactname
from employees
--объеденение нескольких строк в одну

select contacttitle, replace(contacttitle, 'Owner', 'business owner')
from customers
--замена подстроки на другую подстроку

select contacttitle, substring(contacttitle, 12, 7)
from customers
where contacttitle = 'Accounting Manager'
--извлекает часть твоороки в указанных рамках

--задачи
select round(sum(Unitprice*quantity*(1-discount)), 0)
from orders as t1 inner join [order details] as t2 on t1.orderid = t2.orderid
where orderdate between '1996-01-01' and '1996-12-31'

select datepart(quarter,orderdate), count(orderid)
from orders
where orderdate between '1997-01-01' and '1997-12-31'
group by datepart(quarter,orderdate)

SELECT DATEDIFF(day, orderdate, shippeddate)
from orders
order by DATEDIFF(day, orderdate, shippeddate) desc

select  distinct country
from customers
where len(country) > 10
