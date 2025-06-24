SELECT 
    CASE 
        WHEN s.seller_state LIKE '%rio de janeiro%' THEN 'RJ'
        WHEN s.seller_state LIKE '%rio grande do sul%' THEN 'RS'
        ELSE s.seller_state
    END AS seller_state,
    AVG(DATEDIFF(day, o.order_purchase_timestamp, o.order_delivered_customer_date)) AS AvgDeliveryTime
FROM treated_orders o
JOIN treated_order_items oi ON o.order_id = oi.order_id
JOIN treated_sellers s ON oi.seller_id = s.seller_id
WHERE o.order_delivered_customer_date >= o.order_purchase_timestamp
GROUP BY 
    CASE 
        WHEN s.seller_state LIKE '%rio de janeiro%' THEN 'RJ'
        WHEN s.seller_state LIKE '%rio grande do sul%' THEN 'RS'
        ELSE s.seller_state
    END
ORDER BY AvgDeliveryTime;