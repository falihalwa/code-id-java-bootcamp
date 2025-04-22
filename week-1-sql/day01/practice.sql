with staff as (
	select * from employees where department_id in (9,10)
)
select * from staff where salary > 1000


with staff as (
	select * from employees where department_id in (9,10)
)
select * from staff where salary > 1000

select d.department_id,department_name
from departments d
join employees e on d.department_id = e.department_id