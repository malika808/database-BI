-- Create customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name TEXT,
    email TEXT,
    phone TEXT,
    address TEXT
);

-- Create orders table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount NUMERIC,
    FOREIGN KEY (customer_id) REFERENCES customers (customer_id)
);

-- Create order_items table
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price NUMERIC,
    FOREIGN KEY (order_id) REFERENCES orders (order_id),
    FOREIGN KEY (product_id) REFERENCES products (product_id)
);

-- Create products table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name TEXT,
    category_id INT,
    description TEXT,
    FOREIGN KEY (category_id) REFERENCES categories (category_id)
);

-- Create categories table
CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name TEXT
);

-- Insert data into customers table
INSERT INTO customers (customer_id, customer_name, email, phone, address)
VALUES 
(1, 'John Doe', 'john@example.com', '123-456-7890', '123 Elm Street'),
(2, 'Jane Smith', 'jane@example.com', '234-567-8901', '456 Maple Street'),
(3, 'Alice Johnson', 'alice@example.com', '345-678-9012', '789 Oak Street'),
(4, 'Bob Brown', 'bob@example.com', '456-789-0123', '123 Pine Street'),
(5, 'Charlie Black', 'charlie@example.com', '567-890-1234', '234 Cedar Street'),
(6, 'Diana White', 'diana@example.com', '678-901-2345', '567 Birch Street'),
(7, 'Edward Green', 'edward@example.com', '789-012-3456', '890 Walnut Street'),
(8, 'Fiona Red', 'fiona@example.com', '890-123-4567', '234 Cherry Street'),
(9, 'George Blue', 'george@example.com', '901-234-5678', '345 Aspen Street'),
(10, 'Holly Gray', 'holly@example.com', '012-345-6789', '678 Elm Street');

-- Insert data into categories table
INSERT INTO categories (category_id, category_name)
VALUES
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Books'),
(4, 'Toys'),
(5, 'Furniture');

-- Insert data into products table
INSERT INTO products (product_id, product_name, category_id, description)
VALUES
(1, 'Laptop', 1, 'High-performance laptop'),
(2, 'T-shirt', 2, 'Comfortable cotton t-shirt'),
(3, 'Novel', 3, 'Best-selling fiction book'),
(4, 'Action Figure', 4, 'Popular superhero toy'),
(5, 'Chair', 5, 'Ergonomic office chair'),
(6, 'Smartphone', 1, 'Latest model smartphone'),
(7, 'Jacket', 2, 'Warm winter jacket'),
(8, 'Textbook', 3, 'Advanced textbook on physics'),
(9, 'Board Game', 4, 'Strategy board game'),
(10, 'Table', 5, 'Modern wooden table');

-- Insert data into orders table
INSERT INTO orders (order_id, customer_id, order_date, total_amount)
VALUES
(1, 1, '2024-09-01', 500),
(2, 2, '2024-09-02', 150),
(3, 3, '2024-09-03', 250),
(4, 4, '2024-09-04', 100),
(5, 5, '2024-09-05', 300),
(6, 6, '2024-09-06', 700),
(7, 7, '2024-09-07', 200),
(8, 8, '2024-09-08', 450),
(9, 9, '2024-09-09', 100),
(10, 10, '2024-09-10', 600);

-- Insert data into order_items table
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, unit_price)
VALUES
(1, 1, 1, 1, 500),
(2, 2, 2, 3, 50),
(3, 3, 3, 2, 125),
(4, 4, 4, 1, 100),
(5, 5, 5, 1, 300),
(6, 6, 6, 1, 700),
(7, 7, 7, 2, 100),
(8, 8, 8, 1, 450),
(9, 9, 9, 2, 50),
(10, 10, 10, 1, 600);
