CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    city VARCHAR(255),
    state VARCHAR(255)
);

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    category VARCHAR(255),
    price NUMERIC,
    stock_quantity INT
);

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date TIMESTAMP,
    status VARCHAR(50), 
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
    order_item_id SERIAL PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO customers (city, state) VALUES
('New York', 'NY'),
('Los Angeles', 'CA'),
('Chicago', 'IL');

INSERT INTO products (category, price, stock_quantity) VALUES
('Electronics', 200, 50),
('Clothing', 50, 100),
('Home Appliances', 150, 30);

INSERT INTO orders (customer_id, order_date, status) VALUES
(1, '2024-10-01 10:00:00', 'Completed'),
(2, '2024-10-02 12:00:00', 'Completed'),
(3, '2024-10-03 14:00:00', 'Pending');

INSERT INTO order_items (order_id, product_id, quantity) VALUES
(1, 1, 2),
(1, 2, 1),
(2, 3, 1),
(3, 1, 1),
(3, 2, 3);

SELECT p.category, c.state, 
       SUM(p.price * oi.quantity) AS total_revenue
FROM order_items oi
JOIN orders o ON oi.order_id = o.order_id
JOIN products p ON oi.product_id = p.product_id
JOIN customers c ON o.customer_id = c.customer_id
WHERE o.status = 'Completed'
GROUP BY p.category, c.state;

WITH customer_revenue AS (
    SELECT o.customer_id, p.category, SUM(p.price * oi.quantity) AS total_spent
    FROM order_items oi
    JOIN orders o ON oi.order_id = o.order_id
    JOIN products p ON oi.product_id = p.product_id
    GROUP BY o.customer_id, p.category
)
SELECT category, customer_id, total_spent
FROM (
    SELECT category, customer_id, total_spent,
           RANK() OVER (PARTITION BY category ORDER BY total_spent DESC) AS rank
    FROM customer_revenue
) AS ranked
WHERE rank = 1;

SELECT product_id, 
       AVG(quantity) OVER (PARTITION BY product_id ORDER BY order_date ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS rolling_avg
FROM order_items oi
JOIN orders o ON oi.order_id = o.order_id;