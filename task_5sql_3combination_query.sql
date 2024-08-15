create table stocks(
	item_no serial primary key,
	item_name varchar (100),
	Dcode int,
	quantity int,
    unit_price int,
	stock_date int
);
select * from stocks

insert into stocks (item_no,item_name,Dcode,quantity,unit_price,stock_date) values
                   (5001,'ball_pen',102,100,16,2010-03-31)
insert into stocks (item_no,item_name,Dcode,quantity,unit_price,stock_date) values
                   (5002,'ball_pen 0.25',102,150,20,2010-01-31)
insert into stocks (item_no,item_name,Dcode,quantity,unit_price,stock_date) values
                   (5003,'gel pen_premium',101,125,14,14-01-2014)

	copy stocks from 'D:\SQL\task_5 sql_n.csv' delimiter ',' header
select * from stocks
--count---
select count(dcode) from stocks
select count (distinct item_name) from stocks
select count (distinct dcode) from stocks

---sum---
select * from stocks

select sum (unit_price) from stocks where unit_price = 100
select sum(dcode) from stocks where dcode = 102
select sum (quantity) from stocks

select sum(quantity) as "sum_quantity", sum(dcode) as "sum_dcode",
sum(unit_price) as "unit_price" from stocks

select sum(quantity) from stocks where quantity > 100

select * from stocks
 
--- Avg---
select avg( dcode) from stocks
select avg (quantity) as " avg_quantity", sum (quantity) / count (stocks) as "unit_price_avg_stocks" from stocks
select avg (unit_price) as " avg_unit_price" from stocks 

---min---, max
select min (dcode) as "min_dcode" from stocks
select min (unit_price) as min_unit_price from stocks
select max (quantity) as max_quantity from stocks


select stock_date from stocks order by stocks desc limit 1

select count(quantity), sum(quantity),avg(quantity),min(quantity),max(quantity) from stocks where quantity > 150
select * from stocks
---group by--
select stocks, sum(item_no),sum(quantity),sum(unit_price), avg(quantity) from stocks group by stocks
select item_no, sum (quantity) from stocks group by item_no

	select unit_price, sum(unit_price) from stocks group by unit_price
order by sum (unit_price) desc limit 1

select * from stocks

---having--
select quantity,sum(quantity) from stocks 
	where quantity > 120
	group by quantity 
	having sum (quantity)>100
---case--

	select * from patients
	create table patients_age as
	select name,age,city,
case 
    when age <= 12 then 'teenage' 
    when age <= 30  then 'adult'
    when age <= 50 then 'senior'
    when age <= 60 then 'super senior'
    Else 'elders'
end as "age_category"
from patients
select * from patients_age

