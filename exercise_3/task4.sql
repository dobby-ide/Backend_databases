select products.product_name, count(orders.id)
from products
left join order_details on products.id = order_details.product_id
left join orders on orders.id = order_details.order_id
group by products.product_name;