# Day 1 – Excel Fundamentals for Data Analysts

## 📌 Overview

Day 1 focused on learning the fundamentals of Microsoft Excel and understanding how Excel can be used for data analysis. I worked with an employee sales performance dataset and performed basic calculations, analysis, and business performance evaluation.

The practical work helped me understand how a Data Analyst can organize data, apply formulas, calculate key metrics, and extract meaningful business insights from a dataset.

---

## 🎯 Learning Objectives

* Understand the role of Excel in Data Analytics
* Understand datasets, rows, columns, and data types
* Work with Excel tables
* Perform basic calculations using Excel formulas
* Understand relative cell references
* Understand absolute cell references
* Calculate business performance metrics
* Summarize data and identify business insights

---

## 📊 Dataset

For the practical task, I worked with an **Employee Sales Performance Dataset** containing **200 employee records**.

### Main Features

* EmployeeID
* EmployeeName
* Department
* Region
* YearsOfExperience
* SalesTarget_PKR
* SalesAchieved_PKR
* AchievementRate_%
* CallsMade
* DealsClosed
* ConversionRate_%
* CustomerRating
* TrainingHours
* PerformanceCategory

---

## 🛠️ Excel Skills Practiced

### 1. Excel Table

I converted the dataset into a structured Excel Table to make the data easier to manage, filter, and analyze.

### 2. Basic Excel Functions

I practiced the following functions:

* `SUM()` – To calculate total sales
* `AVERAGE()` – To calculate average sales
* `MIN()` – To identify the minimum sales value
* `MAX()` – To identify the maximum sales value
* `COUNT()` – To count numerical values
* `COUNTA()` – To count non-empty values

### 3. Basic Arithmetic

I calculated the difference between sales achieved and sales target:

`Sales Difference = Sales Achieved - Sales Target`

This was implemented using:

`=G2-F2`

The formula was copied down the dataset using relative cell references.

### 4. Achievement Rate

I calculated the achievement rate using:

`Sales Achieved ÷ Sales Target`

The calculated achievement rate was added as a separate column named:

`Calculated_Achievement_Rate`

### 5. Relative Cell Reference

I practiced relative cell references using the Sales Difference calculation.

When the formula was copied to the next rows, Excel automatically changed the row references.

For example:

`=G2-F2`

became:

`=G3-F3`

and then:

`=G4-F4`

This helped me understand how relative references work in Excel.

### 6. Absolute Cell Reference

I created a fixed commission rate of **5%** and calculated employee commissions.

The commission rate was stored in cell `S2`.

The formula used was:

`=G2*$S$2`

The `$S$2` reference remained fixed when the formula was copied down.

This helped me understand how absolute cell references can be used when a fixed value needs to be applied to multiple records.

---

## 📈 Day 1 Sales Summary

| Metric                     |          Result |
| -------------------------- | --------------: |
| Total Sales Target         | PKR 182,629,754 |
| Total Sales Achieved       | PKR 168,320,862 |
| Average Sales Achieved     |  PKR 841,604.31 |
| Minimum Sales Achieved     |     PKR 147,887 |
| Maximum Sales Achieved     |   PKR 2,012,232 |
| Number of Employees        |             200 |
| Employee Names Count       |             200 |
| Overall Target Achievement |          92.17% |
| Overall Target Gap         |           7.83% |

---

## 💡 Business Insights

Based on the analysis, I identified the following insights:

1. The dataset contains **200 employee records** that can be analyzed based on sales and performance-related attributes.

2. Total sales achieved were **PKR 168.32 million**, compared with a total sales target of approximately **PKR 182.63 million**.

3. The overall target achievement was approximately **92.17%**, meaning the organization achieved most of its overall sales target.

4. There was an overall sales target gap of approximately **7.83%**, indicating that additional effort would be required to reach the complete sales target.

5. Average sales achieved per employee were approximately **PKR 841,604.31**.

6. Individual sales performance varied significantly, with sales ranging from **PKR 147,887 to PKR 2,012,232**.

---

## 📚 Key Learnings

During Day 1, I learned how Excel can be used as a practical data analytics tool. I learned how to structure a dataset, apply formulas, calculate summary statistics, and analyze business performance.

I also gained a better understanding of the difference between **relative and absolute cell references** and how they can be used when working with formulas across multiple rows.

Most importantly, I learned that data analysis is not only about calculating numbers, but also about using those numbers to identify patterns, measure performance, and generate meaningful business insights.

---

## 📁 Files

* `Day_1_Excel_Fundamentals.xlsx` – Excel dataset, calculations, summary, and analysis
* `README.md` – Day 1 learning summary and business insights

---

## ✅ Day 1 Status

**Completed**

Day 1 successfully covered the fundamentals of Excel for Data Analytics, including data organization, basic formulas, arithmetic calculations, relative and absolute references, data summarization, and business insights.
