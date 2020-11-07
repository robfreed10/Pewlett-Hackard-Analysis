--Module 7 Challenge

SELECT DISTINCT (e.emp_no) emp_no,
		e.first_name,
		e.last_name,
		t.title,
		t.from_date,
		t.to_date
--INTO retirement_titles
--WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
FROM employees as e
LEFT JOIN titles as t ON t.emp_no = e.emp_no
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'

SELECT COUNT (emp_no) from employees
SELECT COUNT (title) from titles

SELECT * FROM titles LIMIT 2
SELECT * from retirement_titles LIMIT 10

SELECT DISTINCT COUNT (emp_no) from retirement_titles

SELECT DISTINCT ON (emp_no) emp_no,
first_name, last_name, title
into Unique_Titles
from retirement_titles
ORDER BY emp_no,to_date DESC

SELECT * FROM unique_titles
SELECT COUNT (emp_no) from unique_titles

SELECT COUNT (title),
title
into retiring_titles
from unique_titles group by (title)
ORDER BY count (title) DESC

SELECT * FROM retiring_titles
SELECT * FROM retirement_titles
SELECT * FROM unique_titles

-- Deliverable 2
SELECT DISTINCT ON (e.emp_no) e.emp_no,
		e.first_name,
		e.last_name,
		e.birth_date,
		d.from_date,
		d.to_date,
		t.title
into mentorship_eligibility
from employees as e
LEFT JOIN dept_emp as d on e.emp_no = d.emp_no
LEFT JOIN titles as t on e.emp_no = t.emp_no
WHERE birth_date Between '1965-01-01' AND '1965-12-31'
	and d.to_date = '9999-01-01'
order by emp_no

SELECT * from employees LIMIT 2

SELECT * from mentorship_eligibility LIMIT 10

SELECT COUNT (title), title from mentorship_eligibility
GROUP BY title
order by count(title) desc

SELECT COUNT (title), title from unique_titles
GROUP BY title
order by count(title) desc
