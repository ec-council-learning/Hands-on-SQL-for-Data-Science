USE emp_dept;

SHOW TABLES;

SELECT * FROM DEPT;

SELECT * FROM emp;

##INNER JOIN

SELECT empno, ename as "Employee Name", Job, emp.Deptno, dname as "Department Name", Loc as "Location"
FROM emp
INNER JOIN dept ON emp.deptno = dept.deptno;

SELECT empno, ename as "Employee Name", Job, e.Deptno, dname as "Department Name", Loc as "Location"
FROM emp e
JOIN dept ON e.deptno = dept.deptno;

##LEFT JOIN
USE bakery_store;

SHOW tables;

SELECT * FROM customers;

SELECT * FROM products;

SELECT * FROM orders;

SELECT DISTINCT customer_id FROM orders;

INSERT INTO customers
VALUES
  (7,"John","Chai",'M',"650 9434755","johnCh@icloud.net"),
  (8,"Bob","Dylan",'M', "545 3332633","Bod.dylan@protonmail.net");

SELECT first_name, last_name, gender,order_time
FROM customers c
LEFT JOIN orders o ON o.customer_id = c.customer_id;

## Right Outer Join
SELECT first_name, last_name, gender,order_time
FROM orders o
RIGHT JOIN customers c ON o.customer_id = c.customer_id;

SELECT DISTINCT product_id FROM orders;

INSERT INTO products (product_id, product_name, price)VALUES (60, 'Rice Pudding' , '7.99');

INSERT INTO products (product_id, product_name, price)VALUES (70, 'Mango Pie' , '5.99');

SELECT product_name, price, order_time
FROM orders o
RIGHT JOIN products p ON o.product_id = p.product_id
WHERE product_name LIKE '%PIE'
ORDER BY price;

## Multiple Tables
SELECT first_name, last_name, gender,product_name, price, order_time
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN products p ON p.product_id = o.product_id
ORDER BY price;

## CROSS JOIN
USE emp_dept;

SELECT *
FROM emp e
CROSS JOIN dept d ON e.deptno = d.deptno;



