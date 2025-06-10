# Data Warehouse Project
Welcome to the **Data Warehouse Project** repository! 🚀  
This project demonstrates building a comprehensive data warehouse foundation using industry-standard medallion architecture. Designed as a portfolio project, it showcases data engineering best practices from raw data ingestion to business-ready analytics views.

---

## 🏗️ Data Architecture
The data architecture follows the **Medallion Architecture** with **Bronze**, **Silver**, and **Gold** layers:

1. **Bronze Layer**: Stores raw data exactly as received from source systems. Data is bulk-loaded from CSV files into SQL Server tables.
2. **Silver Layer**: Applies data cleansing, validation, and standardization. Includes business logic for data quality fixes and consistent formatting.
3. **Gold Layer**: Contains business-ready data modeled as star schema views with dimension and fact tables optimized for analytics.

---

## 📖 Project Overview
This project demonstrates:

1. **Data Pipeline Design**: Building automated ETL processes using stored procedures for reliable data movement through Bronze → Silver → Gold layers.
2. **Data Quality Management**: Implementing comprehensive data validation, error handling, and business rule enforcement in the Silver layer.
3. **Star Schema Modeling**: Creating dimension and fact views with surrogate keys for optimal reporting performance.
4. **Foundation for Analytics**: Establishing the data warehouse infrastructure needed to support business intelligence and reporting.

## 🚀 What Was Built

### Data Warehouse Infrastructure (Data Engineering)
#### Objective
Develop a scalable data warehouse foundation using SQL Server to consolidate sales data from multiple source systems.

#### What Was Implemented
- **Data Ingestion**: Automated CSV file loading using BULK INSERT operations with comprehensive error handling
- **Data Quality**: Multi-layer data cleansing including NULL handling, data type validation, and business rule enforcement
- **Data Integration**: Consolidated ERP and CRM systems into unified customer and product dimensions
- **Performance Optimization**: Implemented surrogate keys and star schema design for fast analytical queries
- **Documentation**: Clear code documentation with inline comments explaining business logic and transformations

### Technical Architecture Delivered
- **Bronze Layer**: 6 raw data tables with automated truncate-and-load procedures
- **Silver Layer**: Cleaned and validated tables with comprehensive data quality fixes
- **Gold Layer**: 3 business-ready views (2 dimensions + 1 fact table) forming a complete star schema
- **Error Handling**: Try-catch blocks with detailed error logging throughout all ETL processes
- **Monitoring**: Built-in timing and performance tracking for all data loading operations

---

## 📂 Repository Structure
```
data-warehouse-project/
│
├── datasets/                           # Raw CSV datasets (ERP and CRM source data)
│   ├── source_crm/                     # Customer, product, and sales data from CRM
│   └── source_erp/                     # Location, customer, and category data from ERP
│
├── docs/                               # Project documentation and architecture
│   ├── data_architecture.drawio        # Complete medallion architecture diagram
│   ├── data_catalog.md                 # Field-level documentation for all tables
│   ├── data_flow.drawio                # ETL process flow visualization
│   ├── star_schema.drawio              # Gold layer dimensional model
│   └── naming-conventions.md           # Database naming standards
│
├── scripts/                            # SQL scripts organized by layer
│   ├── 01_bronze/                      # DDL for raw data tables + bulk load procedures
│   │   ├── create_bronze_tables.sql
│   │   └── load_bronze_procedure.sql
│   ├── 02_silver/                      # Data cleansing and transformation logic
│   │   ├── create_silver_tables.sql
│   │   └── load_silver_procedure.sql
│   └── 03_gold/                        # Star schema views for analytics
│       └── create_gold_views.sql
│
├── tests/                              # Data quality validation scripts
│
├── README.md                           # This file
└── .gitignore                          # Git ignore configuration
```

---

## 🔧 Key Technical Features

- **Automated ETL Pipelines**: Stored procedures with comprehensive error handling and performance monitoring
- **Data Quality Framework**: Multi-stage validation with business rule enforcement and NULL handling
- **Star Schema Design**: Optimized dimensional modeling with surrogate keys for BI tool compatibility
- **Scalable Architecture**: Medallion design allows for easy expansion and additional data sources
- **Production-Ready Code**: Includes proper error handling, logging, and documentation standards

## 🎯 Next Steps for Analytics
This foundation enables creation of:
- Customer behavior analysis (segmentation, purchase patterns, geographic trends)
- Product performance metrics (top sellers, category analysis, profitability)
- Sales trend reporting (time-series analysis, seasonal patterns, growth metrics)

The star schema views are ready for direct querying or integration with BI tools like Power BI, Tableau, or similar platforms.
