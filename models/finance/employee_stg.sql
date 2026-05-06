select *
from {{ source('finance_base', 'employee') }}
order by emp_id asc