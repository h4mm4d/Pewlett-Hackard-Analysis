-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON () _____,
______,
______,
______

INTO nameyourtable
FROM _______
WHERE _______
ORDER BY _____, _____ DESC;



SELECT e.emp_no,
    e.first_name,
    e.last_name,
    e.birth_date,
	ti.title,
    ti.from_date,
    ti.to_date
--DISTINCT ON(emp_no)
FROM employees AS e
    INNER JOIN titles AS ti 
    ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
    ORDER BY emp_no;
	




SELECT DISTINCT ON(e.emp_no)e.emp_no,
    e.first_name,
    e.last_name,
    e.birth_date,
    de.from_date,
    de.to_date,
    t.title
--DISTINCT ON(emp_no)
INTO mentor_eligibility
FROM employees AS e
    INNER JOIN dept_emp AS de
    ON (e.emp_no = de.emp_no)
    INNER JOIN titles AS t 
    ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
    AND (de.to_date = '9999-01-01')
    ORDER BY emp_no;


    SELECT e.emp_no,
    e.first_name,
    e.last_name,
    e.birth_date,
	ti.title,
    ti.from_date,
    ti.to_date
--DISTINCT ON(emp_no)
INTO retirement_titles
FROM employees AS e
    INNER JOIN titles AS ti 
    ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
    ORDER BY emp_no;