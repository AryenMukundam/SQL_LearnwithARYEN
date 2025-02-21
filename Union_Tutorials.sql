#Union -> it is used to merge table row wise

SELECT first_name, last_name
FROM 
parks_and_recreation.employee_demographics
UNION DISTINCT #by default union is distinct(which will only give unique values)
SELECT first_name, last_name FROM 
parks_and_recreation.employee_salary;

SELECT first_name, last_name
FROM 
parks_and_recreation.employee_demographics
UNION ALL
SELECT first_name, last_name FROM 
parks_and_recreation.employee_salary;

SELECT first_name, last_name, 'OLD MAN' as label
FROM employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION 
SELECT first_name, last_name, 'OLD LADY' as label
FROM employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION
SELECT first_name, last_name, 'Highly Paid Employee' as label
FROM employee_salary
WHERE salary > 70000
ORDER BY first_name , last_name;

