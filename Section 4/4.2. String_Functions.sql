
#### STRING FUNCTIONS ####
#_________________________________-
USE bakery_store;

## UPPER
SELECT * FROM customers;

SELECT UPPER(first_name)  as first_name_upper FROM customers;

## LOWER

SELECT LOWER(first_name)  as first_name_lower FROM customers;

## CONCAT

SELECT CONCAT(UPPER(first_name), ' ' , UPPER(last_name)) as full_name FROM customers;

## LENGTH
SELECT first_name, LENGTH(first_name) FROM customers;

## TRIM

SELECT('  Test_TRIM_String '), LENGTH('  Test_TRIM_String ');

SELECT TRIM('  Test_TRIM_String '), LENGTH(TRIM('  Test_TRIM_String '));

SELECT LTRIM('  Test_TRIM_String '), LENGTH(LTRIM('  Test_TRIM_String '));

SELECT RTRIM('  Test_TRIM_String '), LENGTH(RTRIM('  Test_TRIM_String '));







