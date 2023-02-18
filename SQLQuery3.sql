--count
select count(*)
from customers
-- выводит количество строк во всей БД

select count(*), count(ContactTitle), count(city), count(Country)
from Customers

-- distinct -> выводит только уникальные значения в столбце
select distinct(Country)
from Customers

-- подсчет уникальных значений в столбце
select count(distinct(Country))
from Customers

select count(*), count(distinct(ContactTitle)), count(distinct(city)), count(distinct(Country))
from Customers

--min - поиск минимального значения
select min(UnitPrice)
from Products

--max - поиск максимального значения
select max(UnitPrice)
from Products

--avg - поиск среднего значения
select avg(UnitPrice)
from Products 

--sum - поиск суммы всех значений
select sum(UnitPrice)
from Products 

--можно задать имя столбцам, имя которых было искажено при использовании
-- агрегирующих ф-ий с помощью ключевого слова as
select max(UnitPrice) as maximum
from Products

--min и max при применении к датам
select min(OrderDate), max(OrderDate)
from Orders

Select min(UnitPrice) as min_price, max(UnitPrice) as max_price, avg(UnitPrice) as avg_price
from Products
where CategoryID = 3

select count(distinct(ContactTitle))
from Customers
where Country = 'UK'

Select sum(UnitPrice)
from Products
where CategoryID in (4, 5)