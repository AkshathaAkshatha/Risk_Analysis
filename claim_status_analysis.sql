
SELECT 
    claim_status,
    COUNT(*) AS total_claims,
    ROUND(100.0 * COUNT(*) / SUM(COUNT(*)) OVER(), 2) AS percent_share
FROM risk_analysis
WHERE risk_category IN ('High', 'Very High')  
  AND claim_status IS NOT NULL
GROUP BY claim_status
ORDER BY total_claims DESC;

