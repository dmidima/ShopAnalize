/*
Динамика продаж по месяцам - изменение выручки помесячно
Ценность: Выявить сезонность и точки роста/падения

Результат: 
- первый день месяца
- общая выручка
- количество транзакций
- количество проданных единиц
- средний чек
*/

SELECT 
    DATE_TRUNC('month', date) AS month,
    SUM(total_amount) AS revenue,
    COUNT(DISTINCT transaction_id) AS transactions_count,
    SUM(quantity) AS items_sold,
    ROUND(AVG(total_amount), 2) AS avg_check
FROM retail_transactions
GROUP BY month
ORDER BY month;