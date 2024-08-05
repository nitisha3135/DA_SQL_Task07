-- Task-4 : create 4 question on your data like above and solve 

-- Question-1 : The data of employees with their department name and their salary(from min to max)

select * from departments
	
select * from employees

select e.employee_id, e.employee_name, d.department_id, d.department_name, e.salary from employees as e
inner join departments as d
on e.department_id = d.department_id
group by e.salary, d.department_id, e.employee_id
order by e.salary, d.department_id


-- Question-2 : Get the data of 2020 followed by customers name and id and their websites

select * from customer

select concat(c.first_name,' ',c.last_name)as customer_name ,c.customer_id, c.age, c.company, c.subscription_date, c.website
	from customer as c
where c.subscription_date like '%2020'
group by c.customer_id, customer_name, c.age, c.company, c.subscription_date, c.website
order by c.subscription_date 


-- Question-3 : Get the data of players whose height lies between 5.9 to 6.4, weight between 190 to 240(by height) and age between 25 to 40

select * from player
	
select p.name as players_name, p.team as players_team, p.number as player_number, p.position as players_position,
	p.height as players_height, p.weight_in_lbs as players_weight, p.age as players_age 
	from players as p   
where p.height between 5.9 and 6.4
    and p.weight_in_lbs between 190 and 240
    and p.age between 25 and 40
order by p.height, p.weight_in_lbs, p.age


-- Question-4 : Get the players average height, weight and age as per position

select * from players

select distinct p.position as players_position , avg(p.height) as avg_players_height, 
	avg(p.weight_in_lbs) as avg_players_weight, avg(p.age) as avg_players_age 
	from players as p
group by p.position



