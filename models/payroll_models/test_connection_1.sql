select
a.emp_id,
a.emp_name,
a.designation,
b.net_salary
from {{ ref('test_connection') }} a
inner join {{ source('raw_catalog', 'salary') }} b on a.emp_id = b.emp_id
and b.pay_month in (select max(pay_month) from {{ source('raw_catalog', 'salary') }})