create database amazon_sales1;
use amazon_sales1;
show tables from amazon_sales1;
select * from amazon_sales1.Amazon_Sale_Report1 limit 20;
select * from amazon_sales1.Amazon_Sale_Report1
where ship_state = 'PUDUCHERRY';
select category, count(*) AS total_orders
from amazon_sales1.Amazon_Sale_Report1
group by category
order by total_orders DESC;
select sum(amount) as total_revenue
from amazon_sales1.Amazon_Sale_Report1
where ship_state = 'puducherry';
select avg(amount) as average_order_value
from amazon_sales1.Amazon_Sale_Report1
where ship_state = 'puducherry';
select category, count(*) as total_orders
from amazon_sales1.Amazon_Sale_Report1
where ship_state = 'puducherry'
group by category
having count(*) > 20
order by total_orders DESC;
select order_id, amount, case
       when amount > 1000 then 'high value'
       when amount between 500 and 1000 then 'medium value'
       else 'low value'
       end as order_category
       from amazon_sales1.Amazon_Sale_Report1
	where ship_state = 'puducherry';
     select * from amazon_sales1.Amazon_Sale_Report1
     where ship_state = 'puducherry'
       AND courier_status = 'N/A';
       select * from amazon_sales1.Amazon_Sale_Report1
     where ship_state = 'puducherry'
       AND courier_status != 'N/A';
select count(*) as total_orders
from amazon_sales1.Amazon_Sale_Report1
where ship_state = 'puducherry';
select category,
	sum(amount) as total_revenue
from amazon_sales1.Amazon_Sale_Report1
where ship_state = 'puducherry'
group by category
order by total_revenue DESC;
select status,
	count(*) as total_orders
from amazon_sales1.Amazon_Sale_Report1
where ship_state = 'puducherry'
group by status
order by total_orders DESC;