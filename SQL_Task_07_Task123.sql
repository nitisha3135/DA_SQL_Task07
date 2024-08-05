-- Task-1 : create a report of all state sales, quantity, discount , profit  with following aggregation ,(sum , avg, min , max, count)

select * from sales

select * from customer

select * from product

select c.state, sum(s.sales) as sales_sum, avg(s.sales) as sales_avg, min(s.sales) as sales_min, max(s.sales) as sales_max,
    sum(s.quantity) as quantity_sum, avg(s.quantity) as quantity_avg, min(s.quantity) as quantity_min, max(s.quantity) as quantity_max,
    sum(s.discount) as discount_sum, avg(s.discount) as discount_avg, min(s.discount) as discount_min, max(s.discount) as discount_max,
    sum(s.profit) as profit_sum, avg(s.profit) as profit_avg, min(s.profit) as profit_min, max(s.profit) as profit_max,
    count(sales) as total_count_of_sales from sales s
inner join customer as c 
	on s.customer_id = c.customer_id
inner join product as p 
	on s.product_id = p.product_id
group by c.state
order by c.state


-- Task-2 : get data of all state and city's avg customer age sql query

select state, city, avg(age) as avg_age_of_customer from customer
group by state,city
order by state,city
	

-- Task-3 : get data of 2017 to 2018  with product name and sales per quantity 

select * from sales

select * from product

select p.product_name,s.order_date as order_date, sum(s.sales)/sum(s.quantity) as sales_per_quantity from sales as s
inner join product as p 
	on s.product_id = p.product_id
where s.order_date between '2017-01-01' and '2018-12-31'
group by p.product_name, s.order_date
order by p.product_name, s.order_date

