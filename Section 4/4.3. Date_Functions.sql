INSERT INTO orders( product_id, customer_id, order_time)
VALUES
(10, 1, '2021-11-01 14:20:00'),
(30, 2, '2021-12-12 08:40:00'),
(30, 2, '2021-01-11 01:34:20'),
(10, 2, '2021-10-21 17:23:00'),
(50, 3, '2021-09-07 19:20:00'),
(10, 5, '2021-09-09 18:14:00'),
(20, 5, '2021-08-30 09:52:00'),
(20, 2, '2021-11-07 10:28:19'),
(10, 6, '2021-12-05 01:09:10'),
(30, 5, '2021-10-15 06:36:00');


# __________________________________# 

#### DATE FUNCTIONS ####
#_________________________________#
USE bakery_store;

SELECT DATE('2021-12-20 12:30:22');

SELECT * FROM ORDERS
ORDER BY order_time DESC;

SELECT * FROM orders
WHERE DATE(order_time) = '2021-12-12';

SELECT * FROM orders
WHERE DATE(order_time) BETWEEN '2021-10-01' AND  '2021-12-12'
ORDER BY order_time;

### MONTH

SELECT MONTH('2021-12-20 12:30:22');

SELECT * FROM orders
WHERE MONTH(order_time) BETWEEN '10' AND  '12';

## YEAR
SELECT YEAR('2021-12-20 12:30:22');

SELECT YEAR(order_time) FROM orders;

SELECT * FROM orders
WHERE YEAR(order_time) = '2021';











