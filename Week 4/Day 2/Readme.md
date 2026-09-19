# Day 2 - Power Query & Data Transformation

## Overview
This is my Day 2 task for Week 4 of my Data Analytics internship. Building on the Power BI basics from Day 1, this day focused on Power Query - the tool inside Power BI used to clean and transform data before it gets loaded into a report.

## What I Learned
- **Introduction to Power Query** - Power Query is the transformation layer that runs before data reaches the report, similar to what I did with pandas in Week 3, but through a visual interface instead of code.
- **Query Editor** - the separate window where all data transformation happens, opened using "Transform Data" instead of "Load".
- **Data profiling** - using Column quality, Column distribution, and Column profile to see missing values, errors, and unique values in each column before starting to clean.
- **Removing duplicates** - using Remove Rows > Remove Duplicates to eliminate a repeated order record.
- **Handling missing values** - using Replace Values to fill blank cells in Quantity, Price, and City with sensible defaults.
- **Changing data types** - converting columns (like OrderDate) to their correct type so Power BI treats them properly (as dates and numbers, not text).
- **Splitting columns** - breaking a full name column into separate First Name and Last Name columns using a delimiter.
- **Merging columns** - combining columns back together into a single text column, and learning that the order you select columns in determines the order they appear in the merged result.
- **Replacing values** - standardizing inconsistent text (like "lahore", "LAHORE", "Lahore ") into a single consistent format.
- **Conditional columns** - creating a new column based on if/else logic (e.g. categorizing price as High/Medium/Low) without writing code.
- **Custom columns** - creating a calculated column using a formula (e.g. Quantity × Price for total amount).
- **Merge Queries** - joining two queries together based on a matching column, similar to a SQL JOIN.
- **Append Queries** - stacking two queries with the same columns on top of each other, similar to SQL's UNION ALL.
- **Pivot/Unpivot** - turning row values into columns (Pivot) and reversing that back into rows (Unpivot).
- **Applied Steps** - the panel that records every transformation as a separate, named, reorderable step - this is what makes the whole process repeatable on new data later.
- **Query organization** - renaming and grouping queries so a project with multiple queries stays easy to navigate.

## Tools Used
- **Power BI Desktop** (Power Query Editor)

## What I Did
1. Imported a raw sales dataset with intentional data quality issues and opened it in the Power Query Editor.
2. Turned on data profiling tools to identify missing values before cleaning.
3. Removed a duplicate order record.
4. Filled missing values in the Quantity, Price, and City columns.
5. Corrected the data type of the OrderDate column and verified it showed 100% valid with no errors.
6. Split the customer name column into First Name and Last Name, then merged them back together (and fixed an issue where the merge order came out reversed).
7. Standardized inconsistent text in the City, Status, and Category columns.
8. Created a conditional column (PriceCategory) and a custom column (TotalAmount).
9. Brought in a lookup table and merged it into the main query to add Region and Sales Manager information.
10. Appended a second quarter's worth of sales data onto the main dataset.
11. Practiced pivoting the Category column into separate columns and then unpivoting it back.
12. Reviewed the Applied Steps panel to understand how every transformation is recorded and reusable, and organized my queries with clear names.

## Files in this folder
- `Day2_PowerQuery_Transformation.pbix` - the Power BI file with all Power Query transformations applied.
- `raw_sales_data.csv` - the main raw dataset used for cleaning.
- `city_region_lookup.csv` - the lookup table used for Merge Queries.
- `sales_data_q2.csv` - the second dataset used for Append Queries.

## Notes
The most useful part of this day was the Applied Steps panel - seeing every transformation listed out as a separate, editable step made it click that this isn't just a one-time cleanup, it's a workflow that would automatically re-run on a completely new file next month.
