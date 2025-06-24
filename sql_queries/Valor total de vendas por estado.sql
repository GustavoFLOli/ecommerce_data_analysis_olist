SELECT 
    c.customer_state, 
    SUM(CAST(oi.price AS DECIMAL(10,2))) AS TotalSales
FROM treated_orders o
JOIN treated_order_items oi ON o.order_id = oi.order_id
JOIN treated_customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_state
ORDER BY TotalSales DESC;