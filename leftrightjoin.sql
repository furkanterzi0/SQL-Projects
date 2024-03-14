-- select customers.first_name,orders.id from customers left join orders on orders.customer_id  = customers.id where orders.id is null
-- select products.id,product_name from products left join order_details on products.id=order_details.product_id where product_id is null
select first_name from orders right join employees on orders.employee_id=employees.id where employee_id is null