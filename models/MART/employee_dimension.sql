
select a.*,
b.dept_name
from {{ ref('employee_stg') }} a
left join {{ ref('department_stg') }} b on a.dept_id = b.dept_id