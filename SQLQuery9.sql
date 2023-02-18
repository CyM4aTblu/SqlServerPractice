select title
from employees
union all
select contacttitle
from customers
-- выполняет операцию объеденения инф. из двух столбцов 
-- слово all используется при необходимости объединения всех строк а не только уникальных

select title
from employees
except
select contacttitle
from customers
-- отоброжает все строки что есть в 1 бд но нет во второй
--(уникальные для 1й бд относительно второй)

select title
from employees
intersect
select contacttitle
from customers
-- отоброжает все строки что есть и в 1 бд и во второй

select Country, Title
from Employees
union all
select Country, ContactTitle
from Customers

select Country, Title
from Employees
union
select Country, ContactTitle
from Customers

--задачи

select city
from employees
union
select city
from customers