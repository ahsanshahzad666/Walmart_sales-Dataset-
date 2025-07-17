-- Walmart Project Queries - MySQL

SELECT * FROM walmart;


-- Count total records
SELECT COUNT(*) FROM walmart;



-- Count payment methods and number of transactions by payment method
select payment_method , count(*) as total_transcations from walmart
group by payment_method;


-- Count distinct branches
SELECT COUNT(DISTINCT branch) FROM walmart;


-- find min and max quantity 
select max(quantity) from walmart ; 
select min(quantity) from walmart ;

