-- Walmart Project Queries - MySQL

SELECT * FROM walmart;


-- Count total records
SELECT COUNT(*) FROM walmart;


-- Count payment methods and number of transactions by payment method
select payment_method , count(*) as total_transcations from walmart
group by payment_method;


-- Count distinct branches
SELECT COUNT(DISTINCT branch) FROM walmart;


-- find  the min and max quantity sold
select max(quantity) from walmart ; 
select min(quantity) from walmart ;



----------------- Business Problems -------------------



-- Q1: Find different payment methods, number of transactions, and quantity sold by payment method
select payment_method, count(*) as transcation , sum(quantity) as qty_sold, sum(total) total_payment
from walmart
group by payment_method;


-- Q2: Identify the highest rated category in each branch, displaying the branch, category, avg rating
SELECT branch, category, avg_rating
FROM (
    SELECT 
        branch,
        category,
        ROUND(AVG(rating), 2) AS avg_rating,
        RANK() OVER (PARTITION BY branch ORDER BY AVG(rating) DESC) AS rnk 
    FROM walmart
    GROUP BY branch, category
) AS ranked_data
WHERE rnk = 1;




-- Q3 Identify the bsuinest day for each branch based on the number of transactions 
select  * from (
select  branch,
dayname(str_to_date(date, '%d/%m/%y')) as formated_date,
count(*) as transcation,    
rank() over(partition by branch order by count(*) DESC) as ranked
from walmart
group by 1, 2 
) as total_count
where ranked = 1;  



-- Q4 Calculate the total qunatity of items sold per payment method. list payment method and total_quantity 
select payment_method , sum(quantity) as total_quantity
from walmart group by payment_method;



-- Q5 Determine the average, minimum, and maximum rating of products for each city. List the city, average_rating, min_rating, and max_rating.
select City, category, min(rating) as min_rating, max(rating) as max_rating, avg(rating) as avg_rating
from walmart group by 1,2 order by 1,3,4,5;



-- Q.6 Calculate the total profit for each category by considering total_profit as (unit_price* quantity * profit_margin). List category and total_profit, ordered from highest to lowest profit.
Select category,
sum(total) as total_revenue,
sum(total * profit_margin) as total_profit_margin 
from walmart group by 1 order by 2 desc;



-- 7)  display the branch and prefered_payment_method
with sub_query_cte as ( 
select branch, 
payment_method, 
count(*) as total_trans,
rank() over (partition by branch order by payment_method desc) as prefer_payment_method
from walmart group by 1,2 order by 1
) 
select * from sub_query_cte where prefer_payment_method = 1;



-- 8)  categorize sales into 3 group morning, afternoon, evening find out which of the shift and number of invoices
select 
branch,
case 
    when hour(time) < 12 then 'Morning'
    when hour(time) between 12 and 17 then 'Afternoon'
    else 'Evening'
end as Shift , count(*) as total_shifts
from walmart
group by 1,2
order by 1,3;



-- 9)  identify the 5 branch with highest decrease ratio in revenue compare to last year (current year 2023 and last year 2022)
-- **formulas:**
-- ratio decrease in revenue  = last_rev - cr_rev /ls_rev*100
-- round(((cr_revenue - ls_revenue) / ls_revenue * 100),2) as growth

with revenue_2022
as (
select branch,
sum(total) as ls_revenue 
from walmart 
where year(str_to_date(date, '%d/%m/%y')) = 2022
group by 1
)
,
revenue_2023
as (
select branch,
sum(total) as cr_revenue 
from walmart 
where year(str_to_date(date, '%d/%m/%y')) = 2023
group by 1
)

SELECT 
  ls.branch,
  ls.ls_revenue AS last_year_revenue,
  cr.cr_revenue AS current_year_revenue,
round(((cr_revenue - ls_revenue) / ls_revenue * 100),2) as growth_percent
FROM revenue_2022 AS ls
JOIN revenue_2023 AS cr
  ON ls.branch = cr.branch
where ls.ls_revenue  > cr.cr_revenue  
order by growth_percent asc
limit 5;


----------------------------------------------------------------------------------------------------------------------

















