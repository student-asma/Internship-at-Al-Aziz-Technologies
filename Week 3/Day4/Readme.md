# Day 4 - Exploratory Data Analysis & Visualization

## Overview
This is my Day 4 task for Week 3 of my Data Analytics internship. This day was about actually exploring a dataset in depth - using statistics to summarize it, and using visualizations to see patterns that numbers alone don't make obvious.

## What I Learned
- **What EDA is** - the process of understanding a dataset's structure, patterns, and issues before doing any deeper analysis or modeling.
- **Descriptive statistics** - mean, median, mode, variance, and standard deviation, and what each one tells you about a column's values.
- **Quartiles** - splitting data into four equal parts (Q1, Q2/median, Q3), and using the interquartile range (IQR) to understand spread.
- **Outlier detection** - using the IQR method to mathematically identify values that fall unusually far outside the normal range, instead of just guessing by eye.
- **Correlation** - measuring how strongly two numeric columns move together, on a scale from -1 to +1.
- **Matplotlib and Seaborn** - the two main Python libraries for creating visualizations, with Seaborn built on top of Matplotlib for more polished statistical plots.
- **Histograms** - showing how the values in a single column are distributed.
- **Bar charts** - comparing totals or averages across categories.
- **Line charts** - showing how a value changes over time.
- **Scatter plots** - showing the relationship between two numeric variables as individual points.
- **Box plots** - showing quartiles and outliers together in a single visual.
- **Heatmaps** - visualizing a correlation matrix using color, making patterns easier to spot than reading raw numbers.
- **Distribution analysis** - comparing how a value is distributed across different categories.
- How to actually **find trends and patterns** by looking at grouped statistics and the visualizations together, rather than one in isolation.

## Tools Used
- **Python 3**, **Pandas**, **Matplotlib**, **Seaborn**, in **Jupyter Notebook**.

## What I Did
1. Loaded a sales dataset with 62 records (including a couple of intentional outliers) and explored its structure.
2. Calculated descriptive statistics - mean, median, mode, variance, and standard deviation - for the price, quantity, and total amount columns.
3. Calculated quartiles and the IQR for the price column.
4. Used the IQR method to mathematically detect outliers in the price column.
5. Calculated the correlation between price, quantity, total amount, and customer age.
6. Built a histogram to see the distribution of prices.
7. Built a bar chart comparing total sales across cities.
8. Built a line chart showing the sales trend over time.
9. Built a scatter plot to visualize the relationship between quantity and total amount.
10. Built a box plot comparing price distribution by category, which also visually confirmed the outliers.
11. Built a heatmap to visualize the correlation matrix.
12. Compared the distribution of total amount across categories using Seaborn's histplot.
13. Pulled together grouped statistics (average price by category, order count by city, top spending orders) to identify trends and patterns.
14. Wrote up my findings and insights based on everything above.

## Files in this folder
- `Day4_EDA_Visualization.ipynb` - the Jupyter Notebook with all the markdown explanations, code cells, charts, and outputs for this task.
- `eda_sales_data.csv` - the sample dataset used for this analysis.

## Notes
Running into a couple of syntax errors from lines merging together during copy-paste (like `plt.xticks(...)` and `plt.show()` ending up on the same line) was a good reminder to always double-check that each statement is on its own line before running a cell.
