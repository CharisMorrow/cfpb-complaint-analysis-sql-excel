# Consumer Complaint Data Analysis – MySQL & Excel Project

This portfolio project demonstrates how the [Consumer Financial Protection Bureau (CFPB)](https://www.consumerfinance.gov/data-research/consumer-complaints/) complaint dataset can be analyzed using both **MySQL** and **Excel**. It showcases data modeling, cleaning, querying, and dashboarding skills to extract and present insights about complaint resolution trends across companies and products.

This project includes structured MySQL code for database setup, CSV data loading, and SQL queries to analyze metrics such as **average resolution time**, **monetary relief percentages**, and **unresolved complaint rates**. The Excel dashboard visualizes complaint trends by **year** and **product** using PivotTables and charts, each with built-in **company level filtering**. The dashboard also includes **two slicers** to enhance interactivity.

---

## 📦 Data Sampling & Insights
**Data Format:** CSV  
**Initial Download:** ~100k–200k rows filtered from the full dataset

### 📋 Filtering Criteria:
- `date_received` between **2022 and 2025**
- `product` includes:
  - Checking or savings account
  - Credit card
  - Mortgage  
- Top 20 companies by complaint volume retained
**Data Range:** 2022–2025  
**Final Sample Used:** 1,813 complaints (cleaned and prepared for SQL analysis)

### 🔍 Key Insights:
- **Mr. Cooper Group Inc.** experienced the longest average resolution time at around **2 days**, indicating potential regional delays or process gaps.
- **Bread Financial Holdings, Inc.** had the highest monetary relief rate at **44%**, suggesting a resolution approach that emphasizes direct financial compensation.
- **Capital One Financial Corporation** had the highest unresolved complaint rate with **5 unresolved complaints out of 113 total** (4% unresolved rate).
- **Minnesota** reported the highest average complaint resolution time among all states at **2 days**, based on 24 resolved complaints.

---

## 🐬 MySQL Project Overview

The MySQL portion of this project includes a complete pipeline to structure, clean, and analyze complaint data.

### ✅ Steps Included:
- **Step 1:** Create and select the project database  
- **Step 2:** Create the `companies` table  
- **Step 3:** Create the `products` table  
- **Step 4:** Create the `complaints` table  
- **Step 5:** Load `companies.csv`  
- **Step 6:** Load `products.csv`  
- **Step 7:** Create a staging table for raw complaints  
- **Step 8:** Load `complaints.csv`  
- **Step 9:** Insert records with foreign key mapping  
- **Step 10:** Join with reference tables for readable outputs  

### 📊 SQL Analysis Includes:
- Average resolution time by company  
- Percentage of complaints resolved with monetary relief  
- Companies with highest unresolved complaint rates  
- Average resolution time by state

---

## 📈 Excel Dashboard Overview

The Excel dashboard provides a visual summary of complaint resolution trends with interactivity.

### Dashboard Features:
- **Pivot Table + Chart 1:** Complaint resolution by **year** with a filter for **company**
- **Pivot Table + Chart 2:** Complaint resolution by **product** with a filter for **company**
- **Slicers:**
  - Slicer 1: Year 
  - Slicer 2: Product

---

## 📂 Data Folder

The `data/` folder contains the cleaned complaint dataset used in the MySQL portion of this project.

- `cfpb_complaints_data_mysql.csv`: Cleaned and filtered dataset for SQL analysis, prepared for import into a MySQL database. Includes key fields such as `company_name`, `product_name`, `date_received`,  `state`, `complaint_narrative`, `resolution`, and `date_closed`.
> 📌 Note: GitHub does not preview the full `cfpb_complaints_data_mysql.csv` file due to size limits, but it can still be downloaded and used for SQL analysis.

---

## 📂 Analysis Results

The `analysis_results/` folder includes an Excel file summarizing the output of SQL queries used in this project.

- `cfpb_sql_analysis_results.xlsx`: Formatted workbook with individual worksheets for each analysis, including:
  - Average resolution time by company
  - Percentage of complaints resolved with monetary relief
  - Unresolved complaint rates by company
  - Average resolution time by state

---

## 💡 Skills Demonstrated

- SQL database design & normalization  
- CSV data loading and transformation  
- Foreign key mapping and relational joins  
- Exploratory and aggregate SQL analysis  
- Excel dashboard development with PivotTables, PivotCharts, and slicers  
- Cross-tool integration using a shared dataset  

---

## 📎 Dataset Source

[Consumer Financial Protection Bureau (CFPB) – Consumer Complaint Database](https://www.consumerfinance.gov/data-research/consumer-complaints/)

---

## 🔗 How to Use This Project

1. Clone the repository to your local machine.
2. Run the SQL scripts in MySQL Workbench or your preferred SQL environment in the order listed above.
3. Open the Excel file to explore the dashboard and use the filters to view complaint trends.
4. Use the slicers to enhance the interactivity of your analysis by year and product.

---

## 👤 Author

**Charis Morrow**  
Data Analytics Professional 
[GitHub](https://github.com/CharisMorrow))



