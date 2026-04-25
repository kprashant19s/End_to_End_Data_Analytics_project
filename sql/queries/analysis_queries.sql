-- ================================================
-- RETAIL ANALYTICS - SQL ANALYSIS QUERIES
-- ================================================

-- 1. Overall Business Performance
SELECT 
    COUNT(*) AS total_orders,
    ROUND(SUM(revenue), 2) AS total_revenue,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(AVG(profit_margin), 2) AS avg_profit_margin
FROM orders_cleaned;

-- 2. Revenue and Profit by Category
SELECT 
    category,
    COUNT(*) AS total_orders,
    ROUND(SUM(revenue), 2) AS total_revenue,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(AVG(profit_margin), 2) AS avg_profit_margin
FROM orders_cleaned
GROUP BY category
ORDER BY total_revenue DESC;

-- 3. Revenue and Profit by Region
SELECT 
    region,
    COUNT(*) AS total_orders,
    ROUND(SUM(revenue), 2) AS total_revenue,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(AVG(profit_margin), 2) AS avg_profit_margin
FROM orders_cleaned
GROUP BY region
ORDER BY total_revenue DESC;

-- 4. Top 5 Most Profitable States
SELECT 
    state,
    COUNT(*) AS total_orders,
    ROUND(SUM(revenue), 2) AS total_revenue,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(AVG(profit_margin), 2) AS avg_profit_margin
FROM orders_cleaned
GROUP BY state
ORDER BY total_profit DESC
LIMIT 5;

-- 5. Unprofitable Orders Analysis
SELECT 
    category,
    sub_category,
    COUNT(*) AS total_orders,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(AVG(discount_percent), 2) AS avg_discount
FROM orders_cleaned
WHERE profit < 0
GROUP BY category, sub_category
ORDER BY total_profit ASC;

-- 6. Monthly Revenue Trend
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    COUNT(*) AS total_orders,
    ROUND(SUM(revenue), 2) AS total_revenue,
    ROUND(SUM(profit), 2) AS total_profit
FROM orders_cleaned
GROUP BY month
ORDER BY month ASC;