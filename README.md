# Sales-Data-Analysis
# About
We're diving into Walmart's sales data to figure out which products are performing best, how sales change over time, and examine customer behavior. The idea is to use these insights to improve Walmart's sales strategies.This dataset was obtain from the https://www.kaggle.com/c/walmart-recruiting-store-sales-forecasting

We're using information from a bunch of Walmart stores in different places. This data tells us what was sold, when it was sold, and how much it cost.here's also data about special sales events around holidays, which can be tricky to analyze because they affect sales in different ways.
# Project Objective/Aim
This project aims to dig into Walmart's sales data to understand what drives sales performance across different branches. By examining trends, product lines, and customer behaviors, we’ll uncover insights to help improve sales strategies and boost profitability.

# Analysis List

1. Understand Sales Performance Across Different Branches:

   -Identify top-performing branches based on total revenue, quantity sold, and profitability.
   
   -Analyze sales trends by branch to determine the most effective sales strategies.

2. Evaluate Product Line Performance:
   
   -Determine which product lines generate the highest revenue and profitability.
   
   -Assess product lines based on average gross margin and sales quantity to identify high and low performers.

3. Analyze Sales Trends:

   -Examine sales trends by day of the week, hour of the day, and month to identify peak sales periods and optimize sales strategies.

   -Calculate month-over-month sales growth to understand sales fluctuations and seasonal impacts.

4. Examine Customer Behavior:

   -Evaluate customer types based on their revenue contribution and VAT payments

5. Identify Key Sales Metrics:

   -Calculate metrics such as Average Order Value (AOV) and average value per item sold.

   -Understand peak sales periods by day, month, and hour to optimize inventory and staffing.


# Technique
## 1.Cleaning Up the Data

The first step was to examine the data carefully to find any missing or incorrect information. We made sure all the data was complete and accurate before moving on.

## 2.Organizing the Data

We created a database and stored the information in a structured way. This made it easier to work with and analyze the data.

## 3.Adding More Information:Feature Engineering

### To get a better understanding of when and how sales happened, we added new details to the data:

#### a.Time of day: 
We figured out if sales happened in the morning, afternoon, or evening.

#### b.Day of the week: 
We determined which day of the week (Monday, Tuesday, etc.) the sale occurred.

#### c.Month name: 
We identified the month when the sale took place.

These extra details will help us see when sales are highest and which days or times are busiest for the store.


# Analytical question

### Product
1.What is the most selling product line?

2.What is the total revenue by month?

3.What month had the largest COGS?

4.What product line had the largest revenue?

5.What product line had the largest VAT?

6.Fetch each product line and add a column to those product line showing "Good", "Bad". Good if its greater than average sales

7.Which is top 5 most profitable product lines?

8.Which branch sold more products than average product sold?

9.What is the most common product line by gender?

10.What is the average rating of each product line?

11.What is gross margin per product line?

12.Which is the city has the largest revenue?

### Customer
1.Which customer type buys the most?

2.What is average order value by customer type?

3.What is the gender distribution per branch?

4.What is the gender of most of the customers?

5.Which customer type pays the most in VAT?

6.Which of the customer types brings the most revenue?

7.Which city has the largest tax percent/ VAT (Value Added Tax)?


### Sale

1.What is Average Value Per Item Sold

2.Identify peak sales_day,month,hour

3.Analyze sales trends by day of week, hour of day, and month

4.What is sales and gross profit by branch

5.what is Month-over-month sales growth


# Revenue and Profit Calculation Overview

This section provides a breakdown of how key sales metrics such as Cost of Goods Sold (COGS), VAT, Total Sales, Gross Profit, and Gross Margin Percentage are calculated based on our dataset.

### Formulas

1. **COGS (Cost of Goods Sold)**:
   
   COGS = Unit Price * Quantity

3. **VAT (Value Added Tax)**:
   
   VAT = 5% * COGS
   
   VAT is added to the COGS, and this is the total amount billed to the customer.

5. **Total Sales (Gross Sales)**:
   
   Total Sales = VAT + COGS

7. **Gross Income**:

   Gross Income = Total Sales - COGS

9. **Gross Margin Percentage**:

   Gross Margin Percentage = (Gross Profit/Total Sales) * 100

### Example Calculation

Let's walk through an example using the first row in our dataset.

- **Unit Price**: $45.79
- **Quantity**: 7

1. **COGS**:

   COGS = 45.79 * 7 = 320.53

3. **VAT**:

   VAT = 5% * 320.53 = 16.0265

5. **Total Sales**:

   Total Sales = 320.53 + 16.0265 = 336.5565

7. **Gross Profit**:

   Gross Profit} = 336.5565 - 320.53 = 16.0265

9. **Gross Margin Percentage**:

   Gross Margin Percentage = (16.0265/336.5565) * 100 = 4.76%



