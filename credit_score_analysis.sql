
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

