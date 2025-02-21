# STRING FUNCTIONS


SELECT LENGTH('skyfall');

SELECT first_name, LENGTH(first_name) as len
FROM employee_demographics
ORDER BY 2;


SELECT UPPER('sky');
SELECT LOWER('SKY');

SELECT first_name, UPPER(first_name) as capital
FROM employee_demographics;



SELECT TRIM('     sky     ');
SELECT RTRIM('     sky     ');
SELECT LTRIM('     sky     ');

SELECT first_name,
LEFT(first_name , 4) as lf,
RIGHT(first_name , 4) as ri,
SUBSTRING(first_name,3,2) , #it will give the string starting from 3rd to 5th
birth_date, SUBSTRING(birth_date,6,2) as birthdaymonth

FROM employee_demographics;

SELECT first_name,
REPLACE(first_name,'a','z')#it will replace lowercase a to z
FROM employee_demographics;

SELECT LOCATE('x','Alexander');

SELECT first_name,
LOCATE('An',first_name)#it will replace lowercase a to z
FROM employee_demographics;

SELECT first_name, last_name,
CONCAT(first_name , ' ' , last_name) AS full_name
FROM employee_demographics;








