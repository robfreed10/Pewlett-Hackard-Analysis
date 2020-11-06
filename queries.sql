select * from salaries

-- Determine Retirement Eligibility
select first_name, last_name
from employees
where birth_date between '1952-01-01' AND '1955-12-31'

-- 1952 Birth Dates
select first_name, last_name
from employees
where birth_date between '1952-01-01' AND '1952-12-31'

select first_name, last_name
from employees
where birth_date between '1953-01-01' AND '1953-12-31'

select first_name, last_name
from employees
where birth_date between '1954-01-01' AND '1954-12-31'

select first_name, last_name
from employees
where birth_date between '1955-01-01' AND '1955-12-31'

-- Narrow Down Retirement Age
select first_name, last_name
from employees
where (birth_date between '1952-01-01' AND '1955-12-31')
AND (hire_date between '1985-01-01' AND '1988-12-31');

-- Count the Queries
-- Number of Employees Retiring
SELECT COUNT(first_name)
from employees
WHERE (birth_date between '1952-01-01' AND '1955-12-31')
AND (hire_date between '1985-01-01' AND '1988-12-31');

SELECT first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

SELECT * FROM retirement_info
