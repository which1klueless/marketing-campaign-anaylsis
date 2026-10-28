SELECT campaign_type, COUNT (*) AS total_campaigns, 
SUM(
CASE 
WHEN ROI > 6 THEN 1 ELSE 0 END) AS high_performing,
ROUND (100* COUNTIF(ROI>6) / COUNT(*),2) AS high_performing_pct
FROM `project-7d5a9416-be64-4c48-8f5.marketing_portfolio.campaign performance `
GROUP BY campaign_type
ORDER BY high_performing DESC 
LIMIT 1000;
