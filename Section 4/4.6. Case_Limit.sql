USE emp_dept;

SELECT * FROM emp ORDER BY sal;

### CASE
SELECT ename, job, sal,
CASE
WHEN sal >= 2500 THEN "High"
WHEN sal BETWEEN 1500 AND 2499 THEN "Mid"
ELSE "Low"
END as "Salary Level"
FROM emp
ORDER BY sal;

###LIMIT

SELECT ename, job, sal
FROM emp
ORDER BY sal DESC
LIMIT 1;



