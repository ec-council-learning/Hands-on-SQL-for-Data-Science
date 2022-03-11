### AGGREGATE FUNCTIONS###

USE bakery_store;

## MIN
SELECT MIN(price) FROM products;

## MAX
SELECT MAX(price) FROM products;

## SUM

SELECT SUM(price) FROM products;

## AVG

SELECT AVG(price) FROM products;

## COUNT
SELECT COUNT(price) FROM products;

SELECT COUNT(*) FROM orders;
