# Exploratory Data Analysis with SQL: Job Market Analytics
## Aaron Chen - Oct 20, 2026

### 🔎 Project Overview

As I work toward a career in data engineering, I wanted to get a better idea of which skills are actually worth spending my time learning. There are a lot of tools out there, so I wanted to use job posting data to help narrow down my priorities.

This project uses SQL to explore three questions:

1. Which skills are most in demand?
2. Which skills are associated with the highest salaries?
3. Which skills offer a good balance of demand and salary?

My goal is to ultimately use this analysis to make a more informed learning plan while getting more practice working in SQL.

## 📋 Executive Summary (For Hiring Managers)

- **Project scope:** I built 3 analytical queries that answer key questions about the data engineering job market.
- **Data modeling:** Used multi-table joins across fact and dimension tables to extract insights.
- **Analytics:** Applied aggregations, filtering, and sorting to find top skills by demand, salary, and overall value.
- **Outcomes:** Delivered actionable insights on SQL/Python dominance, cloud trends, and salary patterns.

### If you only have a minute, review these:

1. [01_top_demanded_skills.sql](Lessons/Projects/1_EDA/01_top_demanded_skills.sql) - demand analysis with multi-table joins.
2. [02_top_paying_skills.sql](Lessons/Projects/1_EDA/02_top_paying_skills.sql) - salary analysis with aggregations.
3. [03_optimal_skills.sql](Lessons/Projects/1_EDA/03_optimal_skills.sql) - combined demand/salary optimization query.

## 🗄️ Data Warehouse

Using DuckDB, this project analyzes a **data warehouse** built using a star schema design. Here is the warehouse structure:

![Data Warehouse](../1_EDA/Images/1_2_Data_Warehouse.png)

## 🛠️ Tech Stack

- **Query Engine:** DuckDB for fast OLAP-style analytical queries
- **Language:** SQL (ANSI-style with analytical functions)
- **Data Model:** Star schema with fact + dimension + bridge tables
- **Development:** VS Code for SQL editing + Terminal for DuckDB CLI
- **Version Control:** Git/GitHub for versioned SQL scripts

## Project Results

### 📊 1. Most In-Demand Skills

The first part of my analysis focuses on which skills appear most frequently in the job postings.

I wanted to start with demand because learning a skill becomes more useful when there are plenty of opportunities to apply it. This gives me a starting point for understanding what employers are looking for and which skills might deserve more of my attention.

SQL file: [01_top_demanded_skills.sql](01_top_demanded_skills.sql)

### 💰 2. Highest-Paying Skills

The second part looks at which skills are associated with higher salaries.

One thing I wanted to be careful about is how I interpret these results. A skill appearing in higher-paying postings does not mean that learning it will automatically lead to that salary. Those positions could also require more experience, additional skills, or specialized knowledge.

For me, this part helps identify skills worth exploring as I continue building my foundation.

SQL file: [02_top_paying_skills.sql](02_top_paying_skills.sql)

### 🎯 3. Finding the Optimal Skills

The final part brings demand and salary together.

I wanted to look beyond whichever skill had the highest salary and consider how many opportunities were available for it. A specialized skill might have strong pay but relatively few openings, while a more widely used skill could give me more opportunities to get started.

For this project, I am treating “optimal” as a balance between demand and salary. Experience requirements and how well a skill fits my career goals still matter when deciding what to learn next.

SQL file: [03_optimal_skills.sql](03_optimal_skills.sql)

## 🙏 Thank You

Thank you for taking the time to look through my project! This is one of my first steps toward a career in data engineering, and I’m excited to keep building on what I’ve learned.

If you have any feedback on my queries, analysis, or how I could improve this project, I’d appreciate hearing it! 