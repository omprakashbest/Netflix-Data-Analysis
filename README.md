# 📊 Retail Orders Data Analysis — ETL & SQL

> An end-to-end data pipeline that automates data extraction via the Kaggle API,
> performs data cleaning in Python, and delivers business insights using advanced SQL.

---

## 📌 Project Overview

Built a complete **ETL (Extract, Transform, Load)** pipeline on a real-world retail orders dataset to answer key business questions:

- 📦 Which products are generating the most profit?
- 📈 How is revenue growing Year-over-Year?
- 🌍 Which regions and categories are the top performers?

The project covers the full data analyst workflow — from **raw messy data → clean structured data → actionable business insights**.

---

## 🛠 Technologies Used

| Tool | Purpose |
|------|---------|
| Python | Core ETL scripting |
| Pandas | Data cleaning & feature engineering |
| MySQL | Advanced analytics & querying |
| SQLAlchemy & PyODBC | Database connectivity |
| Kaggle API | Automated data extraction |
| Jupyter Notebook | Step-by-step transformation logic |

---

## 🚀 Key Features

- **Automated Extraction** — Pulls the latest dataset directly via Kaggle API (no manual downloads)
- **Data Cleaning** — Handled missing values (NaNs), corrected data types, and standardized column names using Pandas
- **Feature Engineering** — Engineered new financial columns: `Discount`, `Sale_Price`, and `Profit`
- **Database Integration** — Loaded cleaned data into MySQL using SQLAlchemy
- **Advanced SQL Analytics** — Used CTEs and Window Functions for YoY growth, regional rankings, and category-level KPIs

---

## 📊 Key Insights

- Identified the **top 5 revenue-generating product categories**
- Calculated **Year-over-Year (YoY) revenue growth** across all regions
- Ranked regions by sales performance using **SQL Window Functions**
- Pinpointed **underperforming sub-categories** by profit margin

---

## 📂 Project Structure

```
Retail-Orders-Analysis/
│
├── Orders.ipynb              # ETL pipeline: extraction, cleaning & database load
├── retail_analysis.sql       # Advanced SQL queries: growth, rankings & KPIs
├── orders.csv                # Raw dataset
└── orders.csv.zip            # Compressed original file from Kaggle
```

---

## ⚙️ Installation & Usage

**1. Clone the repository**
```bash
git clone https://github.com/omprakashbest/Retails-Orders-Analysis.git
cd Retails-Orders-Analysis
```

**2. Set up Kaggle API**

Place your `kaggle.json` credentials file in the root folder so the notebook can pull the data automatically.

**3. Install dependencies**
```bash
pip install pandas sqlalchemy pyodbc kaggle
```

**4. Run the ETL pipeline**

Open `Orders.ipynb` in Jupyter Notebook and run all cells.
This will download, clean, and load the data into your MySQL database.

**5. Run the SQL queries**

Open `retail_analysis.sql` in MySQL Workbench and execute the queries to explore business insights.

> ⚠️ If your SQL connection fails, double-check your DSN/connection string inside the notebook.

---

## 📁 Dataset

This project uses the **Retail Orders Dataset** from Kaggle by [Ankit Bansal](https://www.kaggle.com/ankitbansal06).

**Dataset features include:**
- Order & Ship Dates
- Regional Data (City, State, Region)
- Product Breakdown (Category, Sub-Category)
- Financial Fields (List Price, Cost Price, Quantity, Discount)

---

## 👤 Author

**Om Prakash**
BCA Student | Aspiring Data Analyst

[![GitHub](https://img.shields.io/badge/GitHub-omprakashbest-black?logo=github)](https://github.com/omprakashbest)
