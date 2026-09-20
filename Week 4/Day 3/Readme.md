# Day 3 - Data Modeling

## Overview
This is my Day 3 task for Week 4 of my Data Analytics internship. This day was about building a proper data model in Power BI using a star schema - one fact table connected to multiple dimension tables - instead of working with a single flat table.

## What I Learned
- **Fact tables** - hold the actual transactions/measures (like Quantity, TotalAmount), with many rows.
- **Dimension tables** - hold descriptive context (customer, product, date, city), with fewer rows.
- **Relationships** - connecting tables through matching key columns, similar to primary/foreign keys in SQL.
- **One-to-many relationships** - one dimension record can relate to many fact records (e.g. one customer, many orders).
- **Star schema** - dimension tables connected directly to the fact table.
- **Snowflake schema** - a dimension table connected through another dimension table instead of directly to the fact table (this happened naturally with City connecting through Customer).
- **Primary keys and foreign keys** - the unique ID in a dimension table vs. the repeating reference to it in the fact table.
- **Date tables** - a dedicated calendar table, marked using "Mark as Date Table," needed for accurate time-based analysis.
- **Relationship direction** - filters should generally flow in a single direction (dimension → fact), not both ways.
- **Model optimization and best practices** - keeping fact tables lean (IDs and numbers only), descriptive text in dimension tables, and clear table names.

## Tools Used
- **Power BI Desktop** (Model view)

## What I Did
1. Imported one fact table (FactSales) and four dimension tables (DimCustomer, DimProduct, DimGeography, DimDate).
2. Arranged the tables in Model view with FactSales in the center, forming a star shape.
3. Reviewed the relationships Power BI auto-detected, and fixed one relationship that was set to "Both" cross-filter direction, changing it to "Single."
4. Confirmed all relationships were "One to many" between each dimension and the fact table.
5. Marked DimDate as an official date table using its Date column, which validated successfully.
6. Built a quick bar chart (Product vs. Total Amount) to confirm the model was working correctly end to end.

## Files in this folder
- `Day3_Data_Modeling.pbix` - the Power BI file with the full star-schema model and relationships.
- `FactSales.csv`
- `DimCustomer.csv`
- `DimProduct.csv`
- `DimGeography.csv`
- `DimDate.csv`

## Notes
Seeing the tables auto-connect just from matching column names, and then fixing the one relationship that wasn't set up quite right, helped me understand relationships as something to actively review - not just accept whatever Power BI guesses.
