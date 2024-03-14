select orders.id order_Id,customers.id as customer_Id ,first_name,ship_address,order_date,city from orders inner join customers on orders.customer_id = customers.id 
where city = 'New York'
