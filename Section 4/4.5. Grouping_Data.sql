USE Emp_Dept;


SELECT * FROM emp;

SELECT DISTINCT JOB from emp;

SELECT DEPTNO, MIN(SAL) as min_sal
FROM emp
GROUP BY DEPTNO
ORDER BY 2;

SELECT DEPTNO, JOB, MIN(SAL) as min_sal
FROM emp
GROUP BY DEPTNO, JOB
ORDER BY 1;


SELECT DEPTNO, JOB, MIN(SAL) as min_sal
FROM emp
GROUP BY DEPTNO, JOB
HAVING JOB = 'CLERK'
ORDER BY 1;


# Find Count. of employees from each Dept
# Find Dept wise Total Salary
# Find Average Salary of emplyess from each dept who were hired in 2020.

