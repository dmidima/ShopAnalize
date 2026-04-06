WITH customer_categories AS (
    SELECT 
        customer_id,
        product_category,
        COUNT(*) AS purchase_count,
        SUM(total_amount) AS total_spent
    FROM retail_transactions
    GROUP BY customer_id, product_category
)
SELECT 
    c1.product_category AS category_1,
    c2.product_category AS category_2,
    COUNT(DISTINCT c1.customer_id) AS common_customers,
    ROUND(AVG(c1.total_spent), 2) AS avg_spent_on_c1,
    ROUND(AVG(c2.total_spent), 2) AS avg_spent_on_c2
FROM customer_categories c1
JOIN customer_categories c2 ON c1.customer_id = c2.customer_id
WHERE c1.product_category < c2.product_category
GROUP BY c1.product_category, c2.product_category
ORDER BY common_customers DESC
LIMIT 10;