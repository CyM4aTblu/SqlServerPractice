Select ProductName, CategoryID, UnitPrice
from Products 
order by UnitPrice
--���������� ������� (�� ����� � ���)

Select ProductName, CategoryID, UnitPrice
from Products 
order by UnitPrice desc
--���������� ��������������� �� ����� � ����

Select ProductName, CategoryID, UnitPrice
from Products 
order by CategoryID, UnitPrice
-- ���������� �� ���������� ���������� (��������� ���� �� �������� ����� 
-- � �������� ������)

Select ProductName, CategoryID, UnitPrice
from Products 
order by CategoryID desc, UnitPrice desc

Select ProductName, CategoryID, UnitPrice
from Products 
where UnitPrice < 100 and CategoryID != 2 or ProductName like 'G%'
order by CategoryID, UnitPrice
-- ������� � ����������� ��������� ������ � �����������

-- ������
Select OrderID, Freight
from Orders
where OrderDate = '1998-02-26 00:00:00.000'
order by Freight desc

Select *
from Orders
where OrderDate = '1998-02-26 00:00:00.000'
order by EmployeeID, Freight

