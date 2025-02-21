SELECT * 
FROM parks_and_recreation.employee_demographics;

SELECT first_name, 
last_name, 
birth_date,
age,
(age + 10)*10+10
FROM parks_and_recreation.employee_demographics;

#PEMDAS->order of operation for arithmetic and maths in MySQL
#parantesis , exponent , multiply , divide , add , substract

SELECT DISTINCT gender FROM parks_and_recreation.employee_demographics;
#DISTINCT->use to select dintinct data from column
