/*
Динамика продаж по месяцам - изменение выручки помесячно
Ценность: Выявить сезонность и точки роста/падения

Результат: 
- первый день месяца
- общая выручка (total_amount)
- количество транзакций
- количество проданных единиц
- средний чек

Внимание: прибыль отсутствует в данных, только выручка
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