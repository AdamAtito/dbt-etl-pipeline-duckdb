# dbt-etl-pipeline-duckdb
Building a simple Data Warehouse using dbt and DuckDB, applying ETL pipeline with staging, dimension, and fact models (Star Schema).
# Data Warehouse with dbt & DuckDB

## 📌 Project Overview
This project demonstrates building a small **Data Warehouse** using **dbt** and **DuckDB**.  
It follows a classic **ETL pipeline** with raw data ingestion, staging, dimension tables, and a fact table modeled in a **Star Schema** structure.

---

## 🛠 Tools & Technologies
- **dbt (Data Build Tool)**
- **DuckDB**
- **SQL**
- Data Modeling (Dimensions & Facts)
- ETL & Data Warehousing Concepts

---

## 🔄 Workflow
1. **Raw Layer**: Collecting data from an API (users, products, categories).  
2. **Staging Layer**: Cleaning and transforming raw data (casting types, renaming columns).  
3. **Dimensions**: Creating dimension tables (`Users`, `Products`, `Categories`).  
4. **Fact Table**: Building a central fact table linking all dimensions for analysis.  

---

## 📂 Project Structure
dbt_project.yml
models/
│── staging/
│ ├── stg_users.sql
│ ├── stg_products.sql
│ └── stg_categories.sql
│
│── schema/
│ ├── userdim.sql
│ ├── productsdim.sql
│ ├── categorydim.sql
│ └── fact_userproducts.sql
