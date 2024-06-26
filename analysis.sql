-- 1. List the employee number, last name, first name, sex, and salary of each employee.
SELECT
    e.emp_no,
    e.last_name,
    e.first_name,
    e.sex,
    s.salary
FROM
    employees AS e
    INNER JOIN salaries AS s ON e.emp_no = s.emp_no;

-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.
--      e
SELECT
    *
FROM
    (
        SELECT
            first_name,
            last_name,
            TO_DATE(hire_date, 'mm/dd/yyyy') AS hd
        FROM
            employees
    ) AS employees_with_converted_date
WHERE
    EXTRACT(
        year
        FROM
            hd
    ) = 1986;

-- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT
    d.dept_no,
    d.dept_name,
    e.emp_no,
    e.last_name,
    e.first_name
FROM
    dept_manager AS dm
    JOIN departments AS d ON dm.dept_no = d.dept_no
    JOIN employees AS e ON dm.emp_no = e.emp_no;

-- 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT
    d.dept_no,
    e.emp_no,
    e.last_name,
    e.first_name,
    d.dept_name
FROM
    dept_emp AS de
    JOIN departments AS d ON de.dept_no = d.dept_no
    JOIN employees AS e ON de.emp_no = e.emp_no;

-- 5. List .
SELECT
    first_name,
    last_name,
    sex
FROM
    employees
WHERE
    first_name = 'Hercules'
    AND last_name LIKE 'B%';

-- 6. e, including their employee number, last name, and first name.
SELECT
    e.emp_no,
    e.last_name,
    e.first_name
FROM
    dept_emp AS de
    JOIN departments AS d ON de.dept_no = d.dept_no
    JOIN employees AS e ON de.emp_no = e.emp_no
WHERE
    d.dept_name = 'Sales';

-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT
    e.emp_no,
    e.last_name,
    e.first_name,
    d.dept_name
FROM
    dept_emp AS de
    JOIN departments AS d ON de.dept_no = d.dept_no
    JOIN employees AS e ON de.emp_no = e.emp_no
WHERE
    d.dept_name = 'Sales'
    OR d.dept_name = 'Development';

-- 8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT
    last_name,
    COUNT(*) as frequency
FROM
    employees
GROUP BY
    last_name
ORDER BY
    frequency DESC;