# Risk_Analysis
This dashboard provides a comprehensive risk analysis of customers based on credit scores, defaults, claims history, employment status, and regional distribution. The observations below summarize the key insights derived from each visualization.

Phase 1: Python
- please refer to the link Master_Project_Risk_Analysis_aks2.ipynb

Phase 2: SQL
- please refer to the link Risk_analysis.sql

Phase 1: Visualization
- please refer to the link risk_analysis_dashboard.pbix

Observations & Conclutions
- Average Credit Score
The overall average is 573, which is below the safe threshold of 650+. This indicates a medium-to-high risk portfolio.

- Default Rate
About 10% of customers have defaulted, suggesting a notable credit risk exposure.

- Claim Approval Rate
Only one-third of claims are approved, which may indicate high fraud attempts, strict claim policies, or inadequate documentation.

- Regional Risk Distribution
Risk is balanced across all regions, though Central and East show slightly higher risk levels.

- Risk Score vs Default History
Higher risk scores align with higher defaults, validating the effectiveness of the risk scoring model.

- Risk Category vs Credit Score
Customers with lower credit scores are mainly classified as High/Very High risk, while those above 650 trends towards Low/Medium risk.

- Risk Distribution WRT Customers
Most customers fall into Medium (34.6%) and High Risk (35.8%) categories, while only 13% are Low Risk.

- Risk Category vs Employment Status
Unemployed, Retired, and Students show higher default risks compared to Employed or Self-Employed customers.

- Time-Series of Claim Types
Claims of all types are increasing over time, with Theft and Natural Disaster claims rising fastest.
<img width="1371" height="865" alt="image" src="https://github.com/user-attachments/assets/620a6cae-e616-4b33-857e-cfc5c461b3b0" />


Summary
The customer base leans heavily towards higher-risk categories, with a significant default rate and low claim approvals. This suggests a need for stricter loan approval criteria, improved fraud detection, and credit improvement programs.
