use corporate;

 # BASIC QUARY
#1 . Display all columns and rows from the sales table.
select * from walmartsales;

# 2. Retrieve all unique product lines from the sales table
 select distinct `Product line` from walmartsales;
 
 # 3. Find all sales made in the city of Mandalay.
  select * from walmartsales
  where City ='Mandalay';
  
  # 4. Fetch the total revenue for each branch.
  select branch, sum(total) as total_revenue from walmartsales group by branch;
  
  # 5. Retrieve all transactions where the payment method was "Credit Card".
  select *
  from walmartsales
  where Payment="credit card";
   
   #6. Find the total number of products sold by each branch.
   select branch, sum(Quantity) as total_quantity from walmartsales
   group by branch;
  
 #  7 Calculate the average unit price for each product line.
 select `Product line`,avg(`Unit price`) as avrage_unit_price from walmartsales 
 group by `Product line`;
 
 # 8. Find the day with the highest revenue in the entire dataset.
 select date(date) as sales_date, sum(total) as daily_revnue
 from walmartsales
 group by date(date)
 order by  daily_revnue
 limit 1;
 
 
 # 9 Determine the most frequently used payment method.
 select Payment ,count(*) as frequncy
 from walmartsales
 group by Payment
 order by frequncy desc
 limit 1;
 
 # 10 Calculate the total VAT collected by each city
 select city, sum(`Tax 5%`*cogs) as total_vat_sales
 from walmartsales
 group by city;
 
 
 #  11 Retrieve sales data where the gross margin percentage is greater than 5%.
 select * from walmartsales where `gross margin percentage`>5;
  
  # .12  Find all transactions where the total revenue is above ₹10,000.
   select total as total_revenue from walmartsales where Total>100000;
   
   # 13 Retrieve details of customers who purchased more than 5 units in a single transaction.
   
   select `Customer type` from walmartsales 
   where `Unit price`>5;
   
   # 14. Find transactions made during weekends.
   select*from walmartsales
   where dayofweek(date) in (1,7);
   
   # 15  Fetch all sales made by male customers.
   
   
   # 16 Identify the customer type that generates the most revenue.
   select `Customer type` ,sum(total) as total_revenue from walmartsales
   group by `Customer type`
   order by total_revenue desc
   limit 1;
   
   # 17 Determine the gender distribution of customers for each branch.
   select branch, Gender, count(*) as customer_count
   from walmartsales
   group by branch, Gender;
   
   
   # 18 Find the average rating given by customers for each branch.
   select Branch,avg(Rating)as avrange_rating
   from walmartsales
   group by Branch;
   
   # 19 . Identify which customer type pays the highest VAT.
   select `Customer type`,sum(cogs*`Tax 5%`)as total_vat
   from walmartsales
   group by `Customer type`
   order by total_vat desc
   limit 1;
   
   # 20 . Calculate the total quantity sold by each customer type.
   select `Customer type`, sum(Quantity)as total_quantity
   from walmartsales
   group by `Customer type`;
   
   # 21 .Identify the most sold product line by quantity
   
   select `Product line`,sum(Quantity) as most_quantity
   from walmartsales
   group by `Product line`
   order by most_quantity desc
   limit 1;
   
   #22 Fetch the product line with the highest total revenue.
   select `Product line`,sum(total) as total_revenue
   from walmartsales
   group by `Product line`
   order by total_revenue desc
   limit 1;
   
   
   # 23 Determine the average gross income for each product line.
   select `Product line`,avg(`gross income`)as avg_gross_income
   from walmartsales
   group by `Product line`;
   
   # 24 Retrieve product lines with sales below the average revenue.
   select `Product line`, sum(total)as total_revenue
   from walmartsales
   group by `Product line`
   having sum(Total)< (select avg(Total) from walmartsales);
   
   
   # 25 Identify the product line with the highest average rating
   select `Product line`,avg(Rating)as avg_rating
   from walmartsales
   group by `Product line`
   order by avg_rating desc
   limit 1;
   
   
   # 26 Determine which month of the year generated the most revenue.
   select monthname(Date) as month_number,
   sum(Total) as total_sale
   from walmartsales
   group by month(Date), monthname(Date)
   order by total_sale desc
   limit 1;
   
   
   # 27 Find the total revenue for each day of the week. 
   select dayname(Date) as weekday,
   sum(Total) as total_revenue
   from walmartsales
   group by weekday
   order by field(weekday, 'monday','tuesday','wendsday','thursday','friday','saturday','sunday');
   
   
   # 28 . Identify the time of day (morning, afternoon, evening) with the most sales.
   
   select * from walmartsales;
   select 
   case 
   when hour(Time) between 6 and 11 then 'morning'
   when hour(Time) between 12 and 17 then 'afternoon'
   when hour(Time) between 18 and 23 then 'evenig'
   else 'night'
   end as time_of_day,
   sum(Total) as total_sale
   from walmartsales
   group by time_of_day
   order by  total_sale desc
   limit 1;
   
   
   # 29 Fetch the branch with the highest sales during weekends.
   select Branch,sum(Total) as weekend_sale
   from walmartsales
   where dayname(date) in ('saturday','sunday')
   group by Branch
   order by weekend_sale desc
   limit 1;
   
   # 30 Find which weekday has the highest average customer rating.
   select dayname(Date) as weekday, avg(Rating) as avg_rating
   from walmartsales
   group by weekday
   order by avg_rating desc
   limit 1;
   
   
   
   
 
 
 
 
 
 
 