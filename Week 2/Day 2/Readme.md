# Day 2 - Filtering, Aggregation & Grouping

## Overview
This is my Day 2 task for Week 2 of my Data Analytics internship. After learning the basics of SQL on Day 1, this day was focused on filtering data more precisely, working with NULL values, and summarizing data using aggregate functions and grouping.

## What I Learned
- How to use comparison operators (`>=`, `!=`) along with `AND` / `OR` to combine multiple conditions in a query.
- `IN` - to check a value against a list of options instead of writing multiple `OR` conditions.
- `BETWEEN` - to filter values within a range (e.g. salaries between two numbers).
- `LIKE` - to search for text patterns (e.g. names starting or ending with a certain letter).
- How SQL treats missing data using `NULL`, and why you can't use `=` to check for it - you have to use `IS NULL` / `IS NOT NULL` instead.
- Aggregate functions - `COUNT`, `SUM`, `AVG`, `MIN`, `MAX` - to summarize a column instead of looking at every row individually.
- `GROUP BY` - to break down aggregate results by category (e.g. average salary per department) instead of just getting one overall number.
- `HAVING` - to filter groups after aggregation, which is different from `WHERE` (which filters rows before grouping).
- `CASE WHEN` - to create a new column based on conditions, similar to an IF-ELSE statement.

## Tools Used
- **PostgreSQL** with **pgAdmin 4**, continuing in the same database I created on Day 1 (renamed since then, but the tables and data are unchanged).

## What I Did
1. Added a few more rows to the `employees` table, including some with `NULL` values (missing salary or missing department), so I could actually practice the NULL-related queries properly.
2. Practiced comparison operators and filtering:
   - `AND` / `OR` to combine conditions
   - `IN` to match against a list of cities
   - `BETWEEN` to filter salaries within a range
   - `LIKE` to match name patterns
3. Practiced checking for missing data using `IS NULL` and `IS NOT NULL` on different columns, and confirmed that these checks are column-specific - not a check on the whole row.
4. Used `COUNT`, `SUM`, `AVG`, `MIN`, and `MAX` to get overall summary statistics from the `employees` table.
5. Used `GROUP BY` to get the employee count and average salary per department.
6. Used `HAVING` to filter that grouped result down to only the departments with an average salary above a certain amount.
7. Used `CASE WHEN` to add a `salary_category` column that labels each employee as High, Medium, Low, or Not Available based on their salary.

## File in this folder
- `Day2_Filtering_Aggregation.sql` - contains all the SQL code I wrote and ran for this task.

## Notes
The most useful thing I understood today was the difference between `WHERE` and `HAVING` - `WHERE` filters individual rows before any grouping happens, while `HAVING` filters the groups after `GROUP BY` has already summarized the data.
