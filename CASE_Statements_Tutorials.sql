# Case Statements

SELECT first_name , last_name,age,
CASE
	WHEN age<=30 THEN 'Young'
    WHEN age BETWEEN 31 and 50 THEN 'old'
    WHEN age >= 50 THEN 'Adult'
END AS stat
FROM parks_and_recreation.employee_demographics;


#pay increase and Bonus
#<50000 = 5%raise >=50000=7% raise Finance = 10% bonus

SELECT first_name, last_name, salary,
CASE
	WHEN salary<50000 THEN salary+(salary*0.05)
    WHEN salary>=50000 THEN salary+(salary*0.07)
END AS NEW_SALARY,

CASE
	WHEN dept_id = 6 THEN salary * .10
	
END AS BONUS
 FROM employee_salary;