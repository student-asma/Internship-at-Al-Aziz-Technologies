# Day 2 - NumPy & Pandas

## Overview
This is my Day 2 task for Week 3 of my Data Analytics internship. Building on Python basics from Day 1, this day was about learning the two libraries that data analysis in Python actually depends on - NumPy for fast numerical operations, and Pandas for working with structured, table-like data.

## What I Learned
- **NumPy arrays** - a grid-like structure for storing numbers, much faster for calculations than a regular Python list.
- **Array operations and vectorization** - applying an operation to an entire array at once (like adding 10 to every element) without writing a loop, which is one of the main reasons NumPy is fast.
- **Indexing** - accessing elements by position or slice, and also conditional indexing, where I could pull out only the array elements that meet a certain condition.
- **Pandas Series** - a one-dimensional labeled array, similar to a NumPy array but with an index attached to each value.
- **Pandas DataFrames** - a two-dimensional table (rows and columns), similar to an Excel sheet, which is the main structure I'll be using for the rest of this internship.
- How to **read data** into a DataFrame from different file types - CSV, Excel, and JSON - using `read_csv()`, `read_excel()`, and `read_json()`.
- **Selecting columns** - pulling out one or more specific columns from a DataFrame.
- **Filtering rows** - using conditions (including combining multiple conditions with `&`) to get only the rows that match.
- **Sorting** - reordering rows based on a column's values.
- **GroupBy and aggregation** - grouping rows by a category and calculating summary statistics for each group, similar to `GROUP BY` in SQL.
- **Merging** - joining two DataFrames together based on a common column, similar to a SQL JOIN.
- **Concatenation** - stacking DataFrames on top of each other (or side by side) to combine them.

## Tools Used
- **Python 3**, **NumPy**, and **Pandas**, in **Jupyter Notebook**.

## What I Did
1. Continued the same notebook style from Day 1 - a markdown title/index cell at the top, followed by a short markdown explanation before every code cell.
2. Practiced NumPy arrays, vectorized operations, and indexing using small example arrays.
3. Practiced Pandas Series and built a simple DataFrame from a Python dictionary to understand the basic structure before moving to real data.
4. Loaded a real-world style dataset (`sales_data.csv`) containing orders, customers, products, and sales information, and explored it using `.shape`, `.head()`, and `.info()`.
5. Practiced selecting specific columns, filtering rows by single and combined conditions, and sorting the dataset by price.
6. Used `groupby()` to summarize the data by category and by city.
7. Created a second small DataFrame with customer membership info and merged it with the sales data on `customer_name`.
8. Created a small DataFrame of new orders and concatenated it onto the original dataset to practice combining datasets.

## Files in this folder
- `Day2_NumPy_Pandas.ipynb` - the Jupyter Notebook with all the markdown explanations, code cells, and outputs for this task.
- `sales_data.csv` - the sample dataset used for the hands-on part of this task (loading, filtering, grouping, merging, and concatenation).

## Notes
The part that stood out most to me was how similar Pandas' `groupby()` and `merge()` are to SQL's `GROUP BY` and `JOIN` from Week 2 - it made this day feel less like learning something completely new and more like doing the same kind of analysis in a different tool.
