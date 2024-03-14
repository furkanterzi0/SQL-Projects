select ship_name as name_surname,product_name,shipped_date,business_phone,ship_address,(quantity*unit_price) as total 
from order_details 
inner join products on order_details.product_id = products.id 
inner join orders on order_details.order_id= orders.id
inner join customers on orders.customer_id=customers.id
order by name_surname 