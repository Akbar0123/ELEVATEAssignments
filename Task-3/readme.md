Here is your **professional, submission-ready README.md** for **Task 3 — SQL for Data Analysis**, fully based on the **MySQL Northwind database** you are using.

You can copy-paste this directly into your GitHub repository.

---

# 📘 **README.md — Task 3: SQL for Data Analysis (MySQL + Northwind Database)**

## 📌 **Overview**

This project covers **Task 3: SQL for Data Analysis** of the internship assignment.
All SQL queries were executed using **MySQL Workbench** on the **Northwind** sample database.

The task demonstrates skills in:

* Data extraction using SELECT
* Data filtering using WHERE
* Sorting using ORDER BY
* Aggregations and GROUP BY
* JOINS (INNER & LEFT)
* Subqueries
* Creating SQL Views
* Query Optimization (Indexes)

This README provides:
✔ Database details
✔ SQL queries
✔ Task explanations
✔ Interview question answers
✔ Project structure

---

## 🗂 **Database Used — Northwind (MySQL Version)**

The Northwind database simulates a real-world retail business with tables for:

* **customers**
* **orders**
* **order_details**
* **products**
* **suppliers**
* **categories**
* **employees**
* **shippers**

This database is ideal for practicing SQL joins, aggregations, and analytical queries.

---

## 🧾 **SQL Queries Completed**

Below are the queries written and executed as part of Task 3.

---

### **1️⃣ Select Basic Data**

```sql
SELECT CustomerID, CompanyName, Country
FROM customers;
```

---

### **2️⃣ WHERE + ORDER BY**

```sql
SELECT ProductID, ProductName, UnitPrice
FROM products
WHERE UnitPrice > 20
ORDER BY UnitPrice DESC;
```

---

### **3️⃣ GROUP BY + Aggregation**

```sql
SELECT Country, COUNT(*) AS TotalCustomers
FROM customers
GROUP BY Country;
```

---

### **4️⃣ INNER JOIN — Orders with Customer Info**

```sql
SELECT 
    o.OrderID,
    o.OrderDate,
    c.CompanyName,
    c.Country
FROM orders o
INNER JOIN customers c 
    ON o.CustomerID = c.CustomerID;
```

---

### **5️⃣ LEFT JOIN — Orders + Products**

```sql
SELECT 
    o.OrderID,
    p.ProductName,
    od.Quantity,
    od.UnitPrice
FROM orders o
LEFT JOIN order_details od 
    ON o.OrderID = od.OrderID
LEFT JOIN products p 
    ON od.ProductID = p.ProductID;
```

---

### **6️⃣ Subquery — Products Priced Above Average**

```sql
SELECT ProductID, ProductName, UnitPrice
FROM products
WHERE UnitPrice > (
    SELECT AVG(UnitPrice) FROM products
);
```

---

### **7️⃣ ARPU — Average Revenue Per Customer**

```sql
SELECT 
    SUM(od.UnitPrice * od.Quantity) /
    COUNT(DISTINCT o.CustomerID) AS ARPU
FROM orders o
JOIN order_details od 
    ON o.OrderID = od.OrderID;
```

---

### **8️⃣ Creating a SQL VIEW**

```sql
CREATE VIEW customer_revenue AS
SELECT 
    c.CustomerID,
    c.CompanyName,
    SUM(od.UnitPrice * od.Quantity) AS TotalRevenue
FROM customers c
LEFT JOIN orders o 
    ON c.CustomerID = o.CustomerID
LEFT JOIN order_details od 
    ON o.OrderID = od.OrderID
GROUP BY c.CustomerID, c.CompanyName;
```

---

### **9️⃣ Query Optimization — Indexes**

```sql
CREATE INDEX idx_orders_customer 
ON orders(CustomerID);

CREATE INDEX idx_orderdetails_product 
ON order_details(ProductID);
```

---

## 📸 **Screenshots (Included in Repo)**

A folder named **screenshots/** includes:

* Query outputs for all tasks
* View created successfully
* Index creation confirmation
* Bonus analytical queries

---

## 📁 **Project Structure**

```
task3/
│
├── queries.sql
├── README.md
└── screenshots/
    ├── query1_output.png
    ├── query2_output.png
    ├── ...
├── task 3.pdf