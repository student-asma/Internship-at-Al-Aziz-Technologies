# Day 3 - SQL Joins & Subqueries

## Overview
This is my Day 3 task for Week 2 of my Data Analytics internship. This day was about understanding how multiple tables relate to each other and how to combine data from them using different types of joins, subqueries, CTEs, and UNION.

## What I Learned
- How relationships between tables actually work in practice when you have more than two tables involved (customers, products, orders, order items).
- `INNER JOIN` - returns only the rows that have a match in both tables.
- `LEFT JOIN` - returns all rows from the left table, even if there's no match in the right table (the unmatched columns show up as NULL).
- `RIGHT JOIN` - the opposite of LEFT JOIN, keeps all rows from the right table.
- `FULL JOIN` - keeps all rows from both tables, matched or not.
- How to join more than two tables together in a single query to build a complete picture (e.g. which customer bought which product, and how much they spent).
- `Self Join` - joining a table to itself, useful for comparing rows within the same table (e.g. finding customers who live in the same city).
- `Subqueries` / nested queries - running one query inside another, where the inner query's result feeds into the outer query.
- `Common Table Expressions (CTEs)` using `WITH` - a way to break a complex query into a named, readable step before using it in the main query.
- `UNION` and `UNION ALL` - combining the results of two queries into one; UNION removes duplicates while UNION ALL keeps them.

## Tools Used
- **PostgreSQL** with **pgAdmin 4**, continuing in the same database used for Day 1 and Day 2.

## What I Did
1. Created four new tables - `customers`, `products`, `orders`, and `order_items` - to represent a simple sales scenario.
2. Inserted sample data with intentional gaps (a customer with no orders, a product never ordered) so the difference between join types would actually be visible in the results.
3. Practiced `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, and `FULL JOIN` between different table pairs and compared how the results changed with each one.
4. Wrote a multi-table join across all four tables together to calculate the total amount spent per order.
5. Wrote a self join on the `customers` table to find pairs of customers living in the same city.
6. Wrote a subquery to find customers who have never placed an order.
7. Wrote a CTE to calculate total spending per customer, then filtered that result to only customers above a certain spending amount.
8. Used `UNION` and `UNION ALL` to combine customer names and product names into a single labeled list, and compared how duplicates were handled differently between the two.

## File in this folder
- `Day3_Joins_Subqueries.sql` - contains all the SQL code I wrote and ran for this task.

## Notes
The biggest thing that clicked for me on this day was seeing LEFT JOIN and RIGHT JOIN side by side with the same tables - it made it much easier to understand which table "keeps all its rows" in each case, instead of just memorizing the definitions.
