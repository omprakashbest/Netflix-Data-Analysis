# 📺 Netflix Data Analysis: The ETL & SQL Deep Dive

A complete end-to-end data pipeline that automates data extraction via the Kaggle API, performs heavy-duty cleaning in Python, and dives deep into business metrics using advanced SQL. 

## 📌 Project Overview

Let’s be real—raw data is a mess. This project is my take on turning a chaotic CSV into actual, boardroom-ready insights. I built a full ETL (Extract, Transform, Load) pipeline that handles everything from API automation to complex SQL window functions. 

The goal? To answer the tough questions: Which products are actually making money? How are we growing year-over-year? And which regions are crushing their sales targets? 

It’s one thing to have data; it’s another to make it talk. This project makes it scream.

## 🚀 Key Features

* **Automated Extraction** – Pulls the latest data directly via Kaggle API (because manual downloads are a waste of time).
* **Smart Cleaning** – Uses Pandas to handle NaNs, fix data types, and standardize column names.
* **Profit Engineering** – Calculated `Discount`, `Sale_Price`, and `Profit` on the fly to get the real story.
* **Advanced SQL Analytics** – Includes YoY growth comparisons, regional rankings, and category performance using CTEs and Window Functions.
* **Database Integration** – Seamlessly pushes cleaned data into MySQL Server using SQLAlchemy.

## 🛠 Technologies Used

* **Python** – The backbone of the ETL process.
* **Pandas** – Data manipulation and feature engineering.
* **MySQL** – Where the heavy analytical lifting happens.
* **Kaggle API** – For automated data sourcing.
* **SQLAlchemy & PyODBC** – For the database "handshake."
* **Jupyter Notebook** – For the step-by-step transformation logic.

## 📂 Project Structure
```
Netflix_Data_Analysis
│
├── Orders.ipynb
│   The ETL engine: Handles API calls, cleaning, and DB export.
│
├── Netflix_analysis.sql
│   The brain: Advanced queries for growth, revenue, and rankings.
│
├── orders.csv
│   The raw (and slightly messy) dataset.
│
└── orders.csv.zip
    Original compressed file from Kaggle.
```

## 📊 Dataset

This project uses the **Retail Orders Dataset** from Kaggle (shoutout to Ankit Bansal for the data). 

Even though it’s a retail set, I’ve analyzed it with a "Netflix-level" focus on high-growth metrics. Features include:
* Order & Ship dates
* Regional data (City, State, Region)
* Product breakdown (Category, Sub-Category)
* Financial (List Price, Cost Price, Quantity, Discount)

## ⚙️ Installation

1. **Clone the repo** (get the files onto your machine):
   ```bash
   git clone https://github.com/omprakashbest/Netflix-Data-Analysis.git
   ```

2. **Setup Kaggle API**:
   Drop your `kaggle.json` into the root folder so the notebook can pull the data.

3. **Install the "Must-Haves"**:
   ```bash
   pip install pandas sqlalchemy pyodbc kaggle
   ```

## ▶️ Usage

1. **The ETL Phase**: 
   Open `Orders.ipynb` and run all cells. This will download the data, clean it, and shove it into your SQL database.
   
2. **The Insights Phase**: 
   Open `Netflix_analysis.sql` in your favorite SQL editor and run the queries. This is where you find out which products are the "blockbusters" and which ones are "flops."

---
*Note: If your SQL connection fails, check your DSN/Connection string in the notebook—databases can be picky!*
