SELECT 
    p.product_category_name, 
    COUNT(r.review_id) AS OneStarReviewCount
FROM treated_order_reviews r
JOIN treated_order_items oi ON r.order_id = oi.order_id
JOIN treated_products p ON oi.product_id = p.product_id
WHERE r.review_score = 1
GROUP BY p.product_category_name
ORDER BY OneStarReviewCount DESC;