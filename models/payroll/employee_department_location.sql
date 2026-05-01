select 
a.*,
b.dept_name,
c.city,
c.country
from {{ ref('employee_raw') }} a 
left join {{ source('payroll', 'department') }} b on a.dept_id = b.dept_id
left join practice.payroll_raw.location c on b.loc_id = c.loc_id