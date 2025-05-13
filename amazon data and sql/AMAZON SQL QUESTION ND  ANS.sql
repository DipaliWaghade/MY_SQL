create database AMAZON;
use amazon;
#1 Retrieve all records from the table.
select* from amazon_1 ;
#2 Find distinct product categories.
select distinctrow(Category)from amazon_1;
#3 Get the total number of orders.
select count(`Order ID`) from amazon_1;
#4 Find the total sales and profit for each product category.
select sales,profit,Category
from amazon_1;
# 5 List all orders where the quantity is greater than 5.
select `Order ID`,Quantity
from amazon_1
where Quantity >5;
# 6 Show the top 10 highest-selling products by sales amount.
select `Product Name`,Sales
from amazon_1
order by  `Product Name`=10 desc;
#7 Retrieve orders that were shipped more than 5 days after the order date.
SELECT `Ship Date`,`Order Date`
FROM amazon_1
WHERE DATEDIFF(`Ship Date`,`Order Date`) > 5;
#8 Get all records where the profit is negative.
select *
from amazon_1
where Profit<0;
#9 Count how many orders were placed each year.
SELECT YEAR(`Order Date`) AS Year, COUNT(*) AS order_count 
FROM amazon_1
 GROUP BY YEAR(`Order Date`);
 # 10 Get the average sales per product.
 select avg(Sales) as avg_sales,`Product Name`as product_name
 from amazon_1
 group by product_name;
 #11 Show total sales, total profit, and average quantity per category.
 select count(Sales)as Total_sale,sum(Profit)as Total_profit,avg(Quantity)as avg_quantity,Category
 from amazon_1
 group by Category;
 #12 Find the category with the highest average profit.
 SELECT Category  
 FROM amazon_1 
 GROUP BY Category 
 ORDER BY AVG(Profit) DESC LIMIT 1;
 # 13 Count the number of products sold per category.
select count(`Product Name`)as count_product,Category
from amazon_1
group by Category;
#14 Show the month-wise total sales.
SELECT MONTH(`Order Date`) AS Month, SUM(Sales)  
FROM amazon_1 
GROUP BY MONTH(`Order Date`);
#15 Count how many customers are from California.

SELECT COUNT(*) 
FROM amazon_1 
WHERE Geography LIKE '%,California';
#16 Find all products that include the word "Phone".
select `Product Name`
from amazon_1
where `Product Name`like '%Phone';
#List all orders sorted by earliest shipping date.
SELECT * 
FROM amazon_1 
ORDER BY `Ship Date` ASC;
#17 Get the number of orders made in June 2013.
SELECT * 
FROM amazon_1
WHERE MONTH(`Order Date`) = 6 AND YEAR(`Order Date`) = 2013;
#18 Get the state from the Geography field.



 
 




