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

## 6. Execution Plan After Index Creation

After creating the index idx_lab_orders_patient_id on the patient_id column of the lab_orders table, I executed an EXPLAIN ANALYZE query to retrieve laboratory orders for a specific patient.

PostgreSQL continued to use a Sequential Scan (Seq Scan) instead of an Index Scan.

This is because the lab_orders table contains only five records. For a small table, PostgreSQL may determine that scanning all records is more efficient than accessing the index.

This demonstrates that creating an index does not guarantee that PostgreSQL will use it. The query optimizer makes execution decisions based on estimated cost and available statistics.

## 7. Performance Comparison Before and After Indexing

The baseline query execution time before creating indexes was 0.133 milliseconds.

After creating indexes on lab_orders(patient_id) and lab_orders(provider_id), the same join query was executed again using EXPLAIN ANALYZE.

The post-index execution time was 0.252 milliseconds.

The query took slightly longer after indexing. This is because the database contains a very small dataset, and PostgreSQL may find sequential scans more efficient than index scans.

The results demonstrate that indexes do not always improve query performance, particularly when working with small tables. Query optimization depends on data size, query structure, available indexes, and the optimizer's cost estimates.

## 8. Optimized Query Performance

An optimized SQL query was created to retrieve selected patient and laboratory order columns, filtering for orders with a Completed status.

The query returned two records successfully.

Using EXPLAIN ANALYZE, the execution time was measured at 0.125 milliseconds.

The original baseline query execution time was 0.133 milliseconds. The optimized query was therefore slightly faster in this test.

However, the difference was very small and may be affected by the small dataset and normal execution-time variation. The exercise demonstrates the value of selecting only the required columns and applying appropriate filters.

## 9. Performance Measurement Limitation

The baseline query and optimized query performed different operations. The baseline retrieved patient orders with provider details, while the optimized query retrieved selected patient and order columns and filtered for completed orders.

Therefore, their execution times are useful observations but do not provide a controlled, direct comparison of performance.

A fair performance comparison requires running the same query against the same dataset before and after a specific optimization.
