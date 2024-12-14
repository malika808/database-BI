-- Table 1: Global Superstore
CREATE TABLE global_superstore (
    order_id SERIAL PRIMARY KEY,
    order_date DATE,
    region VARCHAR(50),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    sales NUMERIC(10, 2),
    profit NUMERIC(10, 2)
);

-- Inserting sample data 
INSERT INTO global_superstore (order_date, region, category, sub_category, sales, profit)
VALUES
('2023-01-01', 'Asia', 'Furniture', 'Chairs', 500.00, 50.00),
('2023-01-02', 'Europe', 'Office Supplies', 'Binders', 300.00, 45.00),
('2023-01-03', 'Africa', 'Technology', 'Phones', 1200.00, 200.00),
('2023-01-04', 'North America', 'Furniture', 'Tables', 800.00, 120.00),
('2023-01-05', 'South America', 'Office Supplies', 'Pens', 150.00, 25.00),
('2023-01-06', 'Europe', 'Technology', 'Laptops', 2500.00, 350.00),
('2023-01-07', 'Asia', 'Furniture', 'Cabinets', 400.00, 60.00),
('2023-01-08', 'Africa', 'Office Supplies', 'Markers', 100.00, 15.00),
('2023-01-09', 'North America', 'Technology', 'Tablets', 1800.00, 250.00),
('2023-01-10', 'South America', 'Furniture', 'Sofas', 1200.00, 180.00),
('2023-01-11', 'Europe', 'Furniture', 'Chairs', 700.00, 90.00),
('2023-01-12', 'Africa', 'Technology', 'Laptops', 2300.00, 400.00),
('2023-01-13', 'North America', 'Office Supplies', 'Markers', 350.00, 45.00),
('2023-01-14', 'South America', 'Furniture', 'Tables', 900.00, 150.00),
('2023-01-15', 'Asia', 'Office Supplies', 'Binders', 250.00, 40.00),
('2023-01-16', 'Europe', 'Technology', 'Phones', 1300.00, 180.00),
('2023-01-17', 'Africa', 'Furniture', 'Cabinets', 600.00, 70.00),
('2023-01-18', 'North America', 'Technology', 'Laptops', 3200.00, 500.00),
('2023-01-19', 'South America', 'Technology', 'Phones', 1500.00, 200.00),
('2023-01-20', 'Asia', 'Furniture', 'Sofas', 1100.00, 160.00),
('2023-01-21', 'Europe', 'Office Supplies', 'Pens', 180.00, 25.00),
('2023-01-22', 'Africa', 'Office Supplies', 'Binders', 220.00, 30.00),
('2023-01-23', 'North America', 'Furniture', 'Chairs', 650.00, 100.00),
('2023-01-24', 'South America', 'Technology', 'Tablets', 1700.00, 220.00),
('2023-01-25', 'Asia', 'Technology', 'Tablets', 1900.00, 280.00),
('2023-01-26', 'Europe', 'Furniture', 'Sofas', 800.00, 130.00),
('2023-01-27', 'Africa', 'Technology', 'Tablets', 1100.00, 170.00),
('2023-01-28', 'North America', 'Furniture', 'Cabinets', 950.00, 140.00),
('2023-01-29', 'South America', 'Technology', 'Laptops', 2200.00, 300.00),
('2023-01-30', 'Asia', 'Furniture', 'Chairs', 750.00, 120.00);

-- Table 2: Online Retail
CREATE TABLE online_retail (
    transaction_id SERIAL PRIMARY KEY,
    invoice_date DATE,
    country VARCHAR(50),
    product_description VARCHAR(255),
    quantity INTEGER,
    unit_price NUMERIC(10, 2)
);

-- Inserting sample data 
INSERT INTO online_retail (invoice_date, country, product_description, quantity, unit_price)
VALUES
('2023-02-01', 'United Kingdom', 'White Ceramic Mug', 20, 4.50),
('2023-02-02', 'Germany', 'Blue Plastic Bowl', 15, 3.20),
('2023-02-03', 'France', 'Red T-shirt', 10, 15.00),
('2023-02-04', 'Italy', 'Green Glass Bottle', 25, 2.50),
('2023-02-05', 'Spain', 'Yellow Notebook', 30, 5.00),
('2023-02-06', 'United Kingdom', 'Black Pen', 50, 1.20),
('2023-02-07', 'Germany', 'Orange Pillow', 10, 8.00),
('2023-02-08', 'France', 'Purple Blanket', 8, 12.00),
('2023-02-09', 'Italy', 'Pink Slippers', 15, 7.50),
('2023-02-10', 'Spain', 'Silver Spoon', 20, 3.80),
('2023-02-11', 'United Kingdom', 'Blue Ceramic Mug', 25, 5.00),
('2023-02-12', 'Germany', 'Red Plastic Bowl', 20, 4.00),
('2023-02-13', 'France', 'Yellow T-shirt', 12, 16.00),
('2023-02-14', 'Italy', 'Pink Glass Bottle', 30, 3.00),
('2023-02-15', 'Spain', 'Green Notebook', 35, 5.50),
('2023-02-16', 'United Kingdom', 'Red Pen', 55, 1.50),
('2023-02-17', 'Germany', 'White Pillow', 12, 7.50),
('2023-02-18', 'France', 'Blue Blanket', 10, 14.00),
('2023-02-19', 'Italy', 'Yellow Slippers', 18, 9.00),
('2023-02-20', 'Spain', 'Gold Spoon', 22, 4.00),
('2023-02-21', 'United Kingdom', 'Orange Ceramic Mug', 28, 4.80),
('2023-02-22', 'Germany', 'Green Plastic Bowl', 25, 3.50),
('2023-02-23', 'France', 'Blue T-shirt', 14, 17.00),
('2023-02-24', 'Italy', 'White Glass Bottle', 32, 2.80),
('2023-02-25', 'Spain', 'Purple Notebook', 40, 6.00),
('2023-02-26', 'United Kingdom', 'Pink Ceramic Mug', 30, 5.10),
('2023-02-27', 'Germany', 'Orange Ceramic Bowl', 22, 3.80),
('2023-02-28', 'France', 'Green T-shirt', 16, 18.00),
('2023-03-01', 'Italy', 'Red Glass Bottle', 18, 3.20),
('2023-03-02', 'Spain', 'Blue Notebook', 28, 6.50),
('2023-03-03', 'United Kingdom', 'Yellow Pen', 45, 1.80);

SELECT region, SUM(sales) AS total_sales
FROM global_superstore
GROUP BY region;

SELECT category, AVG(profit) AS avg_profit
FROM global_superstore
GROUP BY category;

SELECT sub_category, SUM(sales) AS total_sales
FROM global_superstore
GROUP BY sub_category
ORDER BY total_sales DESC
LIMIT 1;

SELECT category, sub_category, SUM(sales) AS total_sales
FROM global_superstore
GROUP BY category, sub_category
ORDER BY total_sales DESC;

SELECT region, SUM(profit) AS total_profit
FROM global_superstore
GROUP BY region
ORDER BY total_profit DESC;

SELECT EXTRACT(MONTH FROM order_date) AS month, SUM(sales) AS total_sales
FROM global_superstore
GROUP BY month
ORDER BY month;


SELECT country, SUM(quantity) AS total_quantity
FROM online_retail
GROUP BY country;

SELECT country, AVG(unit_price) AS avg_unit_price
FROM online_retail
GROUP BY country;

SELECT product_description, SUM(quantity * unit_price) AS revenue
FROM online_retail
GROUP BY product_description
ORDER BY revenue DESC
LIMIT 1;

SELECT product_description, SUM(quantity * unit_price) AS total_revenue
FROM online_retail
GROUP BY product_description
ORDER BY total_revenue DESC;

SELECT EXTRACT(MONTH FROM invoice_date) AS month, SUM(quantity * unit_price) AS total_revenue
FROM online_retail
GROUP BY month
ORDER BY month;

SELECT country, product_description, SUM(quantity) AS total_quantity
FROM online_retail
GROUP BY country, product_description
ORDER BY total_quantity DESC; 