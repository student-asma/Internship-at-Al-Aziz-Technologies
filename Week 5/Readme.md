# Day 1 - Advanced DAX

## Overview
This is my Day 1 task for Week 5 of my Data Analytics internship. Moving beyond the basic measures from Week 4, this day focused on advanced DAX concepts - evaluation context, advanced filter functions, and iterator functions - applied to a full e-commerce sales analytics dashboard.

## What I Learned
- **DAX evaluation context** - the idea that a DAX expression's result depends on the current row context and filter context, not just the formula itself.
- **Row context** - the context that exists when a formula is evaluated row by row (relevant for calculated columns and iterator functions).
- **Filter context** - the set of filters currently applied to a calculation, coming from slicers, visuals, or CALCULATE itself.
- **CALCULATE and FILTER** - modifying the filter context to evaluate a measure under specific conditions.
- **ALL** - removing filters from a table or column entirely, useful for calculating a grand total that ignores slicers.
- **ALLEXCEPT** - removing all filters except the ones specified, useful for subtotal-style calculations.
- **REMOVEFILTERS** - a clearer, more modern alternative to ALL for explicitly clearing filters from specific columns.
- **VALUES** - returning the distinct values currently visible in a column under the current filter context.
- **SELECTEDVALUE** - returning a single selected value from a slicer (or blank/default if multiple values are selected).
- **RELATED** - pulling a value from a related table across a relationship, useful inside calculated columns.
- **SUMX, AVERAGEX, COUNTX** - iterator functions that evaluate an expression row by row before aggregating, giving more control than simple SUM/AVERAGE/COUNT.
- **Ranking** - using functions like RANKX to rank items (e.g. products) against each other dynamically.
- **Dynamic calculations** - measures that automatically respond to whatever filters or slicers the user applies.
- **Advanced KPI measures** - combining these techniques into meaningful business metrics like average order value and coupon usage rate.

## Tools Used
- **Power BI Desktop** (Advanced DAX, Report view)

## What I Did
1. Built an e-commerce sales analytics dashboard using advanced DAX measures on top of the dataset (orders, products, payment methods, coupons, referral sources, and order status).
2. Created top-level KPI cards: Total Revenue, Total Orders, Total Customers, and Average Order Value.
3. Built product-level analysis: Orders by Product, Revenue by Product, and Quantity Sold by Product as bar charts.
4. Built categorical breakdowns as donut charts: Orders by Status, Payment Method Distribution, Referral Source Distribution, and Coupon Usage.
5. Built a Monthly Revenue Trend line chart covering the full data period (Jan 2023 - Jun 2026).
6. Built an Items in Cart Distribution bar chart showing order counts by cart size.
7. Added a filter panel (Month, Product, Payment Method, Order Status, Coupon Code, Referral Source) so every visual on the dashboard responds dynamically to the selected filters.

## Files in this folder
- `Day1_Advanced_DAX_Dashboard.pbix` - the Power BI file with the advanced DAX measures and the full e-commerce dashboard.

## Notes
Building the KPI and distribution measures for this dashboard made the difference between basic and advanced DAX clear - a basic SUM works fine until you need something that responds correctly to every possible filter combination the slicers can produce, which is where CALCULATE, ALL, and the X-iterator functions actually become necessary rather than optional.
