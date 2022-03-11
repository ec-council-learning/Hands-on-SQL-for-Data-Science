USE emp_dept;

SHOW tables;

SELECT * FROM emp;

SELECT * FROM dept;

##NON CORRELATED SubQuery

SELECT ename, job, deptno
FROM emp
WHERE deptno IN (SELECT deptno FROM dept WHERE loc = 'DALLAS');

SELECT deptno FROM dept WHERE loc = 'DALLAS';

SELECT MAX(emp_count)
FROM
(
SELECT deptno, job, COUNT(ename) emp_count
FROM emp
GROUP BY deptno,job
ORDER BY 1
) e;

## CORRELATED SubQuery

SELECT ename as "Employee" , job, sal as "Salary", deptno,
(SELECT dname FROM dept WHERE deptno = e.deptno) as "Department"
FROM emp e;

