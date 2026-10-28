WITH enriched_campaign_performance AS (
SELECT 
COUNT(campaign_type) AS campaign_record,
EXTRACT (MONTH FROM Date) AS Month,
Extract (Year From Date) AS Year,
ROUND (AVG(ROI),4) AS avg_roi,
FROM `project-7d5a9416-be64-4c48-8f5.marketing_portfolio.campaign performance `
GROUP BY Year, Month)
SELECT Month, Year, campaign_record, avg_roi
FROM enriched_campaign_performance
Order By avg_roi DESC
LIMIT 3;
