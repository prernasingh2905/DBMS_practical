MariaDB [prerna1]> SELECT DISTINCT JOB
    -> FROM employee;
+-----------+
| JOB       |
+-----------+
| CLERK     |
| SALESMAN  |
| MANAGER   |
| ANALYST   |
| PRESIDENT |
+-----------+
5 rows in set (0.056 sec)

MariaDB [prerna1]> SELECT JOB,DEPTNO
    -> FROM employee
    -> WHERE ENAME LIKE  'A___N';
+----------+--------+
| JOB      | DEPTNO |
+----------+--------+
| SALESMAN |     30 |
+----------+--------+
1 row in set (0.001 sec)

MariaDB [prerna1]> SELECT ENAME
    -> FROM employee
    -> WHERE ENAME LIKE 'S%';
+-------+
| ENAME |
+-------+
| SMITH |
| SCOTT |
+-------+
2 rows in set (0.001 sec)

MariaDB [prerna1]> SELECT ENAME
    -> FROM employee
    -> WHERE ENAME LIKE '%S';
+-------+
| ENAME |
+-------+
| JONES |
| ADAMS |
| JAMES |
+-------+
3 rows in set (0.000 sec)

MariaDB [prerna1]> SELECT ENAME
    -> FROM employee
    -> WHERE DEPTNO IN (10,20,40)
    -> OR JOB IN ('CLERK','SALESMAN','ANALYST');
+--------+
| ENAME  |
+--------+
| SMITH  |
| ALLEN  |
| WARD   |
| JONES  |
| MARTIN |
| CLARK  |
| SCOTT  |
| KING   |
| TURNER |
| ADAMS  |
| JAMES  |
| FORD   |
| MILLER |
+--------+
13 rows in set (0.001 sec)

MariaDB [prerna1]> SELECT EMPNO,ENAME
    -> FROM employee
    -> WHERE COMM IS NOT NULL
    -> AND COMM>0;
+-------+--------+
| EMPNO | ENAME  |
+-------+--------+
|  7499 | ALLEN  |
|  7521 | WARD   |
|  7654 | MARTIN |
+-------+--------+
3 rows in set (0.000 sec)

MariaDB [prerna1]> SELECT EMPNO,
    -> ENAME,
    -> SAL + IFNULL(COMM,0) AS TOTAL_SALARY
    -> FROM employee;
+-------+--------+--------------+
| EMPNO | ENAME  | TOTAL_SALARY |
+-------+--------+--------------+
|  7369 | SMITH  |          968 |
|  7499 | ALLEN  |         1900 |
|  7521 | WARD   |         1550 |
|  7566 | JONES  |         3600 |
|  7654 | MARTIN |         2650 |
|  7782 | CLARK  |         2965 |
|  7788 | SCOTT  |         3630 |
|  7839 | KING   |         6050 |
|  7844 | TURNER |         1815 |
|  7876 | ADAMS  |         1331 |
|  7900 | JAMES  |         1150 |
|  7902 | FORD   |         3630 |
|  7934 | MILLER |         1573 |
|  7968 | BLAKE  |         3449 |
+-------+--------+--------------+
14 rows in set (0.000 sec)