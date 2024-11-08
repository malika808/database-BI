CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    budget NUMERIC
);

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    department_id INT,
    hourly_rate NUMERIC,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

CREATE TABLE projects (
    project_id SERIAL PRIMARY KEY,
    department_id INT,
    total_hours_allocated INT,
    start_date DATE, 
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

CREATE TABLE employee_projects (
    employee_project_id SERIAL PRIMARY KEY,
    employee_id INT,
    project_id INT,
    hours_worked INT,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
    FOREIGN KEY (project_id) REFERENCES projects(project_id)
);

INSERT INTO departments (budget) VALUES
(100000),
(200000);

INSERT INTO employees (department_id, hourly_rate) VALUES
(1, 50),
(1, 60),
(2, 55);

INSERT INTO projects (department_id, total_hours_allocated, start_date) VALUES
(1, 1000, '2024-09-01'),
(2, 2000, '2024-08-15');

INSERT INTO employee_projects (employee_id, project_id, hours_worked) VALUES
(1, 1, 300),
(2, 1, 400),
(3, 2, 500);

SELECT p.project_id, d.department_id, 
       SUM(ep.hours_worked * e.hourly_rate) AS total_cost
FROM employee_projects ep
JOIN projects p ON ep.project_id = p.project_id
JOIN employees e ON ep.employee_id = e.employee_id
JOIN departments d ON p.department_id = d.department_id
GROUP BY p.project_id, d.department_id
HAVING SUM(ep.hours_worked * e.hourly_rate) > d.budget;

WITH RECURSIVE employee_hours AS (
    SELECT ep.employee_id, SUM(ep.hours_worked) AS total_hours
    FROM employee_projects ep
    JOIN projects p ON ep.project_id = p.project_id
    WHERE p.start_date >= CURRENT_DATE - INTERVAL '1 month' 
    GROUP BY ep.employee_id
)
SELECT e.employee_id, e.total_hours / 4 AS avg_hours_per_week
FROM employee_hours e
WHERE e.total_hours / 4 > 40;

WITH department_costs AS (
    SELECT d.department_id, 
           EXTRACT(QUARTER FROM p.start_date) AS quarter, 
           SUM(ep.hours_worked * e.hourly_rate) AS total_cost
    FROM employee_projects ep
    JOIN projects p ON ep.project_id = p.project_id
    JOIN employees e ON ep.employee_id = e.employee_id
    JOIN departments d ON p.department_id = d.department_id
    GROUP BY d.department_id, quarter
)
SELECT dc.department_id, dc.quarter, dc.total_cost, d.budget
FROM department_costs dc
JOIN departments d ON dc.department_id = d.department_id
WHERE dc.total_cost > d.budget;