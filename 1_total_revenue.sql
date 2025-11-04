SELECT host_id,
   bedrooms,
   SUM(sales * price * host_since) AS total_revenue
FROM airbnb
GROUP BY host_id,
   bedrooms
HAVING SUM(sales * price * host_since) IS NOT NULL
ORDER BY bedrooms DESC;
SELECT city,
   area,
   SUM(sales) AS total_sales
FROM airbnb
GROUP BY city,
   area
ORDER BY total_sales DESC;
-- ===============================
-- 📊 AIRBNB ANALYTICAL SQL QUERIES
-- ===============================
-- 1️⃣ Average Price by City
SELECT city,
   ROUND(AVG(price), 2) AS avg_price
FROM airbnb
GROUP BY city
ORDER BY avg_price DESC;
-- 2️⃣ Top 5 Hosts by Total Revenue
SELECT TOP (5)
   host_id,
   host_name,
   SUM(sales * price) AS total_revenue
FROM airbnb
GROUP BY host_id,
   host_name
ORDER BY total_revenue DESC;
-- 3️⃣ Average Price by Number of Bedrooms
SELECT bedrooms,
   ROUND(AVG(price), 2) AS avg_price,
   COUNT(*) AS total_listings
FROM airbnb
GROUP BY bedrooms
ORDER BY bedrooms;
-- 4️⃣ Total Listings per Area
SELECT area,
   COUNT(id) AS total_listings
FROM airbnb
GROUP BY area
ORDER BY total_listings DESC;
-- 5️⃣ Relationship Between Host Response Rate and Sales
SELECT ROUND(AVG(host_response_rate), 2) AS avg_response_rate,
   ROUND(AVG(sales), 2) AS avg_sales
FROM airbnb;
-- 6️⃣ Most Popular Hosts (by Review Count)
SELECT TOP (10) host_id,
   host_name,
   SUM(total_reviewers_number) AS total_reviews
FROM airbnb
GROUP BY host_id,
   host_name
ORDER BY total_reviews DESC;
-- 7️⃣ Host Experience vs Performance
SELECT host_since,
   ROUND(AVG(sales * price), 2) AS avg_revenue
FROM airbnb
GROUP BY host_since
ORDER BY avg_revenue DESC;
-- 8️⃣ Correlation Between Number of Beds and Price
SELECT beds,
   ROUND(AVG(price), 2) AS avg_price
FROM airbnb
GROUP BY beds
ORDER BY beds;
-- 9️⃣ Average Acceptance and Response Rate by Area
SELECT area,
   ROUND(AVG(host_acceptance_rate), 2) AS avg_acceptance_rate,
   ROUND(AVG(host_response_rate), 2) AS avg_response_rate
FROM airbnb
GROUP BY area
ORDER BY avg_acceptance_rate DESC;
-- 🔟 Total Revenue by Room Type
SELECT room_type,
   SUM(sales * price) AS total_revenue
FROM airbnb
GROUP BY room_type
ORDER BY total_revenue DESC;
-- ===============================