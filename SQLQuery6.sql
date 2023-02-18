select * 
from customers

-- первичный и внешний ключи
select t1.*, t2.*
from products t1 inner join categories t2 on t1.categoryid = t2.categoryid

select t3.*, t4.*
from orders t3 inner join [order details] t4 on t3.orderid = t4.orderid

select t3.*, t4.*
from orders t3  full outer join [order details] t4 on t3.orderid = t4.orderid