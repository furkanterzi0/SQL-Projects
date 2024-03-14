/*
select first_name as number_of_order from customers left join orders  on customers.id=orders.customer_id
where customer_id is null
group by first_name */

delete customers
from customers left join orders
on orders.customer_id=customers.id
where orders.customer_id is null       -- siparis vermeyenleri sil 