-- select employees who salary is above the average in their offic 
-- USE sql_hr;

-- SELECT * FROM employees e WHERE salary > 
--        (SELECT AVG(salary)  FROM employees WHERE office_id= e.office_id)       
