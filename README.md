# Pension-Management
The Pension Management System is an end-to-end data project that simulates real-world pension workflows. It covers data ingestion, transformation, storage, analysis, and visualization using Python, SQL, and Power BI to deliver business-ready insights.

🔹 Project Overview
The project is structured into three key phases:
Phase 1: Python ETL (Extract, Transform, Load)
Ingests a raw pension dataset containing 20,000 records
Cleans and standardizes data (dates, numerical fields, text consistency)
Recalculates years_of_service using retirement and join dates to fix inconsistencies
Derives new attributes such as age at retirement and pension status
Masks sensitive personal information to ensure privacy
Loads validated data into an SQLite database

Phase 2: SQL Analysis
Performs analytical queries on the cleaned database
Computes key business insights, including:
Average pension payout by region
Top pension recipients by payout
Pension type and status distributions
Identification of employees nearing retirement
Service-year bucketing to analyze tenure vs. pension value

Phase 3: Power BI Visualization
Connects Power BI to the processed dataset
Builds interactive dashboards to visualize pension trends
Includes KPIs, regional comparisons, distributions, and retirement trends
Recommended Visuals:
KPI cards (total pensioners, total payout, average pension)

🛠️ Technologies Used

Python (ETL & data processing)
SQLite & SQL (data storage & analysis)
Power BI (visualization & reporting)

🎯 Purpose

This project showcases practical skills in data engineering, data analysis, and business intelligence, following industry-style workflows and best practices for data quality, validation, and privacy handling.

Bar charts, donut charts, line charts, and histograms
