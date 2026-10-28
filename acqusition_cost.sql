SELECT campaign_type, 
SUM(Acquisition_Cost) AS total_acq
FROM `project-7d5a9416-be64-4c48-8f5.marketing_portfolio.campaign performance ` 
GROUP BY campaign_type
ORDER BY total_acq DESC
LIMIT 3;
