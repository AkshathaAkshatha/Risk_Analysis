
select region, employment_status, risk_category,
	COUNT(*) AS Customer_count
from risk_analysis
group by region, employment_status, risk_category
order by region, employment_status, risk_category;

