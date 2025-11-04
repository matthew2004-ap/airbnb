# Airbnb SQL Queries

Overview
- Collection of analytical SQL queries for an Airbnb dataset.  
- Designed primarily for SQL Server (T-SQL). Some queries use TOP(...) syntax; convert to LIMIT for other engines.

Repository files
- `1_total_revenue.sql` — main SQL script containing multiple analytical queries (see "Queries" below).

Queries (contained in 1_total_revenue.sql)
1. Average Price by City — average price per city (rounded to 2 decimals).
2. Top 5 Hosts by Total Revenue — top hosts by SUM(sales * price).
3. Average Price by Number of Bedrooms — average price and listing count per bedroom count.
4. Total Listings per Area — total listing count grouped by area.
5. Relationship Between Host Response Rate and Sales — average host response rate and average sales.
6. Most Popular Hosts (by Review Count) — top hosts by total reviewers.
7. Host Experience vs Performance — average revenue by host_since (experience).
8. Correlation Between Number of Beds and Price — average price by number of beds.
9. Average Acceptance and Response Rate by Area — average host acceptance and response rates per area.
10. Total Revenue by Room Type — total revenue per room type.

Additional ad-hoc queries
- The file also includes other SELECTs that compute aggregate totals (e.g., total_revenue per host/bedrooms and total_sales per city/area).

Expected schema (columns referenced)
- id, city, area, price, sales, host_id, host_name, host_since, host_response_rate, host_acceptance_rate, total_reviewers_number, beds, bedrooms, room_type

Prerequisites
- A populated `airbnb` table with the expected columns.
- SQL Server / T-SQL environment recommended. For other DB engines:
  - Replace TOP(n) with LIMIT n.
  - Adjust date and casting functions as needed.

Notes & recommendations
- Verify data types: `host_since` is sometimes a date; multiply only if it is numeric or convert appropriately.
- Handle NULLs explicitly where needed (e.g., COALESCE) to avoid surprising aggregates.
- Add indexes on frequently grouped columns (host_id, city, area, room_type) for large datasets.
- Review rounding and numeric types to ensure precision requirements.

How to run
- Open `1_total_revenue.sql` in SQL Server Management Studio (SSMS) or a compatible client and execute.
- Or run via command line (sqlcmd) against your SQL Server instance.

Contributing
- Submit issues or pull requests with improvements or new queries. Keep queries documented and idempotent.

License
- Add a LICENSE file if required for your project.