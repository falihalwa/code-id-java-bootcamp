--- No. 1

select
	c.category_id, category_name, count(1) as total_product
from categories c
join products p on p.category_id=c.category_id
group by c.category_id, category_name
order by category_name

--- No. 2

select
	s.supplier_id, company_name, count(1) as total_product
from suppliers s
join products p on p.supplier_id=s.supplier_id
group by s.supplier_id, company_name
order by total_product desc

--- No. 3

select
	s.supplier_id, company_name, count(1) as total_product, to_char(avg(unit_price), 'FM999,999,990.00') as avg_unit_price
from suppliers s
join products p on p.supplier_id=s.supplier_id
group by s.supplier_id, company_name
order by total_product desc

--- No. 4

select
	p.product_id, product_name, s.supplier_id, company_name, unit_price, units_in_stock, units_on_order, reorder_level
from suppliers s
join products p on p.supplier_id=s.supplier_id
where units_in_stock <= reorder_level
-- where units_in_stock <= (units_on_order + reorder_level)
group by p.product_id, product_name, s.supplier_id
order by product_name

--- No. 5

select
	c.customer_id, company_name, count(1) as total_order
from customers c
join orders o on o.customer_id=c.customer_id
group by c.customer_id, company_name
order by company_name

--- No. 6

select
	order_id, customer_id, order_date, required_date, shipped_date, shipped_date - order_date as delivery_time
from orders
where shipped_date - order_date > 10

--- No. 7
-- koreksi tambahin shipped_data is not null

select
	p.product_id, product_name, sum(quantity) as total_qty
from products p
join order_details od on od.product_id=p.product_id
join orders o on o.order_id=od.order_id
where o.shipped_date is not null
group by p.product_id, product_name
order by total_qty desc

-- select *
-- from order_details
-- where product_id=75

--- No. 8

select
	c.category_id, category_name, sum(quantity) as total_qty_ordered
from categories c
join products p on p.category_id=c.category_id
join order_details od on od.product_id=p.product_id
join orders o on o.order_id=od.order_id
where o.shipped_date is not null
group by c.category_id, category_name
order by total_qty_ordered desc

--- No. 9

select * from (
	select
		c.category_id, category_name, sum(quantity) as total_qty_ordered
	from categories c
	join products p on p.category_id=c.category_id
	join order_details od on od.product_id=p.product_id
	join orders o on o.order_id=od.order_id
	where o.shipped_date is not null
	group by c.category_id, category_name
	order by total_qty_ordered desc
	limit 1
) as min_category

union all

select * from (
	select
		c.category_id, category_name, sum(quantity) as total_qty_ordered
	from categories c
	join products p on p.category_id=c.category_id
	join order_details od on od.product_id=p.product_id
	join orders o on o.order_id=od.order_id
	where o.shipped_date is not null
	group by c.category_id, category_name
	order by total_qty_ordered asc
	limit 1
) as max_category;

--- No. 10

with cte1 as(
	select s.shipper_id, s.company_name, o.order_id
	from shippers s 
	join orders o on s.shipper_id= o.ship_via
),
cte2 as (
	select p.product_id, p.product_name, od.order_id,
	sum(od.quantity)as total_qty_ordered
	from products p
	join order_details od on p.product_id=od.product_id
	group by 1, 2, 3
)
select c1.shipper_id, c1.company_name, c2.product_id,
c2.product_name,sum(c2.total_qty_ordered) as total_qty_ordered
from cte1 c1 
join cte2 c2 on c1.order_id=c2.order_id
group by 1, 2, 3, 4
order by c1.company_name, c2.product_name

--- No. 11

with cte1 as (
    select s.shipper_id, s.company_name, p.product_id, p.product_name, sum(od.quantity) as total_qty_ordered
    from shippers s
    join orders o on s.shipper_id = o.ship_via
    join order_details od on o.order_id = od.order_id
    join products p on od.product_id = p.product_id
    group by s.shipper_id, s.company_name, p.product_id, p.product_name
    order by s.company_name, p.product_name
),
min_max_per_shipper as (
    select
        shipper_id,
        min(total_qty_ordered) as min_qty,
        max(total_qty_ordered) as max_qty
    from cte1
    group by shipper_id
)
select c.shipper_id, c.company_name, c.product_id, c.product_name, c.total_qty_ordered
from cte1 c
join min_max_per_shipper m on c.shipper_id = m.shipper_id
where c.total_qty_ordered = m.min_qty or c.total_qty_ordered = m.max_qty
order by c.shipper_id asc, c.total_qty_ordered asc;