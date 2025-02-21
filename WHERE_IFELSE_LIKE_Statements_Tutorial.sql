SELECT * 
FROM parks_and_recreation.employee_salary
WHERE first_name = 'Leslie';

SELECT * 
FROM parks_and_recreation.employee_salary
WHERE salary > 50000;

SELECT *
FROM parks_and_recreation.employee_demographics 
WHERE gender = 'female';

SELECT *
FROM parks_and_recreation.employee_demographics 
WHERE gender != 'female';

SELECT *
FROM parks_and_recreation.employee_demographics 
WHERE birth_date > '1985-01-01';

#LOGICAL OPERATOR - AND / OR

SELECT *
FROM parks_and_recreation.employee_demographics 
WHERE birth_date > '1985-01-01'
AND gender = 'male';

SELECT *
FROM parks_and_recreation.employee_demographics 
WHERE birth_date > '1985-01-01'
OR gender != 'male';

SELECT *
FROM parks_and_recreation.employee_demographics 
WHERE (first_name = 'Leslie' AND age = 44) OR age>55;

#LIKE Statements
#%->anything _ 

SELECT *
FROM parks_and_recreation.employee_demographics 
WHERE first_name LIKE 'Jer%'; #% means anything after jer can be present if jer is present then it will be selected

SELECT *
FROM parks_and_recreation.employee_demographics 
WHERE first_name LIKE '%er%'; # er should be present in between and anything can be present before and after that

SELECT *
FROM parks_and_recreation.employee_demographics 
WHERE first_name LIKE 'a__'; # here 2 underscore after a means it will select the data which will have name with first letter a and then 2 other values 

SELECT *
FROM parks_and_recreation.employee_demographics 
WHERE birth_date LIKE '1989%';