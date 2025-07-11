SELECT 
    p.product_category_name, 
    COUNT(oi.order_item_id) AS SalesCount
FROM treated_order_items oi
JOIN treated_products p ON oi.product_id = p.product_id
GROUP BY p.product_category_name
ORDER BY SalesCount DESC;