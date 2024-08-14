use sales

1.What is the most selling product line?
select sum(Quantity) as qty,Product_line from salesdata
group by Product_line
order by qty

2.What is the total revenue by month?
select MONTH(STR_TO_DATE(Date, '%d-%m-%Y')) AS month,
sum(total) as total_revenue from salesdata
group by month
order by total_revenue

3.What month had the largest COGS?
select MONTH(STR_TO_DATE(Date, '%d-%m-%Y')) AS month,
sum(cogs) as COGS from salesdata
group by month
order by COGS

4.What product line had the largest revenue?
select product_line, sum(Total) as total_revenue from salesdata
group by product_line
order by total_revenue

5.What product line had the largest VAT?
select Product_line,avg(VAT) as av_VAT from salesdata
group by Product_line
order by av_VAT

6.Fetch each product line and add a column to those product line showing "Good", "Bad". Good if its greater than average sales
select avg(Quantity) as qty from salesdata
select product_line,
                    case 
						when avg(Quantity)>'5.5100'
						Then "Good"
						Else "Bad" End as remark
                                    from salesdata
                                            group by product_line

7.Which is top 5 most profitable product lines?
select product_line,sum(gross_income) from salesdata
group by product_line limit 5

8.Which branch sold more products than average product sold?
select branch,
              sum(Quantity) as qty 
from salesdata
group by branch
having SUM(quantity)> (select avg(Quantity) as qty from salesdata)

9.What is the most common product line by gender?
select gender,product_line, count(gender) g_count from salesdata
group by product_line,gender
order by g_count desc

10.What is the average rating of each product line?
select product_line, round(avg(rating),2) from salesdata
group by product_line

11.What is gross margin per product line?
select product_line,sum(gross_margin_percentage) as High_gross_margin from salesdata
group by product_line
order by High_gross_margin desc

12.Which is the city has the largest revenue?
select city, sum(Total) as total_revenue from salesdata
group by city
order by total_revenue



