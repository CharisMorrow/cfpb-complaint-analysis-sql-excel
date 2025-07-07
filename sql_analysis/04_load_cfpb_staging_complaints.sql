-- Step 7: Create staging table
CREATE TABLE complaints_staging (
  company_name VARCHAR(255),
  product_name VARCHAR(255),
  date_received DATE,
  state CHAR(2),
  complaint_narrative TEXT,
  resolution VARCHAR(255),
  date_closed DATE
);

-- Step 8: Load complaints.csv
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/complaints.csv'
INTO TABLE complaints_staging
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(company_name, product_name, date_received, state, complaint_narrative, resolution, date_closed);
