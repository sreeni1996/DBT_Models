select *
from {{ source('finance_base', 'department') }}