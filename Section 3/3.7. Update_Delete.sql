USE bakery_store;

SELECT * FROM customers;

UPDATE customers
SET phone_number = '650 5678765' ## 365 7293125
WHERE customer_id = 4;

SET SQL_SAFE_UPDATES = 0;

UPDATE customers
SET phone_number = '365 7293125'  ###'650 5678765' ## 365 7293125
WHERE first_name LIKE 'Randall';

SET SQL_SAFE_UPDATES = 1;

DELETE FROM customers WHERE customer_id = 5;

SELECT * FROM orders
WHERE customer_id = 5;

DELETE FROM orders WHERE customer_id = 5;




