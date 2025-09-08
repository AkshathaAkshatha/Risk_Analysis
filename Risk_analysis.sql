USE risk_analysis;

select region, employment_status, risk_category,
	COUNT(*) AS Customer_count
from risk_analysis
group by region, employment_status, risk_category
order by region, employment_status, risk_category;

SELECT 
    CASE
        WHEN credit_score BETWEEN 300 AND 579 THEN 'Poor'
        WHEN credit_score BETWEEN 580 AND 669 THEN 'Fair'
        WHEN credit_score BETWEEN 670 AND 739 THEN 'Good'
        WHEN credit_score BETWEEN 740 AND 799 THEN 'Very Good'
        WHEN credit_score >= 800 THEN 'Excellent'
        ELSE 'Unknown'
    END AS credit_score_band,
 AVG(loan_amount) AS avg_loan_amount,
    AVG(claim_amount) AS avg_claim_amount,
    COUNT(*) AS total_customers
    FROM risk_analysis
GROUP BY credit_score_band
ORDER BY FIELD(credit_score_band, 'Poor','Fair','Good','Very Good','Excellent','Unknown');

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

SELECT 
    claim_status,
    COUNT(*) AS total_claims,
    ROUND(100.0 * COUNT(*) / SUM(COUNT(*)) OVER(), 2) AS percent_share
FROM risk_analysis
WHERE risk_category IN ('High', 'Very High')  
  AND claim_status IS NOT NULL
GROUP BY claim_status
ORDER BY total_claims DESC;

