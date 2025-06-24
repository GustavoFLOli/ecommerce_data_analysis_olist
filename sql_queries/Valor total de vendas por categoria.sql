SELECT 
    p.product_category_name, 
    SUM(CAST(oi.price AS DECIMAL(10,2))) AS TotalSales
FROM treated_order_items oi
JOIN treated_products p ON oi.product_id = p.product_id
GROUP BY p.product_category_name
ORDER BY TotalSales DESC;