# ELEVATEAssignments
🧹 Marketing Campaign Dataset — Data Cleaning & Preprocessing

📄 Overview

This project involves cleaning and preprocessing the **Marketing Campaign dataset** as part of the **Data Analyst Internship (Task 1).
The dataset contains customer demographic and spending information collected by a retail company for campaign analysis.

The main objective was to identify and fix missing values, duplicates, inconsistent formats, and incorrect data types, and prepare the dataset for further analysis.

---

🎯 Objective

* Handle missing values and duplicates
* Standardize text and date formats
* Convert columns to correct data types
* Prepare a clean, analysis-ready dataset

---

📊 About the Dataset

File name: `marketing_campaign.csv`
Rows: 2,240
Columns: 29

| Column                | Description                       | Data Type  |
| --------------------- | --------------------------------- | ---------- |
| `ID`                  | Unique customer ID                | int64      |
| `Year_Birth`          | Year of birth                     | int64      |
| `Education`           | Education level                   | object     |
| `Marital_Status`      | Marital status                    | object     |
| `Income`              | Household income                  | float64    |
| `Kidhome`             | Number of kids in household       | int64      |
| `Teenhome`            | Number of teenagers in household  | int64      |
| `Dt_Customer`         | Date customer enrolled            | datetime64 |
| `Recency`             | Days since last purchase          | int64      |
| `MntWines`            | Amount spent on wine              | int64      |
| `MntFruits`           | Amount spent on fruits            | int64      |
| `MntMeatProducts`     | Amount spent on meat              | int64      |
| `MntFishProducts`     | Amount spent on fish              | int64      |
| `MntSweetProducts`    | Amount spent on sweets            | int64      |
| `MntGoldProds`        | Amount spent on gold/luxury items | int64      |
| `NumDealsPurchases`   | Purchases with discount           | int64      |
| `NumWebPurchases`     | Purchases via website             | int64      |
| `NumCatalogPurchases` | Catalog purchases                 | int64      |
| `NumStorePurchases`   | Store purchases                   | int64      |
| `NumWebVisitsMonth`   | Website visits per month          | int64      |
| `AcceptedCmp1–5`      | Campaign response flags           | int64      |
| `Complain`            | Complaint flag                    | int64      |
| `Z_CostContact`       | Constant cost metadata            | int64      |
| `Z_Revenue`           | Constant revenue metadata         | int64      |
| `Response`            | Overall campaign response         | int64      |

---

🧠 Key Data Cleaning Steps

1. Text-to-Columns: Split data properly using tab (`\t`) delimiter
2. Handled Missing Values:

   * Checked nulls in `Income` and `Education`
   * Filled missing `Income` with median value

3. Removed Duplicates:** Ensured all customer IDs are unique
4. Standardized Text Columns:

   * Capitalized and trimmed `Education` and `Marital_Status`

5. Converted Data Types:

   * `Dt_Customer` → `datetime` (DD-MM-YYYY)
   * All numeric columns → `int` or `float`

6. Renamed Columns:** Lowercased, no spaces, underscore format
7. Sorted Data: By `Recency` for customer engagement analysis
8. Added Highlighting: Conditional formatting on `Recency` to visualize active vs inactive customers

---

📈 Analytical Insights (Optional Add-On)

* Low `Recency` → Recently active customers
* High `Income` + Low `Recency` → Premium active segment
* High `MntWines` & `MntMeatProducts`→ High-value spenders

---

🧰 Tools Used

* Microsoft Excel — Text to Columns, Conditional Formatting, Data Cleaning
* GitHub — Task submission and documentation

---

💾 Deliverables

`marketing_campaign_cleaned.csv` — Cleaned dataset
README.md` — Documentation (this file)

---

📚 Learning Outcomes

✔ Identified and resolved data quality issues
✔ Improved dataset consistency and usability
✔ Gained practical experience in Excel 
✔ Prepared dataset for further analysis and visualization

---

🧑‍💻 Prepared By

Name: Faisal Akbar Talukdar
Task: Data Analyst Internship – Task 1 (Data Cleaning & Preprocessing)
Submission: via GitHub Repository

