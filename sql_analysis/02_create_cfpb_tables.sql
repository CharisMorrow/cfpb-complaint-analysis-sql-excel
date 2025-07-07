-- Step 2: Create the 'companies' table
CREATE TABLE IF NOT EXISTS companies (
	company_id INT AUTO_INCREMENT PRIMARY KEY,
    company_name VARCHAR(255) NOT NULL UNIQUE
);

-- Step 3: Create the 'products' table
CREATE TABLE IF NOT EXISTS products (
	product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL UNIQUE
);

-- Step 4: Create the 'complaints' table
CREATE TABLE IF NOT EXISTS complaints (
	complaint_id INT AUTO_INCREMENT PRIMARY KEY,
    company_id INT NOT NULL,
    product_id INT NOT NULL,
    date_received DATE,
    state CHAR(2),
    complaint_narrative TEXT,
    resolution VARCHAR(255),
    date_closed DATE,
    FOREIGN KEY (company_id) REFERENCES companies(company_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
