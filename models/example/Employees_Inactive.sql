{{
    config(
        materialized='table',transient=false
    )
}}

select employee_id,
first_name,
last_name,
salary
from PRACTICE.PAYROLL_RAW.EMPLOYEE
where status= 'INACTIVE'