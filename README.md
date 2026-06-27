# End-to-End dbt & Databricks Data Engineering Project

## Overview

This project demonstrates the design and implementation of a complete modern data engineering pipeline using **dbt**, **Databricks**, and the **Medallion Architecture (Bronze, Silver, Gold)**. The project covers the entire analytics engineering lifecycle—from ingesting raw datasets into Databricks to transforming them into analytics-ready data models, validating data quality, tracking historical changes, and preparing the project for CI/CD and version control with Git and GitHub.

The primary objective is to showcase industry best practices in data transformation, testing, documentation, modular SQL development, and analytics engineering.

---

## Project Objectives

* Build an end-to-end data transformation pipeline using dbt.
* Implement the Medallion Architecture (Bronze, Silver, Gold).
* Transform raw datasets into clean, analytics-ready models.
* Apply reusable SQL development using Jinja macros.
* Validate data quality using dbt tests.
* Track historical changes using dbt snapshots.
* Manage project versions using Git.
* Prepare the project for CI/CD deployment.

---

## Technology Stack

| Technology         | Purpose                                           |
| ------------------ | ------------------------------------------------- |
| dbt Core           | Data transformation and analytics engineering     |
| Databricks         | Data platform and compute engine                  |
| SQL                | Data transformations                              |
| Jinja              | SQL templating and reusable logic                 |
| Python             | Environment and workflow support                  |
| uv                 | Python package and virtual environment management |
| Git                | Version control                                   |
| GitHub             | Source code management                            |
| Visual Studio Code | Development environment                           |

---

## Project Architecture

The project follows the Medallion Architecture.

```text
                Source Data
                     │
                     ▼
              Bronze Layer
          (Raw Source Tables)
                     │
                     ▼
              Silver Layer
     (Cleaned & Standardized Data)
                     │
                     ▼
               Gold Layer
     (Business Ready Data Models)
                     │
                     ▼
      Reporting & Business Analytics
```

---

## Dataset Overview

The project uses five datasets representing a retail sales environment.

* Customers
* Products
* Sales
* Returns
* Stores
* Properties

These datasets are ingested into Databricks and transformed through multiple layers until they become analytics-ready.

---

## Project Structure

```text
ben_dbt_pract/
│
├── analyses/
├── macros/
├── models/
│   ├── bronze/
│   ├── silver/
│   └── gold/
├── seeds/
├── snapshots/
├── tests/
├── dbt_project.yml
├── README.md
└── .gitignore
```

---

## Data Transformation Workflow

### Bronze Layer

* Load raw data from source tables
* Preserve original structure
* Minimal transformations

### Silver Layer

* Clean data
* Standardize formats
* Handle null values
* Apply business rules
* Remove duplicates

### Gold Layer

* Create business-ready models
* Prepare analytical datasets
* Build dimensional models

---

## dbt Features Implemented

### Models

* Bronze Models
* Silver Models
* Gold Models

### Jinja

Implemented reusable SQL logic using Jinja templating.

Examples include:

* Variables
* Loops
* Conditional statements

### Macros

Created reusable SQL macros including:

* Custom multiplication macro
* Dynamic schema generation

### Seeds

Loaded static reference data into Databricks using dbt Seeds.

### Snapshots

Implemented dbt Snapshots to track historical changes in source data.

### Tests

Implemented both built-in and custom data quality tests.

Examples include:

* Generic Tests
* Custom Generic Tests
* Singular Tests

---

## Data Quality

The project validates data quality through:

* Unique key validation
* Null checks
* Accepted values
* Relationship tests
* Custom non-negative value tests

---

## CI/CD Readiness

The project is structured for Continuous Integration and Continuous Deployment (CI/CD).

Version control is managed using Git and GitHub, allowing automated testing and deployment workflows.

---

## Skills Demonstrated

This project demonstrates practical experience in:

### Data Engineering

* ETL / ELT
* Data Transformation
* Data Modeling
* Medallion Architecture
* Data Warehousing

### Analytics Engineering

* dbt Core
* dbt Models
* dbt Tests
* dbt Snapshots
* dbt Seeds
* dbt Macros
* Jinja Templating

### Big Data

* Databricks
* Apache Spark

### Programming

* SQL
* Python

### Version Control

* Git
* GitHub

### Development Tools

* Visual Studio Code
* dbt Power User Extension
* uv

---

## Learning Outcomes

Through this project, I gained hands-on experience in:

* Building production-style dbt projects
* Organizing data using the Medallion Architecture
* Developing modular SQL using Jinja
* Creating reusable dbt macros
* Implementing snapshot-based historical tracking
* Building custom and generic dbt tests
* Managing environments with uv
* Working with Databricks catalogs and schemas
* Applying Git version control workflows
* Preparing dbt projects for CI/CD deployment
* Structuring maintainable analytics engineering projects
* Production deployment

---

## Future Improvements

Potential enhancements include:

* Automated GitHub Actions CI/CD pipeline
* dbt documentation hosting
* Incremental models
* Advanced snapshot strategies
* Data observability monitoring
* Orchestration with Apache Airflow

---

## Author

**Benard Onyango Omoga**

IT Specialist | Data Analyst | Web Developer | AI Content Creator

### Areas of Expertise

* Data Engineering
* Analytics Engineering
* Data Analytics
* Python Development
* SQL Development
* Business Intelligence
* Dashboard Development
* AI Content Creation

---


### Main Resource:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
