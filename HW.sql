-- 1
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s
ON (e.emp_no =s.emp_no)
-- 2
SELECT e.last_name, e.first_name, e.hire_date
FROM employees e
WHERE e.hire_date > '1985-12-31'
AND e.hire_date < '1987-01-01'
-- 3
SELECT dm.dept_no ,  d.dept_name, dm.emp_no , e.last_name, e.first_name
FROM dept_manager dm
JOIN departments d
ON (dm.dept_no=d.dept_no)
JOIN employees e
ON (dm.emp_no= e.emp_no)
-- 4.
SELECT e.emp_no , e.last_name, e.first_name,  d.dept_name
FROM dept_emp de
JOIN departments d
ON (de.dept_no=d.dept_no)
JOIN employees e
ON (de.emp_no= e.emp_no)
-- 5.
SELECT e.first_name, e.last_name, e.sex
FROM employees e
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';
-- 6.
SELECT de.emp_no , e.last_name,  e.first_name, d.dept_name
FROM dept_emp de
JOIN departments d
ON (d.dept_no=de.dept_no)
JOIN employees e
ON (e.emp_no=de.emp_no)
WHERE d.dept_name = 'Sales'
-- 7.
SELECT de.emp_no , e.last_name,  e.first_name, d.dept_name
FROM dept_emp de
JOIN departments d
ON (d.dept_no=de.dept_no)
JOIN employees e
ON (e.emp_no=de.emp_no)
WHERE d.dept_name = 'Sales'OR d.dept_name = 'Development'
-- 8.

SELECT last_name, COUNT(emp_no) as "Last Name Count"
FROM employees
GROUP by last_name
ORDER by "Last Name Count"