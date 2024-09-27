-- Средняя зарплата по отделам с использованием INNER JOIN

CREATE TABLE IF NOT EXISTS departments (
    department_id INT NOT NULL PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

INSERT INTO departments (department_id, department_name) VALUES
(1, 'Human Resources'),
(2, 'Engineering'),
(3, 'Marketing'),
(4, 'Sales');

CREATE TABLE IF NOT EXISTS employees (
    employee_id INT NOT NULL,
    department_id INT NOT NULL,
    salary DECIMAL(10, 2) NOT NULL
);

INSERT INTO employees (employee_id, department_id, salary) VALUES
(201, 1, 5000.00),
(202, 2, 7000.00),
(203, 2, 7500.00),
(204, 3, 6000.00),
(205, 3, 6500.00),
(206, 4, 8000.00),
(207, 4, 8200.00),
(208, 1, 5200.00),
(209, 2, 7300.00),
(210, 3, 6300.00);

SELECT
    d.department_name,
    ROUND(AVG(e.salary), 2) AS average_salary
FROM
    employees e
INNER JOIN
    departments d
ON
    e.department_id = d.department_id
GROUP BY
    d.department_id,
    d.department_name
ORDER BY
    average_salary DESC;