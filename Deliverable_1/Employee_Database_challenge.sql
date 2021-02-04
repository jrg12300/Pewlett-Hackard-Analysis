-- CREATE LIST OF TITLES OF EMPLOYEES WHO WERE BORN FROM '52 - '55
SELECT DISTINCT ON (retirement_titles.emp_no)
retirement_titles.emp_no,retirement_titles.first_name,
retirement_titles.last_name,retirement_titles.title
--INTO unique_titles_retiring
FROM retirement_titles
ORDER BY emp_no, to_date DESC
;


-- COUNT THE NUMBER OF PEOPLE RETIRED/RETIRING FOR EACH TITLE
SELECT title, COUNT(emp_no)
--INTO retiring_titles
FROM unique_titles_retiring
GROUP BY title ORDER BY 2 DESC;

SELECT * FROM retiring_titles;

