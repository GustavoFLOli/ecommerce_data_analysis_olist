SELECT AVG(DATEDIFF(day, review_creation_date, review_answer_timestamp)) AS AverageResponseTime
FROM treated_order_reviews;