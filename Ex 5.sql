-- 1. Employees earning more than 12000
SELECT last_name, salary
FROM employees
WHERE salary > 12000;

-- 2. Employee last name and department number for employee number 176
SELECT last_name, department_id
FROM employees
WHERE employee_id = 176;

-- 3. Employees whose salary is not between 5000 and 12000
SELECT last_name, salary
FROM employees
WHERE salary NOT BETWEEN 5000 AND 12000;

-- 4. Employees hired between Feb 20, 1998 and May 1, 1998, ordered by start date
SELECT last_name, job_id, hire_date
FROM employees
WHERE hire_date BETWEEN DATE '1998-02-20' AND DATE '1998-05-01'
ORDER BY hire_date ASC;

-- 5. Employees in departments 20 and 50, ordered alphabetically by name
SELECT last_name, department_id
FROM employees
WHERE department_id IN (20, 50)
ORDER BY last_name ASC;

-- 6. Employees earning between 5000 and 12000 in departments 20 and 50, labeled columns
SELECT last_name AS "EMPLOYEE", salary AS "MONTHLY SALARY"
FROM employees
WHERE salary BETWEEN 5000 AND 12000
  AND department_id IN (20, 50)
ORDER BY last_name ASC;

-- 7. Employees hired in 1994
SELECT last_name, hire_date
FROM employees
WHERE TO_CHAR(hire_date, 'YYYY') = '1994';

-- 8. Employees who do not have a manager
SELECT last_name, job_id
FROM employees
WHERE manager_id IS NULL;

-- 9. Employees who earn commissions, sorted by salary and commission descending
SELECT last_name, salary, commission_pct
FROM employees
WHERE commission_pct IS NOT NULL
ORDER BY salary DESC, commission_pct DESC;

-- 10. Employees where the third letter of last name is 'a'
SELECT last_name
FROM employees
WHERE last_name LIKE '__a%';

-- 11. Employees who have both 'a' and 'e' in their last name
SELECT last_name
FROM employees
WHERE last_name LIKE '%a%' AND last_name LIKE '%e%';

-- 12. Employees whose job is sales representative or stock clerk and salary not 2500, 3500, 7000
SELECT last_name, job_id, salary
FROM employees
WHERE job_id IN ('SA_REP', 'ST_CLERK')
  AND salary NOT IN (2500, 3500, 7000);

-- 13. Employees whose commission amount is 20%
SELECT last_name, salary, commission_pct
FROM employees
WHERE commission_pct = 0.2;

-- 1. Assign alias "Number" to employee_id and order by it
SELECT employee_id AS "Number", first_name, last_name
FROM employees
ORDER BY "Number";

-- 2. Return all DJ's on Demand CD titles ordered by year, then title alphabetically
SELECT title, year
FROM cds
ORDER BY year ASC, title ASC;

-- 3. Order songs by descending title, alias song title as "Our Collection"
SELECT song_title AS "Our Collection"
FROM songs
ORDER BY song_title DESC;

-- 4. Example of ORDER BY clause to retrieve information (generic example)
-- Retrieve employees' last names ordered alphabetically
SELECT last_name, first_name, job_id
FROM employees
ORDER BY last_name ASC;


