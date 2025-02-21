#Limit

SELECT * 
FROM parks_and_recreation.employee_demographics
LIMIT 3;

#giving the top three oldest employee in the data
SELECT * 
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
LIMIT 3 ;

SELECT * 
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
LIMIT 3 , 1;#this will give the one row after 3rd row

#Aliasing (change the name of column for the most part)

SELECT gender, AVG(age) AS avg_age#name of AVG(age) is changed to avg_age
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING avg_age > 40;
