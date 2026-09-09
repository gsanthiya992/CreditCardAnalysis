create database credit_analysis;
use credit_analysis;

-- Task 1: Count how many customers you have
SELECT COUNT(*) AS total_customers FROM customer_detailssss;

-- Task 2: List customers from one city
SELECT full_name, city, email
FROM customer_detailssss
WHERE city = 'Bengaluru';

-- Task 3: Total amount of all transactions
SELECT SUM(amount) AS total_transaction_amount
FROM transaction_detailsss;

-- Task 4: Count complaints by severity
SELECT severity, COUNT(*) AS complaint_count
FROM complaint_quality
GROUP BY severity;

SHOW TABLES;
-- Task 5: Count fraud flags by resolution status
SELECT resolved, COUNT(*) AS flag_count
FROM fraud_flags
GROUP BY resolved;

-- Task 6: List risky merchants in a given state
SELECT merchant_id, category, city, risk_score
FROM merchant_detailssss
WHERE is_flagged_risky = 'Yes' AND state = 'Tamil Nadu';

-- Task 7: Average review rating per channel
SELECT channel, AVG(rating) AS avg_rating
FROM customer_reviewsss
GROUP BY channel;

-- Task 8: Count complaints by severity level
SELECT severity, COUNT(*) AS complaint_count
FROM complaint_quality
GROUP BY severity
ORDER BY complaint_count DESC;

-- Task 9: Billing month with highest due amount
SELECT billing_month, due_amount
FROM payment_duesss
ORDER BY due_amount DESC
LIMIT 1;

-- Task 10: Count customers by gender
SELECT gender, COUNT(*) AS customer_count
FROM customer_detailssss
GROUP BY gender;