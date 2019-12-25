USE sql_hr;
-- self join ex:employee table has colunm eployee_id and reports_to :manager

SELECT m.first_name as manager,m.employee_id as manager_id, e.first_name ,e.employee_id  FROM employees e JOIN employees m ON e.reports_to= m.employee_id 