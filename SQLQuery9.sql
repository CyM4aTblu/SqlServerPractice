select title
from employees
union all
select contacttitle
from customers
-- ��������� �������� ����������� ���. �� ���� �������� 
-- ����� all ������������ ��� ������������� ����������� ���� ����� � �� ������ ����������

select title
from employees
except
select contacttitle
from customers
-- ���������� ��� ������ ��� ���� � 1 �� �� ��� �� ������
--(���������� ��� 1� �� ������������ ������)

select title
from employees
intersect
select contacttitle
from customers
-- ���������� ��� ������ ��� ���� � � 1 �� � �� ������

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

--������

select city
from employees
union
select city
from customers