#JOINS(use to join two tables)

#Inner join(it will give those rows which are common in both tables A intersection B)

SELECT * FROM 
parks_and_recreation.employee_demographics AS dem
INNER JOIN parks_and_recreation.employee_salary AS sal
	ON dem.employee_id =  sal.employee_id;
    
SELECT dem.employee_id , age , occupation FROM 
parks_and_recreation.employee_demographics AS dem
INNER JOIN parks_and_recreation.employee_salary AS sal
	ON dem.employee_id =  sal.employee_id;
 
 #Outer join
 
 #left join - it will take value from left table and give matches in right table
#right join - it will take value from right table and give matches in left table
 
 
 
SELECT * FROM 
parks_and_recreation.employee_demographics AS dem
LEFT JOIN parks_and_recreation.employee_salary AS sal
	ON dem.employee_id =  sal.employee_id;
    
SELECT * FROM 
parks_and_recreation.employee_demographics AS dem
RIGHT JOIN parks_and_recreation.employee_salary AS sal
	ON dem.employee_id =  sal.employee_id;
    
#Self Join

SELECT * FROM 
parks_and_recreation.employee_salary As emp1
JOIN parks_and_recreation.employee_salary As emp2
	ON emp1.employee_id + 1 = emp2.employee_id;
 
 
 
SELECT emp1.employee_id As employee_id_empA,
emp1.first_name As first_name_empA,
emp1.last_name As last_name_empA,
emp2.employee_id As employee_id_empB,
emp2.first_name As first_name_empB,
emp2.last_name As last_name_empB

FROM 
parks_and_recreation.employee_salary As emp1
JOIN parks_and_recreation.employee_salary As emp2
	ON emp1.employee_id + 1 = emp2.employee_id;
    
    
#Joining multiple tables together

SELECT * FROM
parks_and_recreation.employee_demographics AS dem
INNER JOIN parks_and_recreation.employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_and_recreation.parks_departments AS dep
	ON sal.dept_id = dep.department_id;
    
    
    
 