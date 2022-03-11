###  COMPARISON OPERATORS ###
#-----------------------------------------------------#

USE bakery_store;

SELECT * FROM customers;

SELECT * FROM customers
WHERE gender <>  'F';

SELECt * FROM products;

SELECT * FROM products
WHERE price >=  '4.99';

SELECT 
    *
FROM
    products
WHERE
    price <= '4.99';







###  LOGICAL OPERATORS ###
#-----------------------------------------------------#

# LIKE - TRUE if the operand matches a pattern

SELECT * FROM customers;

SELECT * FROM customers
WHERE first_name LIKE 'Angel%';

INSERT INTO customers
VALUES (6, 'Angela', 'Wong', 'F', '897 6789876', 'angela.wong@yahoo.com');

## AND - TRUE if all the conditions separated by AND is TRUE

SELECT * FROM customers
WHERE first_name LIKE 'Angel%' AND last_name LIKE 'Wong';


## OR - TRUE if any of the conditions separated by OR is TRUE

SELECT * FROM customers;

SELECT * FROM customers
WHERE first_name like 'Angel%' OR last_name LIKE 'Bailey';


## IN - TRUE if the operand is equal to one of a list of expressions

SELECT * FROM customers
WHERE first_name IN ('Angela', 'Randall');

## NOT - Displays a record if the condition(s) is NOT TRUE

SELECT * FROM customers
WHERE first_name NOT IN ('Angela', 'Randall');


## BETWEEN - TRUE if the operand is within the range of comparisons
SELECT * FROM products
WHERE price BETWEEN '3' AND '6';
