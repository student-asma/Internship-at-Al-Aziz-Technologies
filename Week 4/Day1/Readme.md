# Day 1 - Power BI Fundamentals

## Overview
This is my Day 1 task for Week 4 of my Data Analytics internship. After working with SQL in Week 2 and Python in Week 3, this week moves to Power BI - a business intelligence tool where the analysis and visualization happen through a visual interface instead of code.

## What I Learned
- **What Power BI is** - a business intelligence tool used to connect to data sources, transform data, and build interactive reports and dashboards that business users can explore themselves.
- **Business Intelligence concepts** - the idea of turning raw operational data into visual, decision-ready information for a business.
- **Power BI Desktop vs Power BI Service** - Desktop is the Windows application where reports are actually built, while the Service is the browser-based platform (app.powerbi.com) where reports are published, shared, and viewed by others.
- **Importing data** - using `Get Data` to connect to different sources, including Excel files, CSV/Text files, and SQL databases, all through the same interface.
- **Data types** - how Power BI automatically detects each column's type (text, number, date) and how to correct it using Column tools when the detection is wrong.
- **The Power BI interface** and its three main views:
  - **Report view** - where visuals are placed and reports are designed
  - **Data view** - where the underlying table can be seen in a spreadsheet-like format
  - **Model view** - where relationships between tables are managed
- **Basic visuals** - bar charts, cards (for single summary numbers), and tables.
- **Filters** - narrowing down what a specific visual displays using the Filters panel.
- **Slicers** - on-canvas filter controls that let the report viewer filter every visual on the page at once, which is what makes a Power BI report interactive rather than static.

## Tools Used
- **Power BI Desktop**

## What I Did
1. Installed and opened Power BI Desktop and explored the `Get Data` options to see the range of supported sources (Excel, CSV, SQL Server, Web, and more).
2. Imported a business sales dataset (120 records containing order, customer, city, region, product, category, quantity, price, date, and total amount fields) from a CSV file.
3. Checked each column's detected data type in the Fields panel and confirmed the date column was correctly recognized as a date rather than text.
4. Explored the three main views (Report, Data, and Model) to understand what each one is used for.
5. Built a bar chart showing total sales by product category.
6. Added a Card visual displaying overall total sales as a single headline number.
7. Added a Table visual showing customer, city, product, and total amount together.
8. Added a Slicer on the Region field so the whole report page can be filtered interactively by region.
9. Applied a visual-level filter through the Filters panel to see how it differs from a slicer (one affects a single visual, the other affects the whole page).

## Files in this folder
- `Day1_PowerBI_Fundamentals.pbix` - the Power BI report file containing the imported dataset and all visuals built for this task.
- `business_sales_data.csv` - the business dataset imported into the report.

## Notes
Coming from SQL and Python, the biggest shift was that in Power BI the work happens through the interface rather than through written queries. The part that stood out most was how a single slicer instantly filters every visual on the page - that kind of built-in interactivity would take a lot of extra work to build manually in Python.
