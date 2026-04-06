/*
Топ-2 убыточных категории (с падением к предыдущему месяцу)
Ценность: Найти категории, которые просели по выручке
*/

WITH monthly_category AS (
    SELECT 
        product_category,
        DATE_TRUNC('month', date) AS month,
        SUM(total_amount) AS revenue,
        COUNT(DISTINCT transaction_id) AS transactions_count,
        SUM(quantity) AS items_sold
    FROM retail_transactions
    GROUP BY product_category, month
),
category_with_lag AS (
    SELECT 
        product_category,
        month,
        revenue,
        LAG(revenue) OVER (PARTITION BY product_category ORDER BY month) AS prev_month_revenue,
        transactions_count,
        LAG(transactions_count) OVER (PARTITION BY product_category ORDER BY month) AS prev_month_transactions
    FROM monthly_category
)
SELECT 
    product_category,
    month,
    revenue,
    prev_month_revenue,
    ROUND(
        COALESCE((revenue - prev_month_revenue) / NULLIF(prev_month_revenue, 0) * 100, 0), 
        2
    ) AS growth_percent,
    transactions_count,
    prev_month_transactions,
    -- Флаг "убыточная категория" (падение больше 10%)
    CASE 
        WHEN (revenue - prev_month_revenue) / NULLIF(prev_month_revenue, 0) * 100 < -10 
        THEN 'CRITICAL_DROP'
        WHEN (revenue - prev_month_revenue) / NULLIF(prev_month_revenue, 0) * 100 < 0 
        THEN 'DROP'
        ELSE 'OK'
    END AS status
FROM category_with_lag
WHERE prev_month_revenue IS NOT NULL  -- Отсекаем первый месяц, где нет предыдущего
ORDER BY growth_percent ASC  -- Самые упавшие
LIMIT 5;  -- Только 5 самых убыточных