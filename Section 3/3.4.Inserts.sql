USE bakery_store;

SHOW tables;

## PRODUCTS
DESCRIBE products;

INSERT INTO products (product_id, product_name, price)VALUES (10, 'Apple Pie' , '9.99');
INSERT INTO products (product_id, product_name, price)VALUES (20, 'Pumpkin Pie' , '4.99');
INSERT INTO products (product_id, product_name, price)VALUES (30, 'Blueberry Pie' , '6.99');
INSERT INTO products (product_id, product_name, price)VALUES (40, 'Strawberry  Pie' , '5.99');
INSERT INTO products (product_id, product_name, price)VALUES (50, 'Coffee Cake' , '5.99');

SELECT * FROM products;

### CUSTOMERS
DESCRIBE customers;

INSERT INTO customers
VALUES
  (1,"Sybil","Bailey",'F',"168 9434755","massa@icloud.net"),
  (2,"Angela","Daugherty",'F',"139 3332633","turpis.vitae@protonmail.net"),
  (3,"Palmer","Morales",'M',"531 5147161","ullamcorper.nisl.arcu@outlook.net"),
  (4,"Randall","Walters",'M',"365 7293125","dui.fusce@google.org"),
  (5,"Byron","Hooper",'F',"265 5992626","risus@yahoo.net");
  
  SELECT * FROM customers;
  
  ### ORDERS
  DESCRIBE orders;
  
  ALTER TABLE orders
  MODIFY order_id INT  AUTO_INCREMENT ;

INSERT INTO orders( product_id, customer_id, order_time)
VALUES
(10, 1, '2021-11-01 06:30:00'),
(20, 2, '2021-12-12 16:40:00'),
(30, 2, '2021-01-11 12:55:00'),
(40, 3, '2021-10-21 17:23:00'),
(10, 1, '2021-09-07 19:20:00'),
(50, 4, '2021-09-09 18:14:00'),
(10, 5, '2021-08-30 09:52:00'),
(20, 5, '2021-11-07 10:44:00'),
(10, 2, '2021-12-05 15:37:00'),
(30, 3, '2021-10-15 16:36:00');

SELECT * FROM orders;

