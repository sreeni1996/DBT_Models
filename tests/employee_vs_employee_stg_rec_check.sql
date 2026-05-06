with model_count as (
    select count(*) as cnt
    from {{ ref('employee_stg') }}
),
compare_count as (
    select count(*) as cnt
    from {{ source('finance_base', 'employee') }}
    where emp_id <= 5 and salary > 75000
)
select
    m.cnt as model_count,
    c.cnt as source_count,
    abs(m.cnt - c.cnt) as diff_count
from model_count m
cross join compare_count c
where m.cnt != c.cnt  -- returns rows only if counts differ = test FAILS