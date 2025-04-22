set search_path to hr;

show search_path;

with recursive hirarki as ( 
	select  
		e.employee_id,first_name||' '||last_name as full_name,  manager_id, department_name, 1 as level
	from employees e
	join departments d on d.department_id=e.department_id
	where manager_id is null
	union all
	select  
		k.employee_id,first_name||' '||last_name as full_name, k.manager_id, x.department_name, h.level + 1
	from employees k
	join departments x on x.department_id=k.department_id
	join hirarki h on k.manager_id=h.employee_id 
	)    
select * from hirarki 
order by employee_id