
select a.emp_id,
a.emp_name,
a.salary,
b.dept_name,
c.city,
c.country,
d.desig_name
from {{ ref('employee') }} a
inner join {{ ref('department') }} b on a.dept_id = b.dept_id
inner join {{ ref('locations') }} c on b.loc_id = c.loc_id
inner join {{ source('dbt_stg_schema', 'designations') }} d on b.dept_id = d.dept_id