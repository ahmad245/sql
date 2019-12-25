USE sql_hr;

SELECT e.first_name as empoloyee ,m.first_name as manager FROM employees e LEFT JOIN employees m ON e.reports_to =m.employee_id