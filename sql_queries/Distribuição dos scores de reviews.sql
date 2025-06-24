SELECT review_score, COUNT(*) AS ScoreCount
FROM treated_order_reviews
GROUP BY review_score;