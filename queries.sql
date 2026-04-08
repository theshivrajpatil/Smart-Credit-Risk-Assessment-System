-- 1. Total Customers
SELECT COUNT(*) AS total_customers
FROM credit_data;

-- 2. Total Defaulters
SELECT COUNT(*) AS total_defaulters
FROM credit_data
WHERE target = 1;

-- 3. Default Rate
SELECT 
    COUNT(CASE WHEN target = 1 THEN 1 END) * 1.0 / COUNT(*) AS default_rate
FROM credit_data;

-- 4. Risk Distribution (Actual)
SELECT risk_level, COUNT(*) AS count
FROM credit_data
GROUP BY risk_level;

-- 5. Predicted Risk Distribution
SELECT predicted_risk, COUNT(*) AS count
FROM credit_data
GROUP BY predicted_risk;

-- 6. Average Credit Limit by Risk
SELECT risk_level, AVG(limit_bal) AS avg_credit_limit
FROM credit_data
GROUP BY risk_level;

-- 7. Age vs Default
SELECT target, AVG(age) AS avg_age
FROM credit_data
GROUP BY target;

-- 8. Payment Behavior Analysis
SELECT pay_0, COUNT(*) AS count
FROM credit_data
GROUP BY pay_0
ORDER BY pay_0;