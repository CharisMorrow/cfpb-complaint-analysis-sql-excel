-- Step 9: Insert with foreign key mapping
INSERT INTO complaints (
  company_id,
  product_id,
  date_received,
  state,
  complaint_narrative,
  resolution,
  date_closed
)
SELECT
  c.company_id,
  p.product_id,
  cs.date_received,
  cs.state,
  cs.complaint_narrative,
  cs.resolution,
  cs.date_closed
FROM complaints_staging cs
JOIN companies c ON cs.company_name = c.company_name
JOIN products p ON cs.product_name = p.product_name;
