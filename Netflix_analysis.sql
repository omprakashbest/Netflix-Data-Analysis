CREATE DATABASE orders;
USE orders;
CREATE TABLE orders_data (
    order_id INT PRIMARY KEY,
    order_date DATE,
    ship_mode VARCHAR(20),
    segment VARCHAR(20),
    country VARCHAR(20),
    city VARCHAR(20),
    state VARCHAR(20),
    postal_code VARCHAR(20),
    region VARCHAR(20),
    category VARCHAR(20),
    sub_category VARCHAR(20),
    product_id VARCHAR(50),
    quantity INT,
    discount DECIMAL(7,2),
    sale_price DECIMAL(7,2),
    profit DECIMAL(7,2)
);

SELECT * FROM orders_data;

-- find top 10 highest reveue generating products ?
SELECT product_id, sum(sale_price) as sales
FROM orders_data
GROUP BY  product_id 
ORDER BY sales DESC
LIMIT 10;

-- find top 5 highest selling products in each region ?
WITH cte as (
SELECT region, product_id, sum(sale_price) as sales
FROM  orders_data
GROUP BY region, product_id )
SELECT * FROM (
SELECT * , ROW_NUMBER() OVER(PARTITION BY region ORDER BY sales DESC) as rn
FROM cte) A
WHERE rn <= 5;



-- find month over month growth comparison for 2022 and 2023 sales eg: jan 2022 vs jan 2023 ?
WITH cte as (
SELECT YEAR(order_date) as order_year, month(order_date) as order_month,
sum(sale_price) as sales
FROM orders_data
GROUP BY year(order_date), month(order_date))
SELECT order_month ,
sum(case when order_year = 2022 then sales else 0 end ) as sales_2022 ,
sum(case when order_year = 2023 then sales else 0 end ) as sales_2023
FROM cte 
group by order_month
order by order_month;


-- find for each category which month had highest sales 
with cte as (
SELECT category, FORMAT(order_date, 'YYYYMM') as order_year_month,
sum(sale_price) as sales
from orders_data
group by category, format(order_date, 'YYYYMM')
)

select * from (
select *, row_number() over(partition by category order by sales desc) as rn
from cte ) a
where rn = 1;

-- which sub category had highest growth by profit in 2023 compare to 2022 ?
with cte as (
SELECT sub_category, year(order_date) as order_year,
sum(sale_price) as sales
from orders_data
group by sub_category, year(order_date)
)
, cte2 as (
SELECT sub_category ,
sum(case when order_year = 2022 then sales else 0 end ) as sales_2022,
sum(case when order_year = 2023 then sales else 0 end ) as sales_2023
FROM cte 
group by sub_category
)
select *,(sales_2023 - sales_2022)* 100 / sales_2022 
from cte2 
order by (sales_2023 - sales_2022)* 100 / sales_2022 desc 
limit 1;