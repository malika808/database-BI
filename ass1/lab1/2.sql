-- Средняя зарплата по отделам

CREATE TABLE IF NOT EXISTS employee_salary (
    employee_id INT NOT NULL,
    department_id INT NOT NULL,
    salary DECIMAL(10, 2) NOT NULL
);

INSERT INTO employee_salary (employee_id, department_id, salary) VALUES
(101, 1, 5000.00),
(102, 2, 6000.00),
(103, 1, 5500.00),
(104, 3, 7000.00),
(105, 2, 6500.00),
(106, 3, 7200.00),
(107, 1, 5800.00),
(108, 2, 6300.00),
(109, 3, 7100.00),
(110, 1, 5900.00);

SELECT
    department_id,
    ROUND(AVG(salary), 2) AS average_salary
FROM
    employee_salary
GROUP BY
    department_id
ORDER BY
    average_salary DESC;
