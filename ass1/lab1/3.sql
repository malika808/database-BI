-- Общий объём продаж по регионам за год и месяц

CREATE TABLE IF NOT EXISTS monthly_sales (
    year INT NOT NULL,
    month INT NOT NULL,
    total_sales DECIMAL(15, 2) NOT NULL,
    region VARCHAR(50) NOT NULL
);

INSERT INTO monthly_sales (year, month, total_sales, region) VALUES
(2023, 1, 10000.00, 'North'),
(2023, 1, 15000.00, 'South'),
(2023, 2, 12000.00, 'North'),
(2023, 2, 13000.00, 'South'),
(2023, 3, 14000.00, 'North'),
(2023, 3, 16000.00, 'South'),
(2024, 1, 17000.00, 'North'),
(2024, 1, 18000.00, 'South'),
(2024, 2, 19000.00, 'North'),
(2024, 2, 20000.00, 'South');

SELECT
    year,
    month,
    region,
    SUM(total_sales) AS total_sales_per_region
FROM
    monthly_sales
GROUP BY
    year,
    month,
    region
ORDER BY
    year ASC,
    month ASC;