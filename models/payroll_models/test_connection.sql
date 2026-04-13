
select emp_id,
emp_name,
designation,
case when manager_id is null then 'YES' 
else 'NO' 
end as is_manager
from PRACTICE.PAYROLL_RAW.EMPLOYEES 
