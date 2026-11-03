# Baseline Query Execution Plan Analysis

## 1. Overview

The baseline SQL query was executed using PostgreSQL 18 to retrieve patient information, laboratory orders, and healthcare providers from the MediLab Hospital Laboratory System.

## 2. Execution Plan Operations

The PostgreSQL EXPLAIN command was used to examine the query execution plan.

The following operations were observed:

- **Sequential Scan (Seq Scan):** PostgreSQL reads table records sequentially to retrieve the required data.
- **Hash Join:** PostgreSQL uses a hash-based method to join related records from different tables.
- **Sort:** PostgreSQL arranges the query results according to the specified order using the ORDER BY clause.

## 3. Analysis

The execution plan demonstrates how PostgreSQL processes joins and organizes query results.

Sequential scans are reasonable for the current small dataset because the database contains relatively few records. However, indexing may improve performance as the database grows.

## 4. Conclusion

The baseline execution plan provides a reference point for evaluating the effects of database indexing and query optimization in subsequent experiments.

## 5. Baseline Performance Measurement

Using EXPLAIN ANALYZE, the baseline query execution time was recorded as 0.133 milliseconds.

This measurement will be used as a reference when comparing query performance after implementing database indexes.
