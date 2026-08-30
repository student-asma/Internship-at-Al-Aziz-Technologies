# Day 4 - Advanced SQL for Analytics

## Overview
This is my Day 4 task for Week 2 of my Data Analytics internship. This was the most advanced day of the week, focused on window functions, time-based analysis, and writing SQL that's actually useful for real business analysis rather than just basic queries.

## What I Learned
- `OVER()` - the clause that turns a regular aggregate function into a window function, meaning it calculates a value across a set of rows without collapsing them into one row (unlike GROUP BY).
- `PARTITION BY` - divides the rows into groups for the window function to work on separately, similar to GROUP BY but the individual rows are still visible in the output.
- `ROW_NUMBER()` - assigns a unique sequential number to each row within its partition.
- `RANK()` vs `DENSE_RANK()` - both rank rows, but RANK() leaves gaps in the ranking when there's a tie, while DENSE_RANK() doesn't.
- `Running totals` - using SUM() with OVER (ORDER BY ...) to get a cumulative total that grows row by row.
- `Moving averages` - using AVG() with a defined window frame (ROWS BETWEEN ... AND ...) to calculate an average over a rolling set of rows instead of the whole table.
- `Date functions` - using EXTRACT() to pull out the year/month from a date, and doing date arithmetic (like subtracting a date from today) for time-based analysis.
- `Conditional aggregation` - putting a CASE WHEN inside an aggregate function like COUNT() to get multiple conditional totals in a single query, instead of running separate queries.
- Some basic principles of `query optimization`, like avoiding SELECT * when you don't need every column, and avoiding functions on columns inside WHERE clauses since it can prevent indexes from being used.
- The habit of `writing readable SQL` - capitalizing keywords, starting each clause on a new line, and using short, meaningful table aliases.

## Tools Used
- **PostgreSQL** with **pgAdmin 4**, continuing in the same database and tables (customers, products, orders, order_items) used in Day 3.

## What I Did
1. Added more order data across different dates so the time-based and window function queries would have something meaningful to work with.
2. Used `ROW_NUMBER()` with `PARTITION BY` to number each customer's orders in sequence.
3. Compared `RANK()` and `DENSE_RANK()` on product prices to see how they handle ties differently.
4. Calculated a running total of order amounts over time using `SUM() OVER (ORDER BY ...)`.
5. Calculated a 3-row moving average of order amounts using `AVG()` with a `ROWS BETWEEN` window frame.
6. Used `EXTRACT()` to break order dates into year and month, and grouped sales by month.
7. Calculated how many days have passed since each order using simple date subtraction.
8. Used conditional aggregation to count customers per city in a single query using CASE WHEN inside COUNT().
9. Reviewed a few basic query optimization ideas (avoiding SELECT *, avoiding functions on filtered columns) and applied consistent formatting to keep my queries readable.

## File in this folder
- `Day4_Advanced_SQL_Analytics.sql` - contains all the SQL code I wrote and ran for this task.

## Notes
Window functions were the hardest part of this day to wrap my head around, mainly because the rows don't collapse the way they do with GROUP BY. Comparing a plain GROUP BY query side by side with a window function query on the same data really helped it click.
