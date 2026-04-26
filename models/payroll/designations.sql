select dept_id,desig_name,
rank() over(partition by dept_id order by desig_id desc) rnk 
from PRACTICE.PAYROLL_RAW.DESIGNATION 
qualify rnk = 1