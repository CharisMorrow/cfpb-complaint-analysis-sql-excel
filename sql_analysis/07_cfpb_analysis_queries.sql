-- Average resolution time by company analysis
SELECT c.company_name,
       AVG(DATEDIFF(date_closed, date_received)) AS avg_days_to_resolve
FROM complaints comp
JOIN companies c ON comp.company_id = c.company_id
WHERE resolution IS NOT NULL
GROUP BY c.company_name
ORDER BY avg_days_to_resolve;

-- Percentage of complaints resolved with monetary relief analysis
SELECT company_name,
       COUNT(*) AS total,
       SUM(CASE WHEN resolution = 'Closed with monetary relief' THEN 1 ELSE 0 END) AS relief_count,
       ROUND(100 * SUM(CASE WHEN resolution = 'Closed with monetary relief' THEN 1 ELSE 0 END) / COUNT(*), 2) AS relief_pct
FROM complaints comp
JOIN companies c ON comp.company_id = c.company_id
GROUP BY company_name
ORDER BY relief_pct DESC;

-- Companies with the highest unresolved complaint rates analysis
SELECT 
  c.company_name,
  COUNT(*) AS total_complaints,
  SUM(CASE 
        WHEN LOWER(cmp.resolution) = 'in progress' THEN 1 
        ELSE 0 
      END) AS unresolved_complaints,
  ROUND(
    100.0 * SUM(CASE 
                 WHEN LOWER(cmp.resolution) = 'in progress' THEN 1 
                 ELSE 0 
               END) / COUNT(*),
    2
  ) AS unresolved_rate_pct
FROM complaints cmp
JOIN companies c ON cmp.company_id = c.company_id
GROUP BY c.company_name
HAVING COUNT(*) >= 10 -- Optional: filter out companies with few complaints
ORDER BY unresolved_rate_pct DESC
LIMIT 10;

-- Average complaint resolution time by state analysis
SELECT 
  state,
  COUNT(*) AS total_resolved_complaints,
  ROUND(AVG(DATEDIFF(date_closed, date_received)), 1) AS avg_resolution_days
FROM complaints
WHERE date_closed IS NOT NULL
GROUP BY state
HAVING COUNT(*) >= 10 -- optional: filter out states with very few complaints
ORDER BY avg_resolution_days DESC;
