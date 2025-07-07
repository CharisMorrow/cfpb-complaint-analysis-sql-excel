-- Step 10: Join with reference tables for readable analysis
SELECT
  cmp.complaint_id,
  c.company_name,
  p.product_name,
  cmp.state,
  cmp.resolution,
  cmp.date_received,
  cmp.date_closed
FROM complaints cmp
JOIN companies c ON cmp.company_id = c.company_id
JOIN products p ON cmp.product_id = p.product_id
LIMIT 10;
