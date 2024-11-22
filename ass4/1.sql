CREATE TABLE sales (
    InvoiceID VARCHAR(15),
    Branch CHAR(1),
    City VARCHAR(50),
    CustomerType VARCHAR(20),
    Gender VARCHAR(10),
    ProductLine VARCHAR(50),
    UnitPrice DECIMAL(10, 2),
    Quantity INT,
    Total DECIMAL(10, 2),
    Date DATE,
    Time TIME,
    PaymentMethod VARCHAR(20)
);

-- вставка 50 строк
INSERT INTO sales VALUES 
('750-67-8428', 'A', 'Yangon', 'Member', 'Female', 'Health and beauty', 74.69, 7, 522.83, '2024-11-01', '13:08', 'Ewallet'),
('751-21-5828', 'B', 'Naypyitaw', 'Normal', 'Male', 'Electronic accessories', 15.28, 5, 76.40, '2024-11-02', '14:25', 'Cash'),
('752-61-4511', 'C', 'Mandalay', 'Member', 'Female', 'Home and lifestyle', 46.33, 2, 92.66, '2024-11-03', '15:30', 'Credit Card'),
('753-44-3719', 'A', 'Yangon', 'Normal', 'Male', 'Sports and travel', 58.22, 4, 232.88, '2024-11-04', '16:20', 'Ewallet'),
('754-31-9776', 'B', 'Naypyitaw', 'Member', 'Female', 'Food and beverages', 23.11, 8, 184.88, '2024-11-05', '10:05', 'Cash'),
('755-41-8723', 'C', 'Mandalay', 'Normal', 'Male', 'Health and beauty', 91.25, 3, 273.75, '2024-11-06', '12:45', 'Credit Card'),
('756-79-1809', 'A', 'Yangon', 'Member', 'Female', 'Fashion accessories', 34.99, 6, 209.94, '2024-11-07', '11:15', 'Ewallet'),
('757-82-5910', 'B', 'Naypyitaw', 'Normal', 'Male', 'Home and lifestyle', 12.59, 9, 113.31, '2024-11-08', '13:45', 'Cash'),
('758-91-6923', 'C', 'Mandalay', 'Member', 'Female', 'Food and beverages', 56.78, 7, 397.46, '2024-11-09', '14:10', 'Ewallet'),
('759-61-1282', 'A', 'Yangon', 'Normal', 'Male', 'Sports and travel', 67.11, 5, 335.55, '2024-11-10', '09:50', 'Credit Card'),
('760-54-3910', 'B', 'Naypyitaw', 'Member', 'Female', 'Electronic accessories', 45.67, 4, 182.68, '2024-11-11', '11:00', 'Cash'),
('761-88-7563', 'C', 'Mandalay', 'Normal', 'Male', 'Health and beauty', 22.33, 8, 178.64, '2024-11-12', '12:20', 'Credit Card'),
('762-21-4950', 'A', 'Yangon', 'Member', 'Female', 'Food and beverages', 38.45, 3, 115.35, '2024-11-13', '13:55', 'Ewallet'),
('763-67-2810', 'B', 'Naypyitaw', 'Normal', 'Male', 'Sports and travel', 54.33, 5, 271.65, '2024-11-14', '15:30', 'Cash'),
('764-32-7482', 'C', 'Mandalay', 'Member', 'Female', 'Fashion accessories', 23.56, 6, 141.36, '2024-11-15', '10:40', 'Credit Card'),
('765-22-6701', 'A', 'Yangon', 'Normal', 'Male', 'Electronic accessories', 66.45, 2, 132.90, '2024-11-16', '11:20', 'Ewallet'),
('766-91-4632', 'B', 'Naypyitaw', 'Member', 'Female', 'Home and lifestyle', 35.67, 4, 142.68, '2024-11-17', '14:05', 'Cash'),
('767-54-7382', 'C', 'Mandalay', 'Normal', 'Male', 'Food and beverages', 22.44, 3, 67.32, '2024-11-18', '16:45', 'Credit Card'),
('768-22-5831', 'A', 'Yangon', 'Member', 'Female', 'Health and beauty', 74.56, 7, 521.92, '2024-11-19', '10:25', 'Ewallet'),
('769-77-6120', 'B', 'Naypyitaw', 'Normal', 'Male', 'Fashion accessories', 12.34, 5, 61.70, '2024-11-20', '12:15', 'Cash'),
('770-81-9276', 'C', 'Mandalay', 'Member', 'Female', 'Home and lifestyle', 44.55, 8, 356.40, '2024-11-21', '11:30', 'Credit Card'),
('771-45-5820', 'A', 'Yangon', 'Normal', 'Male', 'Electronic accessories', 78.99, 2, 157.98, '2024-11-22', '13:50', 'Ewallet'),
('772-12-3838', 'B', 'Naypyitaw', 'Member', 'Female', 'Sports and travel', 89.99, 3, 269.97, '2024-11-23', '15:45', 'Cash'),
('773-55-8283', 'C', 'Mandalay', 'Normal', 'Male', 'Food and beverages', 9.34, 7, 65.38, '2024-11-24', '10:10', 'Credit Card'),
('774-41-9724', 'A', 'Yangon', 'Member', 'Female', 'Health and beauty', 58.56, 5, 292.80, '2024-11-25', '12:30', 'Ewallet'),
('775-19-8132', 'B', 'Naypyitaw', 'Normal', 'Male', 'Fashion accessories', 43.22, 4, 172.88, '2024-11-26', '11:45', 'Cash'),
('776-65-3715', 'C', 'Mandalay', 'Member', 'Female', 'Electronic accessories', 34.56, 6, 207.36, '2024-11-27', '14:50', 'Credit Card'),
('777-43-2912', 'A', 'Yangon', 'Normal', 'Male', 'Home and lifestyle', 56.99, 8, 455.92, '2024-11-28', '16:05', 'Ewallet'),
('778-66-7582', 'B', 'Naypyitaw', 'Member', 'Female', 'Food and beverages', 22.87, 5, 114.35, '2024-11-29', '09:25', 'Cash'),
('779-71-1284', 'C', 'Mandalay', 'Normal', 'Male', 'Health and beauty', 78.45, 2, 156.90, '2024-11-30', '10:50', 'Credit Card'),
('780-38-2828', 'A', 'Yangon', 'Member', 'Female', 'Sports and travel', 54.33, 6, 325.98, '2024-12-01', '11:35', 'Ewallet'),
('781-53-4582', 'B', 'Naypyitaw', 'Normal', 'Male', 'Electronic accessories', 32.11, 3, 96.33, '2024-12-02', '12:15', 'Cash'),
('782-42-5127', 'C', 'Mandalay', 'Member', 'Female', 'Fashion accessories', 44.76, 4, 179.04, '2024-12-03', '13:55', 'Credit Card'),
('783-29-4938', 'A', 'Yangon', 'Normal', 'Male', 'Health and beauty', 33.45, 7, 234.15, '2024-12-04', '14:35', 'Ewallet'),
('784-77-9281', 'B', 'Naypyitaw', 'Member', 'Female', 'Food and beverages', 24.89, 5, 124.45, '2024-12-05', '15:20', 'Cash'),
('785-84-6482', 'C', 'Mandalay', 'Normal', 'Male', 'Sports and travel', 11.56, 9, 104.04, '2024-12-06', '16:10', 'Credit Card'),
('786-53-4723', 'A', 'Yangon', 'Member', 'Female', 'Fashion accessories', 54.87, 6, 329.22, '2024-12-07', '10:30', 'Ewallet'),
('787-79-3582', 'B', 'Naypyitaw', 'Normal', 'Male', 'Home and lifestyle', 23.11, 4, 92.44, '2024-12-08', '11:45', 'Cash'),
('788-41-4912', 'C', 'Mandalay', 'Member', 'Female', 'Health and beauty', 42.33, 8, 338.64, '2024-12-09', '12:55', 'Credit Card'),
('789-66-7482', 'A', 'Yangon', 'Normal', 'Male', 'Electronic accessories', 67.22, 2, 134.44, '2024-12-10', '14:10', 'Ewallet'),
('790-32-3815', 'B', 'Naypyitaw', 'Member', 'Female', 'Food and beverages', 56.45, 5, 282.25, '2024-12-11', '13:25', 'Cash'),
('791-54-6923', 'C', 'Mandalay', 'Normal', 'Male', 'Sports and travel', 32.89, 7, 230.23, '2024-12-12', '10:35', 'Credit Card'),
('792-43-7832', 'A', 'Yangon', 'Member', 'Female', 'Health and beauty', 44.22, 4, 176.88, '2024-12-13', '11:55', 'Ewallet'),
('793-88-2734', 'B', 'Naypyitaw', 'Normal', 'Male', 'Fashion accessories', 23.34, 6, 140.04, '2024-12-14', '14:25', 'Cash'),
('794-77-5812', 'C', 'Mandalay', 'Member', 'Female', 'Home and lifestyle', 45.56, 5, 227.80, '2024-12-15', '15:50', 'Credit Card');



SELECT Branch, COUNT(*) AS TotalSales
FROM sales
GROUP BY Branch;

SELECT Branch, AVG(Total) AS AvgCheck
FROM sales
GROUP BY Branch;

SELECT PaymentMethod, COUNT(*) AS Count
FROM sales
GROUP BY PaymentMethod
ORDER BY Count DESC;

SELECT ProductLine, SUM(Total) AS Revenue
FROM sales
GROUP BY ProductLine
ORDER BY Revenue DESC;

SELECT CustomerType, AVG(Total) AS AvgSpending
FROM sales
GROUP BY CustomerType;

SELECT Branch, MAX(Total) AS MaxCheck
FROM sales
GROUP BY Branch;

SELECT ProductLine, AVG(UnitPrice) AS AvgUnitPrice
FROM sales
GROUP BY ProductLine;

SELECT MONTH(Date) AS SaleMonth, SUM(Total) AS MonthlyRevenue
FROM sales
WHERE MONTH(Date) = 11
GROUP BY SaleMonth;

SELECT DAYNAME(Date) AS SaleDay, COUNT(*) AS SaleCount
FROM sales
GROUP BY SaleDay
ORDER BY SaleCount DESC;

SELECT City, SUM(Total) AS TotalSales
FROM sales
GROUP BY City
ORDER BY TotalSales DESC;

SELECT HOUR(Time) AS SaleHour, COUNT(*) AS SaleCount
FROM sales
GROUP BY SaleHour
ORDER BY SaleCount DESC;

SELECT ProductLine, COUNT(*) AS ProductCount
FROM sales
GROUP BY ProductLine
ORDER BY ProductCount DESC
LIMIT 5;

SELECT Gender, SUM(Total) AS Revenue
FROM sales
GROUP BY Gender;

SELECT Branch, SUM(Total) AS EwalletRevenue
FROM sales
WHERE PaymentMethod = 'Ewallet'
GROUP BY Branch;

SELECT AVG(Quantity) AS AvgQuantity
FROM sales;