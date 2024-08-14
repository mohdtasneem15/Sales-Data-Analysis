use sales

1.Average Value Per Item Sold:
SELECT SUM(Total) / SUM(Quantity) AS average_value_per_item FROM salesdata;

2.Identify peak sales_day,month,hour
select day_name,sum(total) as peak_sales  from salesdata
group by day_name
order by peak_sales desc limit 1

select month_name,sum(total) as peak_sales  from salesdata
group by month_name
order by peak_sales desc limit 1

select time_of_day,sum(total) as peak_sales  from salesdata
group by time_of_day
order by peak_sales desc limit 1

3.Analyze sales trends by day of week and hour of day
WITH SalesByDay AS (
    SELECT
        day_name,
        SUM(total) AS total_sales
    FROM
        salesdata
    GROUP BY
        day_name)
        
  select day_name,total_sales from SalesByDay
  ORDER BY FIELD(day_name, 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday');
  
with SalesByHour AS (
    SELECT
        HOUR(time) AS hour_of_day,
        SUM(total) AS total_sales
    FROM
        salesdata
    GROUP BY
        hour_of_day)
select hour_of_day,total_sales,
LAG(total_sales) OVER (ORDER BY hour_of_day) AS previous_hour_sales,
    CASE
        WHEN LAG(total_sales) OVER (ORDER BY hour_of_day) IS NULL THEN NULL
        ELSE (total_sales - LAG(total_sales) OVER (ORDER BY hour_of_day)) / LAG(total_sales) OVER (ORDER BY hour_of_day) * 100
    END AS hour_over_hour_growth
from salesByHour
ORDER BY hour_of_day;

4.What is sales and gross profit by branch
select branch,sum(total) as total_sales, sum(gross_income)as total_profit from salesdata
group by branch

5.What is Month-over-month sales growth
WITH MonthlySales AS (
    SELECT
        month_name,
        SUM(total) AS total_sales
    FROM
        salesdata
    GROUP BY
        month_name)

select month_name,total_sales,lag(total_sales) over(order by month_name) as previous_month_sales,
CASE
	WHEN LAG(total_sales) OVER (ORDER BY month_name) IS NULL THEN NULL
	else (total_sales - lag(total_sales) over(order by month_name))/lag(total_sales) over(order by month_name)*100
	end as growth_sales
FROM
    MonthlySales
ORDER BY
    month_name;




