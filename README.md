# SQL + Python Analytics Pipeline

Business analytics pipeline combining SQL queries and Python for extracting, transforming, and visualizing insights from relational databases.

## Project Overview
This project demonstrates how SQL and Python work together in a real analytics workflow. SQL handles data extraction and transformation from relational databases, while Python (Pandas + Plotly) handles advanced analysis and interactive visualization.

## How SQL and Python are Combined
1. **SQL** — Write optimized queries for aggregations, joins, and filtering (`/queries/`)
2. **Python** — Read query results into Pandas DataFrames for further analysis (`/notebooks/`)
3. **Plotly** — Build interactive charts and dashboards from the processed data

## Sample Queries
- `revenue_by_category.sql` — Monthly revenue breakdown by product category
- `customer_cohort.sql` — Customer retention cohort analysis
- `top_products.sql` — Top-selling products with YoY growth

## Visualizations
> _Interactive Plotly charts to be added after analysis._

## Getting Started
```bash
git clone https://github.com/Ahmed-Na7rawy/sql-python-analytics.git
cd sql-python-analytics
pip install -r requirements.txt
jupyter notebook
```
