#Having

SELECT gender , AVG(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING AVG(age) > 40;

SELECT gender , AVG(age)
FROM parks_and_recreation.employee_demographics
WHERE gender LIKE 'female'
GROUP BY gender
HAVING AVG(age) > 40;

SELECT occupation , AVG(salary)
FROM parks_and_recreation.employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation;

SELECT occupation , AVG(salary)
FROM parks_and_recreation.employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary);
