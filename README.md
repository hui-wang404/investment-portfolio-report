# Investment Portfolio Reporting & Data Quality Analysis

## Overview

This project demonstrates the design and implementation of an investment portfolio reporting solution using JasperReports and PostgreSQL.

The report transforms relational investment data into a structured portfolio report with investment details, financial KPIs, sector allocation analysis, and data quality checks.

## Key Features

* Investment portfolio overview
* Investment-level detail reporting
* Total invested capital
* Current Net Asset Value (NAV)
* Unrealized Gain/Loss calculation
* Investment count
* Sector allocation visualization
* Data quality validation report
* PDF report generation

## Technology Stack

* **JasperReports / Jaspersoft Studio** – Report development and visualization
* **PostgreSQL** – Relational database
* **SQL** – Data extraction, joins and data quality analysis
* **Java** – JasperReports expression and reporting logic
* **Git / GitHub** – Version control and project documentation

## Database Structure

The project uses a relational data model consisting of four main tables:

```text
Funds
  │
  └── Investments
          │
          └── Companies
                  │
                  └── Sectors
```

### Main Relationships

* `investments.fund_id → funds.fund_id`
* `investments.company_id → companies.company_id`
* `companies.sector_id → sectors.sector_id`

This relational structure allows the report to combine investment, company, fund and sector information into a unified reporting dataset.

## Reporting Features

### 1. Investment Detail Report

The main report provides investment-level information including:

* Fund
* Company
* Sector
* Country
* Invested Capital
* Current NAV
* Unrealized Gain/Loss

### 2. Executive Summary

The report calculates portfolio-level KPIs:

* Total Invested Capital
* Total Current NAV
* Total Unrealized Gain/Loss
* Number of Investments

The calculations are implemented using JasperReports variables and aggregation functions.

### 3. Sector Allocation

A pie chart visualizes the distribution of invested capital across different sectors.

The chart uses:

* Sector as the category
* Invested Capital as the value
* Percentage as the displayed label

### 4. Data Quality Report

A separate data quality report validates the completeness of important portfolio attributes.

The checks include:

* Total records
* Missing company names
* Missing sectors
* Missing countries
* Missing invested capital
* Missing current NAV

The data quality report uses SQL aggregation and relational joins to identify missing or incomplete data.

## Example Data Flow

```text
PostgreSQL
     │
     ▼
SQL Query
     │
     ├── Investments
     ├── Companies
     ├── Funds
     └── Sectors
     │
     ▼
JasperReports
     │
     ├── Detail Table
     ├── Executive Summary
     ├── Sector Allocation Chart
     └── Data Quality Report
     │
     ▼
PDF Reports
```

## Project Structure

```text
investment-portfolio-report/
│
├── reports/
│   ├── InvestmentPortfolio.jrxml
│   └── DataQuality.jrxml
│
├── sql/
│   └── portfolio_query.sql
│
├── output/
│   ├── InvestmentPortfolio.pdf
│   └── DataQuality.pdf
│
├── screenshots/
│
├── docs/
│   └── project-documentation.md
│
└── README.md
```

## Learning Outcomes

This project demonstrates practical experience with:

* Relational database design
* SQL joins and aggregation
* Data quality validation
* Financial KPI calculation
* Report design and visualization
* JasperReports expressions and variables
* PDF report generation
* Git-based project documentation

## Future Improvements

Potential extensions include:

* Interactive dashboard integration
* Additional portfolio performance KPIs
* Historical NAV analysis
* Automated report generation
* Parameterized reporting by fund or sector
* Integration with a BI platform
