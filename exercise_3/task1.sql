SELECT customers.first_name, customers.last_name, customers.company, orders.shipped_date 
FROM customers
right JOIN orders ON customers.id = orders.customer_id
where customers.city = 'New York';