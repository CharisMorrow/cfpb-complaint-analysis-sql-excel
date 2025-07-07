# Consumer Complaint Data Analysis – MySQL & Excel Project

This portfolio project demonstrates how the [Consumer Financial Protection Bureau (CFPB)](https://www.consumerfinance.gov/data-research/consumer-complaints/) complaint dataset can be analyzed using both **MySQL** and **Excel**. It showcases data modeling, cleaning, querying, and dashboarding skills to extract and present insights about complaint resolution trends across companies and products.

This project includes structured MySQL code for database setup, CSV data loading, and SQL queries to analyze metrics such as **average resolution time**, **monetary relief percentages**, and **unresolved complaint rates**. The Excel dashboard visualizes complaint trends by **year** and **product** using PivotTables and PivotCharts, each with built-in **company level filtering**. The dashboard also includes **two slicers** to enhance interactivity.

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
  - Slicer 1: Company  
  - Slicer 2: Product

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
4. Use the slicers to enhance the interactivity of your analysis by company and product.

---

## 👤 Author

**Charis Morrow**  
Data Analytics Professional 
[GitHub](https://github.com/CharisMorrow))



