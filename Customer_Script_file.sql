use sales

1.Which customer type buys the most?
select customer_type, sum(Quantity)as qty from salesdata
group by customer_type

2.What is average order value by customer type?
SELECT Customer_type, AVG(Total) AS Average_Order_Value
FROM salesdata
GROUP BY Customer_type;

3.What is the gender distribution per branch?
select branch, count(gender) from salesdata
group by branch

4.What is the gender of most of the customers?
select gender,count(gender) from salesdata
group by gender

5.Which of the customer types brings the most revenue?
select customer_type, sum(total) as most_revenue from salesdata
group by customer_type

6.Which customer type pays the most in VAT?
SELECT
	customer_type,
	sum(VAT) AS total_tax
FROM salesdata
GROUP BY customer_type
ORDER BY total_tax;

7.Which city has the largest tax percent/ VAT (Value Added Tax)?
SELECT
	city,
    ROUND(AVG(VAT), 2) AS avg_tax_pct
FROM salesdata
GROUP BY city 
ORDER BY avg_tax_pct DESC;

8.Which time of the day do customers give most ratings?
select time_of_day, count(rating) from salesdata
group by time_of_day

9.Which time of the day do customers give most ratings per branch?
select time_of_day, branch,count(rating) as rating_count from salesdata
GROUP BY branch, time_of_day
ORDER BY branch, rating_count DESC;

10.Which day fo the week has the best avg ratings?
select day_name,round(avg(rating),2) as best_avg_rating from salesdata
group by day_name
order by avg(rating) desc

11.Which day of the week has the best average ratings per branch?
select day_name,branch,round(avg(rating),2) as best_avg_rating from salesdata
group by day_name,branch
order by avg(rating) desc
