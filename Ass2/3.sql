SELECT customer_id, customer_name, COUNT(order_id) AS order_count
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY order_count DESC
LIMIT 1;


SELECT product_id, product_name, SUM(quantity) AS total_quantity
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_quantity DESC
LIMIT 1;


SELECT product_id, product_name, SUM(quantity * unit_price) AS total_revenue
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_revenue DESC
LIMIT 1;


WITH most_orders_customer AS (
    SELECT c.customer_id, COUNT(o.order_id) AS order_count
    FROM customers c
    JOIN orders o ON c.customer_id = o.customer_id
    GROUP BY c.customer_id
    ORDER BY order_count DESC
    LIMIT 1
)
SELECT SUM(total_amount) AS total_revenue
FROM orders o
JOIN most_orders_customer moc ON o.customer_id = moc.customer_id;
