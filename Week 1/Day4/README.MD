#  Coffee Sales Dashboard – Excel

This project is my Day 4 hands-on task focused on **Pivot Tables, Pivot Charts, and Excel Dashboard basics**. I took a raw coffee shop sales dataset, built pivot tables to summarize it from different angles, and then put together an interactive dashboard on top of it.

##  About the Dataset

The dataset contains **149,116 transactions** collected from 3 different store locations — Astoria, Hell's Kitchen, and Lower Manhattan. Each row includes details like transaction date and time, store location, product category, product type, product detail, size, unit price, quantity sold, and total bill amount. The data also has some helper columns (Month Name, Day Name, Hour, Day of Week) that made it easier to build time-based summaries.

##  What I Did

- Converted the raw data into a proper **Excel Table** so it stays clean and dynamic
- Built multiple **Pivot Tables** to summarize the data by category, product, store location, hour of day, weekday, and order size
- Created **Pivot Charts** to visualize these summaries:
  - Line chart – Quantity ordered across different hours of the day
  - Pie chart – Category-wise % distribution of sales
  - Bar chart – Top 5 products based on sales
  - Pie chart – % distribution of orders by size (Small/Regular/Large)
  - Combo bar chart – Store location wise footfall and total sales
  - Bar chart – Orders distribution across weekdays
- Added **Slicers** (Day Name, Month Name) to make the dashboard interactive, so filtering the data is quick and doesn't require touching the pivot tables directly
- Calculated key **KPIs** such as Total Sales, Total Footfall, Average Bill, and Average Order value

## 📁 File Structure

| Sheet | Description |
|---|---|
| `Sheet1` | Raw transactional data (source table) |
| `Pivot` | All pivot tables and KPI calculations |
| `Dashboard` | Final interactive dashboard with charts and slicers |

##  Objective

The goal of this task was to practice turning a large, raw dataset into clean, visual, and interactive business insights using only native Excel tools — Pivot Tables, Pivot Charts, and Slicers — without relying on any external BI tool. This is part of my ongoing 6-week Data Analytics internship, building up from Excel fundamentals toward more advanced dashboarding and reporting skills.

##  Tools Used

- Microsoft Excel (Pivot Tables, Pivot Charts, Slicers)
