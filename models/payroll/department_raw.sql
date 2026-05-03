select *
from {{ source('payroll', 'department') }}