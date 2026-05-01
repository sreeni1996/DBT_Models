select 
EMP_ID,
EMP_NAME,
DEPT_ID,
SALARY
from {{ source('payroll_raw', 'employee') }}
order by emp_id asc