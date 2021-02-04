--Create new table for retiring employees
SELECT emp_no, first_name, last_name
--INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

SELECT * FROM titles;

SELECT employees.emp_no, employees.first_name, employees.last_name,
titles.title,titles.from_date,titles.to_date
FROM employees
LEFT JOIN titles ON employees.emp_no = titles.emp_no
WHERE (employees.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY 1
;