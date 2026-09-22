# Day 4 - DAX Fundamentals & Power BI Visuals

## Overview
This is my Day 4 task for Week 4 of my Data Analytics internship. Building on the star-schema model from Day 3, this day was about writing DAX measures and using them to build an interactive business intelligence dashboard.

## What I Learned
- **DAX (Data Analysis Expressions)** - the formula language used in Power BI to create custom calculations that work with the data model.
- **Measures vs calculated columns** - a measure calculates dynamically based on the current filter context (used for totals and summaries), while a calculated column stores a fixed value per row. Measures are the right choice for aggregate calculations.
- **A measure's "home table"** - even when a measure references a dimension table's column (like filtering by Category), the measure itself belongs in the fact table (FactSales) if it's measuring transactions/sales, since that's its core business meaning.
- **SUM, AVERAGE, COUNT, DISTINCTCOUNT** - basic aggregation functions, and the difference between COUNT (counts every row) and DISTINCTCOUNT (counts only unique values).
- **CALCULATE** - the most important DAX function, used to evaluate a measure under a specific filter condition (e.g. Sales for Electronics only).
- **FILTER** - used inside CALCULATE for more complex row-by-row conditions.
- **DIVIDE** - a safe division function that avoids divide-by-zero errors by returning an alternate result instead of an error.
- **IF and SWITCH** - conditional logic for creating categorized results (e.g. High Performing vs Needs Attention), with SWITCH being cleaner for multiple conditions than nested IFs.
- **Time intelligence** - functions like TOTALYTD (Year-to-Date) and TOTALMTD (Month-to-Date), which rely on having a proper Date table marked in the model.
- **Previous period analysis** - using DATEADD to compare a value against the same measure from a prior period, and calculating growth percentage from that comparison.
- **Dashboard visuals** - KPI cards, tables, matrix, bar/line charts, and maps, each suited to a different kind of insight.
- **Tooltips and drill-through** - tooltips show extra detail on hover, while drill-through lets a user right-click a data point to jump to a detailed page filtered to that specific item.

## Tools Used
- **Power BI Desktop** (DAX formulas, Report view)

## What I Did
1. Continued from the Day 3 star-schema model (FactSales + four dimension tables).
2. Created measures in the FactSales table: Total Sales, Average Order Value, Total Orders, Unique Customers.
3. Created a CALCULATE-based measure (Electronics Sales) and a FILTER-based measure (High Value Sales).
4. Created a DIVIDE-based measure for average price per unit.
5. Created IF and SWITCH measures to categorize sales performance and region tiers.
6. Created YTD and MTD measures using the marked Date table from Day 3.
7. Created previous-month and growth-percentage measures using DATEADD.
8. Built a full dashboard layout: a KPI card strip at the top (Total Sales, Total Orders, Unique Customers, YTD Sales), a slicer for filtering, a bar chart and line chart for product and trend analysis, a matrix and map for category/geographic breakdowns, and a customer summary table at the bottom.
9. Set up a drill-through page so a user can right-click a product in the bar chart and see its detailed order history.

## Files in this folder
- `Day4_DAX_Visuals.pbix` - the Power BI file with all DAX measures and the interactive dashboard.

## Notes
The biggest realization on this day was that a measure's "home table" isn't about which columns it references, it's about what the measure actually represents - every measure I wrote ended up living in FactSales because they were all fundamentally measuring sales, even the ones that filtered by product category or date.
