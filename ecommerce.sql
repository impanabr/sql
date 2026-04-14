CREATE DATABASE ecommerce_db;
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(15),
    address VARCHAR(100),
    city VARCHAR(50),
    pincode INT,
    gender VARCHAR(10)
);
INSERT INTO customers VALUES(1, 'Rahul', 'rahul@gmail.com', '9999999999', 'Delhi', 'Delhi', 110001, 'Male');
select*from customers;

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    product_name VARCHAR(50),
    quantity INT,
    total_price DOUBLE,
    order_date DATE,
    status VARCHAR(20),
    payment_mode VARCHAR(20)
);
INSERT INTO orders VALUES(1, 'Rahul', 'Mobile', 1, 15000, '2026-04-14', 'Delivered', 'UPI');
select*from orders;

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price DOUBLE,
    stock INT,
    brand VARCHAR(50),
    rating FLOAT,
    description VARCHAR(100)
);
INSERT INTO products VALUES(1, 'Mobile', 'Electronics', 15000, 50, 'Samsung', 4.5, 'Smartphone');
select*from products;

CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    amount DOUBLE,
    payment_date DATE,
    payment_method VARCHAR(20),
    status VARCHAR(20),
    transaction_id VARCHAR(50),
    currency VARCHAR(10)
);
INSERT INTO payments VALUES(1, 1, 15000, '2026-04-14', 'UPI', 'Success', 'TXN12345', 'INR');
select*from payments;

CREATE TABLE delivery (
    delivery_id INT PRIMARY KEY,
    order_id INT,
    delivery_address VARCHAR(100),
    city VARCHAR(50),
    pincode INT,
    delivery_date DATE,
    delivery_status VARCHAR(20),
    delivery_person VARCHAR(50)
);
INSERT INTO delivery VALUES(1, 1, 'Delhi Street', 'Delhi', 110001, '2026-04-15', 'Delivered', 'Amit');
select*from delivery;

CREATE TABLE reviews (
    review_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    product_name VARCHAR(50),
    rating FLOAT,
    comment VARCHAR(100),
    review_date DATE,
    status VARCHAR(20),
    likes INT
);
INSERT INTO reviews VALUES(1, 'Rahul', 'Mobile', 4.5, 'Good product', '2026-04-14', 'Approved', 10);
select*from reviews;
