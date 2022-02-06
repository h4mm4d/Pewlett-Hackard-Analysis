
--Deliverable 1.1

SELECT e.emp_no,
    e.first_name,
    e.last_name,
    e.birth_date,
	ti.title,
    ti.from_date,
    ti.to_date
INTO retirement_titles
FROM employees AS e
    INNER JOIN titles AS ti 
    ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
    ORDER BY emp_no;


--Deliverable 1.2
    SELECT DISTINCT ON(rt.emp_no)rt.emp_no,
    rt.first_name,
    rt.last_name,
    rt.title
INTO unique_titles
FROM retirement_titiles AS rt
WHERE (de.to_date = '9999-01-01')
    ORDER BY emp_no;

--Deliverable 1.3
SELECT COUNT(ut.emp_no),ut.title
INTO retiring_titles
FROM unique_titles as ut
	GROUP BY title 
	ORDER BY COUNT(title) DESC;

--Deliverable part 2.1
SELECT DISTINCT ON(e.emp_no)e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO mentorship_eligibility
FROM employees AS e
	LEFT JOIN dept_emp AS de
		ON (e.emp_no = de.emp_no)
	LEFT JOIN titles AS ti
	ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	AND (de.to_date = '9999-01-01')
ORDER BY emp_no;










SELECT DISTINCT ON(e.emp_no)e.emp_no,
	e.first_name,
    e.last_name,
	ti.title,
	ti.from_date,
    ti.to_date
--INTO retirement_titles
	FROM employees AS e
    INNER JOIN titles AS ti 
    ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
	AND (de.to_date = '9999-01-01')
    ORDER BY emp_no;