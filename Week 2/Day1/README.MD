# Day 1 - SQL Fundamentals

## Overview
This is my Day 1 task for Week 2 of my Data Analytics internship. The focus of this day was to understand the basics of SQL and how relational databases work, and then practice writing simple queries.

## What I Learned
- What SQL is and why it's important for a Data Analyst - since almost every company stores its data in some kind of database, knowing SQL lets you pull out exactly the information you need instead of depending on someone else to give you a report.
- How relational databases are structured using tables, rows, and columns.
- The difference between a **Primary Key** (a unique identifier for each row in a table) and a **Foreign Key** (a column that links one table to another).
- How tables relate to each other through these keys - I practiced this by creating two related tables (`departments` and `employees`) instead of just one table, so I could actually see how a relationship works in practice.

## Tools Used
- **PostgreSQL** with **pgAdmin 4** as the interface (I initially planned to use MySQL, but since I already had PostgreSQL set up, I used pgAdmin's Query Tool instead - the SQL concepts and syntax are basically the same).

## What I Did
1. Created a new database called `Day1_SQL_Fundamentals`.
2. Created two tables:
   - `departments` - with a Primary Key (`dept_id`)
   - `employees` - with its own Primary Key (`emp_id`) and a Foreign Key (`dept_id`) referencing the `departments` table
3. Inserted some sample data into both tables.
4. Practiced the core SQL commands:
   - `SELECT` and `FROM` - to view data from a table
   - `WHERE` - to filter rows based on a condition (e.g. employees earning above a certain salary)
   - `DISTINCT` - to get unique values from a column (e.g. unique cities)
   - `ORDER BY` - to sort results (e.g. by salary, highest to lowest)
   - `LIMIT` - to restrict the number of rows returned
5. As a bonus, I used a `JOIN` to combine the `employees` and `departments` tables and see which employee belongs to which department - this helped me understand table relationships better than just reading about them.

## File in this folder
- `Day1_SQL_Fundamentals.sql` - contains all the SQL code I wrote and ran for this task (table creation, data insertion, and all the practice queries).

## Notes
This was my first time properly using pgAdmin, so a good part of Day 1 also went into just getting comfortable with the interface - connecting to the server, creating a database, and figuring out the Query Tool.
