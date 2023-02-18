Select ProductName, CategoryID, UnitPrice
from Products 
order by UnitPrice
--сортировка обычная (от больш к мен)

Select ProductName, CategoryID, UnitPrice
from Products 
order by UnitPrice desc
--сортировка инвертированная от меньш к боль

Select ProductName, CategoryID, UnitPrice
from Products 
order by CategoryID, UnitPrice
-- сортировка по нескольким параметрам (приоритет идет от большего слева 
-- к меньшему справа)

Select ProductName, CategoryID, UnitPrice
from Products 
order by CategoryID desc, UnitPrice desc

Select ProductName, CategoryID, UnitPrice
from Products 
where UnitPrice < 100 and CategoryID != 2 or ProductName like 'G%'
order by CategoryID, UnitPrice
-- вариант с применением сортиовки вместе с фильтрацией

-- задачи
Select OrderID, Freight
from Orders
where OrderDate = '1998-02-26 00:00:00.000'
order by Freight desc

Select *
from Orders
where OrderDate = '1998-02-26 00:00:00.000'
order by EmployeeID, Freight

