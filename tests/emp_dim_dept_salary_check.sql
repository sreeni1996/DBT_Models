
select count(*)
from {{ ref('employee_department_location') }}
where dept_id = 10 
and salary<70000


