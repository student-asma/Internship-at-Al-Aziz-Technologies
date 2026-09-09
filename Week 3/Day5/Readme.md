
# Day 5 - Weekly Project & Revision

## Overview
This is my Day 5 task for Week 3 of my Data Analytics internship - the final project and revision day. This day was about combining everything from Week 3 (Python fundamentals, NumPy, Pandas, data cleaning, and EDA) into one complete end-to-end pipeline: raw data → cleaned data → statistical analysis → visualizations → business insights.

## What I Did
1. Reviewed all four days of the week (Day 1 to Day 4) to make sure the core concepts were clear before building the final project.
2. Loaded the raw messy sales dataset (14 records) containing missing values, a duplicate row, inconsistent text formatting, mixed date formats, a negative price, and a quantity outlier.
3. Applied the reusable `clean_sales_data()` function built on Day 3 to clean the dataset - handling missing values, removing duplicates, standardizing text, fixing dates, and correcting outliers - resulting in 13 clean records.
4. Saved the cleaned dataset as a separate CSV file so it's available as its own deliverable.
5. Ran descriptive statistics (mean, median, standard deviation, min/max) and a correlation analysis on price, quantity, and total amount.
6. Built three visualizations: a bar chart of total sales by category, a histogram of price distribution, and a correlation heatmap.
7. Wrote up business insights based on the actual statistics and charts rather than just describing what each chart shows.
8. Put together a full documentation report covering the pipeline, cleaning summary, statistics, correlation, visualizations, and business insights.

## Tools Used
- **Python 3**, **Pandas**, **NumPy**, **Matplotlib**, **Seaborn**, in **Jupyter Notebook**.

## Key Business Insights
- Electronics accounts for the large majority of total revenue (~Rs. 380,000) compared to Accessories (~Rs. 19,444), even though Accessories likely has more individual orders.
- Price and quantity show a moderate negative correlation (-0.42) - customers buy cheaper accessories in bulk but purchase expensive electronics one at a time.
- The price distribution is clearly bimodal, with almost nothing between low-cost accessories and high-cost electronics - suggesting a possible gap for a mid-range product tier.
- The raw data needed real cleanup (missing values, a duplicate, a negative price, an outlier quantity) before it could be trusted for analysis, reinforcing that data cleaning is a required first step, not an optional one.

## Files in this folder
- `Week3_Final_Project.ipynb` - the final notebook combining the full pipeline: loading, cleaning, EDA, and visualization.
- `cleaned_sales_data.csv` - the cleaned dataset produced by the pipeline.
- `Week3_Day5_Documentation.docx` - the full write-up covering the cleaning summary, statistics, correlation, visualizations, and business insights.

## Notes
Seeing the whole pipeline work end-to-end - from a genuinely messy CSV file to a set of clear, numbers-backed business insights - was the most satisfying part of Week 3. It made the difference between "knowing pandas syntax" and "actually doing data analysis" much clearer to me.
