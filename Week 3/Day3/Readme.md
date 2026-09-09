# Day 3 - Data Cleaning with Python

## Overview
This is my Day 3 task for Week 3 of my Data Analytics internship. Real-world data is almost never clean, so this day was about learning how to actually deal with that - handling missing values, duplicates, wrong data types, outliers, and inconsistent text and dates - and turning the whole process into a reusable workflow.

## What I Learned
- How to identify **missing values** using `isnull()` and decide how to handle them.
- **`fillna()`** - filling missing values with a sensible replacement (like a default value, or the average of a group) instead of just deleting the row.
- **`dropna()`** - the alternative approach of removing rows/columns with missing data entirely, and when that might be more appropriate than filling them.
- **`drop_duplicates()`** - finding and removing duplicate records that would otherwise throw off totals and counts.
- **`astype()`** - converting a column to its correct data type (for example, making sure a quantity column is actually stored as a number, not text).
- **Outliers** - values that are unusually different from the rest of the data (like a negative price or an unrealistically large quantity), and how to detect and correct them using `replace()`-style logic.
- **Data standardization and string cleaning** - using `.str.strip()` and `.str.title()` to fix inconsistent text like extra spaces and mismatched capitalization (e.g. "lahore", "Lahore", "LAHORE" all becoming "Lahore").
- **Date conversion** - using `pd.to_datetime()` to turn dates written in different formats into one consistent datetime type.
- **Feature creation** - building new, more useful columns from existing ones (like a total amount column from price and quantity).
- **`apply()`** - running a custom function across a column to create a new column based on custom logic (like categorizing prices as High/Medium/Low).
- **Data validation** - re-checking the dataset after cleaning to confirm the missing values, duplicates, and bad values are actually gone.

## Tools Used
- **Python 3**, **Pandas**, **NumPy**, in **Jupyter Notebook**.

## What I Did
1. Loaded a deliberately messy sales dataset containing missing values, a duplicate row, inconsistent city/category text, mixed date formats, a negative price, and an unrealistic quantity outlier.
2. Identified all missing values with `isnull().sum()` and filled them appropriately - quantity with a default, price with the product's average, and city with "Unknown".
3. Detected and removed the duplicate order record using `drop_duplicates()`.
4. Standardized text columns (city, category, customer name) by stripping extra whitespace and applying consistent title-case formatting.
5. Converted the order date column, which had multiple different date formats, into a single proper datetime type.
6. Fixed incorrect data types on the quantity and price columns using `astype()`.
7. Found and corrected outliers - a negative price and an abnormally large quantity - by replacing them with more reasonable values.
8. Created new features: a `total_amount` column, an `order_month` column, and a `price_category` column built using `apply()`.
9. Ran a final validation check to confirm missing values, duplicates, and bad values were all resolved.
10. Packaged the entire cleaning process into a single reusable function, `clean_sales_data()`, so any future messy dataset with the same structure can be cleaned in one call.

## Files in this folder
- `Day3_Data_Cleaning.ipynb` - the Jupyter Notebook with all the markdown explanations, code cells, and outputs for this task.
- `messy_sales_data.csv` - the intentionally messy sample dataset used for the cleaning exercise.

## Notes
The most valuable part of this day was building the reusable `clean_sales_data()` function at the end - it made me realize that data cleaning isn't just a one-time fix, it's something worth writing once and reusing every time a similar dataset comes in.
