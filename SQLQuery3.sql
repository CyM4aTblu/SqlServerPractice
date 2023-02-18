--count
select count(*)
from customers
-- ������� ���������� ����� �� ���� ��

select count(*), count(ContactTitle), count(city), count(Country)
from Customers

-- distinct -> ������� ������ ���������� �������� � �������
select distinct(Country)
from Customers

-- ������� ���������� �������� � �������
select count(distinct(Country))
from Customers

select count(*), count(distinct(ContactTitle)), count(distinct(city)), count(distinct(Country))
from Customers

--min - ����� ������������ ��������
select min(UnitPrice)
from Products

--max - ����� ������������� ��������
select max(UnitPrice)
from Products

--avg - ����� �������� ��������
select avg(UnitPrice)
from Products 

--sum - ����� ����� ���� ��������
select sum(UnitPrice)
from Products 

--����� ������ ��� ��������, ��� ������� ���� �������� ��� �������������
-- ������������ �-�� � ������� ��������� ����� as
select max(UnitPrice) as maximum
from Products

--min � max ��� ���������� � �����
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