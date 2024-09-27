-- Топ-5 продуктов по общему доходу

CREATE TABLE IF NOT EXISTS sales (
    product_id INT NOT NULL,
    sale_date DATE NOT NULL,
    revenue DECIMAL(10, 2) NOT NULL
);

INSERT INTO sales (product_id, sale_date, revenue) VALUES
(1, '2023-01-15', 500.00),
(2, '2023-02-20', 700.00),
(1, '2023-03-10', 300.00),
(3, '2023-04-25', 400.00),
(2, '2023-05-30', 800.00),
(4, '2023-06-15', 600.00),
(5, '2023-07-20', 900.00),
(3, '2023-08-05', 500.00),
(4, '2023-09-10', 700.00),
(5, '2023-10-25', 600.00);

SELECT
    product_id,
    SUM(revenue) AS total_revenue,
    MAX(sale_date) AS latest_sale_date
FROM
    sales
GROUP BY
    product_id
ORDER BY
    total_revenue DESC,
    latest_sale_date DESC
LIMIT 5;