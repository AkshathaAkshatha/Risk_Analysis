
SELECT 
    claim_type,
    employment_status,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN default_history = 1 THEN 1 ELSE 0 END) AS total_defaults,
    ROUND(SUM(CASE WHEN default_history = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS default_rate_percent
FROM risk_analysis
WHERE claim_type IS NOT NULL
GROUP BY claim_type, employment_status
ORDER BY default_rate_percent DESC;

