SELECT DISTINCT ON (Employees.emp_no)
Employees.emp_no,Employees.first_name,Employees.last_name,Employees.birth_date,
dept_emp.from_date,dept_emp.to_date,
titles.title
INTO mentorship_eligibility
FROM Employees
LEFT JOIN dept_emp on dept_emp.emp_no = Employees.emp_no
LEFT JOIN titles on titles.emp_no = Employees.emp_no
WHERE dept_emp.to_date = '9999-01-01' AND titles.to_date = '9999-01-01' AND
Employees.birth_date BETWEEN '1965-01-01' AND '1965-12-31'
ORDER BY 1 
;