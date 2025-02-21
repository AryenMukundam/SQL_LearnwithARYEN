#GROUP BY

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender;

SELECT occupation
FROM parks_and_recreation.employee_salary
GROUP BY occupation;

SELECT occupation , salary
FROM parks_and_recreation.employee_salary
GROUP BY occupation , salary;

#ORDER BY(by default it is ascending)

SELECT *
FROM parks_and_recreation.employee_salary
ORDER BY first_name ASC;#sort in ascending order by first name

SELECT *
FROM parks_and_recreation.employee_salary
ORDER BY first_name DESC;#sort in descending order by first name
 
 
 SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY gender , age;

#we can also use order by using column position instead of column name 
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY 5 , 4;#gender is 5th column and age is 4th


