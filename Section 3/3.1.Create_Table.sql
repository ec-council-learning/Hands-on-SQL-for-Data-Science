
-- Create a database
-- Use the database
-- Create tables in that database

SHOW DATABASES;

## Create a Database
CREATE DATABASE bakery_store;
## use the Database created above
USE bakery_store;

## Create a table to store products details
CREATE TABLE  products (
product_id INT PRIMARY KEY,
product_name VARCHAR(50),
price DECIMAL(3,2)
);

SELECT * FROM products;

## Create a table to store Customer details
CREATE TABLE CUSTOMERS (
customer_id INT PRIMARY KEY,
first_name VARCHAR(100),
last_name VARCHAR(100),
gender CHAR(1),
phone_number VARCHAR(11),
email VARCHAR(100)
);

SELECT * FROM CUSTOMERS;

## Create a table to store Order details
CREATE TABLE orders (
order_id INT PRIMARY KEY,
product_id INT,
customer_id INT,
order_time DATETIME
);

SELECT * FROM orders;

## use IF Not Exists clause
CREATE TABLE  IF NOT EXISTS products_new (
product_id INT PRIMARY KEY,
product_name VARCHAR(50),
price DECIMAL(3,2)
);
