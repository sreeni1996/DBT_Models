select * 
from {{ source('payroll_raw_layer', 'location') }}