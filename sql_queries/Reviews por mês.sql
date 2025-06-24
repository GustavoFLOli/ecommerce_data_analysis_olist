SELECT YEAR(review_creation_date) AS Year, MONTH(review_creation_date) AS Month, COUNT(*) AS ReviewCount
FROM treated_order_reviews
GROUP BY YEAR(review_creation_date), MONTH(review_creation_date)
ORDER BY Year, Month;