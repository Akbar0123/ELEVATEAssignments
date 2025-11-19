# 📘 **README.md — BMW Sales Dashboard (2010–2024)**

## 📊 **Overview**

This project presents an interactive **Power BI dashboard** analyzing BMW vehicle sales from **2010 to 2024**.
It includes KPIs, trend analysis, model-level insights, revenue contribution, sales classification, and region-based performance.

This dashboard is created as part of **Task 4: Dashboard Design — Data Analyst Internship Assignment**.

---

## 📁 **Dataset Description**

The dataset contains **50,000+ BMW sales records**, with the following fields:

* **Year**
* **Model** (3 Series, 5 Series, 7 Series, i3, i8, M Series, X Series, etc.)
* **Engine_Size_L**
* **Mileage_KM**
* **Price_USD** (per-unit selling price)
* **Sales_Volume** (number of units sold)
* **Sales_Classification** (High / Low pricing category)
* **Region**

---

## 🏷️ **Key KPIs (Summary)**

| KPI                  | Value     | Meaning                                                    |
| -------------------- | --------- | ---------------------------------------------------------- |
| **Total Units Sold** | 253M+     | Total vehicles sold from 2010–2024                         |
| **Total Revenue**    | 19T+ USD* | Total revenue (calculated using model-level revenue logic) |
| **YoY Growth %**     | 7.23%     | Year-over-year sales growth                                |
| **Average Price**    | ~75K USD  | Average per-unit selling price                             |

> *Revenue derived from:
> **Total Revenue = Price_USD × Sales_Volume**, aggregated across all models and years.*

---

## 📈 **Dashboard Features**

The Power BI dashboard includes:

### ✅ **1. Sales Trend (2010–2024)**

* Yearly trend for **Sales Volume** and **Revenue**
* YoY growth indicators
* Shows upward trend with notable changes between 2020–2024

### ✅ **2. Model Performance**

* Total sales by model (3 Series, 5 Series, 7 Series, X Series, M Series, i-Series)
* Visual comparison using bar charts
* Helps identify **top-selling** and **low-performing** models

### ✅ **3. Classification Analysis**

* Breakdown of sales under **High** vs **Low pricing classification**
* Revenue comparison per classification
* Shows how price segment impacts total sales

### ✅ **4. Revenue by Region**

* Regional revenue contribution analyzed using a map visual
* Regions include: Europe, South America, North America, Middle East, Africa, Asia
* Helps understand geographic performance

### ✅ **5. Detailed Data Table**

* Includes model, engine size, mileage, price, sales volume, classification, and yearly revenue
* Useful for drill-down insights

---

## 🧮 **DAX Measures Used**

Below are some core DAX measures used in the report:

```DAX
Total Units Sold = SUM(Sales_BMW[Sales_Volume])

Total Revenue =
SUMX(
    Sales_BMW,
    Sales_BMW[Price_USD] * Sales_BMW[Sales_Volume]
)

Average Price = DIVIDE([Total Revenue], [Total Units Sold])

YoY % =
VAR CurrYear = MAX(Sales_BMW[Year])
VAR PrevYear = CurrYear - 1
VAR CurrValue = CALCULATE([Total Revenue], Sales_BMW[Year] = CurrYear)
VAR PrevValue = CALCULATE([Total Revenue], Sales_BMW[Year] = PrevYear)
RETURN IF(NOT ISBLANK(PrevValue), DIVIDE(CurrValue - PrevValue, PrevValue))
```

---

## 🎨 **Design Choices**

* BMW-inspired **blue, white, gray** theme
* Clean KPI strip at top
* Separate pages for **Trend**, **Model**, **Region**, and **Details**
* Slicers for **Model**, **Year**, **Region**, **Classification**

---

## 📌 **Insights Extracted**

Key analytical findings:

* BMW experienced **steady sales growth** across most years, especially post-2016.
* The **3 Series** and **7 Series** dominated unit sales across multiple years.
* High-priced segment (High) generated significantly more **revenue**, even with lower unit volume.
* **Europe** showed strong performance with higher average prices.
* Newer electric models (i3, i8) showed increasing adoption but lower sales volume than classic series.

---

## ▶️ **How to Use the Dashboard**

1. Download **Power BI Desktop**.
2. Open the file:

   ```
   Dashboard BMW Sales.pbix
   ```
3. Use slicers (Model, Year, Region) to explore trends.
4. Drill into:

   * Model trends
   * Regional performance
   * Classification-based insights

---

## 📦 **Repository Structure**

```
BMW-Sales-Dashboard/
│
├── Dashboard BMW Sales.pbix
├── Dashboard BMW Sales.pdf
├── README.md
└── screenshots/
    ├── overview.png
    ├── model_analysis.png
    ├── region_view.png
    └── table_view.png
```

---

## 🧑‍🎓 **Assignment Requirements Covered**

✔ Correct KPIs
✔ BI dashboard with slicers
✔ Trend analysis
✔ Regional insights
✔ Model performance breakdown
✔ Summary PDF
✔ Ready for GitHub submission
