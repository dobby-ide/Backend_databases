select employees.first_name, employees.last_name,employees.job_title, count(orders.employee_id) as thecount
from employees
inner join orders on orders.employee_id=employees.id
group by employees.first_name
order by thecount desc;