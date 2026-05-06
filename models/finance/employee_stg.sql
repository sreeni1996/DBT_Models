select *
from {{ source('finance_base', 'employee') }}
where emp_id<=5 and salary>75000
order by emp_id asc