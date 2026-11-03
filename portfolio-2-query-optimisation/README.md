# Portfolio 2: Query Processing and Optimization

## Project Overview

This portfolio explores SQL query processing, execution plans, database indexing, and query optimization using PostgreSQL 18 and pgAdmin 4.

The project uses the simulated MediLab Hospital Laboratory System developed in Portfolio 1.

## Activities Completed

1. Executed SQL queries involving multiple table joins.
2. Examined query execution plans using EXPLAIN.
3. Measured query execution times using EXPLAIN ANALYZE.
4. Created indexes on lab_orders(patient_id) and lab_orders(provider_id).
5. Refreshed database statistics using ANALYZE.
6. Compared sequential scans and index-based query execution.
7. Developed optimized SQL queries using selected columns and filtering.
8. Documented performance observations and query optimization findings.

## Project Files

- query_analysis.sql
- execution_plan_analysis.md
- indexing_analysis.md
- optimized_queries.sql
- performance_comparison.md

## Tools Used

- PostgreSQL 18
- pgAdmin 4
- GitHub

## Conclusion

This portfolio demonstrates practical knowledge of SQL query processing and optimization.

The exercises showed that indexes do not always improve query performance, particularly when working with small datasets. PostgreSQL uses its query optimizer to select execution plans based on estimated costs and available statistics.
