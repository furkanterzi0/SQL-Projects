/*
select product_name, count(*) as adet from order_details 
inner join products on order_details.product_id=products.id 
inner join orders on order_details.order_id=orders.id
group by products.id 
order by adet          -- hangi üründen kac tane satilmis
*/

/*
sshipperselect product_name, count(*) as adet,sum(order_details.quantity*order_details.unit_price) as total from order_details 
inner join products on order_details.product_id=products.id 
inner join orders on order_details.order_id=orders.id
group by products.id 
order by total DESC
limit 3                 -- en cok kazandiran 3 ürün */

/*
select company as company_name,sum(shipping_fee) as total from shippers inner join orders on shippers.id=shipper_id 
group by company_name
order by total            
								--hangi kargo sirketine ne kadar harcadigin */
                                
/*
select company as company_name,sum(shipping_fee) as total_price,count(*) as total_orders,avg(shipping_fee) as price_per_order from shippers inner join orders on shippers.id=shipper_id 
where shipping_fee > 0
group by company_name   
having count(orders.id) > 10     --10dan fazla siparis teslimati yapan sirketler siralamaya girebilir
order by price_per_order ASC    
									-- en uygun kargo ücreti */

                                
