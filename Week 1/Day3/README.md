# Day 3 – Data Cleaning & Transformation in Excel

## Overview

This task focused on cleaning and transforming a messy customer sales dataset using Microsoft Excel. The main purpose was to understand how raw data can contain missing values, inconsistent entries, duplicate values, and formatting issues, and how these problems can be handled before using the data for analysis.

I worked on the dataset step by step and created a cleaned version of the data while keeping the original information safe.

## Dataset

The dataset used for this task was:

`Messy_Customer_Sales_Data.xlsx`

The data contains customer, order, product, sales, payment, and delivery information.

The main columns include:

- Order_ID
- Customer_Name
- Email
- Phone
- City
- Customer_State
- Category
- Order_Date
- Quantity
- Unit_Price
- Total_Sales
- Payment_Method
- Customer_Status
- Delivery_Date

### 1. Understanding Dirty Data

First, I reviewed the dataset to understand the common data quality problems. I identified missing values, inconsistent entries, formatting issues, and duplicate values that needed to be checked before analysis.

### 2. Handling Missing Values

Missing values were identified in columns such as Email, Phone, City, Category, Customer_State, and Payment_Method.

Where appropriate, missing information was replaced with meaningful values such as:

- Not Provided
- Unknown
- Not Specified

This made the dataset easier to work with without removing useful records.

### 3. Removing Duplicate Records

I checked the dataset for duplicate records and specifically reviewed Order_ID values to make sure that order records were not unnecessarily repeated.

Duplicate values in fields such as Email or Phone were reviewed carefully instead of automatically deleting them because the same customer can have multiple orders.

### 4. Inconsistent Formatting

I reviewed text and data entries to make the information more consistent. This included checking customer details, categories, cities, states, payment methods, and other fields.

### 5. Text Cleaning

Excel text functions were used to clean and extract information from text fields.

The following functions were practiced:

- TRIM
- CLEAN
- LEFT
- RIGHT
- MID
- FIND
- SUBSTITUTE

These functions helped remove unwanted spaces, clean text, find specific characters, replace text, and extract useful parts of text.

### 6. LEFT, RIGHT, MID and FIND

I used the Order_ID field to practice text extraction.

For example, from an Order_ID such as:

`ORD-1001`

I extracted different parts using LEFT, RIGHT, MID, and FIND.

This helped me understand how text functions can be used for data transformation.

### 7. Date Formatting

Order_Date and Delivery_Date were formatted into a consistent date format:

`dd-mm-yyyy`

This made the date values easier to read and use for further analysis.

### 8. Number and Currency Formatting

Numeric fields were formatted appropriately.

Quantity was kept as a whole number, while Unit_Price and Total_Sales were formatted using number or currency formatting with comma separators and zero decimal places.

Example:

`90,000`

### 9. Data Validation

I reviewed important categorical columns to make sure that the values followed the expected categories and did not contain unnecessary invalid entries.

The validation checks included fields such as Category, Payment_Method, and Customer_Status.

### 10. Sorting

The cleaned dataset was sorted using the Total_Sales column from largest to smallest.

This helped identify the orders with the highest sales values.

### 11. Filtering

Excel filters were used to view specific records without deleting other data.

I practiced filtering the dataset by fields such as:

- Category
- City

After testing the filters, they were cleared to return to the complete dataset.

### 12. Conditional Formatting

Conditional formatting was used to highlight important values automatically.

I practiced:

- Highlighting Total_Sales greater than 100,000
- Highlighting Total_Sales less than 50,000
- Identifying duplicate Email values

This made important patterns and values easier to identify.

## Final Result

After completing the cleaning and transformation process, the dataset was organized into a cleaner and more consistent format.

The cleaned data is easier to read, filter, sort, validate, and use for further analysis.

## Excel Skills Practiced

Through this task, I practiced the following Excel skills:

- Data Cleaning
- Missing Value Handling
- Duplicate Checking
- Text Cleaning
- TRIM
- CLEAN
- LEFT
- RIGHT
- MID
- FIND
- SUBSTITUTE
- Date Formatting
- Number Formatting
- Currency Formatting
- Data Validation
- Sorting
- Filtering
- Conditional Formatting

## Conclusion

This task helped me understand that data analysis starts with good data quality. Before performing calculations or creating reports, it is important to clean the dataset and make sure that the information is consistent and reliable.

Working on this dataset also gave me practical experience with Excel functions and data cleaning techniques that can be used in real-world data analysis projects.
